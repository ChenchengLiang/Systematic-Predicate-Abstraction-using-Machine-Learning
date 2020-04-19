from typing import Any, Dict,Optional
import tensorflow as tf
from learnArguments.dotToGraphInfo import GraphInfo,ArgumentInfo,DotToGraphInfo
import tf2_gnn
from learnArguments.invariantArgumentSelectionModel import InvariantArgumentSelectionModel
from learnArguments.horn_graph_argument_selection_task import InvariantArgumentSelectionTask
from tf2_gnn.data import GraphDataset,GraphSample,DataFold,GraphBatchTFDataDescription
import numpy as np
from typing import List,Set,Iterator,Tuple
from sklearn.preprocessing import MinMaxScaler,Normalizer
from tf2_gnn.cli_utils.training_utils import train,log_line,make_run_id
import os

def main():
    graphInfoList = DotToGraphInfo()
    #get raw gnn inputs
    node_label_ids,adjacency_lists,node_to_graph_map,nodeNumberList,argumentNumberList,\
    numberOfNode,argument_indices,argument_scores,edgeTypeNumberList=graphInfoList.getGNNInputs()
    print("---")
    print("node_label_ids",node_label_ids)
    print("argument_indices", argument_indices)
    print("argument_scores",argument_scores)
    #print("adjacency_lists",adjacency_lists)
    print("node_to_graph_map",node_to_graph_map)
    print("numberOfNode",numberOfNode)
    print("nodeNumberList",nodeNumberList)
    print("argumentNumberList",argumentNumberList)

    nodeFeatureDim = 3
    parameters = tf2_gnn.GNN.get_default_hyperparameters()
    parameters['hidden_dim'] = 4
    parameters['num_layers'] = 1
    parameters['node_label_vocab_size'] = numberOfNode
    parameters['node_label_embedding_size'] = nodeFeatureDim
    parameters['num_edge_types'] = len(adjacency_lists)
    parameters['max_nodes_per_batch']=10000
    parameters['classification_hidden_layer_size'] = 42

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
    dataset.load_data([DataFold.TRAIN,DataFold.VALIDATION])
    #get model
    model = InvariantArgumentSelectionTask(parameters, dataset)

    #train
    quiet=False
    #train_data = dataset.get_tensorflow_dataset(DataFold.TRAIN).prefetch(3)
    # train_data = dataset.get_tensorflow_dataset(DataFold.TRAIN)
    # print("--dataset.get_tensorflow_dataset finished--")
    # train_loss, train_speed, train_results = model.run_one_epoch(
    #     train_data, training=True, quiet=quiet)
    # print("train_loss",train_loss)
    # print("train_speed",train_speed)
    # print("train_results",train_results)

    model_name="GNN"
    task_name="argument_selection"
    run_id = make_run_id(model_name, task_name)
    save_dir="trained_model"
    log_file = os.path.join(save_dir, f"{run_id}.log")
    def log(msg):
        log_line(log_file, msg)

    trained_model_path = train(
        model,
        dataset,
        log_fun=log,
        run_id=run_id,
        max_epochs=100,
        patience=5,
        save_dir=save_dir,
        quiet=quiet,
        aml_run=None,
    )



    #statistics of positive and negative examples

class HornGraphSample(GraphSample):
    """Data structure holding a single horn graph."""
    def __init__(
        self,
        adjacency_lists: List[np.ndarray],
        node_features: np.ndarray,
        node_label: float,
        node_argument:int,
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
        self._num_edge_types = params['num_edge_types']
        #self._node_number_per_edge_type = list()
        self._node_feature_shape: Optional[Tuple[int]] = None
        self._loaded_data: Dict[DataFold, List[GraphSample]] = {}

    def load_data(self, folds_to_load: Optional[Set[DataFold]] = None) -> None:
        '''been run automatically when create the object of this class'''
        if folds_to_load is None:
            #folds_to_load = {DataFold.TRAIN, DataFold.VALIDATION, DataFold.TEST}
            folds_to_load = {DataFold.TRAIN}

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


        final_graphs = []
        graphInfoList = DotToGraphInfo()
        # get raw gnn inputs

        #todo: uniform node ID again for every data point
        graphs_node_label_ids,graphs_argument_indices,graphs_adjacency_lists,graphs_argument_scores=graphInfoList.getHornGraphSample()

        #todo:get self._num_edge_types
        for edge_type in graphs_adjacency_lists[0]:
            self._node_number_per_edge_type.append(len(edge_type[0]))

        #scaler=MinMaxScaler()
        #normalizer=Normalizer()
        #loop per graph
        for node_label_ids,argument_indices,adjacency_lists,argument_scores in zip(graphs_node_label_ids,graphs_argument_indices,graphs_adjacency_lists,graphs_argument_scores):
            #print("argument_indices",argument_indices)
            #print("argument_scores",argument_scores)
            argument_scores = tf.keras.utils.normalize(np.array(argument_scores))
            #print("normalized argument_scores", argument_scores)
            #loop per data point
            argument_scores = np.concatenate(argument_scores).ravel().tolist()#flatten
            for arg, score in zip(argument_indices,argument_scores):
                final_graphs.append(
                    HornGraphSample(
                        adjacency_lists=tuple(adjacency_lists),
                        node_features=tf.constant(node_label_ids),
                        node_label=score,
                        node_argument=tf.constant(arg),
                    )
                )
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
            "node_features": (None, ),
            "node_to_graph_map": (None,),
            "num_graphs_in_batch": (),
            "node_argument": (None,),
        }
        print("self._node_number_per_edge_type",self._node_number_per_edge_type)
        for edge_type_idx, edge_number in enumerate(self._node_number_per_edge_type):
            # print("edge_number",edge_number)
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
        super()._add_graph_to_batch(raw_batch, graph_sample)
        raw_batch["node_argument"].append(graph_sample._node_argument)
        raw_batch["node_labels"].append(graph_sample._node_label)


    def _finalise_batch(self, raw_batch) -> Tuple[Dict[str, Any], Dict[str, Any]]:
        batch_features, batch_labels = super()._finalise_batch(raw_batch)
        batch_features["node_argument"] = raw_batch["node_argument"]
        return batch_features, {"node_labels": raw_batch["node_labels"]}


main()