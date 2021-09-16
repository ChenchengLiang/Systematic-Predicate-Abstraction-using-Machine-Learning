from utils import plot_scatter,generate_horn_graph,wrapped_generate_horn_graph,get_solvability_and_measurement_from_eldarica,get_recall_scatter,mutual_differences
import os
import sys
from measurement_functions import read_measurement_from_JSON
from predict_functions import predict_label
def main():
    fold_number_list=["test"]
    for fold in fold_number_list:
        predict_pipeline(fold)

def predict_pipeline(fold_number=0):
    # description: parameter settings
    benchmark = "temp-multiclass-12"#sys.argv[1]

    #benchmark_fold = benchmark + "-" + "unsolvable"#sys.argv[2]

    benchmark_fold = benchmark + "-unsolvable-predicted-"+str(fold_number)#sys.argv[2]

    max_nodes_per_batch = 10000

    #/home/cheli243/PycharmProjects/HintsLearning/src/
    trained_model_path="trained_model/GNN_Argument_selection__2021-09-05_16-30-16_best.pkl"
    thread_number = 4
    continuous_extracting=True
    move_file = False
    out_of_test_set=True
    use_test_threshold=False
    separateByPredicates=""#-separateByPredicates
    generateSimplePredicates=""#-generateSimplePredicates
    generateTemplates="-generateTemplates"#-generateTemplates
    abstract = "-abstract:empty"#empty
    noIntervals=""
    label="node_multiclass"
    num_node_target_labels=3
    verbose=True

    wrapped_generate_horn_graph_params={"benchmark_fold":benchmark_fold,"max_nodes_per_batch":max_nodes_per_batch,"separateByPredicates":separateByPredicates,
                                        "abstract":abstract,"move_file":move_file,"thread_number":thread_number,"generateSimplePredicates":generateSimplePredicates,
                                        "generateTemplates":generateTemplates,"data_fold":["test_data"],"horn_graph_folder":"","noIntervals":noIntervals}
    filtered_file_list, file_list_with_horn_graph, file_list = \
        wrapped_generate_horn_graph(wrapped_generate_horn_graph_params)


    # description: predict label
    predict_label(benchmark, max_nodes_per_batch, benchmark_fold, filtered_file_list,trained_model_path,use_test_threshold,
                  separateByPredicates=separateByPredicates,label=label,verbose=verbose,num_node_target_labels=num_node_target_labels)#file_list
    #
    # # description: get solvability and measurement info with different predicate setting for unseen data
    # get_solvability_and_measurement_from_eldarica_params={"filtered_file_list":filtered_file_list,"thread_number":thread_number,"continuous_extracting":continuous_extracting,
    #                                                       "move_file":move_file,"checkSolvability":"-checkSolvability","generateTemplates":generateTemplates,
    #                                                       "measurePredictedPredicates":"","onlyInitialPredicates":"","abstract":abstract,"noIntervals":noIntervals,
    #                                                       "separateByPredicates":separateByPredicates,"solvabilityTimeout":"300","timeout":300*6}#"solvabilityTimeout":"3600","timeout":60*60*4
    # get_solvability_and_measurement_from_eldarica(get_solvability_and_measurement_from_eldarica_params)
    #
    # # description: read solvability results
    # json_solvability_obj_list = read_measurement_from_JSON(filtered_file_list, ".solvability.JSON")
    #
    # three_fild_name=["empty","predicted","full","true","random"]
    # solvability_name_fold= (lambda : three_fild_name if out_of_test_set==True else three_fild_name + ["true"])()
    # solvability_json_name_fold=[ "solvability"+x+"InitialPredicates" for x in solvability_name_fold]
    # solvable_file_list={name_fold:[] for name_fold in solvability_json_name_fold}
    # for name_fold in solvability_json_name_fold:
    #     solvability = [1 if s[name_fold] == "true" else 0 for s in json_solvability_obj_list]
    #     print("solved cases when use "+name_fold[len("solvability"):], str(sum(solvability)) + "/" + str(len(json_solvability_obj_list)))
    #     for i, (s, f) in enumerate(zip(solvability, json_solvability_obj_list)):
    #         if s == 1:
    #             # print(json_solvability_obj_list[i]["file_name"])
    #             solvable_file_list[name_fold].append(json_solvability_obj_list[i]["file_name"])
    # difference_betw_predicted_full=mutual_differences(solvable_file_list["solvabilitypredictedInitialPredicates"],solvable_file_list["solvabilityfullInitialPredicates"])
    # difference_betw_predicted_empty = mutual_differences(solvable_file_list["solvabilitypredictedInitialPredicates"],solvable_file_list["solvabilityemptyInitialPredicates"])
    # #difference_betw_predicted_true = mutual_differences(solvable_file_list["solvabilitypredictedInitialPredicates"],solvable_file_list["solvabilitytrueInitialPredicates"])
    # difference_betw_full_empty = mutual_differences(solvable_file_list["solvabilityfullInitialPredicates"],solvable_file_list["solvabilityemptyInitialPredicates"])
    # common_betw_predicted_full=set(solvable_file_list["solvabilitypredictedInitialPredicates"]).intersection(set(solvable_file_list["solvabilityfullInitialPredicates"]))
    # common_betw_predicted_empty = set(solvable_file_list["solvabilitypredictedInitialPredicates"]).intersection(set(solvable_file_list["solvabilityemptyInitialPredicates"]))
    # #common_betw_predicted_true = set(solvable_file_list["solvabilitypredictedInitialPredicates"]).intersection(set(solvable_file_list["solvabilitytrueInitialPredicates"]))
    # common_betw_full_empty = set(solvable_file_list["solvabilityfullInitialPredicates"]).intersection(set(solvable_file_list["solvabilityemptyInitialPredicates"]))
    # unique_solved_by_predicted= []
    # unique_solved_by_random=[]
    # #unique_solved_by_true = []
    # for f in solvable_file_list["solvabilitypredictedInitialPredicates"]:
    #     if not f in set(solvable_file_list["solvabilityfullInitialPredicates"]+ solvable_file_list["solvabilityemptyInitialPredicates"]):
    #         unique_solved_by_predicted.append(f[f.rfind("/")+1:])
    # for f in solvable_file_list["solvabilityrandomInitialPredicates"]:
    #     if not f in set(solvable_file_list["solvabilityfullInitialPredicates"]+ solvable_file_list["solvabilityemptyInitialPredicates"]):
    #         unique_solved_by_random.append(f[f.rfind("/")+1:])
    # # for f in solvable_file_list["solvabilitytrueInitialPredicates"]:
    # #     if not f in set(solvable_file_list["solvabilityfullInitialPredicates"]+ solvable_file_list["solvabilityemptyInitialPredicates"]):
    # #         unique_solved_by_true.append(f)
    # print("difference_betw_predicted_full", len(difference_betw_predicted_full))
    # print("difference_betw_predicted_empty", len(difference_betw_predicted_empty))
    # print("difference_betw_full_empty", len(difference_betw_full_empty))
    # #print("difference_betw_predicted_true", len(difference_betw_predicted_true))
    # print("common_betw_predicted_empty", len(common_betw_predicted_empty))
    # print("common_betw_predicted_full", len(common_betw_predicted_full))
    # #print("common_betw_predicted_true", len(common_betw_predicted_true))
    # print("common_betw_full_empty", len(common_betw_full_empty))
    #
    # print("unique_solved_by_predicted", len(unique_solved_by_predicted))
    # print("unique_solved_by_predicted", unique_solved_by_predicted)
    # print("unique_solved_by_random", len(unique_solved_by_random))
    # print("unique_solved_by_random", unique_solved_by_random)



    # description: read measurement JSON file
    # get_solvability_and_measurement_from_eldarica(filtered_file_list, thread_number,
    #                                               continuous_extracting=continuous_extracting, move_file=move_file,
    #                                               checkSolvability="-checkSolvability", measurePredictedPredicates="-measurePredictedPredicates")
    # scatter_plot_range=[0,120]
    # json_obj_list = read_measurement_from_JSON(filtered_file_list)
    # print("json_obj_list",json_obj_list)
    # get_analysis_for_predicted_labels(json_obj_list, out_of_test_set=out_of_test_set,time_unit=1000,scatter_plot_range=scatter_plot_range)
    # print("solvable file by predicted label:" + str(len(json_obj_list)) + "/" + str(len(filtered_file_list)))

    # description: print results
    # print("-"*10)
    # print(file_list_with_horn_graph)
    # print("max_nodes_per_batch", max_nodes_per_batch)
    # print("filtered_file_list by max_nodes_per_batch:" + str(len(filtered_file_list)) + "/" + str(len(file_list)))

    #description: statistic data
    #get_statistic_data(filtered_file_list,benchmark_fold)

    # description: how many predicates used in end
    #get_recall_scatter(solvability_name_fold, json_solvability_obj_list, filtered_file_list)





main()
