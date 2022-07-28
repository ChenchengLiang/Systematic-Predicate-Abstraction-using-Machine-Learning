import tf2_gnn
from tf2_gnn.data import DataFold, HornGraphSample, HornGraphDataset
from horn_dataset import write_graph_to_pickle, form_GNN_inputs_and_labels
from tf2_gnn.models import GraphBinaryClassificationTask, NodeMulticlassTask
from tf2_gnn.models import InvariantArgumentSelectionTask, InvariantNodeIdentifyTask, InvariantNodeMultiClassTask
import os
from Miscellaneous import GPU_switch
from tf2_gnn.cli_utils.training_utils import train, log_line, make_run_id
import tensorflow as tf
from horn_dataset import my_round_fun, compute_loss, draw_training_results, write_train_results_to_log, pickleWrite, \
    get_classification_accuracy
import numpy as np


def main():
    hyper_parameters = {}
    hyper_parameters["fix_y_axis"] = False
    hyper_parameters["regression_hidden_layer_size"] = [64, 64]
    hyper_parameters["num_layers"] = 16
    hyper_parameters["nodeFeatureDim"] = 64
    hyper_parameters["threshold"] = 0.5
    gathered_nodes_binary_classification_task = ["predicate_occurrence_in_SCG", "argument_lower_bound_existence",
                                                 "argument_upper_bound_existence", "argument_occurrence_binary",
                                                 "template_relevance", "clause_occurrence_in_counter_examples_binary"]
    these_hypers = {
        "optimizer": "Adam",  # One of "SGD", "RMSProp", "Adam"
        "learning_rate": 0.001,
        "learning_rate_decay": 0.98,
        "momentum": 0.85,
        "gradient_clip_value": 1,  # 1
        "use_intermediate_gnn_results": False,
    }
    parameters = tf2_gnn.GNN.get_default_hyperparameters()
    max_epochs = 500
    patience = 200
    parameters['num_layers'] = hyper_parameters["num_layers"]
    parameters['hidden_dim'] = hyper_parameters["nodeFeatureDim"]
    parameters['max_nodes_per_batch'] = 16
    benchmark_name = "Linear-dataset-pure-scc"
    # benchmark_name = "Linear-dataset-pure-scc-valid=test"
    # benchmark_name = "Linear-dataset-pure-scc-one"
    parameters['node_label_embedding_size'] = hyper_parameters["nodeFeatureDim"]
    parameters['regression_hidden_layer_size'] = hyper_parameters["regression_hidden_layer_size"]
    label = "scc_test"#"predicate_occurrence_in_SCG"
    parameters["use_inter_layer_layernorm"] = True
    # these_params = {
    #     "gnn_num_layers": parameters['num_layers'],
    #     "gnn_hidden_dim": parameters['hidden_dim'],#256,
    #     "gnn_use_target_state_as_input": True,
    #     "gnn_normalize_by_num_incoming": False,
    #     "gnn_num_edge_MLP_hidden_layers": 0,
    #     "gnn_layer_input_dropout_rate": 0.2,
    #     "gnn_dense_every_num_layers": 1,
    #     "gnn_residual_every_num_layers": 2,
    #     "gnn_global_exchange_every_num_layers": 10000,
    #     "gnn_use_inter_layer_layernorm": True,
    #     "gnn_initial_node_representation_activation": "tanh",
    #     "gnn_dense_intermediate_layer_activation": "tanh",
    #     "gnn_message_activation_function": "gelu",
    #     "gnn_aggregation_function": "sum",
    #     "gnn_message_calculation_class": "rgcn",
    #     "gnn_global_exchange_mode": "gru",  # One of "mean", "mlp", "gru"
    #     "gnn_global_exchange_weighting_fun": "softmax",  # One of "softmax", "sigmoid"
    #     "gnn_global_exchange_num_heads": 4,
    #     "gnn_global_exchange_dropout_rate": 0.2,
    # }
    # parameters.update(these_params)

    parameters.update(these_hypers)
    # parameters["graph_aggregation_num_heads"]= 4
    # parameters["graph_aggregation_layers"]= [32, 32]
    # parameters['graph_aggregation_output_size']=32
    # parameters['graph_aggregation_dropout_rate'] = 0.1
    # parameters['regression_mlp_dropout'] = 0.1
    # parameters["regression_mlp_layers"]= [64, 32]

    parameters['graph_type'] = "hyperEdgeGraph"
    hyper_parameters["num_node_target_labels"] = 2
    parameters["num_node_target_labels"] = hyper_parameters["num_node_target_labels"]
    parameters["pickle"] = True
    parameters["threshold"] = hyper_parameters["threshold"]
    graph_type = parameters['graph_type']
    label_field = "predicateStrongConnectedComponent"
    use_class_weight = False
    parameters["use_class_weight"] = use_class_weight
    file_type = ".smt2"
    parameters["benchmark"] = benchmark_name
    parameters["label_type"] = label
    path = "/home/cheli243/PycharmProjects/HintsLearning/benchmarks/" + benchmark_name + "/"
    verbose = False
    GPU_switch(False)

    params_for_write_graph_to_pickle = {"benchmark": benchmark_name, "data_fold": ["train", "valid", "test"],
                                        "label": label, "path": path,
                                        "file_type": file_type,
                                        "max_nodes_per_batch": parameters['max_nodes_per_batch'],
                                        "graph_type": graph_type, "file_list": [], "vocabulary_name": "",
                                        "label_field": label_field,"train":True}
    write_graph_to_pickle(params_for_write_graph_to_pickle)
    params_form_GNN_inputs_and_labels = {"label": label, "datafold": ["train", "valid", "test"],
                                         "benchmark": benchmark_name, "graph_type": graph_type,
                                         "gathered_nodes_binary_classification_task": gathered_nodes_binary_classification_task,
                                         "use_class_weight": use_class_weight,
                                         "num_node_target_labels": hyper_parameters["num_node_target_labels"]}
    form_GNN_inputs_and_labels(params_form_GNN_inputs_and_labels)

    dataset = HornGraphDataset(parameters)
    dataset.load_data([DataFold.TRAIN, DataFold.VALIDATION, DataFold.TEST])
    dataset._use_worker_threads = False
    parameters["node_vocab_size"] = dataset._node_vocab_size
    parameters["class_weight_fold"] = dataset._class_weight_fold["train"]

    class_weight = {"weight_for_1": parameters["class_weight_fold"]["weight_for_1"] / parameters["class_weight_fold"][
        "weight_for_0"], "weight_for_0": 1}
    parameters["class_weight"] = class_weight
    # model = NodeMulticlassTask(parameters,dataset)
    # model = GraphBinaryClassificationTask(parameters, dataset)
    model = InvariantNodeIdentifyTask(parameters, dataset)
    #model = InvariantArgumentSelectionTask(parameters, dataset)

    # train
    quiet = False
    model_name = "GNN"
    task_name = "Argument_selection"
    run_id = make_run_id(model_name, task_name)
    save_dir = os.path.abspath("trained_model")
    log_file = os.path.join(save_dir, f"{run_id}.log")

    def log(msg):
        log_line(log_file, msg)

    # import multiprocessing
    # process_train = multiprocessing.Process(train, args=(model,dataset,log,run_id,200,20,save_dir,quiet,None))
    # process_train.start()
    # process_train.join()
    trained_model_path, train_loss_list, valid_loss_list, best_valid_epoch, train_metric_list, valid_metric_list = train(
        model=model,
        dataset=dataset,
        log_fun=log,
        run_id=run_id,
        max_epochs=max_epochs,
        patience=patience,
        save_dir=save_dir,
        quiet=quiet,
        aml_run=None)

    print("trained_model_path", trained_model_path)
    test_data = dataset.get_tensorflow_dataset(DataFold.TEST)
    # use model in memory
    _, _, test_results = model.run_one_epoch(test_data, training=False, quiet=quiet)
    test_metric, test_metric_string = model.compute_epoch_metrics(test_results)
    print("test_metric_string model from memory", test_metric_string)
    print("test_metric model from memory", test_metric)

    raw_predicted_Y_loaded_model_from_memory = model.predict(test_data)
    predicted_Y_loaded_model_from_memory = raw_predicted_Y_loaded_model_from_memory if label in [
        "predicate_occurrence_in_clauses"] else tf.math.sigmoid(raw_predicted_Y_loaded_model_from_memory)
    rounded_predicted_Y_loaded_model_from_memory = my_round_fun(predicted_Y_loaded_model_from_memory,
                                                                threshold=parameters["threshold"], label=label)

    print("predicted_Y_loaded_model", predicted_Y_loaded_model_from_memory)
    if verbose == True:
        print("rounded_predicted_Y_loaded_model", len(rounded_predicted_Y_loaded_model_from_memory),
              rounded_predicted_Y_loaded_model_from_memory)

    print("test_metric_string", test_metric_string)
    print("test_metric", test_metric)
    true_Y = []
    for data in iter(test_data):
        # print(data[0]) #input
        true_Y.extend(np.array(data[1]["node_labels"]))

    class_weight = {"weight_for_1": parameters["class_weight_fold"]["weight_for_1"] / parameters["class_weight_fold"][
        "weight_for_0"], "weight_for_0": 1}
    from_logits = True
    error_memory_model = compute_loss(label, true_Y, predicted_Y_loaded_model_from_memory, class_weight, from_logits,
                                      gathered_nodes_binary_classification_task)
    print("\n error of error_memory_model", error_memory_model)
    mean_label = np.full(np.array(predicted_Y_loaded_model_from_memory).shape, np.mean(true_Y))
    mean_loss = compute_loss(label, true_Y, mean_label, class_weight, from_logits,
                             gathered_nodes_binary_classification_task)
    print("\n mean_loss_Y_and_True_Y", mean_loss)
    train_loss_average = np.mean(train_loss_list)
    valid_loss_average = np.mean(valid_loss_list)
    accuracy = get_classification_accuracy(true_Y, rounded_predicted_Y_loaded_model_from_memory, label)
    # visualize results
    draw_training_results(train_loss_list, valid_loss_list,
                          mean_loss,
                          error_memory_model, true_Y, predicted_Y_loaded_model_from_memory, label,
                          benchmark_name, graph_type, gathered_nodes_binary_classification_task, hyper_parameters)
    write_train_results_to_log(dataset, predicted_Y_loaded_model_from_memory, train_loss_average,
                               valid_loss_average, error_memory_model, mean_loss, accuracy,
                               best_valid_epoch, hyper_parameters,
                               benchmark=benchmark_name, label=label, graph_type=graph_type)

    pickleWrite(parameters, benchmark_name + "-" + label + "-parameters", "../src/trained_model/")


main()
