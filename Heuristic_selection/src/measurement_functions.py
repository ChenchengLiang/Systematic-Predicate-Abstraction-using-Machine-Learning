import os
from multiprocessing import Pool
from utils import call_eldarica,plot_scatter
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


def get_analysis_for_predicted_labels(json_obj_list,out_of_test_set=False,time_unit=1000,scatter_plot_range=[0,0]): #time_unit=1 means milliseconds. time_unit =1000 means seconds
    int_field_map = {}
    first_obj_str = json_obj_list[0].copy()
    first_obj_str.pop("file_name")
    for i, k in enumerate(first_obj_str):
        int_field_map[i] = k

    measurement_count_map = {"measurementWithTrueLabel": 0, "measurementWithFullLabel": 0,
                             "measurementWithEmptyLabel": 0, "measurementWithPredictedLabel": 0}
    measurement_name_list=["timeConsumptionForCEGAR","itearationNumber","generatedPredicateNumber",
                     "averagePredicateSize","predicateGeneratorTime"]
    measurement_best_count_map = {x:measurement_count_map.copy() for x in measurement_name_list}
    measurement_list_all_files_map = {x: [] for x in measurement_name_list}
    for json_obj in json_obj_list:
        measurement_list_map={x:[] for x in measurement_name_list}
        file_name=json_obj.pop("file_name")
        #print("file_name", file_name)
        for field in json_obj:
            measurementStr = json_obj[field].replace('\'', '\"')
            #print(field, "\t", json_obj[field])
            measurementDir = json.loads(measurementStr)
            for fild_name in measurement_name_list:
                measurement_list_map[fild_name].append(measurementDir[fild_name])

        for fild_name in measurement_name_list:
            measurement_list_all_files_map[fild_name].append(measurement_list_map[fild_name])

        for fild_name in measurement_name_list:
            get_best_measurement(int_field_map, measurement_list_map[fild_name], measurement_best_count_map[fild_name])

    print("------------")
    scatter_plot_range = scatter_plot_range
    measurement_list_all_files_map["timeConsumptionForCEGAR_ms"]=measurement_list_all_files_map["timeConsumptionForCEGAR"].copy()
    measurement_list_all_files_map["predicateGeneratorTime_ms"]=measurement_list_all_files_map["predicateGeneratorTime"].copy()
    measurement_list_all_files_map["timeConsumptionForCEGAR"]=[[float(data)/time_unit for data in data_fold] for data_fold in measurement_list_all_files_map["timeConsumptionForCEGAR"]]
    measurement_list_all_files_map["predicateGeneratorTime"] = [[float(data) / time_unit for data in data_fold] for data_fold in measurement_list_all_files_map["predicateGeneratorTime"]]
    extended_measurement_name_list=measurement_name_list + ["timeConsumptionForCEGAR_ms"] + ["predicateGeneratorTime_ms"]

    #todo: draw scatter compare predicted label with empty labels
    for fild_name in extended_measurement_name_list:
        measurement_scatter(measurement_list_all_files_map[fild_name], scatter_plot_range,
                            plot_name=fild_name + "-full_predicates", index=[1, 3])
    for fild_name in extended_measurement_name_list:
        measurement_scatter(measurement_list_all_files_map[fild_name], scatter_plot_range,
                            plot_name=fild_name + "-empty_predicates", index=[2, 3],
                            x_label="empty predicates")
    if out_of_test_set==True:
        for fild_name in measurement_name_list:
            merge_measurementWithTrueLabel_and_measurementWithEmptyLabel(measurement_best_count_map[fild_name])
    else:
        for fild_name in extended_measurement_name_list:
            measurement_scatter(measurement_list_all_files_map[fild_name], scatter_plot_range,
                                plot_name=fild_name+"-true_predicates", index=[0, 3],
                                x_label="true predicates")

    for fild_name in measurement_name_list:
        print("best_"+fild_name+"_count", len(json_obj_list), measurement_best_count_map[fild_name])
        #print(fild_name,measurement_list_all_files_map[fild_name])

def measurement_scatter(measurement_list_all_files,scatter_plot_range=[0,0],plot_name="",index=[1,3],x_label="full predicates",y_label="predicted predicates"):
    measurement_list_all_files_full_label = [float(v[index[0]]) for v in measurement_list_all_files]
    measurement_list_all_files_predicted_label = [float(v[index[1]]) for v in measurement_list_all_files]
    plot_scatter(measurement_list_all_files_full_label,
                 measurement_list_all_files_predicted_label,
                 name=plot_name, range=scatter_plot_range, x_label=x_label ,
                 y_label=y_label )

def merge_measurementWithTrueLabel_and_measurementWithEmptyLabel(dir):
    dir["measurementWithEmptyLabel"] = dir["measurementWithEmptyLabel"] + dir["measurementWithTrueLabel"]
    del (dir["measurementWithTrueLabel"])


def get_best_measurement(int_field_map,measurement_list,best_measurement_count):
    #todo:receive different measurement function min, max ...
    best_measurement_value = min(measurement_list)
    best_measurement_value_index_list=[int_field_map[i] if best_measurement_value==v else None for i,v in enumerate(measurement_list)]
    best_measurement_value_index_list = list(filter(None, best_measurement_value_index_list))
    for best_measurement in best_measurement_value_index_list:
        best_measurement_count[best_measurement] = best_measurement_count[best_measurement] + 1/len(best_measurement_value_index_list)

