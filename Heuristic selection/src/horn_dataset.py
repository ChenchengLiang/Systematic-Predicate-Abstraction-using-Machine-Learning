from typing import Any, Dict,Optional
import tensorflow as tf
from dotToGraphInfo import GraphInfo,ArgumentInfo,DotToGraphInfo,parseArguments,parseArgumentsFromJson
import tf2_gnn
from horn_graph_argument_selection_task import InvariantArgumentSelectionTask,InvariantNodeIdentifyTask
from tf2_gnn.data import GraphDataset,GraphSample,DataFold,GraphBatchTFDataDescription
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

def train_on_graphs(benchmark_name="unknown",label="rank",force_read=False,train_n_times=1,path="../",file_type=".smt2",split_flag=False,buckets=10,from_json=False,form_label=False):
    #if not os.path.isfile("../pickleData/"+"train-"+benchmark_name+"-gnnInput_train_data.txt"):
    if force_read==True:
        write_graph_to_pickle(benchmark_name,  data_fold=["train", "valid", "test"], label=label,path=path,buckets=buckets,split_flag=split_flag,from_json=from_json,file_type=file_type)
    else:
        print("Use pickle data for training")
    #if form_label == True and not os.path.isfile("../pickleData/" + label + "-" + benchmark_name + "-gnnInput_train_data.txt"):
    if form_label == True:
        form_GNN_inputs_and_labels(label=label, datafold=["train", "valid", "test"], benchmark=benchmark_name)
    else:
        print("Use label in pickle data for training")


    #read_graph_from_pickle_file(benchmark_name,force_read=force_read,label=label,path=path,file_type=file_type)
    nodeFeatureDim = 64 #64
    parameters = tf2_gnn.GNN.get_default_hyperparameters()
    parameters["message_calculation_class"]="rgcn"#rgcn,ggnn,rgat
    #parameters['num_heads'] = 2
    parameters['hidden_dim'] = 64 #64
    parameters['num_layers'] = 2
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
    for n in range(train_n_times):
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
            patience=50,
            save_dir=save_dir,
            quiet=quiet,
            aml_run=None,
        )

        #predict
        print("trained_model_path",trained_model_path)

        test_data = dataset.get_tensorflow_dataset(DataFold.TEST)

        #load model from files
        print("trained_model_path",trained_model_path)
        loaded_model = tf2_gnn.cli_utils.model_utils.load_model_for_prediction(trained_model_path, dataset)
        _, _, test_results = loaded_model.run_one_epoch(test_data, training=False, quiet=quiet)
        test_metric, test_metric_string = loaded_model.compute_epoch_metrics(test_results)
        predicted_Y_loaded_model = loaded_model.predict(test_data)

        #use model in memory
        # _, _, test_results = model.run_one_epoch(test_data, training=False, quiet=quiet)
        # test_metric, test_metric_string = model.compute_epoch_metrics(test_results)
        # predicted_Y_loaded_model=model.predict(test_data)


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

        predicted_argument_lists=get_predicted_argument_list_divided_by_file(dataset, predicted_Y_loaded_model)
        mse_list=[]
        for predicted_arguments, arguments,ranks in zip(predicted_argument_lists,dataset._argument_scores["test"],dataset._ranked_argument_scores["test"]):
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


def get_predicted_argument_list_divided_by_file(dataset,predicted_Y_loaded_model):
    argument_number_lists = []
    for arguments in dataset._argument_scores["test"]:
        argument_number_lists.append(len(arguments))
    predicted_argument_lists = []
    for i, n in enumerate(argument_number_lists):
        predicted_argument_lists.append(
            predicted_Y_loaded_model[sum(argument_number_lists[:i]):sum(argument_number_lists[:i]) + n])
    return predicted_argument_lists

def build_vocabulary(datafold=["train", "valid", "test"], path=""):
    vocabulary_set=set(["unknown"])
    for fold in datafold:
        for json_file in glob.glob(path+fold+"_data/*.JSON"):
            with open(json_file) as f:
                loaded_graph = json.load(f)
                vocabulary_set.update(loaded_graph["nodeSymbolList"])
    token_map={}
    token_id=0
    for word in vocabulary_set:
        token_map[word]=token_id
        token_id=token_id+1
    return vocabulary_set,token_map


class HornGraphSample(GraphSample):
    """Data structure holding a single horn graph."""
    def __init__(
        self,
        adjacency_lists: List[np.ndarray],
        node_features: np.ndarray,
        node_label: np.ndarray,
        node_argument: np.ndarray,
        current_node_index:np.ndarray,
        node_control_location:np.ndarray
    ):
        super().__init__(adjacency_lists, node_features)
        self._current_node_index=current_node_index
        self._node_label = node_label
        self._node_argument=node_argument
        self._node_control_location=node_control_location

    @property
    def node_label(self) -> np.ndarray:
        """Node labels to predict as ndarray of shape [V, C]"""
        return self._node_label
class raw_graph_inputs():
    def __init__(self,num_edge_types,total_number_of_nodes):
        self._num_edge_types=num_edge_types
        self._total_number_of_nodes=total_number_of_nodes
        self._node_number_per_edge_type=[]
        self.final_graphs=None
        self.argument_scores=[]
        self.ranked_argument_scores=[]
        self.file_names=[]
        self.argument_identify=[]
        self.control_location_identify=[]
        self.label_size=0
        self.vocabulary_set=set()
        self.token_map={}

class HornGraphDataset(GraphDataset[HornGraphSample]):
    def __init__(self, params: Dict[str, Any], metadata: Optional[Dict[str, Any]] = None):
        super().__init__(params, metadata=metadata)
        self._num_edge_types = None
        self._total_number_of_nodes=None
        #self._node_number_per_edge_type = list()
        self._node_feature_shape: Optional[Tuple[int]] = None
        self._loaded_data: Dict[DataFold, List[GraphSample]] = {}
        self._argument_scores={}
        self._ranked_argument_scores = {}
        self._file_list={}
        self._benchmark=params["benchmark"]
        self.label_type=params["label_type"]
        self._node_vocab_size=0


    def load_data(self, folds_to_load: Optional[Set[DataFold]] = None) -> None:
        '''been run automatically when create the object of this class'''
        if folds_to_load is None:
            folds_to_load = {DataFold.TRAIN, DataFold.VALIDATION, DataFold.TEST}
            #folds_to_load = {DataFold.TRAIN}

        if DataFold.TRAIN in folds_to_load:
            self._loaded_data[DataFold.TRAIN] = self.__load_data(DataFold.TRAIN)
        if DataFold.VALIDATION in folds_to_load:
            self._loaded_data[DataFold.VALIDATION] = self.__load_data(DataFold.VALIDATION)
        if DataFold.TEST in folds_to_load:
            self._loaded_data[DataFold.TEST] = self.__load_data(DataFold.TEST)

    def __load_data(self, data_fold: DataFold) -> List[HornGraphSample]:
        if data_fold == DataFold.TRAIN:
            data_name = "train"
            self._node_number_per_edge_type=[] #reset to empty list
        elif data_fold == DataFold.VALIDATION:
            data_name = "valid"
            self._node_number_per_edge_type=[]
        elif data_fold == DataFold.TEST:
            data_name = "test"
            self._node_number_per_edge_type=[]



        print("data_fold",data_name)
        print("read GNNInputs from pickle file")
        print(self.label_type+"-"+self._benchmark+"-gnnInput_"+data_name+"_data")
        raw_inputs=pickleRead(self.label_type+"-"+self._benchmark+"-gnnInput_"+data_name+"_data")
        final_graphs=raw_inputs.final_graphs

        node_num_list=[]
        for g in final_graphs:
            node_num_list.append(len(g.node_features))

        #Vocabulary size should be total vocabulary size of train, valid, test data
        self._node_vocab_size=len(raw_inputs.vocabulary_set)


        print("raw_inputs.label_size", raw_inputs.label_size)
        print("raw_inputs._total_number_of_nodes", raw_inputs._total_number_of_nodes)
        self._total_number_of_nodes = raw_inputs._total_number_of_nodes
        print("raw_inputs._num_edge_types",raw_inputs._num_edge_types)
        self._num_edge_types=raw_inputs._num_edge_types

        print("raw_inputs._node_number_per_edge_type",raw_inputs._node_number_per_edge_type)
        self._node_number_per_edge_type=raw_inputs._node_number_per_edge_type

        # print("raw_inputs.argument_scores",raw_inputs.argument_scores)
        self._argument_scores[data_name]=raw_inputs.argument_scores
        # print("raw_inputs.ranked_argument_scores",raw_inputs.ranked_argument_scores)
        self._ranked_argument_scores[data_name] = raw_inputs.ranked_argument_scores
        self._file_list[data_name] = raw_inputs.file_names

        return final_graphs

    def load_data_from_list(self):
        raise NotImplementedError()
        pass

    @property
    def node_feature_shape(self) -> Tuple:
        """Return the shape of the node features."""
        some_data_fold = next(iter(self._loaded_data.values()))
        return (some_data_fold[0].node_features.shape[-1],)

    @property
    def num_edge_types(self) -> int:
        return self._num_edge_types

    @property
    def total_number_of_nodes(self) -> int:
        return self._total_number_of_nodes

    # -------------------- Minibatching --------------------
    def get_batch_tf_data_description(self) -> GraphBatchTFDataDescription:
        data_description = super().get_batch_tf_data_description()
        batch_features_types = {
            "node_features": tf.int32,
            "node_to_graph_map": tf.int32,
            "num_graphs_in_batch": tf.int32,
            "node_argument": tf.int32,
            "current_node_index":tf.int32
        }
        #print("self.node_feature_shape",self.node_feature_shape)
        batch_features_shapes = {
            "node_features": (None, ),  #+ self.node_feature_shape,  #no offset in minibatch
            "node_to_graph_map": (None,),
            "num_graphs_in_batch": (),
            "node_argument": (None, ),
            "current_node_index":(None,)
        }
        for edge_type_idx, edge_number in enumerate(self._node_number_per_edge_type):
            batch_features_types[f"adjacency_list_{edge_type_idx}"] = tf.int32
            batch_features_shapes[f"adjacency_list_{edge_type_idx}"] = (None, edge_number)

        return GraphBatchTFDataDescription(
            batch_features_types=batch_features_types,
            batch_features_shapes=batch_features_shapes,
            batch_labels_types={**data_description.batch_labels_types, "node_labels": tf.float32},
            batch_labels_shapes={**data_description.batch_labels_shapes, "node_labels": (None,)},

        )


    def _graph_iterator(self, data_fold: DataFold) -> Iterator[HornGraphSample]:
        loaded_data = self._loaded_data[data_fold]
        if data_fold == DataFold.TRAIN:
            random.shuffle(loaded_data)
        return iter(loaded_data)

    def _new_batch(self) -> Dict[str, Any]:
        #new_batch = super()._new_batch()
        # new_batch["node_argument"]=[]
        # new_batch["node_labels"] = []
        return {
            "node_features": [],
            "adjacency_lists": [[] for _ in range(self.num_edge_types)],
            "node_to_graph_map": [],
            "num_graphs_in_batch": 0,
            "num_nodes_in_batch": 0,
            "node_argument":[],
            "node_labels":[],
            "current_node_index":[]
        }
        return new_batch

    def _add_graph_to_batch(self, raw_batch, graph_sample: HornGraphSample) -> None:
        #super()._add_graph_to_batch(raw_batch, graph_sample)
        num_nodes_in_graph = len(graph_sample.node_features)
        #print("----add new batch---")
        offset = raw_batch["num_nodes_in_batch"]
        #print("num_nodes_in_graph",num_nodes_in_graph)
        #print("offset",offset)
        #raw_batch["node_features"].extend(graph_sample.node_features+offset)
        raw_batch["node_features"].extend(graph_sample.node_features)

        raw_batch["node_to_graph_map"].append(
            np.full(
                shape=[num_nodes_in_graph],
                fill_value=raw_batch["num_graphs_in_batch"],
                dtype=np.int32,
            )
        )
        # print("len(raw bach adjacent list)",len(raw_batch["adjacency_lists"]))
        # print("sample adjacent list",len(graph_sample.adjacency_lists))

        for edge_type_idx, (batch_adjacency_list,sample_adjacency_list) in enumerate(zip(raw_batch["adjacency_lists"],graph_sample.adjacency_lists)):
            edge_number=sample_adjacency_list.shape[1]
            # print("sample_adjacency_list.shape",sample_adjacency_list.shape)
            # print("edge_number",edge_number)
            batch_adjacency_list.append(
                graph_sample.adjacency_lists[edge_type_idx].reshape(-1, edge_number)
                 + offset #offset
            )
            #print("graph_sample.adjacency_lists",graph_sample.adjacency_lists[edge_type_idx] + offset)

        raw_batch["node_argument"].extend(graph_sample._node_argument + offset)
        raw_batch["node_labels"].extend(graph_sample._node_label)
        raw_batch["current_node_index"].extend(graph_sample._current_node_index)

        # print("graph_sample.node_features+offset",graph_sample.node_features+offset)
        # print("graph_sample._node_argument+offset", graph_sample._node_argument + offset)
        # print("raw_batch.node_features", raw_batch["node_features"])
        # print("raw_batch._node_argument",raw_batch["node_argument"])
        # print("raw_batch.adjacency_lists", raw_batch["adjacency_lists"])

        #
        # for edge_type_idx, (batch_adjacency_list,sample_adjacency_list) in enumerate(zip(raw_batch["adjacency_lists"],graph_sample.adjacency_lists)):
        #     edge_number=sample_adjacency_list.shape[1]
        #     #print("edge_number",edge_number)
        #     batch_adjacency_list.append(
        #         graph_sample.adjacency_lists[edge_type_idx]
        #         # .reshape(-1, edge_number)
        #         # + raw_batch["num_nodes_in_batch"] #offset
        #     )


    def _finalise_batch(self, raw_batch) -> Tuple[Dict[str, Any], Dict[str, Any]]:
        batch_features: Dict[str, Any] = {}
        batch_labels: Dict[str, Any] = {"node_labels": raw_batch["node_labels"]}
        batch_features["node_features"] = np.array(raw_batch["node_features"])
        #print("raw_batch node_to_graph_map len",len(raw_batch["node_to_graph_map"]))
        if len(raw_batch["node_to_graph_map"])==0:
            batch_features["node_to_graph_map"]=raw_batch["node_to_graph_map"]
        else:
            batch_features["node_to_graph_map"] = np.concatenate(raw_batch["node_to_graph_map"])
        batch_features["num_graphs_in_batch"] = raw_batch["num_graphs_in_batch"]
        for i, adjacency_list in enumerate(raw_batch["adjacency_lists"]):
            if len(adjacency_list) > 0:
                batch_features[f"adjacency_list_{i}"] = np.concatenate(adjacency_list)
            else:
                batch_features[f"adjacency_list_{0}"] = np.zeros(shape=(0, 2),
                                                                 dtype=np.int32)
                batch_features[f"adjacency_list_{1}"] = np.zeros(shape=(0, 3),
                                                                 dtype=np.int32)

        #batch_features, batch_labels = super()._finalise_batch(raw_batch)
        batch_features["node_argument"] = raw_batch["node_argument"]
        batch_features["current_node_index"] = raw_batch["current_node_index"]
        return batch_features, batch_labels





def read_graph_from_pickle_file(benchmark,force_read=False, data_fold=["train","valid","test"],label="rank",path="../",file_type=".smt2"):
    benchmark_name=benchmark.replace("/", "-")
    if os.path.isfile("../pickleData/"+label+"-"+benchmark_name+"-gnnInput_train_data.txt") and force_read==False:
        print("read existed training data")

    else:
        for df in data_fold:
            print("write data_fold to pickle data:",df)
            graphInfoList = DotToGraphInfo(df+"Data",path)
            graphInfoList._file_type=file_type
            # get raw gnn inputs
            graphs_node_label_ids, graphs_argument_indices, graphs_adjacency_lists,\
            graphs_argument_scores, total_number_of_node,graphs_control_location_indices,graph_info_list = graphInfoList.getHornGraphSample_no_offset()


            form_horn_graph_samples(graphs_node_label_ids, graphs_argument_indices, graphs_adjacency_lists,
                                    graphs_argument_scores, total_number_of_node, graphs_control_location_indices,
                                    label, benchmark, df)



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

def write_graph_to_pickle(benchmark,  data_fold=["train", "valid", "test"], label="rank",path="../", buckets=0,split_flag=False,from_json=False,file_type=".smt2"):
    vocabulary_set, token_map = build_vocabulary(datafold=["train", "valid", "test"], path=path)
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
        file_type=".smt2"
        file_name_list=[]

        #read from .gv
        if split_flag==True:
            for i in range(1,buckets+1):
                p = subprocess.Popen(["../venv/bin/python3", "split_read_graphs.py", path,df,str(i),file_type,label,str(buckets),"gnn_inputs"])
                p.wait()
                # os.kill(p.pid,signal.SIGKILL)
                print("curssor=",i)
            for i in range(1,buckets+1):
                graphs_node_label_ids.extend(pickleRead(df+"-graphs_node_label_ids-"+str(i)))
                graphs_argument_indices.extend(pickleRead(df+"-graphs_argument_indices-"+str(i)))
                graphs_adjacency_lists.extend(pickleRead(df+"-graphs_adjacency_lists-" + str(i)))
                graphs_argument_scores.extend(pickleRead(df+"-graphs_argument_scores-" + str(i)))
                graphs_control_location_indices.extend(pickleRead(df + "-total_control_flow_node_list-" + str(i)))
                total_number_of_node+=pickleRead(df+"-total_number_of_node-" + str(i))

        # read from JSON
        if from_json==True:
            suffix=file_type
            for fileGraph, fileArgument in zip(sorted(glob.glob(path +df+"_data/"+ '*' + suffix + '.JSON')),
                                               sorted(glob.glob(path +df+"_data/"+ '*' + suffix + '.arguments'))):
                fileName = fileGraph[:fileGraph.find(suffix + ".JSON") + len(suffix)]
                fileName = fileName[fileName.rindex("/") + 1:]
                #print("fileName",fileName)
                file_name_list.append(fileGraph[:fileGraph.find(".JSON")])
                # read graph
                #print("read graph from",fileGraph)
                with open(fileGraph) as f:
                    loaded_graph = json.load(f)
                    graphs_node_label_ids.append(loaded_graph["nodeIds"])
                    graphs_node_symbols.append(loaded_graph["nodeSymbolList"])
                    graphs_adjacency_lists.append(
                        [np.array(loaded_graph["binaryAdjacentList"]), np.array(loaded_graph["tenaryAdjacencyList"])])
                    graphs_argument_indices.append(loaded_graph["argumentIndices"])
                    graphs_control_location_indices.append(loaded_graph["controlLocationIndices"])
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

    raw_data_graph = raw_graph_inputs(len(graphs_adjacency_lists[0]), total_number_of_node)
    for edge_type in graphs_adjacency_lists[0]:
        raw_data_graph._node_number_per_edge_type.append(len(edge_type[0]))

    raw_data_graph.vocabulary_set=vocabulary_set
    raw_data_graph.token_map=token_map
    total_label=0
    total_nodes=0

    directory_wrong_extracted_cases=file_name_list[0][:file_name_list[0].rfind("/")+1]+"wrong_extracted_cases"
    if not os.path.exists(directory_wrong_extracted_cases):
        os.makedirs(directory_wrong_extracted_cases)
    for node_label_ids, node_symbols, argument_indices, adjacency_lists, argument_scores,control_location_indices, file_name in zip(graphs_node_label_ids,
                                                                                  graphs_node_symbols,graphs_argument_indices,
                                                                                  graphs_adjacency_lists,
                                                                                  graphs_argument_scores,
                                                                                  graphs_control_location_indices,file_name_list):
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