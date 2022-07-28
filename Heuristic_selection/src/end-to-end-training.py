import sys
from shutil import copy,rmtree,copytree
import time
from typing import Dict, Any
import tf2_gnn
from tf2_gnn.data import DataFold, HornGraphSample, HornGraphDataset
from horn_dataset import write_graph_to_pickle, form_GNN_inputs_and_labels
from tf2_gnn.cli_utils.training_utils import train, log_line, make_run_id
from tf2_gnn.models import InvariantArgumentSelectionTask, InvariantNodeIdentifyTask,InvariantNodeMultiClassTask
import os
from predict_functions import my_round_fun,write_predicted_label_to_JSON_file,predict_label
from Miscellaneous import pickleRead,pickleWrite,GPU_switch
import glob
from measurement_functions import read_measurement_from_JSON,get_analysis_for_predicted_labels
from utils import get_statistic_data,get_recall_scatter,wrapped_generate_horn_graph,get_solvability_and_measurement_from_eldarica
from horn_dataset import draw_training_results,write_train_results_to_log,get_test_loss_with_class_weight,logit,compute_loss
import numpy as np
import tensorflow as tf
from utils_1 import measurement_control_by_python
from tensorflow.keras import mixed_precision
import gc
def main():
    fold=[0]
    #different_num_layers_training()
    #clean_k_fold_test_data(benchmark="chc-comp-LIA-Lin-2021-extract")
    k_fold_training(benchmark="temp-debug",fold=fold)
    k_fold_data_collection(benchmark="temp-debug",separateByPredicates="",fold=len(fold))#-separateByPredicates


def k_fold_training(benchmark="chc-comp21-benchmarks-main-all-extract",fold=[0]):
    # description: train in 5 fold
    #end_to_end_training(benchmark=benchmark + "-" + str(4) + "-fold")
    for i in fold:
        end_to_end_training(benchmark=benchmark + "-" + str(i) + "-fold",num_layers=8)
        gc.collect()
        tf.keras.backend.clear_session()


def clean_k_fold_test_data(benchmark="chc-comp-LIA-Lin-2021-extract",fold=5):
    for i in range(fold):
        for file_type in [".solvability.JSON", ".measurement.JSON"]:
            file_list = glob.glob("../benchmarks/" + benchmark + "-" + str(i) + "-fold/test_data/*.smt2" + file_type)
            for f in file_list:
                os.remove(f)


def k_fold_data_collection(benchmark="chc-comp21-benchmarks-main-all-extract",separateByPredicates="",fold=5):
    max_nodes_per_batch = 10000
    # description: merge all test results
    k_fold_benchmark = benchmark + "-k-fold-measurement"
    k_fold_benchmark_folder = os.path.join("../benchmarks", k_fold_benchmark)
    k_fold_benchmark_test_folder = os.path.join(k_fold_benchmark_folder, "test_data")
    if not os.path.exists(k_fold_benchmark_folder):
        os.mkdir(k_fold_benchmark_folder)
        os.mkdir(k_fold_benchmark_test_folder)
    else:
        for f in glob.glob(k_fold_benchmark_test_folder+"/*"):
            os.remove(f)

    for i in range(fold):
        file_list = glob.glob("../benchmarks/" + benchmark + "-" + str(i) + "-fold/test_data/*")
        for file in file_list:
            copy(file, k_fold_benchmark_test_folder)
    print("total test file", len(glob.glob(k_fold_benchmark_test_folder + "/*.smt2.zip")))
    print("total test solvability file", len(glob.glob(k_fold_benchmark_test_folder + "/*.smt2.solvability.JSON.zip")))
    print("total test measurement file", len(glob.glob(k_fold_benchmark_test_folder + "/*.smt2.measurement.JSON.zip")))
    print("total test horn graph file",
          len(glob.glob(k_fold_benchmark_test_folder + "/*.smt2.hyperEdgeGraph.JSON.zip")))
    wrapped_generate_horn_graph_params = {"benchmark_fold": k_fold_benchmark, "max_nodes_per_batch": max_nodes_per_batch,
                                          "separateByPredicates": separateByPredicates,
                                          "abstract": "-abstract:empty", "move_file": True, "thread_number": 4,
                                          "generateSimplePredicates": "",
                                          "generateTemplates": "-generateTemplates", "data_fold": ["test_data"],
                                          "horn_graph_folder": "", "noIntervals": ""}
    filtered_file_list, file_list_with_horn_graph, file_list = wrapped_generate_horn_graph(wrapped_generate_horn_graph_params)
    out_of_test_set = False
    # description: read solvability results
    # json_solvability_obj_list = read_measurement_from_JSON(filtered_file_list, ".solvability.JSON")
    # three_fild_name = ["empty", "predicted", "full"]
    # solvability_name_fold = (lambda: three_fild_name if out_of_test_set == True else three_fild_name + ["true"])()
    # solvability_json_name_fold = ["solvability" + x + "InitialPredicates" for x in solvability_name_fold]
    # for name_fold in solvability_json_name_fold:
    #     solvability = [1 if s[name_fold] == "true" else 0 for s in json_solvability_obj_list]
    #     print(name_fold, str(sum(solvability)) + "/" + str(len(json_solvability_obj_list)))
    # description: read measurement JSON file
    scatter_plot_range = [0, 120]
    json_obj_list = read_measurement_from_JSON(filtered_file_list, measurement=".measurement.JSON")
    get_analysis_for_predicted_labels(json_obj_list, out_of_test_set=out_of_test_set, time_unit=1000,
                                      scatter_plot_range=scatter_plot_range)
    print("solvable file by predicted label:" + str(len(json_obj_list)) + "/" + str(len(filtered_file_list)))
    # description: print results
    print("-" * 10)
    print(file_list_with_horn_graph)
    print("max_nodes_per_batch", max_nodes_per_batch)
    print("filtered_file_list by max_nodes_per_batch:" + str(len(filtered_file_list)) + "/" + str(len(file_list)))
    # description: statistic data
    #get_statistic_data(filtered_file_list, k_fold_benchmark,separateByPredicates=separateByPredicates)
    # # description: how many predicates used in end
    # get_recall_scatter(solvability_name_fold, json_solvability_obj_list, filtered_file_list)


def different_num_layers_training():
    for num_layers in [2]:#1,2,4,8,16,32,64,128
        end_to_end_training(num_layers)
        gc.collect()
        tf.keras.backend.clear_session()

def end_to_end_training(num_layers=8,benchmark=""):
    random_seed(1)
    tf.keras.backend.clear_session()
    gc.collect()
    # description: set hyper-parameters
    params = {"benchmark": benchmark,#lia-lin-extract, mixed-three-fold-single-example
              "label": "node_multiclass",
              "num_node_target_labels":5, #7
              "force_read": True,
              "file_type": ".smt2",
              "graph_type": "hyperEdgeGraph",
              "form_label": True,
              "pickle":True,
              "GPU": False,
              "train_quiet": False,
              "test_quiet": False,
              "max_epochs": 1000,
              "patience": 200,
              "max_nodes_per_batch": 10000,
              "separateByPredicates":"",#-separateByPredicates
              "generateTemplates":"-generateTemplates",
              "abstract":"-abstract:empty",
              "threshold": 0.5,
              "verbose":False,
              "use_class_weight":False,
              "label_field":"templateRelevanceLabel",
              "gathered_nodes_binary_classification_task": ["predicate_occurrence_in_SCG",
                                                            "argument_lower_bound_existence",
                                                            "argument_upper_bound_existence",
                                                            "argument_occurrence_binary",
                                                            "template_relevance",
                                                            "clause_occurrence_in_counter_examples_binary"]}
    hyper_parameters = {"nodeFeatureDim": 64, "num_layers": num_layers, "regression_hidden_layer_size": [64,64],"threshold": params["threshold"]}

    #description: generate horn graph if there is no horn graph file in test set
    wrapped_generate_horn_graph_params = {"benchmark_fold": params["benchmark"],
                                          "max_nodes_per_batch": params["max_nodes_per_batch"],
                                          "separateByPredicates": params["separateByPredicates"],
                                          "abstract": "-abstract:empty", "move_file": True, "thread_number": 4,
                                          "generateSimplePredicates": "",
                                          "generateTemplates": "-generateTemplates", "data_fold": ["test_data"],
                                          "horn_graph_folder": "", "noIntervals": ""}
    filtered_file_list,file_list_with_horn_graph,file_list = wrapped_generate_horn_graph(wrapped_generate_horn_graph_params)

    # description: train
    trained_model_path, test_data, model, dataset,train_loss_list, valid_loss_list, best_valid_epoch = \
        read_data_and_train(params, hyper_parameters)

    # description: predict with threshold
    # #predicted_Y = predict_test_set_model_from_memory(params, test_data, model)
    # predicted_Y = predict_test_set_model_from_file(params, test_data, trained_model_path, dataset)
    # #this should be performed in the folder "benchmark-unsolved"
    # #trained_model_path = "trained_model/R-GCN_template_relevance__2021-04-23_20-47-42_best.pkl"
    # #predicted_Y, dataset =predict_unseen_set(params, trained_model_path, file_list=filtered_file_list, set_max_nodes_per_batch=True)
    # write_predicted_label_to_JSON_file(dataset, predicted_Y, "."+params["graph_type"]+".JSON", params["threshold"],verbose=params["verbose"])
    predicted_Y=predict_label(benchmark, 10000, benchmark, filtered_file_list, trained_model_path, use_test_threshold=False,
                  separateByPredicates=params["separateByPredicates"],verbose=params["verbose"],label=params["label"],num_node_target_labels=params["num_node_target_labels"])  # file_list
    #description: draw train-predict diagrams
    draw_train_predict_plots(params, dataset, test_data, predicted_Y, train_loss_list, valid_loss_list,best_valid_epoch, hyper_parameters)

    # description: get final measurement from Eldarica, if predicated predicate cannot solve the problem there is no measurement file
    tf.keras.backend.clear_session()
    gc.collect()
    measurement_control_by_python(benchmark)
    # get_solvability_and_measurement_from_eldarica_params = {"filtered_file_list": filtered_file_list,
    #                                                         "thread_number": 4,
    #                                                             "continuous_extracting": True,
    #                                                         "move_file": False,
    #                                                         "checkSolvability": "",
    #                                                         "generateTemplates": params["generateTemplates"],
    #                                                         "measurePredictedPredicates": "-measurePredictedPredicates",
    #                                                         "onlyInitialPredicates": "", "abstract": params["abstract"],
    #                                                         "noIntervals": "",
    #                                                         "separateByPredicates": params["separateByPredicates"],
    #                                                         "solvabilityTimeout": "3600","timeout":4000}
    # get_solvability_and_measurement_from_eldarica(get_solvability_and_measurement_from_eldarica_params)#3600

    # description: In solvable set, draw time consumption

    out_of_test_set = False
    # description: read solvability results
    # json_solvability_obj_list = read_measurement_from_JSON(filtered_file_list, ".solvability.JSON")
    #
    # three_fild_name = ["empty", "predicted", "full"]
    # solvability_name_fold = (lambda: three_fild_name if out_of_test_set == True else three_fild_name + ["true"])()
    # solvability_json_name_fold = ["solvability" + x + "InitialPredicates" for x in solvability_name_fold]
    # for name_fold in solvability_json_name_fold:
    #     solvability = [1 if s[name_fold] == "true" else 0 for s in json_solvability_obj_list]
    #     print(name_fold, str(sum(solvability)) + "/" + str(len(json_solvability_obj_list)))

    # description: read measurement JSON file
    # scatter_plot_range = [0, 120]
    # json_obj_list = read_measurement_from_JSON(filtered_file_list,measurement=".measurement.JSON")
    #
    # get_analysis_for_predicted_labels(json_obj_list, out_of_test_set=out_of_test_set, time_unit=1000,
    #                                   scatter_plot_range=scatter_plot_range)
    # print("solvable file by predicted label:" + str(len(json_obj_list)) + "/" + str(len(filtered_file_list)))
    #
    # # description: print results
    # print("-" * 10)
    # print(file_list_with_horn_graph)
    # print("max_nodes_per_batch", params["max_nodes_per_batch"])
    # print("filtered_file_list by max_nodes_per_batch:" + str(len(filtered_file_list)) + "/" + str(len(file_list)))

    # description: statistic data
    #get_statistic_data(filtered_file_list, params["benchmark"])

    # # description: how many predicates used in end
    #get_recall_scatter(solvability_name_fold, json_solvability_obj_list, filtered_file_list)

    #
    # print("------------unsolvable data----------------")
    #
    # out_of_test_set = True
    # params["max_nodes_per_batch"]=100000
    # #description: generate horn graph if there is no horn graph file
    # filtered_file_list,file_list_with_horn_graph,file_list = wrapped_generate_horn_graph(params["benchmark"]+"-unsolvable", params["max_nodes_per_batch"], move_file=True,
    #                                                  thread_number=4)
    # # description: predict with threshold
    # predicted_Y,dataset=predict_unseen_set(params, trained_model_path, file_list=filtered_file_list, set_max_nodes_per_batch=True)
    # write_predicted_label_to_JSON_file(dataset, predicted_Y, "." + params["graph_type"] + ".JSON", params["threshold"],verbose=params["verbose"])
    #
    # # description: get final measurement from Eldarica
    # get_solvability_and_measurement_from_eldarica(filtered_file_list, thread_number=4, continuous_extracting=True,
    #                                               move_file=True)
    #
    # # description: read solvability results
    # json_solvability_obj_list = read_measurement_from_JSON(filtered_file_list, ".solvability.JSON")
    #
    # three_fild_name = ["empty", "predicted", "full"]
    # solvability_name_fold = (lambda: three_fild_name if out_of_test_set == True else three_fild_name + ["true"])()
    # solvability_json_name_fold = ["solvability" + x + "InitialPredicates" for x in solvability_name_fold]
    # for name_fold in solvability_json_name_fold:
    #     solvability = [1 if s[name_fold] == "true" else 0 for s in json_solvability_obj_list]
    #     print(name_fold, str(sum(solvability)) + "/" + str(len(json_solvability_obj_list)))
    #
    # # description: read measurement JSON file
    # scatter_plot_range = [0, 120]
    # json_obj_list = read_measurement_from_JSON(filtered_file_list)
    #
    # get_analysis_for_predicted_labels(json_obj_list, out_of_test_set=out_of_test_set, time_unit=1000,
    #                                   scatter_plot_range=scatter_plot_range)
    # print("solvable file by predicted label:" + str(len(json_obj_list)) + "/" + str(len(filtered_file_list)))




def draw_train_predict_plots(params,dataset,test_data,predicted_Y,train_loss_list,valid_loss_list,best_valid_epoch,hyper_parameters):
    true_Y = []
    for data in iter(test_data):
        # print(data[0]) #input
        true_Y.extend(np.array(data[1]["node_labels"]))

    parameters = pickleRead(params["benchmark"] + "-" + params["label"] + "-parameters", "../src/trained_model/")
    class_weight = {"weight_for_1": parameters["class_weight_fold"]["weight_for_1"] /
                                    parameters["class_weight_fold"]["weight_for_0"], "weight_for_0": 1}
    from_logits=True
    error_loaded_model = compute_loss(params["label"], true_Y, predicted_Y, class_weight, from_logits,
                 params["gathered_nodes_binary_classification_task"])
    print("\n error of loaded_model", error_loaded_model)

    mean_label=np.full(np.array(predicted_Y).shape,np.mean(true_Y))
    mean_loss = compute_loss(params["label"], true_Y, mean_label, class_weight, from_logits,
                 params["gathered_nodes_binary_classification_task"])
    print("\n mean_loss_Y_and_True_Y", mean_loss)
    num_correct = tf.reduce_sum(tf.cast(tf.math.equal(true_Y, tf.math.round(predicted_Y)), tf.int32))
    accuracy = num_correct / len(predicted_Y)

    draw_training_results(train_loss_list, valid_loss_list,
                          mean_loss,
                          error_loaded_model, true_Y, predicted_Y, params["label"],
                          params["benchmark"], params["graph_type"],
                          params["gathered_nodes_binary_classification_task"], hyper_parameters)
    write_train_results_to_log(dataset, predicted_Y, train_loss_list,
                               valid_loss_list, error_loaded_model, mean_loss, accuracy,
                               best_valid_epoch, hyper_parameters,
                               benchmark=params["benchmark"], label=params["label"], graph_type=params["graph_type"])
def read_data_and_train(params, hyper_parameters):
    # description: set parameters
    gathered_nodes_binary_classification_task = params["gathered_nodes_binary_classification_task"]
    nodeFeatureDim = hyper_parameters["nodeFeatureDim"]
    parameters = tf2_gnn.GNN.get_default_hyperparameters()
    parameters["dense_every_num_layers"]=2
    #parameters["residual_every_num_layers"]=1
    print("graph_type", params["graph_type"])
    parameters['graph_type'] = params["graph_type"]  # hyperEdgeGraph or layerHornGraph
    parameters['hidden_dim'] = nodeFeatureDim  # 64

    parameters["global_exchange_dropout_rate"]=0
    parameters["layer_input_dropout_rate"]=0
    parameters["gnn_layer_input_dropout_rate"]=0
    parameters["graph_aggregation_dropout_rate"]=0
    parameters["regression_mlp_dropout"]=0
    parameters["scoring_mlp_dropout_rate"]=0

    parameters["use_inter_layer_layernorm"]=True
    parameters["dense_every_num_layers"] = 32
    parameters["residual_every_num_layers"] = 32
    parameters["global_exchange_every_num_layers"] = 32

    parameters['num_layers'] = hyper_parameters["num_layers"]
    #parameters["residual_every_num_layers"] = 10000000
    parameters['node_label_embedding_size'] = nodeFeatureDim
    parameters['max_nodes_per_batch'] = params["max_nodes_per_batch"]
    parameters['regression_hidden_layer_size'] = hyper_parameters["regression_hidden_layer_size"]
    parameters["benchmark"] = params["benchmark"]  # benchmark_name
    parameters["label_type"] = params["label"]  # label
    parameters["gathered_nodes_binary_classification_task"] = gathered_nodes_binary_classification_task
    parameters["threshold"] = params["threshold"]
    parameters["GPU"]=params["GPU"]
    parameters["pickle"]=params["pickle"]
    parameters["num_node_target_labels"]=params["num_node_target_labels"]
    parameters["label_field"]=params["label_field"]
    these_hypers: Dict[str, Any] = {
        "optimizer": "Adam",  # One of "SGD", "RMSProp", "Adam"
        "learning_rate": 0.001,#0.001
        "learning_rate_decay": 0.98,#0.98
        "momentum": 0.85,
        "gradient_clip_value": 1,  # 1
        "use_intermediate_gnn_results": False,
    }
    parameters.update(these_hypers)

    # description: read dataset
    dataset = HornGraphDataset(parameters)
    if params["force_read"] == True:
        params_for_write_graph_to_pickle={"benchmark":params["benchmark"],"data_fold":["train", "valid", "test"],
                                          "label":params["label"],"path":"../benchmarks/" + params["benchmark"] + "/",
                                          "file_type":params["file_type"],"max_nodes_per_batch":parameters['max_nodes_per_batch'],
                                          "graph_type":params["graph_type"],"file_list":[],"vocabulary_name":"","label_field":params["label_field"],"train":True}
        write_graph_to_pickle(params_for_write_graph_to_pickle)
    else:
        print("Use pickle data for training")
    if params["form_label"] == True:
        params_for_form_GNN_inputs_and_labels = {"label": params["label"], "datafold": ["train", "valid", "test"],
                                                 "benchmark": params["benchmark"],
                                                 "graph_type": params["graph_type"],
                                                 "gathered_nodes_binary_classification_task": gathered_nodes_binary_classification_task,
                                                 "use_class_weight": params["use_class_weight"],
                                                 "num_node_target_labels": params["num_node_target_labels"]}
        form_GNN_inputs_and_labels(params_for_form_GNN_inputs_and_labels)
    else:
        print("Use label in pickle data for training")

    if params["GPU"] == True:
        GPU_switch(True)
        dataset._use_worker_threads = False  # solve Failed setting context: CUDA_ERROR_NOT_INITIALIZED: initialization error
    else:
        GPU_switch(False)
    dataset.load_data([DataFold.TRAIN, DataFold.VALIDATION, DataFold.TEST])
    parameters["node_vocab_size"] = dataset._node_vocab_size
    parameters["class_weight_fold"] = dataset._class_weight_fold["train"]

    # description:get model
    model = None
    if params["label"] in ["argument_identify", "control_location_identify",
                           "argument_identify_no_batchs"]:  # all nodes binary classification task
        model = InvariantNodeIdentifyTask(parameters, dataset)
    elif params["label"]=="node_multiclass":
        model = InvariantNodeMultiClassTask(parameters, dataset)
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
    quiet = False
    model_name = "GNN"
    task_name = "Argument_selection"
    run_id = make_run_id(model_name, task_name)
    save_dir = os.path.abspath("trained_model")
    log_file = os.path.join(save_dir, f"{run_id}.log")

    def log(msg):
        log_line(log_file, msg)
    start=time.time()
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
    print("train time consumption",time.time()-start)

    print("trained_model_path", trained_model_path)

    test_data = dataset.get_tensorflow_dataset(DataFold.TEST)

    pickleWrite(parameters, params["benchmark"] + "-" + params["label"] + "-parameters", "../src/trained_model/")

    return trained_model_path, test_data, model, dataset,train_loss_list, valid_loss_list, best_valid_epoch


def predict_test_set_model_from_memory(params, test_data, model):
    return get_predicted_results(params, model, test_data)


def predict_test_set_model_from_file(params, test_data, trained_model_path, dataset):
    loaded_model = tf2_gnn.cli_utils.model_utils.load_model_for_prediction(trained_model_path, dataset,False)
    return get_predicted_results(params, loaded_model, test_data)


def predict_unseen_set(params, trained_model_path, file_list=[], set_max_nodes_per_batch=True):

    path = "../benchmarks/" + params["benchmark"] +"-unsolvable" + "/"
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
                                       "gathered_nodes_binary_classification_task"],use_class_weight=False)

    dataset = HornGraphDataset(parameters)
    dataset.load_data([DataFold.TEST])
    test_data = dataset.get_tensorflow_dataset(DataFold.TEST)
    loaded_model = tf2_gnn.cli_utils.model_utils.load_model_for_prediction(trained_model_path, dataset)
    return get_predicted_results(params, loaded_model, test_data),dataset


def get_predicted_results(params, model, test_data):
    _, _, test_results = model.run_one_epoch(test_data, training=False, quiet=params["test_quiet"])
    test_metric, test_metric_string = model.compute_epoch_metrics(test_results)
    predicted_Y = model.predict(test_data)
    predicted_Y=tf.math.sigmoid(predicted_Y)
    print_predicted_results(
        {"predicted_Y": predicted_Y, "test_metric_string": test_metric_string,"test_metric": test_metric})
    return predicted_Y


def print_predicted_results(result_dic):
    print("predicted_Y", result_dic["predicted_Y"])
    print("test_metric_string", result_dic["test_metric_string"])
    print("test_metric", result_dic["test_metric"])

def random_seed(seed):
    import random
    os.environ['PYTHONHASHSEED'] = str(seed) # Python general
    np.random.seed(seed)
    random.seed(seed) # Python random
    tf.random.set_seed(seed)
    os.environ['TF_DETERMINISTIC_OPS'] = "1"
    os.environ['HOROVOD_FUSION_THRESHOLD'] = '0'
main()
