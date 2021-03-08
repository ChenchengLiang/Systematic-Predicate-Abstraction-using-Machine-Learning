import glob
import json
import os
from multiprocessing import Pool
from measurement_functions import get_evaluations_from_eldarica_pool,get_one_valuations_from_eldarica,read_measurement_from_JSON,get_analysis_for_predicted_labels
import numpy as np

from utils import call_eldarica, filter_file_list_by_max_node


class bcolors:
    GRENN = '\033[94m' #GREEN
    YELLOW = '\033[93m' #YELLOW
    RED = '\033[91m' #RED
    RESET = '\033[0m'  # RESET COLOR



def main():
    benchmark="mixed-three-fold-predict"
    file_list=glob.glob("../benchmarks/"+benchmark+"/test_data/*.smt2")
    max_nodes_per_batch=1000

    # todo: Try different option, abstract on/off, intervals,noIntervals
    basic_parameters=["-extractPredicates", "-readHints", "-measurePredictedPredicates"]
    eldarica_parameters_list={"abstract:on-noIntervals":basic_parameters+["-abstract","-noIntervals"],
                              "abstract:on-Intervals":basic_parameters+["-abstract"],
                              "abstract:off-noIntervals":basic_parameters+["-abstract:off","-noIntervals"],
                              "abstract:off-Intervals":basic_parameters+["-abstract:off"]}
    #call eldarica to evaluate predicted retuls
    eldarica_parameters = ["-extractPredicates", "-readHints", "-measurePredictedPredicates", "-noIntervals",
                           "-abstract","-solvabilityTimeout:120","-mainTimeout:1200"]

    #filter file list by max_nodes_per_batch
    filtered_file_list=filter_file_list_by_max_node(file_list,max_nodes_per_batch)
    print("filtered_file_list by max_nodes_per_batch:" + str(len(filtered_file_list)) + "/" + str(len(file_list)))

    #get_evaluations_from_eldarica_pool(get_one_valuations_from_eldarica, filtered_file_list, eldarica_parameters)

    #read measurement JSON file
    json_obj_list=read_measurement_from_JSON(filtered_file_list)
    print("solvable file:" +str(len(json_obj_list))+"/"+str(len(filtered_file_list)))
    get_analysis_for_predicted_labels(json_obj_list,time_unit=1000,scatter_plot_range=0)

main()