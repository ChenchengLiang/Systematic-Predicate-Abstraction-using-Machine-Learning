from typing import Any, Dict,Optional
import tensorflow as tf
from dotToGraphInfo import GraphInfo,ArgumentInfo,DotToGraphInfo,parseArguments,parseArgumentsFromJson
import tf2_gnn
from tf2_gnn.models import InvariantArgumentSelectionTask,InvariantNodeIdentifyTask
from tf2_gnn.data import GraphDataset,GraphSample,DataFold,GraphBatchTFDataDescription,HornGraphSample,HornGraphDataset
import numpy as np
from typing import List,Set,Iterator,Tuple
from sklearn.preprocessing import MinMaxScaler,Normalizer
from tf2_gnn.cli_utils.training_utils import train,log_line,make_run_id
from Miscellaneous import pickleWrite,pickleRead
import os
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import random
import scipy.stats as ss
import subprocess
import json
import glob
import shutil
from tf2_gnn.cli import test as model_test

'''
All graphs read from .gv files or JSON files will be stored to pickle a file (a parsed_dot_format object).
parsed_dot_format object includes multiple all graphs info.
'''

def train_on_graphs(benchmark_name="unknown",label="rank",force_read=False,train_n_times=1,path="../",file_type=".smt2",
                    split_flag=False,buckets=10,from_json=False,json_type=".JSON",form_label=False):
    #if not os.path.isfile("../pickleData/"+"train-"+benchmark_name+"-gnnInput_train_data.txt"):
    if force_read==True:
        write_graph_to_pickle(benchmark_name,  data_fold=["train", "valid", "test"],
                              label=label,path=path,from_json=from_json,
                              file_type=file_type,json_type=json_type)
    else:
        print("Use pickle data for training")
    #if form_label == True and not os.path.isfile("../pickleData/" + label + "-" + benchmark_name + "-gnnInput_train_data.txt"):
    if form_label == True:
        form_GNN_inputs_and_labels(label=label, datafold=["train", "valid", "test"], benchmark=benchmark_name)
    else:
        print("Use label in pickle data for training")

    #read_graph_from_pickle_file(benchmark_name,force_read=force_read,label=label,path=path,file_type=file_type,from_json=from_json,json_type=json_type)
    nodeFeatureDim = 64 #64
    parameters = tf2_gnn.GNN.get_default_hyperparameters()
    parameters["message_calculation_class"]="rgcn"#rgcn,ggnn,rgat
    #parameters['num_heads'] = 2
    parameters['hidden_dim'] = 64 #64
    parameters['num_layers'] = 1
    parameters['node_label_embedding_size'] = nodeFeatureDim
    parameters['max_nodes_per_batch']=10000 #todo: _batch_would_be_too_full(), need to extend _finalise_batch() to deal with hyper-edge
    parameters['regression_hidden_layer_size'] = [64,64] #[64,64]
    parameters["benchmark"]=benchmark_name
    parameters["label_type"]=label

    these_hypers: Dict[str, Any] = {
        "optimizer": "Adam",  # One of "SGD", "RMSProp", "Adam"
        "learning_rate": 0.001,
        "learning_rate_decay": 0.98,
        "momentum": 0.85,
        "gradient_clip_value": 1.0,
        "use_intermediate_gnn_results": False,
    }
    parameters.update(these_hypers)
    #get dataset
    dataset=HornGraphDataset(parameters)
    dataset.load_data([DataFold.TRAIN,DataFold.VALIDATION,DataFold.TEST])
    parameters["node_vocab_size"]=dataset._node_vocab_size
    def log(msg):
        log_line(log_file, msg)

    train_loss_list_average = []
    valid_loss_list_average = []
    test_loss_list_average = []
    mean_loss_list_average = []
    mse_loaded_model_average = []
    train_loss_average = []
    valid_loss_average = []
    test_loss_average = []
    best_valid_epoch_average = []
    accuracy_average=[]
    model=None
    for n in range(train_n_times): # train n time to get average performance, default is one
        # get model
        if label == "argument_identify":
            model = InvariantNodeIdentifyTask(parameters, dataset)
        elif label == "argument_identify_no_batchs":
            model = InvariantNodeIdentifyTask(parameters, dataset)
        elif label == "control_location_identify":
            model = InvariantNodeIdentifyTask(parameters, dataset)
        else:
            model = InvariantArgumentSelectionTask(parameters, dataset)

        #train
        quiet=False
        model_name="GNN"
        task_name="Argument_selection"
        run_id = make_run_id(model_name, task_name)
        save_dir=os.path.abspath("trained_model")
        log_file = os.path.join(save_dir, f"{run_id}.log")

        trained_model_path,train_loss_list,valid_loss_list,best_valid_epoch,train_metric_list,valid_metric_list = train(
            model,
            dataset,
            log_fun=log,
            run_id=run_id,
            max_epochs=1000,
            patience=10,
            save_dir=save_dir,
            quiet=quiet,
            aml_run=None,
        )

        #predict

        #trained_model_path="/home/cheli243/PycharmProjects/HintsLearning/src/trained_model/GNN_Argument_selection__2020-10-06_19-59-07_best.pkl"
        print("trained_model_path", trained_model_path)

        test_data = dataset.get_tensorflow_dataset(DataFold.TEST)

        # use model in memory
        #_, _, test_results = model.run_one_epoch(test_data, training=False, quiet=quiet)
        #test_metric, test_metric_string = model.compute_epoch_metrics(test_results)
        predicted_Y_loaded_model_from_memory = model.predict(test_data)

        #load model from files
        loaded_model = tf2_gnn.cli_utils.model_utils.load_model_for_prediction(trained_model_path, dataset)
        _, _, test_results = loaded_model.run_one_epoch(test_data, training=False, quiet=quiet)
        test_metric, test_metric_string = loaded_model.compute_epoch_metrics(test_results)
        predicted_Y_loaded_model = loaded_model.predict(test_data)



        print("test_metric_string",test_metric_string)
        print("test_metric",test_metric)

        true_Y=[]
        for data in iter(test_data):
            #print(data[0]) #input
            true_Y.extend(np.array(data[1]["node_labels"]))

        mse_loaded_model = tf.keras.losses.MSE(
            true_Y, predicted_Y_loaded_model)
        print("\n mse_loaded_model_predicted_Y_and_True_Y", mse_loaded_model)

        print("true_Y", true_Y)
        print("predicted_Y_loaded_model", predicted_Y_loaded_model)
        print("predicted_Y_loaded_model_from_memory", predicted_Y_loaded_model_from_memory)

        mse_mean = tf.keras.losses.MSE(
            [np.mean(true_Y)]*len(true_Y), true_Y)
        print("\n mse_mean_Y_and_True_Y", mse_mean)
        mean_loss_list=mse_mean
        num_correct = tf.reduce_sum(tf.cast(tf.math.equal(true_Y, tf.math.round(predicted_Y_loaded_model)),tf.int32))
        accuracy = num_correct / len(predicted_Y_loaded_model)

        accuracy_average.append(accuracy)
        train_loss_list_average.append(train_loss_list)
        valid_loss_list_average.append(valid_loss_list)
        test_loss_list_average.append(predicted_Y_loaded_model)
        mean_loss_list_average.append(mean_loss_list)
        mse_loaded_model_average.append(mse_loaded_model)
        train_loss_average.append(train_loss_list[-1])
        valid_loss_average.append(valid_loss_list[-1])
        test_loss_average.append(predicted_Y_loaded_model[-1])
        best_valid_epoch_average.append(best_valid_epoch)

    #get aberage training performance
    train_loss_list_average=np.mean(train_loss_list_average,axis=0)
    valid_loss_list_average=np.mean(valid_loss_list_average,axis=0)
    test_loss_list_average=np.mean(test_loss_list_average,axis=0)
    mean_loss_list_average=np.mean(mean_loss_list)
    mse_loaded_model_average=np.mean(mse_loaded_model)
    train_loss_average=np.mean(train_loss_average)
    valid_loss_average=np.mean(valid_loss_average)
    best_valid_epoch_average=np.mean(best_valid_epoch_average)
    mean_accuracy=np.mean(accuracy_average)

    write_accuracy_to_log(label, benchmark_name, accuracy_average,best_valid_epoch_average)
    #visualize results
    draw_training_results(train_loss_list_average, valid_loss_list_average,test_loss_list_average, mean_loss_list_average,
                          mse_loaded_model_average, valid_loss_list, true_Y, predicted_Y_loaded_model, label,
                          benchmark_name)
    write_train_results_to_log(dataset,predicted_Y_loaded_model,train_loss_average,
                               valid_loss_average, mse_loaded_model, mean_loss_list,accuracy_average,best_valid_epoch_average,
                               benchmark=benchmark_name,label=label)



def write_accuracy_to_log(label,benchmark,accuracy_list,best_valid_epoch_list):
    mean_accuracy = np.mean(accuracy_list)
    best_valid_epoch_average = np.mean(best_valid_epoch_list)
    with open("trained_model/" + label + "-" + benchmark + ".log", 'w') as out_file:
        out_file.write("accuracy_list:" + str(accuracy_list) + "\n")
        out_file.write("accuracy mean:" + str(mean_accuracy) + "\n")
        out_file.write("best_valid_epoch_list:" + str(best_valid_epoch_list) + "\n")
        out_file.write("best_valid_epoch_average:" + str(best_valid_epoch_average) + "\n")


def draw_training_results(train_loss_list_average,valid_loss_list_average,test_loss_list_average,mean_loss_list_average,
                          mse_loaded_model_average,valid_loss_list,true_Y,predicted_Y_loaded_model,label,benchmark_name):
    # mse on train, validation,test,mean
    plt.plot(train_loss_list_average, color="blue")
    plt.plot(valid_loss_list_average, color="green")
    plt.plot([mean_loss_list_average] * len(valid_loss_list), color="red")
    plt.plot([mse_loaded_model_average] * len(valid_loss_list), color="black")
    plt.ylabel('loss')
    plt.xlabel('epochs')
    train_loss_legend = mpatches.Patch(color='blue', label='train_loss')
    valid_loss_legend = mpatches.Patch(color='green', label='valid_loss')
    mean_loss_legend = mpatches.Patch(color='red', label='mean_loss')
    test_loss_legend = mpatches.Patch(color='black', label='test_loss')
    plt.legend(handles=[train_loss_legend, valid_loss_legend, mean_loss_legend, test_loss_legend])
    plt.savefig("trained_model/" + label + "-" + benchmark_name + ".png")
    plt.clf()
    # plt.show()

    # scatter on true y and predicted y
    a = plt.axes(aspect='equal')
    plt.scatter(true_Y, predicted_Y_loaded_model)
    plt.xlabel('True Values')
    plt.ylabel('Predictions')
    lims = [0, np.max([np.max(true_Y), np.max(predicted_Y_loaded_model)])]
    plt.xlim(lims)
    plt.ylim(lims)
    _ = plt.plot(lims, lims)
    plt.savefig("trained_model/" + label + "-" + benchmark_name + "-scatter.png")
    plt.clf()

    # error distribution on true y and predicted y
    error = predicted_Y_loaded_model - true_Y
    plt.hist(error, bins=25)
    plt.xlabel("Prediction Error [occurence]")
    _ = plt.ylabel("Count")
    plt.savefig("trained_model/" + label + "-" + benchmark_name + "-error-distribution.png")
    plt.clf()

def write_train_results_to_log(dataset,predicted_Y_loaded_model,train_loss,valid_loss,mse_loaded_model_list,mean_loss_list,accuracy_list,
                               best_valid_epoch,benchmark="unknown",label="rank"):
    mean_loss_list_average = np.mean(mean_loss_list)
    mse_loaded_model_average = np.mean(mse_loaded_model_list)
    mean_accuracy = np.mean(accuracy_list)
    with open("trained_model/"+label+"-"+benchmark+".log", 'w') as out_file:
        out_file.write("best_valid_epoch:" + str(best_valid_epoch) + "\n")
        out_file.write("train loss:"+ str(train_loss)+"\n")
        out_file.write("valid loss:"+ str(valid_loss)+"\n")
        out_file.write("test loss list:" + str(mse_loaded_model_list) + "\n")
        out_file.write("mean test loss:"+ str(mse_loaded_model_average)+"\n")

        out_file.write("mean loss list:" + str(mean_loss_list) + "\n")
        out_file.write("mean mean loss:"+ str(mean_loss_list_average)+"\n")

        out_file.write("accuracy list:" + str(accuracy_list) + "\n")
        out_file.write("mean accuracy:" + str(mean_accuracy) + "\n")

        predicted_argument_lists=get_predicted_label_list_divided_by_file(dataset, predicted_Y_loaded_model)
        mse_list=[]
        for predicted_arguments, arguments,ranks in zip(predicted_argument_lists,dataset._label_list["test"],dataset._ranked_argument_scores["test"]):
            out_file.write("-------"+ "\n")
            out_file.write("original argument scores:"+ str(arguments)+ "\n")
            out_file.write("original rank:"+ str(ranks)+ "\n")
            out_file.write("predicted argument scores:"+ str(predicted_arguments)+ "\n")
            out_file.write("predicted rank:"+ str(ss.rankdata(predicted_arguments,method="dense"))+ "\n")
            mse=tf.keras.losses.MSE(arguments,predicted_arguments)
            out_file.write("mse:" + str(mse) + "\n")
            mse_list.append(mse)
        out_file.write("-------"+ "\n")
        out_file.write("mean(mse_list):" + str(np.mean(mse_list)) + "\n")
        plt.xlabel('graph number')
        plt.ylabel('mse of predicted argument score')
        plt.plot(mse_list,label="predicted_data_mse")
        plt.plot([mean_loss_list_average]*len(mse_list),label="mean_mse")
        plt.legend()
        plt.savefig("trained_model/" + label + "-" + benchmark + "-test-mse.png")
        plt.clf()


def get_predicted_label_list_divided_by_file(dataset,predicted_Y_loaded_model):
    label_number_lists = []
    for labels in dataset._label_list["test"]:
        label_number_lists.append(len(labels))
    predicted_label_lists = []
    for i, n in enumerate(label_number_lists):
        predicted_label_lists.append(
            predicted_Y_loaded_model[sum(label_number_lists[:i]):sum(label_number_lists[:i]) + n])
    return predicted_label_lists

def build_vocabulary(datafold=["train", "valid", "test"], path="",json_type=".layerHornGraph.JSON"):
    vocabulary_set=set(["unknown"])
    for fold in datafold:
        for json_file in glob.glob(path+fold+"_data/*"+json_type):
            with open(json_file) as f:
                loaded_graph = json.load(f)
                vocabulary_set.update(loaded_graph["nodeSymbolList"])
    token_map={}
    token_id=0
    for word in vocabulary_set:
        token_map[word]=token_id
        token_id=token_id+1
    return vocabulary_set,token_map

class raw_graph_inputs():
    def __init__(self,num_edge_types,total_number_of_nodes):
        self._num_edge_types=num_edge_types
        self._total_number_of_nodes=total_number_of_nodes
        self._node_number_per_edge_type=[]
        self.final_graphs=None
        self.argument_scores=[]
        self.labels=[]
        self.ranked_argument_scores=[]
        self.file_names=[]
        self.argument_identify=[]
        self.control_location_identify=[]
        self.label_size=0
        self.vocabulary_set=set()
        self.token_map={}

def read_graph_from_pickle_file(benchmark,force_read=False, data_fold=["train","valid","test"],label="rank",path="../",file_type=".smt2",json_type=".JSON",from_json=True):
    benchmark_name=benchmark.replace("/", "-")
    if os.path.isfile("../pickleData/"+label+"-"+benchmark_name+"-gnnInput_train_data.txt") and force_read==False:
        print("read existed training data")

    else:
        write_graph_to_pickle(benchmark, data_fold=data_fold, label=label, path=path, from_json=from_json, file_type=file_type, json_type=json_type)


class parsed_dot_format:
    def __init__(self,graphs_node_label_ids,graphs_argument_indices,graphs_adjacency_lists,
                 graphs_argument_scores,total_number_of_node,graph_control_location_indices,file_name_list,parsed_arguments,
                 graphs_node_symbols,vocabulary_set, token_map):
        self.graphs_node_label_ids=graphs_node_label_ids
        self.graphs_argument_indices=graphs_argument_indices
        self.graphs_adjacency_lists=graphs_adjacency_lists
        self.graphs_argument_scores=graphs_argument_scores
        self.total_number_of_node=total_number_of_node
        self.graph_control_location_indices=graph_control_location_indices
        self.file_name_list=file_name_list
        self.parsed_arguments=parsed_arguments
        self.graphs_node_symbols=graphs_node_symbols
        self.vocabulary_set=vocabulary_set
        self.token_map=token_map

def write_graph_to_pickle(benchmark,  data_fold=["train", "valid", "test"], label="rank",path="../",from_json=False,file_type=".smt2",json_type=".JSON"):
    vocabulary_set, token_map = build_vocabulary(datafold=["train", "valid", "test"], path=path,json_type=json_type)
    benchmark_name = benchmark.replace("/", "-")
    for df in data_fold:
        print("write data_fold to pickle data:", df)
        graphs_node_label_ids=[]
        graphs_node_symbols=[]
        graphs_argument_indices=[]
        graphs_adjacency_lists=[]
        graphs_argument_scores=[]
        parsed_arguments = []
        graphs_control_location_indices=[]
        total_number_of_node=0
        file_type=file_type
        file_name_list=[]

        # read from JSON
        if from_json==True:
            suffix=file_type
            # for fileGraph, fileArgument in zip(sorted(glob.glob(path +df+"_data/"+ '*' + suffix + json_type)),
            #                                    sorted(glob.glob(path +df+"_data/"+ '*' + suffix + '.arguments'))):
            for fileGraph in sorted(glob.glob(path +df+"_data/"+ '*' + suffix + json_type)):
                fileName = fileGraph[:fileGraph.find(suffix + json_type) + len(suffix)]
                fileName = fileName[fileName.rindex("/") + 1:]
                # read graph
                #print("read graph from",fileGraph)
                with open(fileGraph) as f:
                    loaded_graph = json.load(f)
                    #todo:check all labels if equal to empty
                    if len(loaded_graph["nodeIds"]) == 0:
                        print("nodeIds==0",fileName)
                        for f in glob.glob(path+df+"_data/"+fileName + "*"):
                            shutil.copy(f, "../benchmarks/problem_cases/")
                            os.remove(f)
                    else:
                        file_name_list.append(fileGraph[:fileGraph.find(json_type)])
                        graphs_node_label_ids.append(loaded_graph["nodeIds"])
                        graphs_node_symbols.append(loaded_graph["nodeSymbolList"])
                        graphs_argument_indices.append(loaded_graph["argumentIndices"])
                        #for hyperedge horn graph
                        # graphs_adjacency_lists.append([
                        #     #np.array(loaded_graph["argumentDataFlowEdges"]),
                        #     #np.array(loaded_graph["dataFlowASTEdges"]),
                        #     np.array(loaded_graph["guardASTEdges"]),
                        #     np.array(loaded_graph["dataFlowEdges"]),
                        #     np.array(loaded_graph["argumentEdges"]),
                        #     np.array(loaded_graph["controlFlowHyperEdges"]),
                        #     np.array(loaded_graph["dataFlowHyperEdges"])])
                        #for layer horn graph
                        graphs_adjacency_lists.append([
                            np.array(loaded_graph["binaryAdjacentList"]),
                            np.array(loaded_graph["predicateArgumentEdges"]),
                            np.array(loaded_graph["predicateInstanceEdges"]),
                            np.array(loaded_graph["argumentInstanceEdges"]),
                            np.array(loaded_graph["controlHeadEdges"]),
                            np.array(loaded_graph["controlBodyEdges"]),
                            np.array(loaded_graph["controlArgumentEdges"]),
                        np.array(loaded_graph["guardEdges"]),
                        np.array(loaded_graph["dataEdges"]),
                        #np.array(loaded_graph["unknownEdges"])
                        ])

                        #graphs_control_location_indices.append(loaded_graph["controlLocationIndices"])
                        total_number_of_node += len(loaded_graph["nodeIds"])
                        # read argument from JSON file
                        parsed_arguments = parseArgumentsFromJson(loaded_graph["argumentIDList"],loaded_graph["argumentNameList"],loaded_graph["argumentOccurrence"])
                        graphs_argument_scores.append([int(argument.score) for argument in parsed_arguments])
                    # # read argument from .argument file
                    # print("read argument from",fileArgument)
                    # with open(fileArgument) as f:
                    #     parsed_arguments = parseArguments(f.read())
                    #     graphs_argument_scores.append([int(argument.score) for argument in parsed_arguments])


        pickle_data=parsed_dot_format(graphs_node_label_ids,graphs_argument_indices,graphs_adjacency_lists,
                                      graphs_argument_scores,total_number_of_node,graphs_control_location_indices,file_name_list,
                                      parsed_arguments,graphs_node_symbols,vocabulary_set, token_map)
        pickleWrite(pickle_data, "train-" + benchmark_name + "-gnnInput_" + df + "_data")


def form_GNN_inputs_and_labels(label="occurrence",datafold=["train", "valid", "test"],benchmark=""):
    print("form labels")
    benchmark_name = benchmark.replace("/", "-")
    for df in datafold:
        parsed_dot_file=pickleRead("train-" + benchmark_name + "-gnnInput_" + df + "_data")

        graphs_node_label_ids = parsed_dot_file.graphs_node_label_ids
        graphs_node_symbols = parsed_dot_file.graphs_node_symbols
        graphs_argument_indices = parsed_dot_file.graphs_argument_indices
        graphs_adjacency_lists = parsed_dot_file.graphs_adjacency_lists
        graphs_argument_scores = parsed_dot_file.graphs_argument_scores
        total_number_of_node = parsed_dot_file.total_number_of_node
        graphs_control_location_indices=parsed_dot_file.graph_control_location_indices
        file_name_list =  parsed_dot_file.file_name_list
        vocabulary_set = parsed_dot_file.vocabulary_set
        token_map = parsed_dot_file.token_map

        form_horn_graph_samples(graphs_node_label_ids,graphs_node_symbols, graphs_argument_indices, graphs_adjacency_lists,
                                graphs_argument_scores, total_number_of_node,graphs_control_location_indices, file_name_list,label,
                                vocabulary_set,token_map, benchmark, df)


def form_horn_graph_samples(graphs_node_label_ids,graphs_node_symbols, graphs_argument_indices, graphs_adjacency_lists,
                            graphs_argument_scores, total_number_of_node,graphs_control_location_indices, file_name_list,label,
                            vocabulary_set,token_map,benchmark, df):
    final_graphs_v1 = []

    raw_data_graph = raw_graph_inputs(len(graphs_adjacency_lists[0]), total_number_of_node)#graphs_adjacency_lists[0] means the first graph's adjacency_list
    temp_graph_index=0
    for i,graphs_adjacency in enumerate(graphs_adjacency_lists):
        temp_count=0
        for edge_type in graphs_adjacency:
            if len(edge_type) != 0:
                temp_count=temp_count+1
        if temp_count == len(graphs_adjacency):
            temp_graph_index=i
    for edge_type in graphs_adjacency_lists[temp_graph_index]:
        #if len(edge_type)!=0:
        raw_data_graph._node_number_per_edge_type.append(len(edge_type[0]))

    raw_data_graph.vocabulary_set=vocabulary_set
    raw_data_graph.token_map=token_map
    total_label=0
    total_nodes=0

    if len(graphs_control_location_indices)==0:
        graphs_control_location_indices=graphs_argument_indices
    directory_wrong_extracted_cases=file_name_list[0][:file_name_list[0].rfind("/")+1]+"wrong_extracted_cases"
    if not os.path.exists(directory_wrong_extracted_cases):
        os.makedirs(directory_wrong_extracted_cases)
    for node_label_ids, node_symbols, argument_indices, adjacency_lists, argument_scores,control_location_indices,\
        file_name in zip(graphs_node_label_ids,graphs_node_symbols,graphs_argument_indices,graphs_adjacency_lists,
                         graphs_argument_scores,graphs_control_location_indices,file_name_list):
        # convert to rank
        ranked_argument_scores = ss.rankdata(argument_scores, method="dense")
        argument_identify = np.array([0] * len(node_label_ids))
        argument_identify[argument_indices] = 1
        total_nodes+=len(node_label_ids)
        #total_label += len(argument_indices)
        control_location_identify = np.array([0] * len(node_label_ids))
        control_location_identify[control_location_indices]=1

        #If .argument file has different number of argument with JSON file. copy that file to wrong_extracted_cases. and do not append this file
        if len(argument_indices)!=len(argument_scores):
            print("------------------argument_scores != argument_indices-------------------------")
            print("argument_scores", len(argument_scores))
            print("argument_indices", len(argument_indices))
            print(file_name)
            shutil.copy(file_name, directory_wrong_extracted_cases)
            from Miscellaneous import remove_list_of_file
            remove_list_of_file(file_name)
        else:
            raw_data_graph.argument_identify.append(argument_identify)
            raw_data_graph.control_location_identify.append(control_location_identify)
            raw_data_graph.ranked_argument_scores.append(ranked_argument_scores)
            raw_data_graph.argument_scores.append(argument_scores)
            raw_data_graph.file_names.append(file_name)

            #node tokenization
            tokenized_node_label_ids = []
            for symbol in node_symbols:
                tokenized_node_label_ids.append(token_map[symbol])

            if label == "rank":
                raw_data_graph.labels.append(argument_scores)
                total_label += len(ranked_argument_scores)
                final_graphs_v1.append(
                    HornGraphSample(
                        adjacency_lists=tuple(adjacency_lists),
                        node_features=tf.constant(tokenized_node_label_ids),
                        #node_features=tf.constant(node_label_ids),
                        node_label=tf.constant(ranked_argument_scores),
                        # node_label=tf.constant(argument_scores),
                        node_argument=tf.constant(argument_indices),
                        current_node_index=tf.constant([]),
                        node_control_location=tf.constant(control_location_indices)
                    )
                )
                raw_data_graph.label_size+=len(ranked_argument_scores)
            elif label == "occurrence":
                raw_data_graph.labels.append(argument_scores)
                total_label += len(argument_scores)
                final_graphs_v1.append(
                    HornGraphSample(
                        adjacency_lists=tuple(adjacency_lists),
                        node_features=tf.constant(tokenized_node_label_ids),
                        #node_features=tf.constant(node_label_ids),
                        # node_label=tf.constant(ranked_argument_scores),
                        node_label=tf.constant(argument_scores),  # argument_scores
                        node_argument=tf.constant(argument_indices),
                        current_node_index=tf.constant([]),
                        node_control_location=tf.constant(control_location_indices)
                    )
                )
                raw_data_graph.label_size += len(argument_scores)
            elif label == "argument_identify":
                raw_data_graph.labels.append(argument_identify)
                total_label += len(argument_identify)
                final_graphs_v1.append(
                    HornGraphSample(
                        adjacency_lists=tuple(adjacency_lists),
                        node_features=tf.constant(tokenized_node_label_ids),
                        #node_features=tf.constant(node_label_ids),
                        # node_label=tf.constant(ranked_argument_scores),
                        node_label=tf.constant(argument_identify),
                        node_argument=tf.constant(argument_indices),
                        current_node_index=tf.constant([]),
                        node_control_location=tf.constant(control_location_indices)
                    )
                )
                raw_data_graph.label_size += len(argument_identify)
            elif label == "control_location_identify":
                raw_data_graph.labels.append(control_location_identify)
                total_label += len(control_location_identify)
                final_graphs_v1.append(
                    HornGraphSample(
                        adjacency_lists=tuple(adjacency_lists),
                        node_features=tf.constant(tokenized_node_label_ids),
                        #node_features=tf.constant(node_label_ids),
                        # node_label=tf.constant(ranked_argument_scores),
                        node_label=tf.constant(control_location_identify),
                        node_argument=tf.constant(argument_indices),
                        current_node_index=tf.constant([]),
                        node_control_location=tf.constant(control_location_indices)
                    )
                )
                raw_data_graph.label_size += len(control_location_identify)
            elif label == "argument_identify_no_batchs":
                total_label += len([1])
                raw_data_graph.label_size += len(node_label_ids)
                for i in node_label_ids:
                    if i in argument_indices:
                        final_graphs_v1.append(
                            HornGraphSample(
                                adjacency_lists=tuple(adjacency_lists),
                                node_features=tf.constant(tokenized_node_label_ids),
                                #node_features=tf.constant(node_label_ids),
                                # node_label=tf.constant(ranked_argument_scores),
                                node_label=tf.constant([1]),
                                node_argument=tf.constant(argument_indices),
                                current_node_index=tf.constant([i]),
                                node_control_location=tf.constant(control_location_indices)
                            )
                        )

                    else:
                        total_label += len([0])
                        final_graphs_v1.append(
                            HornGraphSample(
                                adjacency_lists=tuple(adjacency_lists),
                                node_features=tf.constant(tokenized_node_label_ids),
                                #node_features=tf.constant(node_label_ids),
                                # node_label=tf.constant(ranked_argument_scores),
                                node_label=tf.constant([0]),
                                node_argument=tf.constant(argument_indices),
                                current_node_index=tf.constant([i]),
                                node_control_location=tf.constant(control_location_indices)
                            )
                        )
            else:
                pass
    raw_data_graph.final_graphs = final_graphs_v1.copy()
    pickleWrite(raw_data_graph, label + "-" + benchmark + "-gnnInput_" + df + "_data")
    print("total_label",total_label)
    print("total_nodes",total_nodes)