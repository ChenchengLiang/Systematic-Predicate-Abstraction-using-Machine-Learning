import glob
from Miscellaneous import GPU_switch, pickleRead
from measurement_functions import get_evaluations_from_eldarica_pool, get_one_valuations_from_eldarica, get_analysis_for_predicted_labels,read_measurement_from_JSON
from predict_functions import wrapped_prediction, write_predicted_label_to_JSON_file
from utils import call_eldarica_in_batch
from utils import filter_file_list_by_max_node
from utils import plot_scatter


def main():
    #description: parameter settings
    benchmark = "mixed-three-fold"
    benchmark_fold = benchmark + "-" + "predict-1"
    #benchmark_fold = benchmark + "-" + "single-example"
    #benchmark_fold = benchmark + "-" + "predict-out-of-test-set"
    max_nodes_per_batch = 1000
    file_list = glob.glob("../benchmarks/" + benchmark_fold + "/test_data/*.smt2")

    #description: generate horn graph
    # generate_horn_graph_parameter_list = ["-getHornGraph:hyperEdgeGraph", "-generateSimplePredicates", "-varyGeneratedPredicates", "-abstract", "-noIntervals","-mainTimeout:1200"]
    # call_eldarica_in_batch(file_list,generate_horn_graph_parameter_list)

    #description: predict label
    # label="template_relevance"
    # #read best threshold from pickle
    # parameters = pickleRead(benchmark + "-" + label + "-parameters", "../src/trained_model/")
    # hyper_parameter={"max_nodes_per_batch":max_nodes_per_batch,"best_threshold_set":parameters["best_threshold_set"],"read_best_threshold":True}
    # trained_model_path="/home/cheli243/PycharmProjects/HintsLearning/src/trained_model/GNN_Argument_selection__2021-02-14_22-37-39_best.pkl"
    # json_type = ".hyperEdgeHornGraph.JSON"
    # graph_type = json_type[1:json_type.find(".JSON")]
    # gathered_nodes_binary_classification_task = ["predicate_occurrence_in_SCG", "argument_lower_bound_existence",
    #                                              "argument_upper_bound_existence", "argument_occurrence_binary",
    #                                              "template_relevance", "clause_occurrence_in_counter_examples_binary"]
    # force_read = True
    # form_label = True
    # GPU_switch(False)
    # result_dir = wrapped_prediction(trained_model_path, benchmark, benchmark_fold, label, force_read, form_label,
    #                                 json_type, graph_type, gathered_nodes_binary_classification_task, hyper_parameter,
    #                                 True)
    # write_predicted_label_to_JSON_file(result_dir["dataset"], result_dir["predicted_Y_loaded_model"], json_type,
    #                                    result_dir["best_threshold"])

    #description: filter files by max_nodes_per_batch
    filtered_file_list = filter_file_list_by_max_node(file_list, max_nodes_per_batch)
    print("max_nodes_per_batch", max_nodes_per_batch)
    print("filtered_file_list by max_nodes_per_batch:" + str(len(filtered_file_list)) + "/" + str(len(file_list)))

    #description: measure the predicted label.
    # eldarica_parameters_for_measurement = ["-extractPredicates", "-readHints", "-measurePredictedPredicates", "-noIntervals",
    #                        "-abstract", "-solvabilityTimeout:120"]
    # get_evaluations_from_eldarica_pool(get_one_valuations_from_eldarica, filtered_file_list, eldarica_parameters_for_measurement)
    # # read measurement JSON file
    # json_obj_list = read_measurement_from_JSON(filtered_file_list)
    # get_analysis_for_predicted_labels(json_obj_list)
    # print("solvable file by predicted label:" + str(len(json_obj_list)) + "/" + str(len(filtered_file_list)))


    #description: get solvability info with different predicate setting for unseen data
    # check_solvability_parameter_list = ["-checkSolvability", "-abstract", "-noIntervals","-solvabilityTimeout:120","-mainTimeout:1200"]
    # call_eldarica_in_batch(filtered_file_list,check_solvability_parameter_list)

    #description: read solvability results
    json_solvability_obj_list=read_measurement_from_JSON(filtered_file_list,".solvability.JSON")

    solvability_for_empty_initial_predicates = [1 if s["solvabilityemptyInitialPredicates"] == "true" else 0 for s in json_solvability_obj_list]
    solvability_for_predicted_initial_predicates = [1 if s["solvabilitypredictedInitialpredicates"] == "true" else 0 for s in json_solvability_obj_list]
    solvability_for_full_initial_predicates = [1 if s["solvabilityfullInitialPredicates"] == "true" else 0 for s in json_solvability_obj_list]

    minimizedPredicateFromCegar_for_empty_initial_predicates = [s["minimizedPredicateFromCegaremptyInitialPredicates"] for s in json_solvability_obj_list]
    minimizedPredicateFromCegar_for_empty_initial_predicates = list(map(lambda x: int(x), minimizedPredicateFromCegar_for_empty_initial_predicates))
    minimizedPredicateFromCegar_for_predicted_initial_predicates = [s["minimizedPredicateFromCegarpredictedInitialpredicates"] for s in json_solvability_obj_list]
    minimizedPredicateFromCegar_for_predicted_initial_predicates = list(map(lambda x: int(x),minimizedPredicateFromCegar_for_predicted_initial_predicates))
    minimizedPredicateFromCegar_for_full_initial_predicates = [s["minimizedPredicateFromCegarfullInitialPredicates"] for s in json_solvability_obj_list]
    minimizedPredicateFromCegar_for_full_initial_predicates = list(map(lambda x: int(x),minimizedPredicateFromCegar_for_full_initial_predicates))

    initialPredicatesUsedInMinimizedPredicateFromCegar_for_empty_initial_predicates =[s["initialPredicatesUsedInMinimizedPredicateFromCegaremptyInitialPredicates"]for s in json_solvability_obj_list]
    initialPredicatesUsedInMinimizedPredicateFromCegar_for_empty_initial_predicates = list(map(lambda x: int(x),initialPredicatesUsedInMinimizedPredicateFromCegar_for_empty_initial_predicates))
    initialPredicatesUsedInMinimizedPredicateFromCegar_for_predicted_initial_predicates=[s["initialPredicatesUsedInMinimizedPredicateFromCegarpredictedInitialpredicates"]for s in json_solvability_obj_list]
    initialPredicatesUsedInMinimizedPredicateFromCegar_for_predicted_initial_predicates = list(map(lambda x: int(x),initialPredicatesUsedInMinimizedPredicateFromCegar_for_predicted_initial_predicates))
    initialPredicatesUsedInMinimizedPredicateFromCegar_for_full_initial_predicates = [s["initialPredicatesUsedInMinimizedPredicateFromCegarfullInitialPredicates"] for s in json_solvability_obj_list]
    initialPredicatesUsedInMinimizedPredicateFromCegar_for_full_initial_predicates = list(map(lambda x: int(x),initialPredicatesUsedInMinimizedPredicateFromCegar_for_full_initial_predicates))



    print("solvability_for_empty_initial_predicates",str(sum(solvability_for_empty_initial_predicates)) + "/" + str(len(solvability_for_empty_initial_predicates)))
    print("solvability_for_predicted_initial_predicates",str(sum(solvability_for_predicted_initial_predicates))+"/"+str(len(solvability_for_predicted_initial_predicates)))
    print("solvability_for_full_initial_predicates",str(sum(solvability_for_full_initial_predicates)) + "/" + str(len(solvability_for_full_initial_predicates)))


    # print("minimizedPredicateFromCegar_for_empty_initial_predicates",minimizedPredicateFromCegar_for_empty_initial_predicates)
    # print("minimizedPredicateFromCegar_for_predicted_initial_predicates",minimizedPredicateFromCegar_for_predicted_initial_predicates)
    # print("minimizedPredicateFromCegar_for_full_initial_predicates",minimizedPredicateFromCegar_for_full_initial_predicates)
    # print("initialPredicatesUsedInMinimizedPredicateFromCegar_for_empty_initial_predicates",initialPredicatesUsedInMinimizedPredicateFromCegar_for_empty_initial_predicates)
    # print("initialPredicatesUsedInMinimizedPredicateFromCegar_for_predicted_initial_predicates",initialPredicatesUsedInMinimizedPredicateFromCegar_for_predicted_initial_predicates)
    # print("initialPredicatesUsedInMinimizedPredicateFromCegar_for_full_initial_predicates",initialPredicatesUsedInMinimizedPredicateFromCegar_for_full_initial_predicates)

    scatter_plot_range=0
    plot_scatter(minimizedPredicateFromCegar_for_empty_initial_predicates,initialPredicatesUsedInMinimizedPredicateFromCegar_for_empty_initial_predicates,"empty_initial_predicates",range=scatter_plot_range)
    plot_scatter(minimizedPredicateFromCegar_for_predicted_initial_predicates,initialPredicatesUsedInMinimizedPredicateFromCegar_for_predicted_initial_predicates,"predicted_initial_predicates",range=scatter_plot_range)
    plot_scatter(minimizedPredicateFromCegar_for_full_initial_predicates,initialPredicatesUsedInMinimizedPredicateFromCegar_for_full_initial_predicates,"full_initial_predicates",range=scatter_plot_range)
main()