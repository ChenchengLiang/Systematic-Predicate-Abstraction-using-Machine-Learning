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

def pool_kill_popen_test(to):
    try:
        x = subprocess.Popen(["../venv/bin/python3", "archived/sleep.py"])
        x.wait(timeout=to)
        print(x.pid)
    except:
        print(x.pid)
        os.kill(x.pid, signal.SIGKILL)

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

    predictions = model(x_train[:1]).numpy()
    predictions
    tf.nn.softmax(predictions).numpy()
    loss_fn = tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True)
    loss_fn(y_train[:1], predictions).numpy()
    model.compile(optimizer='adam',
                  loss=loss_fn,
                  metrics=['accuracy'])

    model.fit(x_train, y_train, epochs=5)

    model.evaluate(x_test, y_test, verbose=2)
    probability_model = tf.keras.Sequential([
        model,
        tf.keras.layers.Softmax()
    ])
    probability_model(x_test[:5])

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

def main():
    print("{0:.2%}".format(0.2345))


    # tf.debugging.set_log_device_placement(True)
    #
    # # Create some tensors
    # a = tf.constant([[1.0, 2.0, 3.0], [4.0, 5.0, 6.0]])
    # b = tf.constant([[1.0, 2.0], [3.0, 4.0], [5.0, 6.0]])
    # c = tf.matmul(a, b)
    #
    # print(c)

    # print(tf.test.is_built_with_cuda())
    #
    # tf.test.is_gpu_available(cuda_only=False, min_cuda_compute_capability=None)

if __name__ == '__main__':
    main()