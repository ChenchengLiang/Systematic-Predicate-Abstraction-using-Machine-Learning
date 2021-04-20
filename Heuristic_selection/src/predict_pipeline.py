import glob
from Miscellaneous import GPU_switch, pickleRead
from measurement_functions import get_evaluations_from_eldarica_pool, get_one_valuations_from_eldarica, \
    get_analysis_for_predicted_labels, read_measurement_from_JSON
from predict_functions import wrapped_prediction, write_predicted_label_to_JSON_file
from utils import call_eldarica_in_batch,get_statistic_data
from utils import filter_file_list_by_max_node, run_eldarica_with_shell_pool, run_eldarica_with_shell, \
    run_eldarica_with_shell_pool_with_file_list
from utils import plot_scatter,generate_horn_graph,wrapped_generate_horn_graph,get_solvability_and_measurement_from_eldarica,get_recall_scatter,mutual_differences
import os
import sys


def main():
    # description: parameter settings
    benchmark = "lia-lin-extract-only-initial-predicates"#sys.argv[1]
    #benchmark_fold = benchmark + "-" + "test"
    #benchmark_fold = benchmark + "-" + "predict"
    benchmark_fold = benchmark + "-" + "unsolved-emptyLabel"#sys.argv[2]
    #benchmark_fold = benchmark + "-" + "predict-5"
    #benchmark_fold = benchmark + "-" + "single-example"
    max_nodes_per_batch = 10000

    #/home/cheli243/PycharmProjects/HintsLearning/src/
    trained_model_path="trained_model/R-GCN_template_relevance__2021-04-18_22-21-17_best.pkl"
    thread_number = 6
    continuous_extracting=True
    move_file = True
    out_of_test_set=True
    use_test_threshold=False

    filtered_file_list,file_list_with_horn_graph,file_list=wrapped_generate_horn_graph(benchmark_fold, max_nodes_per_batch, move_file=move_file, thread_number=thread_number)


    # description: predict label
    #predict_label(benchmark, max_nodes_per_batch, benchmark_fold, filtered_file_list,trained_model_path,use_test_threshold)#file_list


    # description: get solvability and measurement info with different predicate setting for unseen data
    # get_solvability_and_measurement_from_eldarica(filtered_file_list, thread_number, continuous_extracting=continuous_extracting,move_file=move_file,
    #                                               checkSolvability="-checkSolvability",measurePredictedPredicates=" ",onlyInitialPredicates="")

    # description: read solvability results
    json_solvability_obj_list = read_measurement_from_JSON(filtered_file_list, ".solvability.JSON")

    three_fild_name=["empty","predicted","full"]
    solvability_name_fold= (lambda : three_fild_name if out_of_test_set==True else three_fild_name + ["true"])()
    solvability_json_name_fold=[ "solvability"+x+"InitialPredicates" for x in solvability_name_fold]
    solvable_file_list={name_fold:[] for name_fold in solvability_json_name_fold}
    for name_fold in solvability_json_name_fold:
        solvability = [1 if s[name_fold] == "true" else 0 for s in json_solvability_obj_list]
        print(name_fold, str(sum(solvability)) + "/" + str(len(json_solvability_obj_list)))
        for i, (s, f) in enumerate(zip(solvability, json_solvability_obj_list)):
            if s == 1:
                # print(json_solvability_obj_list[i]["file_name"])
                solvable_file_list[name_fold].append(json_solvability_obj_list[i]["file_name"])
    difference_betw_predicted_full=mutual_differences(solvable_file_list["solvabilitypredictedInitialPredicates"],solvable_file_list["solvabilityfullInitialPredicates"])
    difference_betw_predicted_empty = mutual_differences(solvable_file_list["solvabilitypredictedInitialPredicates"],solvable_file_list["solvabilityemptyInitialPredicates"])
    difference_betw_full_empty = mutual_differences(solvable_file_list["solvabilityfullInitialPredicates"],solvable_file_list["solvabilityemptyInitialPredicates"])
    common_betw_predicted_full=set(solvable_file_list["solvabilitypredictedInitialPredicates"]).intersection(set(solvable_file_list["solvabilityfullInitialPredicates"]))
    common_betw_predicted_empty = set(solvable_file_list["solvabilitypredictedInitialPredicates"]).intersection(set(solvable_file_list["solvabilityemptyInitialPredicates"]))
    common_betw_full_empty = set(solvable_file_list["solvabilityfullInitialPredicates"]).intersection(set(solvable_file_list["solvabilityemptyInitialPredicates"]))
    print("difference_betw_predicted_full", len(difference_betw_predicted_full))
    print("difference_betw_predicted_empty", len(difference_betw_predicted_empty))
    print("difference_betw_full_empty", len(difference_betw_full_empty))
    print("common_betw_predicted_empty", len(common_betw_predicted_empty))
    print("common_betw_predicted_full", len(common_betw_predicted_full))
    print("common_betw_full_empty", len(common_betw_full_empty))


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





def predict_label(benchmark,max_nodes_per_batch,benchmark_fold,file_list,trained_model_path,use_test_threshold):

    label = "template_relevance"
    # read best threshold from pickle
    parameters = pickleRead(benchmark + "-" + label + "-parameters", "../src/trained_model/")
    hyper_parameter = {"max_nodes_per_batch": max_nodes_per_batch,
                       "best_threshold_set": (lambda : parameters["best_threshold_set"] if use_test_threshold== True else {"threshold":0.5,"accuracy":0})(),
                       "read_best_threshold": True}
    trained_model_path = trained_model_path
    json_type = ".hyperEdgeHornGraph.JSON"
    graph_type = json_type[1:json_type.find(".JSON")]
    gathered_nodes_binary_classification_task = ["predicate_occurrence_in_SCG", "argument_lower_bound_existence",
                                                 "argument_upper_bound_existence", "argument_occurrence_binary",
                                                 "template_relevance", "clause_occurrence_in_counter_examples_binary"]
    force_read = True
    form_label = True
    GPU_switch(False)
    result_dir = wrapped_prediction(trained_model_path, benchmark, benchmark_fold, label, force_read, form_label,
                                    json_type, graph_type, gathered_nodes_binary_classification_task, hyper_parameter,
                                    True,file_list=file_list)
    write_predicted_label_to_JSON_file(result_dir["dataset"], result_dir["predicted_Y_loaded_model"], json_type,
                                       result_dir["best_threshold"])


main()
