import os
from multiprocessing import Pool
from utils import call_eldarica
import json
import numpy as np
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
    call_eldarica(file,eldarica_parameters,"measurement")


def read_measurement_from_JSON(file_list,measurement=".measurement.JSON"):
    json_obj_list = []
    for file in file_list:
        json_file = file + measurement
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


def get_analysis_for_predicted_labels(json_obj_list):
    # todo: analysis
    # if predidicted label is best, how much better or worse
    int_field_map = {}
    first_obj_str = json_obj_list[0].copy()
    first_obj_str.pop("file_name")
    for i, k in enumerate(first_obj_str):
        int_field_map[i] = k

    measurement_count_map = {"measurementWithTrueLabel": 0, "measurementWithFullLabel": 0,
                             "measurementWithEmptyLabel": 0, "measurementWithPredictedLabel": 0}
    best_timeConsumptionForCEGAR_count = measurement_count_map.copy()
    best_itearationNumber_count = measurement_count_map.copy()
    best_generatedPredicateNumber_count = measurement_count_map.copy()
    best_averagePredicateSize_count = measurement_count_map.copy()
    best_predicateGeneratorTime_count = measurement_count_map.copy()
    best_count_map = {}
    for json_obj in json_obj_list:
        timeConsumptionForCEGAR_list = []
        itearationNumber_list = []
        generatedPredicateNumber_list = []
        averagePredicateSize_list = []
        predicateGeneratorTime_list = []
        print("file_name", json_obj.pop("file_name"))
        for field in json_obj:
            measurementStr = json_obj[field].replace('\'', '\"')
            print(field, "\t", json_obj[field])
            measurementDir = json.loads(measurementStr)
            timeConsumptionForCEGAR_list.append(measurementDir["timeConsumptionForCEGAR"])
            itearationNumber_list.append(measurementDir["itearationNumber"])
            generatedPredicateNumber_list.append(measurementDir["generatedPredicateNumber"])
            averagePredicateSize_list.append(measurementDir["averagePredicateSize"])
            predicateGeneratorTime_list.append(measurementDir["predicateGeneratorTime"])

        get_best_measurement(int_field_map, timeConsumptionForCEGAR_list, best_timeConsumptionForCEGAR_count)
        get_best_measurement(int_field_map, itearationNumber_list, best_itearationNumber_count)
        get_best_measurement(int_field_map, generatedPredicateNumber_list, best_generatedPredicateNumber_count)
        get_best_measurement(int_field_map, averagePredicateSize_list, best_averagePredicateSize_count)
        get_best_measurement(int_field_map, predicateGeneratorTime_list, best_predicateGeneratorTime_count)

        # todo: predicted result better than other how much percentage

    print("------------")
    print("best_timeConsumptionForCEGAR_count", len(json_obj_list), best_timeConsumptionForCEGAR_count)
    print("best_itearationNumber_count", len(json_obj_list), best_itearationNumber_count)
    print("best_generatedPredicateNumber_count", len(json_obj_list), best_generatedPredicateNumber_count)
    print("best_averagePredicateSize_count", len(json_obj_list), best_averagePredicateSize_count)
    print("best_predicateGeneratorTime_count", len(json_obj_list), best_predicateGeneratorTime_count)


def get_best_measurement(int_field_map,measurement_list,best_measurement_count):
    #todo:receive different measurement function min, max ...
    #todo: deal with same value situation
    best_measurement= int_field_map[np.argmin(measurement_list)]
    best_measurement_value = min(measurement_list)
    best_measurement_count[best_measurement] = best_measurement_count[best_measurement] + 1
    print("best_timeConsumptionForCEGAR", best_measurement, best_measurement_value)
