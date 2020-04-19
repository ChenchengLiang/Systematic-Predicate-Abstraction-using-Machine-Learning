"""General task for graph binary classification."""
from typing import Any, Dict, List, Tuple, Optional

import numpy as np
import tensorflow as tf

from tf2_gnn.data import GraphDataset
from tf2_gnn.models import GraphTaskModel
from tf2_gnn.layers import WeightedSumGraphRepresentation, NodesToGraphRepresentationInput

from tf2_gnn import GNNInput, GNN

class InvariantArgumentSelectionTask(GraphTaskModel):
    def __init__(self, params: Dict[str, Any], dataset: GraphDataset, name: str = None):
        super().__init__(params, dataset=dataset, name=name)
        self._params = params
        self._num_edge_types = params['num_edge_types']
        self._embedding_layer = tf.keras.layers.Embedding(
            input_dim=params["node_label_vocab_size"],
            output_dim=params["node_label_embedding_size"]
        )
        self._gnn = GNN(params)
        self._argument_repr_to_classification_layer = tf.keras.layers.Dense(
            units=self._params["classification_hidden_layer_size"], activation=tf.nn.relu, use_bias=True) #decide layer output shape
        self._argument_classification_layer = tf.keras.layers.Dense(
            units=1, activation=tf.nn.sigmoid, use_bias=True) #decide layer input shape
        self._node_to_graph_aggregation = None




    def build(self, input_shapes):
        # build node embedding layer
        print("--build--")
        self._embedding_layer.build(tf.TensorShape((None,)))
        # build gnn layers
        self._gnn.build(
            GNNInput(
                node_features=tf.TensorShape((None, self._params["node_label_embedding_size"])),
                adjacency_lists=tuple(
                    input_shapes[f"adjacency_list_{edge_type_idx}"]
                    for edge_type_idx in range(self._num_edge_types)
                ),
                node_to_graph_map=tf.TensorShape((None,)),
                num_graphs=tf.TensorShape(()),
            )
        )

        # todo: build task-specific layer

        self._argument_repr_to_classification_layer.build(tf.TensorShape((None, self._params["hidden_dim"]))) #decide layer input shape
        #
        self._argument_classification_layer.build(
            tf.TensorShape((None, self._params["classification_hidden_layer_size"])) #decide layer input shape
        )


        super().build([],True)#by pass graph_task_mode (GraphTaskModel)' build
        #tf.keras.Model.build([])


    def call(self, inputs, training: bool = False):
        print("--call--")
        # call node embedding layer
        #node_labels_embedded = self._embedding_layer(inputs["node_label_ids"], training=training)
        node_labels_embedded = self._embedding_layer(inputs["node_features"], training=training)


        adjacency_lists: Tuple[tf.Tensor, ...] = tuple(
            inputs[f"adjacency_list_{edge_type_idx}"]
            for edge_type_idx in range(self._num_edge_types)
        )


        print("node_features",inputs["node_features"])
        print("node_features len",len(set(np.array(inputs["node_features"]))))
        print("arguments",inputs["node_argument"])
        print("node_to_graph_map",inputs['node_to_graph_map'])
        print("num_graphs_in_batch",inputs['num_graphs_in_batch'])
        print("adjacency_lists",adjacency_lists)

        # call gnn and get graph representation
        gnn_input = GNNInput(
            node_features=node_labels_embedded,
            num_graphs=inputs['num_graphs_in_batch'],
            # Here, the adjacency lists would need to be extracted from the input, which is easiest as Dict[str, tf.Tensor/np.ndarray]
            node_to_graph_map=inputs['node_to_graph_map'],
            #adjacency_lists=inputs['adjacency_lists'],
            adjacency_lists=adjacency_lists
        )
        final_node_representations = self._gnn(gnn_input, training=training)
        # todo: find the target argument representation
        #*1 solution from https://github.com/tensorflow/tensorflow/issues/36236
        argument_representations=tf.gather(params=final_node_representations*1,indices=inputs["node_argument"])
        #print("argument_representations",argument_representations)

        return self.compute_task_output(inputs, argument_representations, training)


    def compute_task_output(
        self,
        batch_features: Dict[str, tf.Tensor],
        final_argument_representations: tf.Tensor,
        training: bool,
    ) -> Any:
        print("compute_task_output")
        #todo:call task specific layers
        argument_classification_hidden_layer_output=self._argument_repr_to_classification_layer(final_argument_representations)

        predicted_argument_score = self._argument_classification_layer(
            argument_classification_hidden_layer_output
        )  # Shape [G, 1]

        return tf.squeeze(predicted_argument_score, axis=-1)

    def compute_task_metrics(
        self,
        batch_features: Dict[str, tf.Tensor],
        task_output: Any,
        batch_labels: Dict[str, tf.Tensor],
    ) -> Dict[str, tf.Tensor]:
        print("compute_task_metrics")
        ce = tf.reduce_mean(
            tf.keras.losses.binary_crossentropy(
                y_true=batch_labels["node_labels"], y_pred=task_output, from_logits=False
            )
        )
        num_correct = tf.reduce_sum(
            tf.cast(
                tf.math.equal(batch_labels["node_labels"], tf.math.round(task_output)), tf.int32
            )
        )
        num_graphs = tf.cast(batch_features["num_graphs_in_batch"], tf.float32)
        return {
            "loss": ce,
            "batch_acc": tf.cast(num_correct, tf.float32) / num_graphs,
            "num_correct": num_correct,
            "num_graphs": num_graphs,
        }

    def compute_epoch_metrics(self, task_results: List[Any]) -> Tuple[float, str]:
        total_num_graphs = np.sum(
            batch_task_result["num_graphs"] for batch_task_result in task_results
        )
        total_num_correct = np.sum(
            batch_task_result["num_correct"] for batch_task_result in task_results
        )
        epoch_acc = tf.cast(total_num_correct, tf.float32) / total_num_graphs
        return -epoch_acc.numpy(), f"Accuracy = {epoch_acc.numpy():.3f}"





