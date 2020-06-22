from typing import Any, Dict,Optional
import tensorflow as tf
from learnArguments.dotToGraphInfo import GraphInfo,ArgumentInfo,DotToGraphInfo
import tf2_gnn
from learnArguments.horn_graph_argument_selection_task import InvariantArgumentSelectionTask
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

def train_on_graphs(benchmark_name="unknown",label="rank",force_read=False,train_n_times=1,path="../../",file_type=".smt2",split_flag=False):
    if split_flag==True and not os.path.isfile("../../pickleData/"+label+"-"+benchmark_name+"-gnnInput_train_data.txt"):
        write_graph_to_pickle(benchmark_name,  data_fold=["train", "valid", "test"], label=label,path=path)


    read_graph_from_pickle_file(benchmark_name,force_read=force_read,label=label,path=path,file_type=file_type)
    nodeFeatureDim = 64
    parameters = tf2_gnn.GNN.get_default_hyperparameters()
    parameters["message_calculation_class"]="rgcn"#rgcn,ggnn,rgat
    #parameters['num_heads'] = 2
    parameters['hidden_dim'] = 64
    parameters['num_layers'] = 1
    parameters['node_label_embedding_size'] = nodeFeatureDim
    parameters['max_nodes_per_batch']=100000 #todo: _batch_would_be_too_full(), need to extend _finalise_batch() to deal with hyper-edge
    parameters['regression_hidden_layer_size'] = [64,64]
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

    def log(msg):
        log_line(log_file, msg)

    #todo:train n times and get average results
    train_loss_list_average=[]
    valid_loss_list_average=[]
    test_loss_list_average=[]
    mean_loss_list_average=[]
    mse_loaded_model_average=[]
    train_loss_average=[]
    valid_loss_average=[]
    test_loss_average=[]
    best_valid_epoch_average=[]
    for n in range(train_n_times):
        #get model
        model = InvariantArgumentSelectionTask(parameters, dataset)

        #train
        quiet=False
        model_name="GNN"
        task_name="Argument_selection"
        run_id = make_run_id(model_name, task_name)
        save_dir=os.path.abspath("trained_model")
        log_file = os.path.join(save_dir, f"{run_id}.log")

        trained_model_path,train_loss_list,valid_loss_list,best_valid_epoch = train(
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
        loaded_model=tf2_gnn.cli_utils.model_utils.load_model_for_prediction(trained_model_path,dataset)
        test_data = dataset.get_tensorflow_dataset(DataFold.TEST)
        predicted_Y_loaded_model=loaded_model.predict(test_data)
        print("predicted_Y_loaded_model Y\n",predicted_Y_loaded_model)
        true_Y=None

        mean_loss_list=0
        for data in test_data:
            #print(data[0]) #input
            true_Y=data[1]["node_labels"]
            print("True Y\n",data[1]["node_labels"]) #labels
            mse_loaded_model = tf.keras.losses.MSE(
                data[1]["node_labels"], predicted_Y_loaded_model)
            print("\n mse_loaded_model_predicted_Y_and_True_Y", mse_loaded_model)

            mse_mean = tf.keras.losses.MSE(
                [np.mean(data[1]["node_labels"])]*len(data[1]["node_labels"]), data[1]["node_labels"])
            print("\n mse_mean_Y_and_True_Y", mse_mean)
            mean_loss_list=mse_mean

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
    best_valid_epoch_average=np.mean(best_valid_epoch_average)

    #visualize results
    draw_training_results(train_loss_list_average, valid_loss_list_average,test_loss_list_average, mean_loss_list_average,
                          mse_loaded_model_average, valid_loss_list, true_Y, predicted_Y_loaded_model, label,
                          benchmark_name)
    write_train_results_to_log(dataset,predicted_Y_loaded_model,train_loss_average,
                               valid_loss_average, mse_loaded_model_average, mean_loss_list_average,best_valid_epoch_average,
                               benchmark=benchmark_name,label=label)




    #todo: statistics of positive and negative examples


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

def write_train_results_to_log(dataset,predicted_Y_loaded_model,train_loss,valid_loss,test_loss,mean_loss,
                               best_valid_epoch,benchmark="unknown",label="rank"):
    with open("trained_model/"+label+"-"+benchmark+".log", 'w') as out_file:
        out_file.write("best_valid_epoch:" + str(best_valid_epoch) + "\n")
        out_file.write("train loss:"+ str(train_loss)+"\n")
        out_file.write("valid loss:"+ str(valid_loss)+"\n")
        out_file.write("test loss:"+ str(test_loss)+"\n")
        out_file.write("mean loss:"+ str(mean_loss)+"\n")

        # transform results to ranks
        argument_number_lists = []
        for arguments in dataset._argument_scores["test"]:
            argument_number_lists.append(len(arguments))
        argument_lists = []
        for i, n in enumerate(argument_number_lists):
            argument_lists.append(
                predicted_Y_loaded_model[sum(argument_number_lists[:i]):sum(argument_number_lists[:i]) + n])

        mse_list=[]
        for predicted_arguments, arguments,ranks in zip(argument_lists,dataset._argument_scores["test"],dataset._ranked_argument_scores["test"]):
            out_file.write("-------"+ "\n")
            out_file.write("original argument scores:"+ str(arguments)+ "\n")
            out_file.write("original rank:"+ str(ranks)+ "\n")
            out_file.write("predicted argument scores:"+ str(predicted_arguments)+ "\n")
            out_file.write("predicted rank:"+ str(ss.rankdata(predicted_arguments,method="dense"))+ "\n")
            mse_list.append(tf.keras.losses.MSE(arguments,predicted_arguments))
        plt.xlabel('graph number')
        plt.ylabel('mse of predicted argument score')
        plt.plot(mse_list,label="predicted_data_mse")
        plt.plot([mean_loss]*len(mse_list),label="mean_mse")
        plt.legend()
        plt.savefig("trained_model/" + label + "-" + benchmark + "-test-mse.png")
        plt.clf()



class HornGraphSample(GraphSample):
    """Data structure holding a single horn graph."""
    def __init__(
        self,
        adjacency_lists: List[np.ndarray],
        node_features: np.ndarray,
        node_label: np.ndarray,
        node_argument: np.ndarray,
    ):
        super().__init__(adjacency_lists, node_features)
        self._node_label = node_label
        self._node_argument=node_argument

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
        self._benchmark=params["benchmark"]
        self.label_type=params["label_type"]


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




        #whatever the data_fold is, use the same dataset to debug
        print("data_fold",data_name)
        print(self.label_type+"-"+self._benchmark+"-gnnInput_"+data_name+"_data")
        raw_inputs=pickleRead(self.label_type+"-"+self._benchmark+"-gnnInput_"+data_name+"_data","../")
        final_graphs=raw_inputs.final_graphs

        self._num_edge_types=raw_inputs._num_edge_types
        self._total_number_of_nodes=raw_inputs._total_number_of_nodes
        self._node_number_per_edge_type=raw_inputs._node_number_per_edge_type

        self._argument_scores[data_name]=raw_inputs.argument_scores
        self._ranked_argument_scores[data_name] = raw_inputs.ranked_argument_scores


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
            "node_argument": tf.int32
        }
        #print("self.node_feature_shape",self.node_feature_shape)
        batch_features_shapes = {
            "node_features": (None, ),  #+ self.node_feature_shape,  #do offset in minibatch
            "node_to_graph_map": (None,),
            "num_graphs_in_batch": (),
            "node_argument": (None, ),
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
        for edge_type_idx, (batch_adjacency_list,sample_adjacency_list) in enumerate(zip(raw_batch["adjacency_lists"],graph_sample.adjacency_lists)):
            edge_number=sample_adjacency_list.shape[1]
            batch_adjacency_list.append(
                graph_sample.adjacency_lists[edge_type_idx].reshape(-1, edge_number)
                 + offset #offset
            )
            #print("graph_sample.adjacency_lists",graph_sample.adjacency_lists[edge_type_idx] + offset)
        raw_batch["node_argument"].extend(graph_sample._node_argument + offset)
        raw_batch["node_labels"].extend(graph_sample._node_label)

        #print("graph_sample.node_features+offset",graph_sample.node_features+offset)
        #print("graph_sample._node_argument+offset", graph_sample._node_argument + offset)
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
        batch_features["node_to_graph_map"] = np.concatenate(raw_batch["node_to_graph_map"])
        batch_features["num_graphs_in_batch"] = raw_batch["num_graphs_in_batch"]
        for i, adjacency_list in enumerate(raw_batch["adjacency_lists"]):
            if len(adjacency_list) > 0:
                batch_features[f"adjacency_list_{i}"] = np.concatenate(adjacency_list)
            else:
                batch_features[f"adjacency_list_{i}"] = np.zeros(shape=(0, 2),
                                                                 dtype=np.int32)

        #batch_features, batch_labels = super()._finalise_batch(raw_batch)
        batch_features["node_argument"] = raw_batch["node_argument"]

        return batch_features, batch_labels







def read_graph_from_pickle_file(benchmark,force_read=False, data_fold=["train","valid","test"],label="rank",path="../../",file_type=".smt2"):
    benchmark_name=benchmark.replace("/", "-")
    if os.path.isfile("../../pickleData/"+label+"-"+benchmark_name+"-gnnInput_train_data.txt") and force_read==False:
        print("read existed training data")

    else:
        for df in data_fold:
            print("write data_fold to pickle data:",df)
            final_graphs_v1 = []
            graphInfoList = DotToGraphInfo(df+"Data",path)
            graphInfoList._file_type=file_type
            # get raw gnn inputs
            graphs_node_label_ids, graphs_argument_indices, graphs_adjacency_lists, graphs_argument_scores, total_number_of_node = graphInfoList.getHornGraphSample_no_offset()

            raw_data_graph = raw_graph_inputs(len(graphs_adjacency_lists[0]), total_number_of_node)
            for edge_type in graphs_adjacency_lists[0]:
                raw_data_graph._node_number_per_edge_type.append(len(edge_type[0]))

            # loop per graph
            for node_label_ids, argument_indices, adjacency_lists, argument_scores in zip(graphs_node_label_ids,
                                                                                          graphs_argument_indices,
                                                                                          graphs_adjacency_lists,
                                                                                          graphs_argument_scores):
                #convert to rank
                ranked_argument_scores=ss.rankdata(argument_scores,method="dense")
                raw_data_graph.ranked_argument_scores.append(ranked_argument_scores)
                raw_data_graph.argument_scores.append(argument_scores)


                if label=="rank":
                    final_graphs_v1.append(
                        HornGraphSample(
                            adjacency_lists=tuple(adjacency_lists),
                            node_features=tf.constant(node_label_ids),
                            node_label=tf.constant(ranked_argument_scores),
                            #node_label=tf.constant(argument_scores),
                            node_argument=tf.constant(argument_indices),
                        )
                    )
                else:
                    final_graphs_v1.append(
                        HornGraphSample(
                            adjacency_lists=tuple(adjacency_lists),
                            node_features=tf.constant(node_label_ids),
                            #node_label=tf.constant(ranked_argument_scores),
                            node_label=tf.constant(argument_scores),
                            node_argument=tf.constant(argument_indices),
                        )
                    )

                # print("node_label_ids",node_label_ids)
                # print("adjacency_lists",adjacency_lists)
                # print("argument_scores",argument_scores)
                # print("argument_indices", argument_indices)
            raw_data_graph.final_graphs = final_graphs_v1.copy()
            pickleWrite(raw_data_graph, label+"-"+benchmark+"-gnnInput_"+df+"_data", "../")


def write_graph_to_pickle(benchmark,  data_fold=["train", "valid", "test"], label="rank",path="../../", curssor=0):
    benchmark_name = benchmark.replace("/", "-")
    for df in data_fold:
        print("write data_fold to pickle data:", df)
        final_graphs_v1 = []
        graphs_node_label_ids=[]
        graphs_argument_indices=[]
        graphs_adjacency_lists=[]
        graphs_argument_scores=[]
        total_number_of_node=0
        file_type=".smt2"
        for i in range(1,11):
            p = subprocess.Popen(["../../venv/bin/python3", "split_read_graphs.py", path,df,str(i),file_type,label])
            p.wait()
            # os.kill(p.pid,signal.SIGKILL)
            print("curssor=",i)

        for i in range(1,11):
            graphs_node_label_ids.extend(pickleRead(label+"-graphs_node_label_ids-"+str(i),path="../"))
            graphs_argument_indices.extend(pickleRead(label+"-graphs_argument_indices-"+str(i),path="../"))
            graphs_adjacency_lists.extend(pickleRead(label+"-graphs_adjacency_lists-" + str(i), path="../"))
            graphs_argument_scores.extend(pickleRead(label+"-graphs_argument_scores-" + str(i), path="../"))
            total_number_of_node+=pickleRead(label+"-total_number_of_node-" + str(i), path="../")


        raw_data_graph = raw_graph_inputs(len(graphs_adjacency_lists[0]), total_number_of_node)
        for edge_type in graphs_adjacency_lists[0]:
            raw_data_graph._node_number_per_edge_type.append(len(edge_type[0]))

        # loop per graph
        for node_label_ids, argument_indices, adjacency_lists, argument_scores in zip(graphs_node_label_ids,
                                                                                      graphs_argument_indices,
                                                                                      graphs_adjacency_lists,
                                                                                      graphs_argument_scores):
            # convert to rank
            ranked_argument_scores = ss.rankdata(argument_scores, method="dense")
            raw_data_graph.ranked_argument_scores.append(ranked_argument_scores)
            raw_data_graph.argument_scores.append(argument_scores)

            if label == "rank":
                final_graphs_v1.append(
                    HornGraphSample(
                        adjacency_lists=tuple(adjacency_lists),
                        node_features=tf.constant(node_label_ids),
                        node_label=tf.constant(ranked_argument_scores),
                        # node_label=tf.constant(argument_scores),
                        node_argument=tf.constant(argument_indices),
                    )
                )
            else:
                final_graphs_v1.append(
                    HornGraphSample(
                        adjacency_lists=tuple(adjacency_lists),
                        node_features=tf.constant(node_label_ids),
                        # node_label=tf.constant(ranked_argument_scores),
                        node_label=tf.constant(argument_scores),
                        node_argument=tf.constant(argument_indices),
                    )
                )

        raw_data_graph.final_graphs = final_graphs_v1.copy()
        pickleWrite(raw_data_graph, label + "-" + benchmark_name + "-gnnInput_" + df + "_data", "../")