from typing import Dict,Any,Union,Tuple,List
import tensorflow as tf
import tf2_gnn
from invariantArgumentSelectionModel import InvariantArgumentSelectionModel
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