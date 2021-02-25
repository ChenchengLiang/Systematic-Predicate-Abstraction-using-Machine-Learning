import glob
from predict_functions import genereate_horn_graph_from_eldarica_with_predicates,wrapped_prediction,write_predicted_label_to_JSON_file
from utils import filter_file_list_by_max_node
from Miscellaneous import GPU_switch,pickleRead


def main():
    #generate horn graph
    benchmark = "mixed-three-fold"
    #benchmark_fold = benchmark + "-" + "predict-1"
    benchmark_fold = benchmark + "-" + "single-example"
    max_nodes_per_batch = 1000
    file_list = glob.glob("../benchmarks/" + benchmark_fold + "/test_data/*.smt2")
    genereate_horn_graph_from_eldarica_with_predicates(file_list)
    filtered_file_list = filter_file_list_by_max_node(file_list, max_nodes_per_batch)
    print("filtered_file_list by max_nodes_per_batch:" + str(len(filtered_file_list)) + "/" + str(len(file_list)))


    #predict label
    label="template_relevance"
    #todo:read best threshold from pickle
    parameters = pickleRead(benchmark + "-" + label + "-parameters", "../src/trained_model/")
    hyper_parameter={"max_nodes_per_batch":1000,"best_threshold_set":parameters["best_threshold_set"],"read_best_threshold":True}
    trained_model_path="/home/cheli243/PycharmProjects/HintsLearning/src/trained_model/GNN_Argument_selection__2021-02-14_22-37-39_best.pkl"
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
                                    True)
    write_predicted_label_to_JSON_file(result_dir["dataset"], result_dir["predicted_Y_loaded_model"], json_type,
                                       result_dir["best_threshold"])



main()