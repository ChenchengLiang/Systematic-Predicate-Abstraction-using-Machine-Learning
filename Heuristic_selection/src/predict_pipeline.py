import glob
from Miscellaneous import GPU_switch, pickleRead
from measurement_functions import get_evaluations_from_eldarica_pool, get_one_valuations_from_eldarica, \
    get_analysis_for_predicted_labels, read_measurement_from_JSON
from predict_functions import wrapped_prediction, write_predicted_label_to_JSON_file
from utils import call_eldarica_in_batch,get_statistic_data
from utils import filter_file_list_by_max_node, run_eldarica_with_shell_pool, run_eldarica_with_shell, \
    run_eldarica_with_shell_pool_with_file_list
from utils import plot_scatter
import os


def main():
    # description: parameter settings
    benchmark = "mixed-three-fold"
    #benchmark_fold = benchmark + "-" + "predict-1"
    #benchmark_fold = benchmark + "-" + "predict-4"
    #benchmark_fold = benchmark + "-" + "predict-5"
    #benchmark_fold = benchmark + "-" + "single-example"
    #benchmark_fold = benchmark + "-" + "predict-out-of-test-set-8"
    #benchmark_fold = benchmark + "-" + "predict-out-of-test-set-9"
    benchmark_fold = benchmark + "-" + "predict-valid-set"
    max_nodes_per_batch = 1000
    file_list = glob.glob("../benchmarks/" + benchmark_fold + "/test_data/*.smt2")
    initial_file_number= len(file_list)
    thread_number = 4
    print("file_list " + str(initial_file_number))
    continuous_extracting=True
    move_file = True
    out_of_test_set=False

    # description: generate horn graph
    timeout = 120 *5  # second
    move_file_parameter_eldarica = (lambda : " -moveFile " if move_file==True else " ")()
    #todo: use intervals
    eldarica_parameters = "-getHornGraph:hyperEdgeGraph -generateSimplePredicates -varyGeneratedPredicates  "+ move_file_parameter_eldarica +" -maxNode:"+str(max_nodes_per_batch)+" -abstract -noIntervals -mainTimeout:1200"
    file_list_with_parameters = [
        [file, eldarica_parameters, timeout,move_file] if not os.path.exists(file + ".hyperEdgeHornGraph.JSON") else [] for file in file_list]
    #run_eldarica_with_shell_pool_with_file_list(thread_number, run_eldarica_with_shell, file_list_with_parameters) #continuous extracting

    file_list = [file if os.path.exists(file + ".hyperEdgeHornGraph.JSON") else None for file in file_list]
    file_list = list(filter(None, file_list))
    file_list_with_horn_graph="file with horn graph " + str(len(file_list)) + "/" +  str(initial_file_number)
    print("file_list_with_horn_graph",file_list_with_horn_graph)

    # description: filter files by max_nodes_per_batch
    filtered_file_list = filter_file_list_by_max_node(file_list, max_nodes_per_batch)

    # description: predict label
    predict_label(benchmark, max_nodes_per_batch, benchmark_fold, filtered_file_list)#file_list


    # description: get solvability and measurement info with different predicate setting for unseen data
    timeout = 1200000#-measurePredictedPredicates
    check_solvability_parameter_list = "-checkSolvability  -measurePredictedPredicates -varyGeneratedPredicates -abstract -noIntervals -solvabilityTimeout:120 -mainTimeout:1200"
    file_list_with_parameters = (lambda: [
        [file, check_solvability_parameter_list, timeout, move_file] if not os.path.exists(
            file + ".solvability.JSON") else [] for
        file in filtered_file_list] if continuous_extracting == True
    else [[file, check_solvability_parameter_list, timeout, move_file] for
          file in filtered_file_list])()  
    run_eldarica_with_shell_pool_with_file_list(thread_number, run_eldarica_with_shell, file_list_with_parameters)

    # description: read solvability results
    json_solvability_obj_list = read_measurement_from_JSON(filtered_file_list, ".solvability.JSON")

    three_fild_name=["empty","predicted","full"]
    solvability_name_fold= (lambda : three_fild_name if out_of_test_set==True else three_fild_name + ["true"])()
    solvability_json_name_fold=[ "solvability"+x+"InitialPredicates" for x in solvability_name_fold]
    for name_fold in solvability_json_name_fold:
        solvability= [1 if s[name_fold] == "true" else 0 for s in json_solvability_obj_list]
        print(name_fold,str(sum(solvability)) + "/" + str(len(json_solvability_obj_list)))


    # description: read measurement JSON file
    scatter_plot_range=[0,120]
    json_obj_list = read_measurement_from_JSON(filtered_file_list)

    get_analysis_for_predicted_labels(json_obj_list, out_of_test_set=out_of_test_set,time_unit=1000,scatter_plot_range=scatter_plot_range)
    print("solvable file by predicted label:" + str(len(json_obj_list)) + "/" + str(len(filtered_file_list)))

    # description: print results
    print("-"*10)
    print(file_list_with_horn_graph)
    print("max_nodes_per_batch", max_nodes_per_batch)
    print("filtered_file_list by max_nodes_per_batch:" + str(len(filtered_file_list)) + "/" + str(len(file_list)))

    #todo: get ROC AUC
    #description: statistic data
    get_statistic_data(filtered_file_list,benchmark_fold)

    # description: how many predicates used in end
    #get_recall_scatter(solvability_name_fold, json_solvability_obj_list, filtered_file_list)





def get_recall_scatter(solvability_name_fold,json_solvability_obj_list,filtered_file_list):
    # description: how many predicates used in end
    minimizedPredicateFromCegar_name_list = ["minimizedPredicateFromCegar" + name + "InitialPredicates" for name in
                                             solvability_name_fold]

    minimizedPredicateFromCegar_list = {name: read_minimizedPredicateFromCegar(name, json_solvability_obj_list) for name
                                        in minimizedPredicateFromCegar_name_list}
    initialPredicatesUsedInMinimizedPredicateFromCegar_list = {
        name: read_minimizedPredicateFromCegar("initialPredicatesUsedInM" + name[1:], json_solvability_obj_list) for
        name in minimizedPredicateFromCegar_name_list}
    for name in minimizedPredicateFromCegar_name_list:
        print("number of initial predicates in minimized predicates/minimized predicates," + name[len(
            "minimizedPredicateFromCegar"):] + ":" + str(
            sum(initialPredicatesUsedInMinimizedPredicateFromCegar_list[name])) + "/" + str(
            sum(minimizedPredicateFromCegar_list[name])))
        print(str(initialPredicatesUsedInMinimizedPredicateFromCegar_list[name]))
        print(str(minimizedPredicateFromCegar_list[name]))
    scatter_plot_range = [0, 0]
    for name in minimizedPredicateFromCegar_name_list:
        fold_name = name[len("minimizedPredicateFromCegar"):]
        plot_scatter(minimizedPredicateFromCegar_list[name],
                     initialPredicatesUsedInMinimizedPredicateFromCegar_list[name],
                     name=fold_name + "_used_in_the_end", range=scatter_plot_range,
                     x_label="minimized_useful_predicate_number", y_label=fold_name + "_predicates")
        print("initialPredicatesUsedInMinimizedPredicate > minimizedPredicateFromCegar", name)
        for i, (x, y) in enumerate(zip(minimizedPredicateFromCegar_list[name],
                                       initialPredicatesUsedInMinimizedPredicateFromCegar_list[name])):
            if x < y:
                print(filtered_file_list[i])

def read_minimizedPredicateFromCegar(fild_name, json_solvability_obj_list):
    minimizedPredicateFromCegar_for_empty_initial_predicates = [
        s[fild_name]
        for s in json_solvability_obj_list]
    return list(map(lambda x: int(x), minimizedPredicateFromCegar_for_empty_initial_predicates))

def predict_label(benchmark,max_nodes_per_batch,benchmark_fold,file_list):

    label = "template_relevance"
    # read best threshold from pickle
    parameters = pickleRead(benchmark + "-" + label + "-parameters", "../src/trained_model/")
    hyper_parameter = {"max_nodes_per_batch": max_nodes_per_batch,
                       "best_threshold_set": parameters["best_threshold_set"], "read_best_threshold": True}
    trained_model_path = "/home/cheli243/PycharmProjects/HintsLearning/src/trained_model/GNN_Argument_selection__2021-02-14_22-37-39_best.pkl"
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
