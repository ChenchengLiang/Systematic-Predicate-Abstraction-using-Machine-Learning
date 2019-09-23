import networkx as nx
from graphviz import Source
import os
from node2vec import Node2Vec
from node2vec.edges import  HadamardEmbedder
import gensim
from Miscellaneous import data2list,transform2TaggedDocument
import glob
import subprocess
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




def readGraphFromGraphvizFromTrainData(fileName,vitualize=True):
    hornGraph=Source.from_file(fileName)
    #read gv to networkx
    G=nx.DiGraph(nx.drawing.nx_pydot.read_dot(fileName))
    #view by graphviz
    if(vitualize==True):
        hornGraph.view()

    #print(hornGraph.source)
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

def readAndEmbedAllGraphs(dimension=3):
    graphs=list()
    aggregatedEmbeddingList=list()
    for count,file in enumerate(glob.glob("../graph/*.gv")):
        print(count,":",file)
        graph=readGraphFromGraphviz(file, vitualize=False)
        aggregatedEmbeddingList.append(getGraphEmbeddingNode2vec(graph, dimension=dimension))
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
def getNodeEmbedding(node2vecModel,graph,p=True): #output every node's embedding
    embedding=list()
    embeddingDict=dict()
    for node in graph.nodes:
        embedding.append(node2vecModel.wv.get_vector(node))
        embeddingDict[node]=embedding[-1]
    if(p==True):
        for node,embed in embeddingDict.items():
            print("node: ",node," embeddings: ",embed)
    return embedding,embeddingDict

def getGraphEmbeddingNode2vec(graph,dimension=3,p=True):
    node2vec = Node2Vec(graph, dimensions=dimension, walk_length=30, num_walks=200, workers=4,quiet=True)
    node2vecModel = node2vec.fit(window=10, min_count=1, batch_words=4)
    embedding,embeddingDict=getNodeEmbedding(node2vecModel,graph,p=p)
    AggregatedEmbedding=[0]*dimension #create 0 list 0 with dimensions' list
    for node in embedding:
        AggregatedEmbedding=AggregatedEmbedding+node
    if (p == True):
        print("AggregatedEmbedding: ",AggregatedEmbedding)

    return AggregatedEmbedding

def getGraphNode2vecWalks(graph,dimension=3):
    node2vec = Node2Vec(graph, dimensions=dimension, walk_length=5, num_walks=5, workers=4, quiet=True)
    return node2vec.walks

def callEldaricaGenerateGraphs(dataset='trainData'):
    count=0;
    for file in glob.glob("../"+dataset+"/*Hints"): #if the program needs hints call and generate graph
        file = file[0:file.find('t.c.') + 3]
        print(file)

        if(dataset=='trainData'):
            fileName = file[file.find('/trainData')+11:]
            #print(fileName)
            fileName='/home/chencheng/Desktop/benchmarks/allInOneFile/'+fileName
            if(os.path.isfile(fileName)):
                command = "/home/chencheng/Downloads/eldarica-graph-generation/./eld "
                run = command + fileName + " -p" + " -abstract:manual"
                print("command:", run)
                #os.popen(run)
                #p = subprocess.Popen(run, shell=True)
                #p.wait()
                eld = subprocess.Popen(run, shell=True, stdout=subprocess.PIPE)
                stdout = eld.communicate()
                count=count+1
        if (dataset == 'testData'):
            fileName = file[file.find('/testData')+10:]
            #print(fileName)
            fileName='/home/chencheng/Desktop/benchmarks/allInOneFile/'+fileName
            if(os.path.isfile(fileName)):
                command = "/home/chencheng/Downloads/eldarica-graph-generation/./eld "
                run = command + fileName + " -p" + " -abstract:manual"
                print("command:", run)
                #os.popen(run)
                #p = subprocess.Popen(run, shell=True)
                #p.wait()
                eld = subprocess.Popen(run, shell=True, stdout=subprocess.PIPE)
                stdout = eld.communicate()
                count=count+1



    print(count," program transfomed")

def main():
    print("Start")
    #graph=readGraphFromGraphviz("02.c.annot.c.gv", vitualize=False)
    #getGraphEmbeddingNode2vec(graph, dimension=3, p=True)
    # walks=getGraphNode2vecWalks(graph, dimension=3)
    # print(walks)
    callEldaricaGenerateGraphs('trainData')
    #callEldaricaGenerateGraphs('testData')
    #aggregatedEmbeddingList=readAndEmbedAllGraphs(dimension=100)#text level program=500 dimension hint=50
    print("---------")



    print("finished")


if __name__ == '__main__':
    main()