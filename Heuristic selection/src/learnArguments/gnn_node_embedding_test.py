
from typing import Dict,Any
import tensorflow as tf
import tf2_gnn



class InvariantArgumentSelectionModel(tf.keras.Model):
    def __init__(self, params: Dict[str, Any],  **kwargs):
        super().__init__(**kwargs)
        self._params = params
        self._embedding_layer = tf.keras.layers.Embedding(
            input_dim=params["node_label_vocab_size"],
            output_dim=params["node_label_embedding_size"]
        )
        self._num_edge_types=params['num_edge_types']
        self._gnn = tf2_gnn.GNN(params)

    def build(self, input_shapes):
        #build node embedding layer
        self._embedding_layer.build(tf.TensorShape((None,)))
        #build gnn layers
        self._gnn.build(
            tf2_gnn.GNNInput(
                node_features=tf.TensorShape((None, self._params["node_label_embedding_size"])),
                adjacency_lists=tuple(
                    # tf.Tensor(edges.shape[1], dtype=tf.int32)
                    # tf.TensorSpec(shape=(None, edges[1]), dtype=tf.int32)
                    # for edges in input_shapes.adjacency_lists
                    input_shapes[f"adjacency_list_{edge_type_idx}"]
                    for edge_type_idx in range(self._num_edge_types)
                ),
                node_to_graph_map=tf.TensorShape((None,)),
                num_graphs=tf.TensorShape(()),
            )
        )
        #todo: build task layer
        super().build([])


    def call(self, inputs, training: bool = False):
        #call node embedding layer
        node_labels_embedded = self._embedding_layer(inputs["node_label_ids"], training=training)
        #call gnn and get graph representation
        gnn_input = tf2_gnn.GNNInput(
            node_features=node_labels_embedded,
            adjacency_lists=inputs['adjacency_lists'],
            # Here, the adjacency lists would need to be extracted from the input, which is easiest as Dict[str, tf.Tensor/np.ndarray]
            node_to_graph_map=inputs['node_to_graph_map'],
            num_graphs=len(inputs['NodeNumberList']),
        )
        final_node_representations = self._gnn(gnn_input, training=training)
        #todo:call task layers

        # Here, predictions should be made, based on the node representations

        return final_node_representations




def main():
    nodeFeatureDim=3
    # first graph has 8 nodes, second graph has 4 nodes, third graph has 3 nodes
    NodeNumberList=tf.constant([8,4,3])
    numberOfNode=sum(NodeNumberList) #total nodes in three graph

    node_label_ids = tf.constant(list(range(0, numberOfNode))) #[0, 1, 2,..., 14]

    #get node_to_graph_map from NodeNumberList
    node_to_graph_map=[]
    for i, nodeNumber in enumerate(NodeNumberList):
        node_to_graph_map.append(tf.fill(dims=(nodeNumber,), value=i))
    node_to_graph_map=tf.concat(node_to_graph_map, 0)

    adjacency_lists = (
        tf.constant([[0, 1, 1], [1, 2, 3], [1, 1, 2], [1, 1, 1], [2, 2, 2], [1, 2, 3]], dtype=tf.int32),  # edge type 1
        tf.constant([[1, 2, 3, 4], [1, 2, 3, 4]], dtype=tf.int32),  # edge type 2
        tf.constant([[2, 0], [1, 2], [1, 2], [3, 10]], dtype=tf.int32)  # edge type 3
    )


    parameters = tf2_gnn.GNN.get_default_hyperparameters()
    parameters["hidden_dim"] = 4
    parameters["num_layers"]= 1
    parameters['node_label_vocab_size']=numberOfNode
    parameters['node_label_embedding_size']=nodeFeatureDim
    parameters['num_edge_types']=len(adjacency_lists)


    inputs={'NodeNumberList':NodeNumberList, #[8,4,3]
            'node_to_graph_map':node_to_graph_map, #[0 0 0 0 0 0 0 0 1 1 1 1 2 2 2]
            'node_label_ids':node_label_ids, #[0, 1, 2,..., 14]
            'num_edge_types':len(adjacency_lists), # 3
            'adjacency_lists':adjacency_lists}
    for edge_type_idx,edgeType in enumerate(adjacency_lists): # 3,4,2
        inputs[f"adjacency_list_{edge_type_idx}"]=tf.TensorSpec(shape=(None, edgeType.shape[1]), dtype=tf.int32)


    layers=InvariantArgumentSelectionModel(parameters)
    output=layers(inputs)
    print(output)


main()