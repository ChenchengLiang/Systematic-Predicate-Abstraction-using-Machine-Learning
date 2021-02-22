import glob
import subprocess
import json
import os
import numpy as np
from multiprocessing import Pool
class bcolors:
    GRENN = '\033[94m' #GREEN
    YELLOW = '\033[93m' #YELLOW
    RED = '\033[91m' #RED
    RESET = '\033[0m'  # RESET COLOR

def get_evaluations_from_eldarica_pool(fun,file_list,parameters,countinous=True):
    parameter_list=[]
    if countinous == True:
        for file in file_list:
            if os.path.exists(file+".measurement.JSON")==False:
                parameter_list.append([file,parameters])
    else:
        for file in file_list:
            parameter_list.append([file,parameters])
    pool=Pool(processes=4)
    pool.map(fun, parameter_list)

def get_one_valuations_from_eldarica(parameters):
    # when there is no predicted labels or predicted labels cannot go through solvability check, then there is no measurement file generated.
    file=parameters[0]
    eldarica_parameters=parameters[1]
    print("measure", file)
    param = ["../eldarica-graph-generation/eld", file] + eldarica_parameters
    eld = subprocess.Popen(param, stdout=subprocess.DEVNULL, shell=False)
    eld.wait()
    print("eldarica finished")

def filter_file_list_by_max_node(file_list,max_nodes_per_batch):
    filtered_file_list=[]
    for file in file_list:
        with open(file+".hyperEdgeHornGraph.JSON") as f:
            loaded_graph = json.load(f)
            if len(loaded_graph["nodeIds"]) <max_nodes_per_batch:
                filtered_file_list.append(file)
    return filtered_file_list


def read_measurement_from_JSON(file_list):
    json_obj_list = []
    for file in file_list:
        json_file = file + ".measurement.JSON"
        #check json_file existence
        if(os.path.exists(json_file)==True):
            json_obj = {}
            json_obj["file_name"] = json_file
            with open(json_file) as f:
                loaded_graph = json.load(f)
                for field in loaded_graph:
                    # print(bcolors.GRENN + str(field) + str(loaded_graph[field]) + bcolors.RESET)
                    json_obj[str(field)] = str(loaded_graph[field])
            json_obj_list.append(json_obj)
    return json_obj_list

def get_best_measurement(int_field_map,measurement_list,best_measurement_count):
    #todo:receive different measurement function min, max ...
    #todo: deal with same value situation
    best_measurement= int_field_map[np.argmin(measurement_list)]
    best_measurement_value = min(measurement_list)
    best_measurement_count[best_measurement] = best_measurement_count[best_measurement] + 1
    print("best_timeConsumptionForCEGAR", best_measurement, best_measurement_value)

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
                           "-abstract","-solvabilityTimeout:120"]

    #filter file list by max_nodes_per_batch
    filtered_file_list=filter_file_list_by_max_node(file_list,max_nodes_per_batch)
    print("filtered_file_list by max_nodes_per_batch:" + str(len(filtered_file_list)) + "/" + str(len(file_list)))

    get_evaluations_from_eldarica_pool(get_one_valuations_from_eldarica, filtered_file_list, eldarica_parameters)

    #read measurement JSON file
    json_obj_list=read_measurement_from_JSON(filtered_file_list)

    print("solvable file:" +str(len(json_obj_list))+"/"+str(len(filtered_file_list)))
    #todo: analysis
    #if predidicted label is best, how much better or worse
    int_field_map = {}
    first_obj_str=json_obj_list[0].copy()
    first_obj_str.pop("file_name")
    for i,k in enumerate(first_obj_str):
        int_field_map[i]=k

    measurement_count_map={"measurementWithTrueLabel": 0, "measurementWithFullLabel": 0,"measurementWithEmptyLabel": 0, "measurementWithPredictedLabel": 0}
    best_timeConsumptionForCEGAR_count=measurement_count_map.copy()
    best_itearationNumber_count = measurement_count_map.copy()
    best_count_map={}
    for json_obj in json_obj_list:
        timeConsumptionForCEGAR_list=[]
        itearationNumber_list=[]
        print("file_name",json_obj.pop("file_name"))
        for field in json_obj:
            measurementStr = json_obj[field].replace('\'', '\"')
            print(field,"\t",json_obj[field])
            measurementDir=json.loads(measurementStr)
            timeConsumptionForCEGAR_list.append(measurementDir["timeConsumptionForCEGAR"])
            itearationNumber_list.append(measurementDir["itearationNumber"])

        get_best_measurement(int_field_map, timeConsumptionForCEGAR_list, best_timeConsumptionForCEGAR_count)
        get_best_measurement(int_field_map, itearationNumber_list, best_itearationNumber_count)

    #     #todo: predicted result better than other how much percentage

    print("------------")
    print("best_timeConsumptionForCEGAR_count",len(json_obj_list),best_timeConsumptionForCEGAR_count)
    print("best_itearationNumber_count", len(json_obj_list), best_itearationNumber_count)



main()