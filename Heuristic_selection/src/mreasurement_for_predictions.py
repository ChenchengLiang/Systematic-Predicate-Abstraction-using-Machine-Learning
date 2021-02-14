import glob
import subprocess
import json
import numpy as np
from typing import Dict
class bcolors:
    GRENN = '\033[94m' #GREEN
    YELLOW = '\033[93m' #YELLOW
    RED = '\033[91m' #RED
    RESET = '\033[0m'  # RESET COLOR

def get_evaluations_from_eldarica(file_list,eldarica_parameters):
    for file in file_list:
        print("measure", file)
        param=["../eldarica-graph-generation/eld", file] + eldarica_parameters
        eld = subprocess.Popen(param, stdout=subprocess.DEVNULL, shell=False)
        eld.wait()
        print("eldarica finished")

def read_measurement_from_JSON(file_list):
    json_obj_list = []
    for file in file_list:
        json_file = file + ".measurement.JSON"
        json_obj = {}
        json_obj["file_name"] = json_file
        with open(json_file) as f:
            loaded_graph = json.load(f)
            for field in loaded_graph:
                # print(bcolors.GRENN + str(field) + str(loaded_graph[field]) + bcolors.RESET)
                json_obj[str(field)] = str(loaded_graph[field])
        json_obj_list.append(json_obj)
    return json_obj_list

def main():
    benchmark="mixed-four-fold-small-test-predict"
    file_list=glob.glob("../benchmarks/"+benchmark+"/test_data/*.smt2")

    # todo: Try different option, abstract on/off, intervals,noIntervals
    basic_parameters=["-extractPredicates", "-readHints", "-measurePredictedPredicates"]
    eldarica_parameters_list={"abstract:on-noIntervals":basic_parameters+["-abstract","-noIntervals"],
                              "abstract:on-Intervals":basic_parameters+["-abstract"],
                              "abstract:off-noIntervals":basic_parameters+["-abstract:off","-noIntervals"],
                              "abstract:off-Intervals":basic_parameters+["-abstract:off"]}
    #call eldarica to evaluate predicted retuls
    eldarica_parameters = ["-extractPredicates", "-readHints", "-measurePredictedPredicates", "-noIntervals",
                           "-abstract", "-mainTimeout:120"]
    #get_evaluations_from_eldarica(file_list,eldarica_parameters)

    #read measurement JSON file
    json_obj_list=read_measurement_from_JSON(file_list)

    #todo: analysis
    #if predidicted label is best, how much better or worse
    int_field_map = {}
    first_obj_str=json_obj_list[0].copy()
    first_obj_str.pop("file_name")
    for i,k in enumerate(first_obj_str):
        int_field_map[i]=k

    for json_obj in json_obj_list:
        timeConsumptionForCEGAR_list=[]
        print("file_name",json_obj.pop("file_name"))
        for field in json_obj:
            measurementStr = json_obj[field].replace('\'', '\"')
            print(field,"\t",json_obj[field])
            measurementDir=json.loads(measurementStr)
            timeConsumptionForCEGAR_list.append(measurementDir["timeConsumptionForCEGAR"])
        best_timeConsumptionForCEGAR=int_field_map[np.argmax(timeConsumptionForCEGAR_list)]
        best_timeConsumptionForCEGAR_value=max(timeConsumptionForCEGAR_list)
        print("best_timeConsumptionForCEGAR",best_timeConsumptionForCEGAR,best_timeConsumptionForCEGAR_value)
        #todo: predicted result bettern other how much percentage



main()