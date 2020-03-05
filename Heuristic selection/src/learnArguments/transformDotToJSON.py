import networkx as nx
from graphviz import Source
import glob
from networkx.readwrite import json_graph



"""
Preprocess:
Normalize node names and build a vocabulary {constant0,constant1,argument0,argument1,+,-,...}
Give them unique ID
Go through edges replace source and destination nodes by their unique ID. 
JSON:
{

    "nodes":[{name:0},{name:1},{name:3},...{name:N}],
    "edge_type_1":[[0,1],[1,2]],
    "hyperedge_type_1":[ [[0,1,2],[3,4,5]], [[4],[5,6]] ]

}

"""




def normalizeNodeLabel():
    graphList=[]
    vocabList=[]
    path="../../trainData/"
    suffix = ".c"  # some file name include .horn
    print("graph file", len(sorted(glob.glob(path + '*'+suffix+'.gv'))))
    for fileGraph in sorted(glob.glob(path + '*' + suffix + '.gv')
                                                      ):
        fileName=fileGraph[:fileGraph.find(suffix+".gv")+len(suffix)]
        fileName=fileName[fileName.rindex("/")+1:]
        print(fileName)
        # read graph
        print(fileGraph)
        hornGraph = Source.from_file(fileGraph)
        G = nx.DiGraph(nx.drawing.nx_pydot.read_dot(fileGraph))

        nodeList=[]
        for node in G.nodes:
            nodeList.append(G.nodes[node]['class'])
        nodeClassList=list(set(nodeList))
        print(nodeClassList)
        nodeClassList.remove('DataFlowHyperedge')
        nodeClassList.remove('controlFlowHyperEdge')
        #print(nodeClassList)

        nodeCounterDict={}
        for c in nodeClassList:
            nodeCounterDict[c]=0
        #print(nodeCounterDict)

        operatorList=[]
        for node in G.nodes:
            if G.nodes[node]['class']=="Operator":
                #print(G.nodes[node]['label'])
                operatorList.append(G.nodes[node]['label'])
                G.nodes[node]['normalizedName']=G.nodes[node]['label']
            if G.nodes[node]['class']!="Operator" and G.nodes[node]['class']!="DataFlowHyperedge" and G.nodes[node]['class']!="controlFlowHyperEdge":
                className=G.nodes[node]['class']
                G.nodes[node]['normalizedName']=className+str(nodeCounterDict[className])
                nodeCounterDict[className] = nodeCounterDict[className]+1
                #print(G.nodes[node]['normalizedName'])
        operatorList=list(set(operatorList))


        for node in G.nodes:
            if G.nodes[node]['class'] != "DataFlowHyperedge" and G.nodes[node][
                'class'] != "controlFlowHyperEdge":
                vocabList.append(G.nodes[node]['normalizedName'])
        vocabList = list(set(vocabList))
        graphList.append(G)
    #print(len(vocabList))
    #print(vocabList)
    return vocabList,graphList

def main():
    vocabList,graphList=normalizeNodeLabel()
    # integer encoding
    vocavIntegerEncoding = []
    for i, v in enumerate(vocabList):
        vocavIntegerEncoding.append(i)
    for G in graphList:
        for node in G.nodes:
            for t, i in zip(vocabList, vocavIntegerEncoding):
                if(G.nodes[node]['class'] != "DataFlowHyperedge" and G.nodes[node]['class'] != "controlFlowHyperEdge" and G.nodes[node]['normalizedName']==t):
                    G.nodes[node]['uniqueID']=i

    # #print node information
    # for G in graphList:
    #     for node in G.nodes:
    #         print(G.nodes[node])


    #replace node name with node unique ID in hyperedges
    for G in graphList:
        for node in G.nodes:
            if(G.nodes[node]['class']=="DataFlowHyperedge"):
                fromList=[]
                toList = []
                for pre in G.predecessors(node):
                    fromList.append(G.nodes[pre]['uniqueID'])
                for suc in G.successors(node):
                    toList.append(G.nodes[suc]['uniqueID'])
                G.nodes[node]['from']=fromList
                G.nodes[node]['to'] = toList
                G.nodes[node]['coonection'] = fromList+toList
            if(G.nodes[node]['class']=="controlFlowHyperEdge"):
                fromList=[]
                toList = []
                for pre in G.predecessors(node):
                    fromList.append(G.nodes[pre]['uniqueID'])
                for suc in G.successors(node):
                    toList.append(G.nodes[suc]['uniqueID'])
                G.nodes[node]['from']=fromList
                G.nodes[node]['to'] = toList
                G.nodes[node]['coonection'] = fromList + toList


    #print node information
    for G in graphList:
        for node in G.nodes:
            print(G.nodes[node])


    #how to represent edges connecting to hyperedge?

    #encoding hyperedge to unique Integer ID
    #normalize hyoeredge names
    nodeCounterDict = {}
    nodeCounterDict['DataFlowHyperedge'] = 0
    nodeCounterDict['controlFlowHyperEdge'] = 0

    for G in graphList:
        for node in G.nodes:
            className=G.nodes[node]['class']
            if(className=="DataFlowHyperedge"):
                G.nodes[node]['hyperedgeNormalizedName'] = className + str(nodeCounterDict[className])
                nodeCounterDict['DataFlowHyperedge'] =nodeCounterDict['DataFlowHyperedge'] +1
            if (className == "controlFlowHyperEdge"):
                G.nodes[node]['hyperedgeNormalizedName'] = className + str(nodeCounterDict[className])
                nodeCounterDict['controlFlowHyperEdge'] = nodeCounterDict['controlFlowHyperEdge'] + 1
        nodeCounterDict['DataFlowHyperedge'] = 0
        nodeCounterDict['controlFlowHyperEdge'] = 0


    #encode hyperedge to unique ID
    hyperedgeVocaList=[]
    for G in graphList:
        for node in G.nodes:
            if G.nodes[node]['class'] == "DataFlowHyperedge":
                hyperedgeVocaList.append(G.nodes[node]['hyperedgeNormalizedName'])
            if G.nodes[node]['class'] == "controlFlowHyperEdge":
                hyperedgeVocaList.append(G.nodes[node]['hyperedgeNormalizedName'])
        hyperedgeVocaList = list(set(hyperedgeVocaList))
    #print(hyperedgeVocaList)
    # integer encoding
    hyperedgeVocaIntegerEncoding = []
    for i, v in enumerate(hyperedgeVocaList):
        hyperedgeVocaIntegerEncoding.append(i)
    for G in graphList:
        for node in G.nodes:
            for t, i in zip(hyperedgeVocaList, hyperedgeVocaIntegerEncoding):
                if(G.nodes[node]['class'] == "DataFlowHyperedge" and G.nodes[node]['hyperedgeNormalizedName']==t):
                    G.nodes[node]['hyperedgeUniqueID']=i
                if (G.nodes[node]['class'] == "controlFlowHyperEdge" and G.nodes[node]['hyperedgeNormalizedName'] == t):
                    G.nodes[node]['hyperedgeUniqueID'] = i



    #print node information
    for G in graphList:
        for node in G.nodes:
            print(G.nodes[node])

    # for G in graphList:
    #     for edge in G.edges:
    #         if(G.nodes[edge[0]]['class']!="DataFlowHyperedge"  and G.nodes[edge[0]]['class']!="DataFlowHyperedge"):
    #             G.edges[edge]['from']=G.nodes[edge[0]]['uniqueID']
    #             G.edges[edge]['to'] = G.nodes[edge[1]]['uniqueID']

    # #print edge information
    # for G in graphList:
    #     for edge in G.edges:
    #         print(G.edges[edge])




    # path="../../trainData/"
    # suffix = ".c"  # some file name include .horn
    # print("graph file", len(sorted(glob.glob(path + '*'+suffix+'.gv'))))
    # for fileGraph in sorted(glob.glob(path + '*' + suffix + '.gv')
    #                                                   ):
    #     fileName=fileGraph[:fileGraph.find(suffix+".gv")+len(suffix)]
    #     fileName=fileName[fileName.rindex("/")+1:]
    #     print(fileName)
    #     # read graph
    #     print(fileGraph)
    #     hornGraph = Source.from_file(fileGraph)
    #     G = nx.DiGraph(nx.drawing.nx_pydot.read_dot(fileGraph))
    #
    #     f = open("../../trainData/"+fileName+".JSON", "w+")
    #     f.write("{"+"\n")
    #
    #
    #
    #
    #     f.write("}")
    #     f.close()

        #print(json_graph.node_link_data(G))



main()
