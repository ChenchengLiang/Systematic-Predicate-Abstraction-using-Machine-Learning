import tensorflow as tf
import tf2_gnn
import os
def main():

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
    graph node ID list [0,1,2,...,14]
    '''
    os.environ["CUDA_VISIBLE_DEVICES"] = "-1"

    nodeFeatureDim=3
    # first graph has 8 nodes, second graph has 4 nodes, third graph has 3 nodes
    NodeNumberList=[8,4,3]
    numberOfNode=sum(NodeNumberList) #total nodes in three graph
    #generate an example graph ID list
    graph_node_ID_list=list(range(0, numberOfNode))# output graph_node_ID_list=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
    print(graph_node_ID_list)
    #add embedding layer transform ID to features
    model = tf.keras.Sequential()
    model.add(tf.keras.layers.Embedding(numberOfNode,nodeFeatureDim))
    model.compile('rmsprop', 'mse')
    graph_node_ID_list_embedding = model.predict(tf.constant(graph_node_ID_list))
    graph_node_ID_list_embedding=tf.reshape(graph_node_ID_list_embedding,[numberOfNode,nodeFeatureDim])
    print("graph_node_ID_list_embedding",graph_node_ID_list_embedding)

    #get node_to_graph_map from NodeNumberList
    node_to_graph_map=[]
    for i, nodeNumber in enumerate(NodeNumberList):
        node_to_graph_map.append(tf.fill(dims=(nodeNumber,), value=i))
    node_to_graph_map=tf.concat(node_to_graph_map, 0)

    #form GNNInput
    layer_input = tf2_gnn.GNNInput(
         node_features = graph_node_ID_list_embedding,
         #tf.random.normal(shape=(numberOfNode, 3)),
         adjacency_lists = (
             tf.constant([[0,1,1], [1,2,3],[1,1,2],[1,1,1],[2,2,2],[1,2,3]], dtype=tf.int32), #edge type 1
             tf.constant([[1,2,3,4],[1,2,3,4]], dtype=tf.int32), #edge type 2
             tf.constant([[2, 1],[1, 2],[1,4],[3,10]], dtype=tf.int32), #edge type 3
             tf.constant([[2, 0], [1, 2], [1, 2], [3, 10]], dtype=tf.int32)  # edge type 3
             ),
         node_to_graph_map = node_to_graph_map,
         #tf.fill(dims=(numberOfNode,), value=0),
         num_graphs = len(NodeNumberList),
         )

    params = tf2_gnn.GNN.get_default_hyperparameters()
    params["hidden_dim"] = 12
    params["num_layers"]= 1
    layer = tf2_gnn.GNN(params)
    output = layer(layer_input)
    print(output)



    print("----")



main()