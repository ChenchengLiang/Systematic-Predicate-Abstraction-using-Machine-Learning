from typing import Dict, Any
import tf2_gnn
from tf2_gnn.data import DataFold, HornGraphSample, HornGraphDataset
from horn_dataset import write_graph_to_pickle, form_GNN_inputs_and_labels
from tf2_gnn.cli_utils.training_utils import train, log_line, make_run_id
from tf2_gnn.models import InvariantArgumentSelectionTask, InvariantNodeIdentifyTask
import os
from predict_functions import my_round_fun,write_predicted_label_to_JSON_file
from Miscellaneous import pickleRead
import glob
from measurement_functions import read_measurement_from_JSON,get_analysis_for_predicted_labels
from utils import get_statistic_data,get_recall_scatter,wrapped_generate_horn_graph,get_solvability_and_measurement_from_eldarica

def main():
    # description: set hyper-parameters
    params = {"benchmark": "mixed-three-fold-single-example",
              "label": "template_relevance",
              "force_read": True,
              "file_type": ".smt2",
              "graph_type": "hyperEdgeHornGraph",
              "form_label": True,
              "GPU": True,
              "train_quiet": False,
              "test_quiet": False,
              "max_epochs": 10,
              "patience": 10,
              "max_nodes_per_batch": 1000,
              "threshold": 0.5,
              "gathered_nodes_binary_classification_task": ["predicate_occurrence_in_SCG",
                                                            "argument_lower_bound_existence",
                                                            "argument_upper_bound_existence",
                                                            "argument_occurrence_binary",
                                                            "template_relevance",
                                                            "clause_occurrence_in_counter_examples_binary"]}
    hyper_parameters = {"nodeFeatureDim": 16, "num_layers": 2, "regression_hidden_layer_size": [16]}

    #description: generate horn graph if there is no horn graph file
    filtered_file_list,file_list_with_horn_graph,file_list = wrapped_generate_horn_graph(params["benchmark"], params["max_nodes_per_batch"], move_file=True,
                                                     thread_number=4)

    # description: train
    trained_model_path, test_data, model, dataset = read_data_and_train(params, hyper_parameters)

    # description: predict with threshold
    predicted_Y = predict_test_set_model_from_memory(params, test_data, model)
    # predicted_Y = predict_test_set_model_from_file(params, test_data, trained_model_path, dataset)
    #this should be performed in the folder "benchmark-predict"
    #predicted_Y=predict_unseen_set(params, trained_model_path, file_list=filtered_file_list, set_max_nodes_per_batch=True)
    write_predicted_label_to_JSON_file(dataset, predicted_Y, "."+params["graph_type"]+".JSON", params["threshold"])

    # description: get final measurement from Eldarica
    get_solvability_and_measurement_from_eldarica(filtered_file_list, thread_number=4,continuous_extracting=True,move_file=True)

    # todo In solvable set
        # todo: draw time consumption

    out_of_test_set = False
    # description: read solvability results
    json_solvability_obj_list = read_measurement_from_JSON(filtered_file_list, ".solvability.JSON")

    three_fild_name = ["empty", "predicted", "full"]
    solvability_name_fold = (lambda: three_fild_name if out_of_test_set == True else three_fild_name + ["true"])()
    solvability_json_name_fold = ["solvability" + x + "InitialPredicates" for x in solvability_name_fold]
    for name_fold in solvability_json_name_fold:
        solvability = [1 if s[name_fold] == "true" else 0 for s in json_solvability_obj_list]
        print(name_fold, str(sum(solvability)) + "/" + str(len(json_solvability_obj_list)))

    # description: read measurement JSON file
    scatter_plot_range = [0, 120]
    json_obj_list = read_measurement_from_JSON(filtered_file_list)

    get_analysis_for_predicted_labels(json_obj_list, out_of_test_set=out_of_test_set, time_unit=1000,
                                      scatter_plot_range=scatter_plot_range)
    print("solvable file by predicted label:" + str(len(json_obj_list)) + "/" + str(len(filtered_file_list)))

    # description: print results
    print("-" * 10)
    print(file_list_with_horn_graph)
    print("max_nodes_per_batch", params["max_nodes_per_batch"])
    print("filtered_file_list by max_nodes_per_batch:" + str(len(filtered_file_list)) + "/" + str(len(file_list)))

    # description: statistic data
    get_statistic_data(filtered_file_list, params["benchmark"])

    # description: how many predicates used in end
    get_recall_scatter(solvability_name_fold, json_solvability_obj_list, filtered_file_list)

    # todo: in unsovable set. perform separate grid search. use other folder
        # todo:check solvability







def read_data_and_train(params, hyper_parameters):
    # description: set parameters
    gathered_nodes_binary_classification_task = params["gathered_nodes_binary_classification_task"]
    nodeFeatureDim = hyper_parameters["nodeFeatureDim"]
    parameters = tf2_gnn.GNN.get_default_hyperparameters()
    print("graph_type", params["graph_type"])
    parameters['graph_type'] = params["graph_type"]  # hyperEdgeHornGraph or layerHornGraph
    parameters['hidden_dim'] = nodeFeatureDim  # 64
    parameters['num_layers'] = hyper_parameters["num_layers"]
    parameters['node_label_embedding_size'] = nodeFeatureDim
    parameters['max_nodes_per_batch'] = params["max_nodes_per_batch"]
    parameters['regression_hidden_layer_size'] = hyper_parameters["regression_hidden_layer_size"]
    parameters["benchmark"] = params["benchmark"]  # benchmark_name
    parameters["label_type"] = params["label"]  # label
    parameters["gathered_nodes_binary_classification_task"] = gathered_nodes_binary_classification_task
    parameters["threshold"] = params["threshold"]
    these_hypers: Dict[str, Any] = {
        "optimizer": "Adam",  # One of "SGD", "RMSProp", "Adam"
        "learning_rate": 0.001,
        "learning_rate_decay": 0.98,
        "momentum": 0.85,
        "gradient_clip_value": 1,  # 1
        "use_intermediate_gnn_results": False,
    }
    parameters.update(these_hypers)

    # description: read dataset
    dataset = HornGraphDataset(parameters)
    if params["force_read"] == True:
        write_graph_to_pickle(benchmark=params["benchmark"], data_fold=["train", "valid", "test"],
                              label=params["label"], path="../benchmarks/" + params["benchmark"] + "/",
                              file_type=params["file_type"],
                              max_nodes_per_batch=parameters['max_nodes_per_batch'], graph_type=params["graph_type"])
    else:
        print("Use pickle data for training")
    if params["form_label"] == True:
        form_GNN_inputs_and_labels(label=params["label"], datafold=["train", "valid", "test"],
                                   benchmark=params["benchmark"],
                                   graph_type=params["graph_type"],
                                   gathered_nodes_binary_classification_task=gathered_nodes_binary_classification_task)
    else:
        print("Use label in pickle data for training")

    if params["GPU"] == True:
        dataset._use_worker_threads = False  # solve Failed setting context: CUDA_ERROR_NOT_INITIALIZED: initialization error
    dataset.load_data([DataFold.TRAIN, DataFold.VALIDATION, DataFold.TEST])
    parameters["node_vocab_size"] = dataset._node_vocab_size
    parameters["class_weight"] = dataset._class_weight["train"]
    parameters["class_weight_fold"] = dataset._class_weight

    # description:get model
    model = None
    if params["label"] in ["argument_identify", "control_location_identify",
                           "argument_identify_no_batchs"]:  # all nodes binary classification task
        model = InvariantNodeIdentifyTask(parameters, dataset)
    elif params["label"] in ["predicate_occurrence_in_clauses", "argument_lower_bound",
                             "argument_upper_bound"]:  # gathered nodes single output regression task
        model = InvariantArgumentSelectionTask(parameters, dataset)
    elif params["label"] in gathered_nodes_binary_classification_task:  # gathered nodes binary classification task
        model = InvariantNodeIdentifyTask(parameters, dataset)
    elif params["label"] == "argument_bound":  # gathered nodes two outputs regression task
        model = InvariantArgumentSelectionTask(parameters, dataset)
    else:
        model = InvariantArgumentSelectionTask(parameters, dataset)

    # description: train
    run_id = make_run_id(model_name="R-GCN", task_name=params["label"])
    save_dir = os.path.abspath("trained_model")
    log_file = os.path.join(save_dir, f"{run_id}.log")

    def log(msg):
        log_line(log_file, msg)

    trained_model_path, train_loss_list, valid_loss_list, best_valid_epoch, train_metric_list, valid_metric_list = train(
        model=model,
        dataset=dataset,
        log_fun=log,
        run_id=run_id,
        max_epochs=params["max_epochs"],
        patience=params["patience"],
        save_dir=save_dir,
        quiet=params["train_quiet"],
        aml_run=None)

    print("trained_model_path", trained_model_path)

    test_data = dataset.get_tensorflow_dataset(DataFold.TEST)
    return trained_model_path, test_data, model, dataset


def predict_test_set_model_from_memory(params, test_data, model):
    return get_predicted_results(params, model, test_data)


def predict_test_set_model_from_file(params, test_data, trained_model_path, dataset):
    loaded_model = tf2_gnn.cli_utils.model_utils.load_model_for_prediction(trained_model_path, dataset)
    return get_predicted_results(params, loaded_model, test_data)


def predict_unseen_set(params, trained_model_path, file_list=[], set_max_nodes_per_batch=True):
    benchmark_fold = params["benchmark"] + "-" + "predict"
    path = "../benchmarks/" + benchmark_fold + "/"
    benchmark_name = path[len("../benchmarks/"):-1]
    parameters = pickleRead(params["benchmark"] + "-" + params["label"] + "-parameters", "../src/trained_model/")
    parameters["benchmark"] = benchmark_name
    print("vocabulary size:", parameters["node_vocab_size"])
    if set_max_nodes_per_batch == True:
        parameters['max_nodes_per_batch'] = params["max_nodes_per_batch"]

    if params["force_read"] == True:
        write_graph_to_pickle(benchmark_name, data_fold=["test"], label=params["label"], path=path,
                              file_type=".smt2", graph_type=params["graph_type"],
                              max_nodes_per_batch=params['max_nodes_per_batch'], vocabulary_name=params["benchmark"],
                              file_list=file_list)
    else:
        print("Use pickle data for training")
    # if form_label == True and not os.path.isfile("../pickleData/" + label + "-" + benchmark_name + "-gnnInput_train_data.txt"):
    if params["form_label"] == True:
        form_GNN_inputs_and_labels(label=params["label"], datafold=["test"], benchmark=benchmark_name,
                                   graph_type=params["graph_type"],
                                   gathered_nodes_binary_classification_task=params[
                                       "gathered_nodes_binary_classification_task"])

    dataset = HornGraphDataset(parameters)
    dataset.load_data([DataFold.TEST])
    test_data = dataset.get_tensorflow_dataset(DataFold.TEST)
    loaded_model = tf2_gnn.cli_utils.model_utils.load_model_for_prediction(trained_model_path, dataset)
    return get_predicted_results(params, loaded_model, test_data)


def get_predicted_results(params, model, test_data):
    _, _, test_results = model.run_one_epoch(test_data, training=False, quiet=params["test_quiet"])
    test_metric, test_metric_string = model.compute_epoch_metrics(test_results)
    predicted_Y = model.predict(test_data)
    print_predicted_results(
        {"predicted_Y": predicted_Y, "test_metric_string": test_metric_string,
         "test_metric": test_metric})
    return predicted_Y


def print_predicted_results(result_dic):
    print("predicted_Y", result_dic["predicted_Y"])
    print("test_metric_string", result_dic["test_metric_string"])
    print("test_metric", result_dic["test_metric"])


main()
