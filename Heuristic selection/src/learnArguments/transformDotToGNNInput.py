import networkx as nx
from graphviz import Source
import glob
import tensorflow as tf
from learnArguments.dotToGraphInfo import GraphInfo,ArgumentInfo,DotToGraphInfo
from typing import Tuple
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

    #read graph file
    graphInfoList = DotToGraphInfo()
    graphInfoList.readGraphsFromDot()
    # parse argument to graph info
    graphInfoList.getParsedArgument()

    # give every node unique ID, differentiate hyperedges and nodes

    graphInfoList.giveNodeUniqueID()
    graphInfoList.giveEdgeUniqueID()
    graphInfoList.giveHyperedgeUniqueID()


    graphInfoList.normalizeNodeLabel()
    graphInfoList.encodeNodeLabelToInteger()
    graphInfoList.hyperedgeIntegerEncoding()
    graphInfoList.edgeIntegerEncoding()


    #parse argument to graph info
    graphInfoList.getArgumentIDFromGraph()


    #find sender and receiver for all edges
    graphInfoList.addSenderReceiverInfoToEdge()
    graphInfoList.addSenderReceiverInfoToHyperedge()

    graphInfoList.getGraphInfoList()

    #graphInfoList.printFinalGraphInfo()

    #get raw gnn inputs
    node_features,adjacency_lists,node_to_graph_map,nodeNumberList=graphInfoList.getGNNInputs()

    print("---")
    print("node_features",node_features)
    adjacency_lists=tuple(tf.constant(edges) for edges in adjacency_lists)
    print("adjacency_lists",adjacency_lists)
    print("node_to_graph_map",node_to_graph_map)
    print("len(nodeNumberList)",len(nodeNumberList))




main()