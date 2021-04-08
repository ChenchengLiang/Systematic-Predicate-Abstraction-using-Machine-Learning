import tensorflow as tf
from archived.dotToGraphInfo import DotToGraphInfo
import tf2_gnn
from tf2_gnn.models import InvariantArgumentSelectionTask
from horn_dataset import HornGraphDataset
'''
horn graph node IDs
#graph 1 node ID [0,1,2,3,...,7]
#graph 2 node ID [0,1,2,3]
#graph 3 node ID [0,1,2]

Should transform to
#graph 1 node ID [0,1,2,3,...,7]
#graph 2 node ID [8,9,10,11]
#graph 3 node ID [12,13,14]


Finally transform to format:
node_to_graph_map [0 0 0 0 0 0 0 0 1 1 1 1 2 2 2]
graph_node_ID_list [0,1,2,...,14]
 adjacency_lists = (
     tf.constant([[0,1,1], [1,2,3],[1,1,2],[1,1,1],[2,2,2],[1,2,3]], dtype=tf.int32), #edge type 1
     tf.constant([[1,2,3,4],[1,2,3,4]], dtype=tf.int32), #edge type 2
     tf.constant([[2, 0],[1, 2],[1,2],[3,10]], dtype=tf.int32) #edge type 3
     )
nodeNumberList=tf.constant([8,4,3])
numberOfNode=sum(NodeNumberList) #total nodes in three graph
'''




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




    #set parameters
    nodeFeatureDim=3
    parameters = tf2_gnn.GNN.get_default_hyperparameters()
    parameters['hidden_dim'] = 4
    parameters['num_layers'] = 1
    parameters['node_label_vocab_size'] = numberOfNode
    parameters['node_label_embedding_size'] = nodeFeatureDim
    parameters['num_edge_types'] = len(adjacency_lists)
    #formulate gnn inputs
    inputs = {'NodeNumberList': nodeNumberList,  # [8,4,3]
              'node_to_graph_map': node_to_graph_map,  # [0 0 0 0 0 0 0 0 1 1 1 1 2 2 2]
              'node_label_ids': node_label_ids,  # [0, 1, 2,..., 14]
              'num_edge_types': len(adjacency_lists),  # 2
              'adjacency_lists': adjacency_lists}
    for edge_type_idx, edgeType in enumerate(adjacency_lists):  # 3,4,2
        inputs[f"adjacency_list_{edge_type_idx}"] = tf.TensorSpec(shape=(None, edgeType.shape[1]), dtype=tf.int32)


    #node inference
    #
    dataset=HornGraphDataset(parameters)
    layers = InvariantArgumentSelectionTask(parameters,dataset)
    output = layers(inputs)
    print("---")
    print("output",output)
    print("gather", tf.gather(params=output, indices=argument_indices))

    #statistics of positive and negative examples




main()