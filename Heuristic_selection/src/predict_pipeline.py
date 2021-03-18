import glob
from Miscellaneous import GPU_switch, pickleRead
from measurement_functions import get_evaluations_from_eldarica_pool, get_one_valuations_from_eldarica, \
    get_analysis_for_predicted_labels, read_measurement_from_JSON
from predict_functions import wrapped_prediction, write_predicted_label_to_JSON_file
from utils import call_eldarica_in_batch
from utils import filter_file_list_by_max_node, run_eldarica_with_shell_pool, run_eldarica_with_shell, \
    run_eldarica_with_shell_pool_with_file_list
from utils import plot_scatter
import os


def main():
    # description: parameter settings
    benchmark = "mixed-three-fold"
    # benchmark_fold = benchmark + "-" + "predict-1"
    #benchmark_fold = benchmark + "-" + "predict-4"
    #benchmark_fold = benchmark + "-" + "predict-5"
    #benchmark_fold = benchmark + "-" + "single-example"
    #benchmark_fold = benchmark + "-" + "predict-out-of-test-set-8"
    benchmark_fold = benchmark + "-" + "predict-out-of-test-set-9"
    max_nodes_per_batch = 1000
    file_list = glob.glob("../benchmarks/" + benchmark_fold + "/test_data/*.smt2")
    initial_file_number= len(file_list)
    thread_number = 4
    print("file_list " + str(initial_file_number))
    continuous_extracting=False

    # description: generate horn graph
    timeout = 120*5  # second
    move_file=False
    #todo: use intervals
    eldarica_parameters = "-getHornGraph:hyperEdgeGraph -generateSimplePredicates -varyGeneratedPredicates -abstract -noIntervals -mainTimeout:1200"
    file_list_with_parameters = [
        [file, eldarica_parameters, timeout,move_file] if not os.path.exists(file + ".circles.gv") else [] for file in file_list]
    #run_eldarica_with_shell_pool_with_file_list(thread_number, run_eldarica_with_shell, file_list_with_parameters) #continuous extracting

    file_list = [file if os.path.exists(file + ".hyperEdgeHornGraph.JSON") else None for file in file_list]
    file_list = list(filter(None, file_list))
    file_list_with_horn_graph="file with horn graph " + str(len(file_list)) + "/" +  str(initial_file_number)
    print("file_list_with_horn_graph",file_list_with_horn_graph)


    # description: predict label
    predict_label(benchmark, max_nodes_per_batch, benchmark_fold, file_list)

    # description: filter files by max_nodes_per_batch
    filtered_file_list = filter_file_list_by_max_node(file_list, max_nodes_per_batch)


    # description: get solvability and measurement info with different predicate setting for unseen data
    timeout = 1200000#-measurePredictedPredicates
    check_solvability_parameter_list = "-checkSolvability -varyGeneratedPredicates -abstract -noIntervals -solvabilityTimeout:120 -mainTimeout:1200"
    file_list_with_parameters = (lambda: [
        [file, check_solvability_parameter_list, timeout, move_file] if not os.path.exists(
            file + ".solvability.JSON") else [] for
        file in filtered_file_list] if continuous_extracting == True
    else [[file, check_solvability_parameter_list, timeout, move_file] for
          file in filtered_file_list])()  
    #run_eldarica_with_shell_pool_with_file_list(thread_number, run_eldarica_with_shell, file_list_with_parameters)

    # description: read solvability results
    json_solvability_obj_list = read_measurement_from_JSON(filtered_file_list, ".solvability.JSON")

    solvability_for_empty_initial_predicates = [1 if s["solvabilityemptyInitialPredicates"] == "true" else 0 for s in
                                                json_solvability_obj_list]
    solvability_for_predicted_initial_predicates = [1 if s["solvabilitypredictedInitialpredicates"] == "true" else 0 for
                                                    s in json_solvability_obj_list]
    solvability_for_full_initial_predicates = [1 if s["solvabilityfullInitialPredicates"] == "true" else 0 for s in
                                               json_solvability_obj_list]

    # description: read measurement JSON file
    scatter_plot_range=[0,20000]
    json_obj_list = read_measurement_from_JSON(filtered_file_list)
    get_analysis_for_predicted_labels(json_obj_list, out_of_test_set=True,time_unit=1000,scatter_plot_range=scatter_plot_range)
    print("solvable file by predicted label:" + str(len(json_obj_list)) + "/" + str(len(filtered_file_list)))

    # description: print results
    print("-"*10)
    print(file_list_with_horn_graph)
    print("max_nodes_per_batch", max_nodes_per_batch)
    print("filtered_file_list by max_nodes_per_batch:" + str(len(filtered_file_list)) + "/" + str(len(file_list)))

    print("solvability_for_empty_initial_predicates",
          str(sum(solvability_for_empty_initial_predicates)) + "/" + str(len(json_solvability_obj_list)))
    print("solvability_for_predicted_initial_predicates",
          str(sum(solvability_for_predicted_initial_predicates)) + "/" + str(
              len(json_solvability_obj_list)))
    print("solvability_for_full_initial_predicates",
          str(sum(solvability_for_full_initial_predicates)) + "/" + str(len(json_solvability_obj_list)))


    #description: how many predicates used in end
    minimizedPredicateFromCegar_name_list=["minimizedPredicateFromCegaremptyInitialPredicates",
                                           "minimizedPredicateFromCegarpredictedInitialpredicates","minimizedPredicateFromCegarfullInitialPredicates"]
    minimizedPredicateFromCegar_list={name:read_minimizedPredicateFromCegar(name,json_solvability_obj_list) for name in minimizedPredicateFromCegar_name_list}
    initialPredicatesUsedInMinimizedPredicateFromCegar_list={name:read_minimizedPredicateFromCegar("initialPredicatesUsedInM"+name[1:],json_solvability_obj_list) for name in minimizedPredicateFromCegar_name_list}
    for name in minimizedPredicateFromCegar_name_list:
        print("number of initial predicates in minimized predicates/minimized predicates,"+name[len("minimizedPredicateFromCegar"):] + ":"+str(sum(initialPredicatesUsedInMinimizedPredicateFromCegar_list[name])) +"/"+ str(sum(minimizedPredicateFromCegar_list[name])))
        print(str(initialPredicatesUsedInMinimizedPredicateFromCegar_list[name]))
        print(str(minimizedPredicateFromCegar_list[name]))
    scatter_plot_range = [0,20]
    for name in minimizedPredicateFromCegar_name_list:
        fold_name=name[len("minimizedPredicateFromCegar"):]
        "minimizedPredicateFromCegaremptyInitialPredicates"
        plot_scatter(minimizedPredicateFromCegar_list[name],
                     initialPredicatesUsedInMinimizedPredicateFromCegar_list[name],
                     name=fold_name+"_used_in_the_end", range=scatter_plot_range,
                     x_label="minimized_useful_predicate_number", y_label=fold_name+"_predicates")
        print("initialPredicatesUsedInMinimizedPredicate > minimizedPredicateFromCegar",name)
        for i,(x,y) in enumerate(zip(minimizedPredicateFromCegar_list[name],initialPredicatesUsedInMinimizedPredicateFromCegar_list[name])):
            if x<y:
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
