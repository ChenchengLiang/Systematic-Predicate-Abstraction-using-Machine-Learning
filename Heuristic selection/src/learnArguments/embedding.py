from Miscellaneous import pickleRead,pickleWrite
import keras
import tensorflow as tf
from keras.preprocessing.text import Tokenizer
import networkx as nx

def getGraphClass(graph):
    classSet = set()
    for node in nx.nodes(graph):
        classSet.add(graph.node[node]['class'])
    return list(classSet)
def embedding():
    print()

def initializeNodeState(graph):
    print(getGraphClass(graph))
    for node in nx.nodes(graph):
        v=keras.preprocessing.text.hashing_trick(node,n=round(len(nx.nodes(graph))*1.3),filters="",lower=False,hash_function='md5')
        graph.node[node]['stateVector'] = v

        if(graph.node[node]['class']=="argument"):
            graph.node[node]['InitialState']=[0,0,0,0]




        #print(node,graph.node[node]['tokenization'])
        #node.neighbors
    print("--------------------------")
    # for node in nx.nodes(graph):
    #     print("--------")
    #     print(node, graph.node[node]['nodeType'],graph.node[node]['stateVector'])
    #     for n in nx.all_neighbors(graph,node):
    #         print("neighbor:",n, graph.node[n]['stateVector'])



def main():

    train_X=pickleRead( "argumentTrainData_X", path="../")
    #train_X[0]=graph,[1]=head,[2]=argument,[3]=hornText,[4]=programName,[5]=argumentID
    train_Y=pickleRead( "argumentTrainData_Y", path="../")

    #todo:initialize node state
    for x in train_X:
        initializeNodeState(x[0])


main()