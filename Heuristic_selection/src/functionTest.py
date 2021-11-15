import os
from datetime import datetime
import numpy as np
import random
from multiprocessing import Pool
import subprocess
from subprocess import check_output
import time
import itertools
import scipy.stats as ss
import signal
import matplotlib.pyplot as plt
import tensorflow as tf
from decimal import Decimal
import sys
import re
import glob
import json
from shutil import copyfile,copy,rmtree,copytree,copy2
from Miscellaneous import replicate_files
from utils import call_eldarica
def sleep(seconds=1):
    time.sleep(seconds)
    print("wait for",seconds)

def pairwise_ranking_label_example(x=[0,1,4,5,2,7],n=2):
    c_list=list(itertools.combinations(enumerate(x), 2))
    c_list=list(set(c_list))
    print(len(c_list))
    #print(c_list)
    c_label=[]
    pairs=[]
    rank_info=[]
    for pair in c_list:
        pairs.append((pair[0][1],pair[1][1]))
        if pair[0][1]<pair[1][1]:
            c_label.append(1)
            rank_info.append("A"+ str(pair[0][0]) +"<"+"A"+ str(pair[1][0]))
        else:
            c_label.append(0)
            rank_info.append("A" + str(pair[1][0]) + "<" + "A" + str(pair[0][0]))
    print("occurrence",x)
    print("derived pairs", pairs)
    print("derived labels",c_label)
    print("derived relations",rank_info)

def occurance_to_rank_examples(x=[0,1,1,1,1,0,5]):
    print("occurence",x)
    print("dense rank",ss.rankdata(x,method="dense")) #'average', 'min', 'max', 'dense', 'ordinal'
    print("average rank",ss.rankdata(x, method="average"))  # 'average', 'min', 'max', 'dense', 'ordinal'
    print("min rank",ss.rankdata(x, method="min"))  # 'average', 'min', 'max', 'dense', 'ordinal'
    print("max rank",ss.rankdata(x, method="max"))  # 'average', 'min', 'max', 'dense', 'ordinal'
    print("ordinal rank",ss.rankdata(x, method="ordinal"))  # 'average', 'min', 'max', 'dense', 'ordinal'



def mnist_example():
    mnist = tf.keras.datasets.mnist
    (x_train, y_train), (x_test, y_test) = mnist.load_data()
    x_train, x_test = x_train / 255.0, x_test / 255.0

    model = tf.keras.models.Sequential([
        tf.keras.layers.Flatten(input_shape=(28, 28)),
        tf.keras.layers.Dense(128, activation='relu'),
        tf.keras.layers.Dropout(0.2),
        tf.keras.layers.Dense(10)
    ])

    x_train=x_train[0:1]
    y_train=y_train[0:1]

    predictions = model(x_train[:1]).numpy()
    predictions
    tf.nn.softmax(predictions).numpy()
    loss_fn = tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True)
    loss_fn(y_train[:1], predictions).numpy()
    model.compile(optimizer='adam',
                  loss=loss_fn,
                  metrics=['accuracy'])

    history=model.fit(x_train, y_train, epochs=500,validation_data=(x_train, y_train))

    model.evaluate(x_test, y_test, verbose=2)
    probability_model = tf.keras.Sequential([
        model,
        tf.keras.layers.Softmax()
    ])
    probability_model(x_test[:5])
    ce=model.evaluate(x_train,y_train)
    print("ce",ce)
    plt.plot([ce[0]]*len(history.history["loss"]),color="black")
    plt.plot(history.history["loss"],color="blue")
    plt.plot(history.history["val_loss"],color="green")
    plt.yscale('log')
    plt.show()

def convert_constant_to_category(constant_string):
    converted_string=constant_string
    if constant_string.isdigit() and int(constant_string)>1:
        converted_string="positive_constant"
    elif converted_string[1:].isdigit() and int(constant_string)<-1:
        converted_string="negative_constant"
    return converted_string


def tokenize_symbols(token_map,node_symbols):
    converted_node_symbols=[ convert_constant_to_category(word) for word in node_symbols]
    # node tokenization
    full_operator_list = ["+", "-", "*", "/", ">", ">=", "=", "<", "<=", "==", "===", "!", "+++", "++", "**", "***",
                          "--", "---", "=/=","&","|","EX"]
    tokenized_node_label_ids = []
    for symbol in converted_node_symbols:
        if symbol in token_map:
            tokenized_node_label_ids.append((symbol,token_map[symbol],symbol))
        elif "CONTROL" in symbol:
            tokenized_node_label_ids.append((symbol,token_map["unknown_predicate"],"unknown_predicate"))
        elif "predicateArgument" in symbol:
            tokenized_node_label_ids.append((symbol,token_map["unkown_predicate_argument"],"unkown_predicate_argument"))
        elif "template" in symbol:
            tokenized_node_label_ids.append((symbol,token_map["unknown_predicate_label"],"unknown_predicate_label"))
        elif "SYMBOLIC_CONSTANT" in symbol:
            tokenized_node_label_ids.append((symbol,token_map["unkown_symblic_constant"],"unkown_symblic_constant"))
        elif symbol in full_operator_list:
            tokenized_node_label_ids.append((symbol,token_map["unknown_operator"],"unknown_operator"))
        elif symbol.isnumeric() or symbol[1:].isnumeric():
            tokenized_node_label_ids.append((symbol,token_map["unknown_constant"],"unknown_constant"))
        else:
            tokenized_node_label_ids.append((symbol,token_map["unknown_node"],"unknown_node"))
    print("tokenized_node_label_ids",len(tokenized_node_label_ids),len(set(tokenized_node_label_ids)))
    return tokenized_node_label_ids

def sigmoid(x):
    return 1/ (1 + np.exp(-x))
def get_weighted_binary_crossentropy(weight_class,true_y,predicted_y):
    ce_raw=0
    ce = 0
    ce_raw_from_logit=0
    for p, y in zip(predicted_y, true_y):
        ce_raw=ce_raw + (-y*np.log(sigmoid(p))* weight_class["weight_for_1"]) - (1-y)*np.log(1-sigmoid(p)) * weight_class["weight_for_0"]

        # if (y == 1):
        #     ce = ce + tf.keras.losses.binary_crossentropy([y], [p],from_logits=False) * weight_class["weight_for_1"]
        # if (y == 0):
        #     ce = ce + tf.keras.losses.binary_crossentropy([y], [p],from_logits=False) * weight_class["weight_for_0"]
    return ce / len(true_y), ce_raw/len(true_y)

#
# def binary_round(num, digits):
#     if num < 0:
#         return -binary_round(-num, digits)
#     elif num == 0:
#         return 0
#     else:
#         x = num
#         shifted = digits
#         while x > 1:
#             shifted = shifted - 1
#             x = x / 2
#         while x < 0.5:
#             shifted = shifted + 1
#             x = x * 2
#         r = round(x * (1 << digits))
#         while shifted > 0:
#             shifted = shifted - 1
#             r = r / 2
#         while shifted < 0:
#             shifted = shifted + 1
#             r = r * 2
#         return r



def binary_round_positive_case(num, digits):
    x = num
    shifted = digits

    c = lambda aa,bb: tf.greater(bb,1)
    #b = lambda aa,bb: (tf.subtract(aa,1),tf.divide(bb,2.0))
    def b(aa,bb):
        nonlocal shifted
        nonlocal x
        shifted=shifted-1
        x=x/2
    tf.while_loop(c,b,(shifted,x))
    # while x > 1:
    #     shifted = shifted - 1
    #     x = x / 2

    c = lambda aa,bb: tf.less(bb, 0.5)
    b = lambda aa,bb: (tf.add(aa, 1), tf.multiply(bb, 2.0))
    tf.while_loop(c,b,(shifted,x))

    # while x < 0.5:
    #     shifted = shifted + 1
    #     x = x * 2
    r = tf.round(x * (1 << digits))
    c = lambda aa,bb: tf.greater(aa, 0)
    b = lambda aa,bb: (tf.subtract(aa, 1), tf.divide(bb, 2.0))
    tf.while_loop(c, b, (shifted,r))
    # while shifted > 0:
    #     shifted = shifted - 1
    #     r = r / 2
    c = lambda aa,bb: tf.less(aa, 0)
    b = lambda aa,bb: (tf.add(aa, 1), tf.multiply(bb, 2.0))
    tf.while_loop(c, b, (shifted,r))
    # while shifted < 0:
    #     shifted = shifted + 1
    #     r = r * 2
    return r
def binary_round(num, digits=4):
    if num == 0:
        return tf.constant(0.0,dtype=tf.float32)
    elif num < 0:
        return -binary_round_positive_case(-num, digits)
    else:
        return binary_round_positive_case(num,digits)
def row_deler(row):
    return tf.map_fn(binary_round,row)
def my_assign(x):
    #tf.compat.v1.assign_add(x,1)
    x.assign_add(1)
def _traucate(x, decimals=0): #trauncate
    multiplier = tf.constant(10 ** decimals, dtype=x.dtype)
    return tf.cast(tf.cast(tf.round(x * multiplier),tf.int32),x.dtype) / multiplier

def decode_one_hot(predicted_Y_loaded_model):
    return [np.argmax(y)  for y in predicted_Y_loaded_model]
def main():
    x = os.path.dirname("../benchmarks/thread_0/train_data/sjsjs.smt2")

    print(x)


main()
