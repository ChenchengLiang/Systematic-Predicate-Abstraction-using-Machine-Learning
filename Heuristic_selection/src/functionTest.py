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
def main():
    mnist_example()
    # from horn_dataset import logit
    # y=tf.constant([0],tf.float32)
    # y_hat=tf.constant([0],tf.float32)
    # logit_y_hat=tf.constant([logit(0)],tf.float32)
    # weight=tf.constant([1],tf.float32)
    # print("ce",tf.keras.losses.binary_crossentropy(y,logit_y_hat,from_logits=False))
    # print("weighted_ce", tf.nn.weighted_cross_entropy_with_logits(y, logit_y_hat,weight))
    #
    # from utils import wrapped_generate_horn_graph
    # move_file = True
    # max_nodes_per_batch=10000
    # thread_number=4
    # filtered_file_list, file_list_with_horn_graph, file_list = wrapped_generate_horn_graph(os.path.join("../benchmarks/",sys.argv[1]),
    #                                                                                        max_nodes_per_batch,
    #                                                                                        move_file=move_file,
    #                                                                                        thread_number=thread_number)
    # from pandas import DataFrame
    # from pandas import concat
    # from keras.models import Sequential
    # from keras.layers import Dense
    # from sklearn.metrics import mean_squared_error
    #
    # # fit MLP to dataset and print error
    # def fit_model(X, y):
    #     # design network
    #     model = Sequential()
    #     model.add(Dense(10, input_dim=1))
    #     model.add(Dense(1))
    #     model.compile(loss='mean_squared_error', optimizer='adam')
    #     # fit network
    #     model.fit(X, y, epochs=100, batch_size=len(X), verbose=0)
    #     return model
    #
    # # create sequence
    # length = 10
    # sequence = [i / float(length) for i in range(length)]
    # # create X/y pairs
    # df = DataFrame(sequence)
    # df = concat([df.shift(1), df], axis=1)
    # df.dropna(inplace=True)
    # # convert to MLP friendly format
    # values = df.values
    # X, y = values[:, 0], values[:, 1]
    # # repeat experiment
    # repeats = 10
    # model = fit_model(X, y)
    # for _ in range(repeats):
    #     print(sum(model.predict(X, verbose=0)))

    #
    # from utils import filter_file_list_by_max_node,get_statistic_data
    # from measurement_functions import read_measurement_from_JSON,get_analysis_for_predicted_labels
    #
    # benchmark = "mixed-three-fold-noIntervals-only-initial-predicate"
    # benchmark_fold = benchmark + "-" + "test"
    # max_nodes_per_batch = 1000
    # file_list = glob.glob("../benchmarks/" + benchmark_fold + "/test_data/*.smt2")
    # trained_model_path="/home/cheli243/PycharmProjects/HintsLearning/src/trained_model/GNN_Argument_selection__2021-02-14_22-37-39_best.pkl"
    # initial_file_number= len(file_list)
    # thread_number = 4
    # print("file_list " + str(initial_file_number))
    # continuous_extracting=True
    # move_file = True
    # out_of_test_set=True
    #
    # file_list = [file if os.path.exists(file + ".hyperEdgeHornGraph.JSON") else None for file in file_list]
    # file_list = list(filter(None, file_list))
    # file_list_with_horn_graph = "file with horn graph " + str(len(file_list)) + "/" + str(initial_file_number)
    # print("file_list_with_horn_graph", file_list_with_horn_graph)
    #
    # filtered_file_list = filter_file_list_by_max_node(file_list, max_nodes_per_batch)
    #
    # timeout = 1200000  # -measurePredictedPredicates
    # check_solvability_parameter_list = "-checkSolvability  -measurePredictedPredicates -varyGeneratedPredicates -abstract -noIntervals -solvabilityTimeout:300 -mainTimeout:1200"
    # file_list_with_parameters = (lambda: [
    #     [file, check_solvability_parameter_list, timeout, move_file] if not os.path.exists(
    #         file + ".solvability.JSON") else [] for
    #     file in filtered_file_list] if continuous_extracting == True
    # else [[file, check_solvability_parameter_list, timeout, move_file] for
    #       file in filtered_file_list])()
    # file_list_for_solvability_check=list(filter(lambda x: len(x) != 0, file_list_with_parameters))
    # print("file_list_for_solvability_check",len(file_list_for_solvability_check))
    #
    #
    # json_solvability_obj_list = read_measurement_from_JSON(filtered_file_list, ".solvability.JSON")
    #
    # three_fild_name=["empty","predicted","full"]
    # solvability_name_fold= (lambda : three_fild_name if out_of_test_set==True else three_fild_name + ["true"])()
    # solvability_json_name_fold=[ "solvability"+x+"InitialPredicates" for x in solvability_name_fold]
    # solvable_file_list = {name_fold: [] for name_fold in solvability_json_name_fold}
    # for name_fold in solvability_json_name_fold:
    #     solvability = [1 if s[name_fold] == "true" else 0 for s in json_solvability_obj_list]
    #     print(name_fold, str(sum(solvability)) + "/" + str(len(json_solvability_obj_list)))
    #     for i, (s, f) in enumerate(zip(solvability, json_solvability_obj_list)):
    #         if s == 1:
    #             # print(json_solvability_obj_list[i]["file_name"])
    #             solvable_file_list[name_fold].append(json_solvability_obj_list[i]["file_name"])
    # difference_betw_predicted_full=set(solvable_file_list["solvabilitypredictedInitialPredicates"]).difference(set(solvable_file_list["solvabilityfullInitialPredicates"]))
    # difference_betw_predicted_empty = set(solvable_file_list["solvabilitypredictedInitialPredicates"]).difference(
    #     set(solvable_file_list["solvabilityemptyInitialPredicates"]))
    # difference_betw_full_empty = set(solvable_file_list["solvabilityfullInitialPredicates"]).difference(
    #     set(solvable_file_list["solvabilityemptyInitialPredicates"]))
    # print("difference_betw_predicted_full",len(difference_betw_predicted_full))
    # print("difference_betw_predicted_empty", len(difference_betw_predicted_empty))
    # print("difference_betw_full_empty", len(difference_betw_full_empty))
    #
    #
    # # description: read measurement JSON file
    # scatter_plot_range = [0, 120]
    # json_obj_list = read_measurement_from_JSON(filtered_file_list)
    #
    # get_analysis_for_predicted_labels(json_obj_list, out_of_test_set=out_of_test_set, time_unit=1000,
    #                                   scatter_plot_range=scatter_plot_range)
    # print("solvable file by predicted label:" + str(len(json_obj_list)) + "/" + str(len(filtered_file_list)))
    #
    # # description: print results
    # print("-" * 10)
    # print(file_list_with_horn_graph)
    # print("max_nodes_per_batch", max_nodes_per_batch)
    # print("filtered_file_list by max_nodes_per_batch:" + str(len(filtered_file_list)) + "/" + str(len(file_list)))
    #
    # # description: statistic data
    # get_statistic_data(filtered_file_list, benchmark_fold)

main()