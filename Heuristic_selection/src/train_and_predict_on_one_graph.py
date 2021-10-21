import tensorflow as tf
from Miscellaneous import GPU_switch
from horn_dataset import train_on_graphs,parameters
from utils import wrapped_generate_horn_graph
from predict_functions import predict_label

def main():
    num_layers_list=[8]
    # benchmark_list=["temp-multiclass-anu","temp-multiclass-344","temp-multiclass-06",
    #                 "temp-multiclass-08","temp-multiclass-10","temp-multiclass-13",
    #                 "temp-multiclass-14","temp-multiclass-15","temp-multiclass-178"]
    benchmark_list=["temp_debug"]
    for b in benchmark_list:
        for num_layers in num_layers_list:
            wrapped_train_and_predict_on_one_graph(b,num_layers)


def wrapped_train_and_predict_on_one_graph(benchmark,num_layers):
    parameter_list = []
    label = "node_multiclass"#node_multiclass
    label_field="templateRelevanceLabel"# templateRelevanceLabel,templateCostLabel
    force_read = True
    form_label = True
    file_type = ".smt2"
    GPU = False
    use_class_weight = False
    pickle = True
    benchmark_name = benchmark + "/"
    num_node_target_labels = 5
    regression_layers=[64 for i in range(2)]
    hyper_parameters = {"nodeFeatureDim": 64, "num_layers": num_layers,
                        "regression_hidden_layer_size": regression_layers, "threshold": 0.5,
                        "max_nodes_per_batch": 10000,
                        "max_epochs": 2, "patience": 2, "num_node_target_labels": num_node_target_labels}

    parameter_list.append(
        parameters(relative_path="../benchmarks/" + benchmark_name,
                   absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/" + benchmark_name,
                   json_type=".hyperEdgeHornGraph.JSON", label=label,
                   label_field=label_field))

    GPU_switch(GPU)

    trained_model_path = ""
    for param in parameter_list:
        trained_model_path = train_on_graphs(benchmark_name=param.benchmark_name(),
                                             label=param.label, force_read=force_read,
                                             train_n_times=1, path=param.relative_path, file_type=file_type,
                                             form_label=form_label,
                                             json_type=param.json_type, GPU=GPU, pickle=pickle,
                                             use_class_weight=use_class_weight, label_field=param.label_field,
                                             hyper_parameters=hyper_parameters)
        tf.keras.backend.clear_session()

    # fold_number="test"
    # benchmark_fold = benchmark + "-unsolvable-predicted-" + str(fold_number)  # sys.argv[2]
    benchmark_fold = benchmark
    max_nodes_per_batch = 10000

    # /home/cheli243/PycharmProjects/HintsLearning/src/
    # trained_model_path = "trained_model/GNN_Argument_selection__2021-09-05_16-30-16_best.pkl"
    thread_number = 4
    move_file = False
    use_test_threshold = False
    separateByPredicates = ""  # -separateByPredicates
    generateSimplePredicates = ""  # -generateSimplePredicates
    generateTemplates = "-generateTemplates"  # -generateTemplates
    abstract = "-abstract:empty"  # empty
    noIntervals = ""
    verbose = True

    wrapped_generate_horn_graph_params = {"benchmark_fold": benchmark_fold, "max_nodes_per_batch": max_nodes_per_batch,
                                          "separateByPredicates": separateByPredicates,
                                          "abstract": abstract, "move_file": move_file, "thread_number": thread_number,
                                          "generateSimplePredicates": generateSimplePredicates,
                                          "generateTemplates": generateTemplates, "data_fold": ["test_data"],
                                          "horn_graph_folder": "", "noIntervals": noIntervals}
    filtered_file_list, file_list_with_horn_graph, file_list = \
        wrapped_generate_horn_graph(wrapped_generate_horn_graph_params)

    # description: predict label
    predict_label(benchmark, max_nodes_per_batch, benchmark_fold, filtered_file_list, trained_model_path,
                  use_test_threshold,
                  separateByPredicates=separateByPredicates, label=label, verbose=verbose,
                  num_node_target_labels=num_node_target_labels)  # file_list

main()
