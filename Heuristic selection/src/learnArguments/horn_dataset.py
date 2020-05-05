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

def main():
    read_graph_to_pickle_file()
    nodeFeatureDim = 8
    parameters = tf2_gnn.GNN.get_default_hyperparameters()
    parameters['hidden_dim'] = 16
    parameters['num_layers'] = 1
    parameters['node_label_embedding_size'] = nodeFeatureDim
    parameters['max_nodes_per_batch']=10000
    parameters['regression_hidden_layer_size'] = 42

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
    #get model
    model = InvariantArgumentSelectionTask(parameters, dataset)

    #train
    quiet=False
    model_name="GNN"
    task_name="Argument_selection"
    run_id = make_run_id(model_name, task_name)
    save_dir=os.path.abspath("trained_model")
    log_file = os.path.join(save_dir, f"{run_id}.log")
    def log(msg):
        log_line(log_file, msg)

    trained_model_path = train(
        model,
        dataset,
        log_fun=log,
        run_id=run_id,
        max_epochs=1000,
        patience=20,
        save_dir=save_dir,
        quiet=quiet,
        aml_run=None,
    )

    #predict
    dataset_test = HornGraphDataset(parameters)
    dataset_test.load_data([DataFold.TEST])

    loaded_model=tf2_gnn.cli_utils.model_utils.load_model_for_prediction(trained_model_path,dataset_test)
    test_data = dataset.get_tensorflow_dataset(DataFold.TEST)
    predicted_Y_loaded_model=loaded_model.predict(test_data)
    print("predicted_Y_loaded_model Y\n",predicted_Y_loaded_model)

    for data in test_data:
        #print(data[0]) #input
        print("True Y\n",data[1]["node_labels"]) #labels
        mse_loaded_model = tf.keras.losses.MSE(
            data[1]["node_labels"], predicted_Y_loaded_model)
        print("\n mse_loaded_model_predicted_Y_and_True_Y", mse_loaded_model)


    #todo:statistics of positive and negative examples


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


class HornGraphDataset(GraphDataset[HornGraphSample]):
    def __init__(self, params: Dict[str, Any], metadata: Optional[Dict[str, Any]] = None):
        super().__init__(params, metadata=metadata)
        self._num_edge_types = None
        self._total_number_of_nodes=None
        #self._node_number_per_edge_type = list()
        self._node_feature_shape: Optional[Tuple[int]] = None
        self._loaded_data: Dict[DataFold, List[GraphSample]] = {}

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
        print("data_fold",data_fold)
        raw_inputs=pickleRead("gnnInput_train_data","../")
        final_graphs=raw_inputs.final_graphs

        self._num_edge_types=raw_inputs._num_edge_types
        self._total_number_of_nodes=raw_inputs._total_number_of_nodes
        self._node_number_per_edge_type=raw_inputs._node_number_per_edge_type

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
        batch_features_shapes = {
            "node_features": (None, ), # + self.node_feature_shape,  offset
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
            np.random.shuffle(loaded_data)
        return iter(loaded_data)

    def _new_batch(self) -> Dict[str, Any]:
        new_batch = super()._new_batch()
        new_batch["node_argument"]=[]
        new_batch["node_labels"] = []
        return new_batch

    def _add_graph_to_batch(self, raw_batch, graph_sample: HornGraphSample) -> None:
        #super()._add_graph_to_batch(raw_batch, graph_sample)
        num_nodes_in_graph = len(graph_sample.node_features)
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
                # + raw_batch["num_nodes_in_batch"] #offset
            )
        raw_batch["node_argument"].extend(graph_sample._node_argument)
        raw_batch["node_labels"].extend(graph_sample._node_label)


        for edge_type_idx, (batch_adjacency_list,sample_adjacency_list) in enumerate(zip(raw_batch["adjacency_lists"],graph_sample.adjacency_lists)):
            edge_number=sample_adjacency_list.shape[1]
            #print("edge_number",edge_number)
            batch_adjacency_list.append(
                graph_sample.adjacency_lists[edge_type_idx]
                # .reshape(-1, edge_number)
                # + raw_batch["num_nodes_in_batch"] #offset
            )


    def _finalise_batch(self, raw_batch) -> Tuple[Dict[str, Any], Dict[str, Any]]:
        batch_features, batch_labels = super()._finalise_batch(raw_batch)
        batch_features["node_argument"] = raw_batch["node_argument"]
        return batch_features, {"node_labels": raw_batch["node_labels"]}



class raw_graph_inputs():
    def __init__(self,num_edge_types,total_number_of_nodes ):
        self._num_edge_types=num_edge_types
        self._total_number_of_nodes=total_number_of_nodes
        self._node_number_per_edge_type=[]
        self.final_graphs=None


def read_graph_to_pickle_file():

    if os.path.isfile('../../pickleData/gnnInput_train_data.txt'):
        print("read existed training data")

    else:
        final_graphs_v1 = []
        graphInfoList = DotToGraphInfo()
        # get raw gnn inputs
        graphs_node_label_ids, graphs_argument_indices, graphs_adjacency_lists, graphs_argument_scores, total_number_of_node = graphInfoList.getHornGraphSample()

        raw_data_graph = raw_graph_inputs(len(graphs_adjacency_lists[0]), total_number_of_node)
        # print("self._total_number_of_nodes",self._total_number_of_nodes)
        for edge_type in graphs_adjacency_lists[0]:
            raw_data_graph._node_number_per_edge_type.append(len(edge_type[0]))

        # loop per graph
        for node_label_ids, argument_indices, adjacency_lists, argument_scores in zip(graphs_node_label_ids,
                                                                                      graphs_argument_indices,
                                                                                      graphs_adjacency_lists,
                                                                                      graphs_argument_scores):
            argument_scores = tf.keras.utils.normalize(np.array(argument_scores))
            argument_scores = np.concatenate(argument_scores).ravel().tolist()  # flatten

            final_graphs_v1.append(
                HornGraphSample(
                    adjacency_lists=tuple(adjacency_lists),
                    node_features=tf.constant(node_label_ids),
                    node_label=tf.constant(argument_scores),
                    node_argument=tf.constant(argument_indices),
                )
            )
            # print("node_label_ids",node_label_ids)
            # print("adjacency_lists",adjacency_lists)
            # print("argument_scores",argument_scores)
            # print("argument_indices", argument_indices)
        raw_data_graph.final_graphs = final_graphs_v1.copy()
        pickleWrite(raw_data_graph, "gnnInput_train_data", "../")


main()