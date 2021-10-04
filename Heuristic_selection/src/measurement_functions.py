import os
from multiprocessing import Pool
from utils import call_eldarica,plot_scatter
import json
import numpy as np
from utils import flattenList,unzip_file
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
        #unzip file
        unzip_file(json_file + ".zip")
        if os.path.exists(json_file):
            json_obj = {}
            json_obj["file_name"] = json_file
            with open(json_file) as f:
                loaded_graph = json.load(f)
                for field in loaded_graph:
                    # print(bcolors.GRENN + str(field) + str(loaded_graph[field]) + bcolors.RESET)
                    json_obj[str(field)] = str(loaded_graph[field])
            json_obj_list.append(json_obj)

        #delete unziped file
        if os.path.exists(json_file+".zip"):
            os.remove(json_file)
    return json_obj_list


def get_analysis_for_predicted_labels(json_obj_list,out_of_test_set=False,time_unit=1000,scatter_plot_range=[0,0]): #time_unit=1 means milliseconds. time_unit =1000 means seconds
    int_field_map = {}
    first_obj_str = json_obj_list[0].copy()
    first_obj_str.pop("file_name")
    for i, k in enumerate(first_obj_str):
        int_field_map[i] = k
    measurement_fold = ["true", "full", "empty", "predicted", "random","term", "oct", "relEqs", "relIneqs"]
    measurement_count_map = {("measurementWith" + x + "Label"):0 for x in measurement_fold}
    # measurement_count_map = {"measurementWithtrueLabel": 0, "measurementWithfullLabel": 0,
    #                          "measurementWithemptyLabel": 0, "measurementWithpredictedLabel": 0,}
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
            for field_name in measurement_name_list:
                measurement_list_map[field_name].append(measurementDir[field_name])

        for field_name in measurement_name_list:
            measurement_list_all_files_map[field_name].append(measurement_list_map[field_name])

        for field_name in measurement_name_list:
            get_best_measurement(int_field_map, measurement_list_map[field_name], measurement_best_count_map[field_name],field_name=field_name)

    print("------------")
    scatter_plot_range = [0,max(list(map(np.float,flattenList(measurement_list_all_files_map["timeConsumptionForCEGAR"]))))/1000]#scatter_plot_range
    print("scatter_plot_range (seconds)",scatter_plot_range)
    measurement_list_all_files_map["timeConsumptionForCEGAR_ms"]=measurement_list_all_files_map["timeConsumptionForCEGAR"].copy()
    measurement_list_all_files_map["predicateGeneratorTime_ms"]=measurement_list_all_files_map["predicateGeneratorTime"].copy()
    measurement_list_all_files_map["timeConsumptionForCEGAR"]=[[float(data)/time_unit for data in data_fold] for data_fold in measurement_list_all_files_map["timeConsumptionForCEGAR"]]
    measurement_list_all_files_map["predicateGeneratorTime"] = [[float(data) / time_unit for data in data_fold] for data_fold in measurement_list_all_files_map["predicateGeneratorTime"]]
    extended_measurement_name_list=measurement_name_list + ["timeConsumptionForCEGAR_ms"] + ["predicateGeneratorTime_ms"]

    for fild_name in extended_measurement_name_list:
        temp_scatter_plot_range=(lambda : [0,scatter_plot_range[1]*100] if fild_name.find("_ms")>0 else scatter_plot_range)()
        for plot_fold in ["full", "empty", "random","term", "oct", "relEqs", "relIneqs"]:
            measurement_scatter(measurement_list_all_files_map[fild_name], temp_scatter_plot_range,
                                plot_name=fild_name + "-"+plot_fold+"_label",
                                index=[measurement_fold.index(plot_fold), measurement_fold.index("predicted")],
                                x_label=plot_fold+" label")
        # measurement_scatter(measurement_list_all_files_map[fild_name], temp_scatter_plot_range,
        #                     plot_name=fild_name + "-full_label", index=[measurement_fold.index("full"), measurement_fold.index("predicted")],
        #                     x_label="full label")
        # measurement_scatter(measurement_list_all_files_map[fild_name], temp_scatter_plot_range,
        #                     plot_name=fild_name + "-empty_label", index=[measurement_fold.index("full"), measurement_fold.index("predicted")],
        #                     x_label="empty label")

    if out_of_test_set==True:
        for fild_name in measurement_name_list:
            merge_measurementWithTrueLabel_and_measurementWithEmptyLabel(measurement_best_count_map[fild_name])

        # for fild_name in extended_measurement_name_list: #merge empty and true column, if true column is empty it is simply equal to empty column
        #     measurement_list_all_files_map[fild_name] = [[float(data_fold[0]) + float(data_fold[2]), float(data_fold[1]), float(data_fold[3])] for
        #                                                  data_fold in measurement_list_all_files_map[fild_name]] #0:empty,1:full,2:predicted
        # for fild_name in extended_measurement_name_list:
        #     measurement_scatter(measurement_list_all_files_map[fild_name], scatter_plot_range,
        #                         plot_name=fild_name + "-full_predicates", index=[1, 2])
        #     measurement_scatter(measurement_list_all_files_map[fild_name], scatter_plot_range,
        #                         plot_name=fild_name + "-empty_predicates", index=[0, 2],
        #                         x_label="empty predicates")
    else:
        for fild_name in extended_measurement_name_list:
            temp_scatter_plot_range = (
                lambda: [0, scatter_plot_range[1] * 100] if fild_name.find("_ms") > 0 else scatter_plot_range)()
            measurement_scatter(measurement_list_all_files_map[fild_name], temp_scatter_plot_range,
                                plot_name=fild_name+"-true_label", index=[measurement_fold.index("true"), measurement_fold.index("predicted")],
                                x_label="true label")


    with open("trained_model/measurement.log", 'w') as outfile:
        for fild_name in measurement_name_list:
            write_content="best_"+fild_name+"_count, " + str(len(json_obj_list))+"," +  str(measurement_best_count_map[fild_name])
            print(write_content)
            outfile.write(write_content+"\n")
            #print(fild_name,measurement_list_all_files_map[fild_name])

def measurement_scatter(measurement_list_all_files,scatter_plot_range=[0,0],plot_name="",index=[1,3],x_label="full label",y_label="predicted label"):
    measurement_list_all_files_full_label = [float(v[index[0]]) for v in measurement_list_all_files]
    measurement_list_all_files_predicted_label = [float(v[index[1]]) for v in measurement_list_all_files]
    plot_scatter(measurement_list_all_files_full_label,
                 measurement_list_all_files_predicted_label,
                 name=plot_name, range=scatter_plot_range, x_label=x_label ,
                 y_label=y_label )

def merge_measurementWithTrueLabel_and_measurementWithEmptyLabel(dir):
    dir["measurementWithEmptyLabel"] = dir["measurementWithEmptyLabel"] + dir["measurementWithTrueLabel"]
    del (dir["measurementWithTrueLabel"])


def get_best_measurement(int_field_map,measurement_list,best_measurement_count,field_name=""):
    #todo:receive different measurement function min, max ...
    measurement_list=[float(x) for x in measurement_list]
    best_measurement_value = min(measurement_list)
    best_measurement_value_index_list=[int_field_map[i] if best_measurement_value==v else None for i,v in enumerate(measurement_list)]
    best_measurement_value_index_list = list(filter(None, best_measurement_value_index_list))
    if len(best_measurement_value_index_list)>1 and field_name=="timeConsumptionForCEGAR":
        print("more than one option have the same consumed time",field_name,best_measurement_value_index_list,measurement_list)
    for best_measurement in best_measurement_value_index_list:
        best_measurement_count[best_measurement] = best_measurement_count[best_measurement] + 1/len(best_measurement_value_index_list)

