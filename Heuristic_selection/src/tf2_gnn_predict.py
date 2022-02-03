from predict_functions import wrapped_prediction,predict_label
from Miscellaneous import GPU_switch
from predict_functions import write_predicted_label_to_JSON_file
from utils import flattenList,plot_scatter,generate_horn_graph,wrapped_generate_horn_graph
import tensorflow as tf
import gc
def main():
    benchmark="Linear-dataset-pure-scc-self-edge"
    #benchmark="Linear-dataset-first-three-task-hyper-edge-graph"
    benchmark_fold = benchmark+"-"+"predict" # sys.argv[2]

    max_nodes_per_batch = 10000

    # /home/cheli243/PycharmProjects/HintsLearning/src/
    trained_model_path = "trained_model/GNN_Argument_selection__2022-02-03_20-10-24_best.pkl"
    thread_number = 4
    continuous_extracting = True
    move_file = False
    out_of_test_set = True
    use_test_threshold = False
    separateByPredicates = ""  # -separateByPredicates
    generateSimplePredicates = ""  # -generateSimplePredicates
    generateTemplates = ""  # -generateTemplates
    abstract = "-abstract:empty"  # empty
    noIntervals = ""
    #label = "clause_occurrence_in_counter_examples_binary"
    label = "predicate_occurrence_in_SCG"
    #label = "scc_test"
    num_node_target_labels = 2
    verbose = True
    timeout = 300 * 10 if generateTemplates == "-generateTemplates" else 300 * 6
    graph_type="hyperEdgeHornGraph"#"mono-layerHornGraph"

    wrapped_generate_horn_graph_params = {"benchmark_fold": benchmark_fold, "max_nodes_per_batch": max_nodes_per_batch,
                                          "separateByPredicates": separateByPredicates,
                                          "abstract": abstract, "move_file": move_file, "thread_number": thread_number,
                                          "generateSimplePredicates": generateSimplePredicates,
                                          "generateTemplates": generateTemplates, "data_fold": ["test_data"],
                                          "horn_graph_folder": "", "noIntervals": noIntervals,"graph_type":graph_type}
    filtered_file_list, file_list_with_horn_graph, file_list = \
        wrapped_generate_horn_graph(wrapped_generate_horn_graph_params)

    # description: predict label one by one
    # for f in filtered_file_list:
    #     print("file_name:", f)
    #     predict_label(benchmark, max_nodes_per_batch, benchmark_fold, [f], trained_model_path, use_test_threshold,
    #                   separateByPredicates=separateByPredicates, label=label, verbose=verbose,
    #                   num_node_target_labels=num_node_target_labels)  # file_list
    #     gc.collect()
    #     tf.keras.backend.clear_session()

    # description: predict label together
    predict_label(benchmark, max_nodes_per_batch, benchmark_fold, filtered_file_list, trained_model_path, use_test_threshold,
                  separateByPredicates=separateByPredicates, label=label, verbose=verbose,
                  num_node_target_labels=num_node_target_labels,GPU=False,graph_type=graph_type)  # file_list

main()