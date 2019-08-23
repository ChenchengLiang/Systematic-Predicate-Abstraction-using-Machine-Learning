import networkx as nx
from graphviz import Source
import os
from node2vec import Node2Vec
from node2vec.edges import  HadamardEmbedder
import gensim
from src.Miscellaneous import data2list,transform2TaggedDocument
import glob
def prerryPrintOneGraph(G):
    edges=list(set(G.edges))
    nodes=G.nodes
    print("edges:", edges)
    print("nodes:", nodes)

    for node,content in G.nodes.items():
        print("-----------")
        print(node)
        print("Neighbors:")
        for neighbor in G.neighbors(node):
            print(neighbor)
        print("Predecessors:")
        for predecessor in G.predecessors(node):
            print(predecessor)
        print("Successors:")
        for successor in G.successors(node):
            print(successor)



def readGraphFromGraphviz(fileName,vitualize=True):
    path='../graph/'
    parentDirectory=os.path.abspath(os.path.dirname(os.getcwd()))
    hornGraph=Source.from_file(path+fileName)
    #read gv to networkx
    G=nx.DiGraph(nx.drawing.nx_pydot.read_dot(path+fileName))
    #view by graphviz
    if(vitualize==True):
        hornGraph.view()

    print(hornGraph.source)

    '''
    for node,content in nodes.items():
        print("-----------")
        print(node,content['label'])
        print("Neighbors:")
        for neighbor in G.neighbors(node):
            print(neighbor,nodes[neighbor]['label'])
        print("Predecessors:")
        for predecessor in G.predecessors(node):
            print(predecessor,nodes[predecessor]['label'])
        print("Successors:")
        for successor in G.successors(node):
            print(successor, nodes[successor]['label'])
    '''
    G = nodeRelabel(G)
    #prerryPrintOneGraph(G)

    return G

def readAndEmbedAllGraphs():
    graphs=list()
    aggregatedEmbeddingList=list()
    for file in glob.glob("../graph/*.gv"):
        print(file)
        graph=readGraphFromGraphviz(file, vitualize=False)
        aggregatedEmbeddingList.append(getGraphEmbeddingNode2vec(graph, dimension=3))
        graphs.append(graph)
        print("-----")


    return aggregatedEmbeddingList


def nodeRelabel(graph): #relabel node name 1,2,3 to main1 ,main2, main3
    G=graph
    mapping=dict()

    for node,content in G.nodes.items():
        mapping[node]=content['label'].replace('"','')
    G = nx.relabel_nodes(G, mapping)
    return G
def getNodeEmbedding(node2vecModel,graph): #output every node's embedding
    embedding=list()
    embeddingDict=dict()
    for node in graph.nodes:
        embedding.append(node2vecModel.wv.get_vector(node))
        embeddingDict[node]=embedding[-1]
    for node,embed in embeddingDict.items():
        print("node: ",node," embeddings: ",embed)
    return embedding,embeddingDict

def getGraphEmbeddingNode2vec(graph,dimension=3):
    node2vec = Node2Vec(graph, dimensions=3, walk_length=10, num_walks=20, workers=4)
    node2vecModel = node2vec.fit(window=10, min_count=1, batch_words=4)
    embedding,embeddingDict=getNodeEmbedding(node2vecModel,graph)
    AggregatedEmbedding=[0]*dimension
    for node in embedding:
        AggregatedEmbedding=AggregatedEmbedding+node
    print("AggregatedEmbedding: ",AggregatedEmbedding)

    return AggregatedEmbedding

def graphEmbeddingModelNode2vecSamplingDoc2vec(X_train):



    # extract programs and hints from dataset
    programs_train, hints_train = data2list(X_train)
    programs_train=list(set(programs_train))


    # transform to TaggedDocument
    programs_trainTaggedDocument,programsMaxLength,programsAverageLength  =transform2TaggedDocument(programs_train)
    hints_trainTaggedDocument,hintsMaxLength,hintsAverageLength  = transform2TaggedDocument(hints_train)
    # print('programsMaxLength',programsMaxLength)
    # print('programsAverageLength',programsAverageLength)
    # print('hintsMaxLength',hintsMaxLength)
    # print('hintsAverageLength',hintsAverageLength)


    # create Doc2Vec model
    # parameters window=2
    programDoc2VecModel =gensim.models.doc2vec.Doc2Vec(
        vector_size=500, min_count=0 ,window=programsAverageLength, epochs=50)
    hintsDoc2VecModel = gensim.models.doc2vec.Doc2Vec(
        vector_size=50, min_count=0, window=hintsMaxLength, epochs=50)

    # build vovabulary
    programDoc2VecModel.build_vocab(programs_trainTaggedDocument)
    hintsDoc2VecModel.build_vocab(hints_trainTaggedDocument)
    # train Doc2Vec model
    programDoc2VecModel.train(programs_trainTaggedDocument ,total_examples=programDoc2VecModel.corpus_count
                              ,epochs=programDoc2VecModel.epochs)
    hintsDoc2VecModel.train(hints_trainTaggedDocument ,total_examples=hintsDoc2VecModel.corpus_count
                            ,epochs=hintsDoc2VecModel.epochs)
    # save trained doc2vec models
    parenDir = os.path.abspath(os.path.pardir)
    return programDoc2VecModel ,hintsDoc2VecModel
    return model


def main():
    print("Start")
    '''
    graph=readGraphFromGraphviz(fileName='controlFlowGraph.gv',vitualize=True)
    node2vec= Node2Vec(graph,dimensions=3,walk_length=2,num_walks=10,workers=4)
    print(len(node2vec.walks))
    print(node2vec.walks)
    node2vecModel=node2vec.fit(window=10,min_count=1,batch_words=4)

    embedding,embeddingDict=getNodeEmbedding(node2vecModel, graph)
    getGraphEmbeddingNode2vec(graph)

    edgeEmbedding=HadamardEmbedder(keyed_vectors=node2vecModel.wv)
    print("edges:")
    for edge in graph.edges:
        print(edge)
    print(edgeEmbedding[('inv_main4', 'inv_main8')])
    '''


    aggregatedEmbeddingList=readAndEmbedAllGraphs()




    print("finished")


if __name__ == '__main__':
    main()