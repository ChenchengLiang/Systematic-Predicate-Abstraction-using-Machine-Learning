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

class graphInfo:
    def __init__(self,nodesAttributes,edgesAttributes,hyperedgesAttributes,edge_senders,edge_receivers,hyperedge_senders,hyperedge_receivers):
        self.nodesAttributes = nodesAttributes
        self.edgesAttributes=edgesAttributes
        self.hyperedgesAttributes = hyperedgesAttributes
        self.edge_senders=edge_senders
        self.edge_receivers = edge_receivers
        self.hyperedge_senders=hyperedge_senders
        self.hyperedge_receivers = hyperedge_receivers
        self.numberOfNodes=len(nodesAttributes)
        self.numberOfEdges = len(edgesAttributes)
        self.numberOfHyperedges=len(hyperedgesAttributes)
    def printInfo(self):
        print("nodesAttributes",self.nodesAttributes)
        print("edgesAttributes",self.edgesAttributes)
        print("hyperedgesAttributes",self.hyperedgesAttributes)
        print("edge_senders",self.edge_senders)
        print("edge_receivers",self.edge_receivers)
        print("hyperedge_senders",self.hyperedge_senders)
        print("hyperedge_receivers",self.hyperedge_receivers)


def edgeIntegerEncoding(graphList):
    #todo:not include edge which connect to hyperedge

    #edge normalization
    edgeClassList=[]
    for G in graphList:
        for edge in G.edges:
            edgeClassList.append(G.edges[edge]['label'])

    edgeClassList=list(set(edgeClassList))

    edgeCounterDict = {}
    for c in edgeClassList:
        edgeCounterDict[c] = 0

    for G in graphList:
        for edge in G.edges:
            edgeClassName=G.edges[edge]['label']
            G.edges[edge]['edgeNormalizedName']=edgeClassName.replace('"','')+str(edgeCounterDict[edgeClassName])
            edgeCounterDict[edgeClassName]=edgeCounterDict[edgeClassName]+1
        for c in edgeCounterDict:
            edgeCounterDict[c] = 0

    #encode edge to integer
    #get vocabulary
    edgeVocaList = []
    for G in graphList:
        for edge in G.edges:
            edgeVocaList.append(G.edges[edge]['edgeNormalizedName'])
        edgeVocaList = list(set(edgeVocaList))

    edgeVocaIntegerEncoding = []
    for i, v in enumerate(edgeVocaList):
        edgeVocaIntegerEncoding.append(i)

    for G in graphList:
        for edge in G.edges:
            for t, i in zip(edgeVocaList, edgeVocaIntegerEncoding):
                if(G.edges[edge]['edgeNormalizedName']==t):
                    G.edges[edge]['edgeLabelUniqueID']=i

    return graphList



def hyperedgeIntegerEncoding(graphList):

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
                    G.nodes[node]['hyperedgeLabelUniqueID']=i
                if (G.nodes[node]['class'] == "controlFlowHyperEdge" and G.nodes[node]['hyperedgeNormalizedName'] == t):
                    G.nodes[node]['hyperedgeLabelUniqueID'] = i


    return graphList

def readGraphsFromDot():
    graphList = []

    path = "../../trainData/"
    suffix = ".c"  # some file name include .horn
    print("graph file", len(sorted(glob.glob(path + '*' + suffix + '.gv'))))
    for fileGraph in sorted(glob.glob(path + '*' + suffix + '.gv')
                            ):
        fileName = fileGraph[:fileGraph.find(suffix + ".gv") + len(suffix)]
        fileName = fileName[fileName.rindex("/") + 1:]
        print(fileName)
        # read graph
        print(fileGraph)
        hornGraph = Source.from_file(fileGraph)
        G = nx.DiGraph(nx.drawing.nx_pydot.read_dot(fileGraph))
        graphList.append(G)
    return graphList

def normalizeNodeLabel(graphList):
    vocabList=[]
    for G in graphList:

        nodeList=[]
        for node in G.nodes:
            nodeList.append(G.nodes[node]['class'])
        nodeClassList=list(set(nodeList))
        #print(nodeClassList)
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

    return vocabList,graphList

def encodeNodeLabelToInteger(graphList,vocabList):
    # integer encoding
    vocavIntegerEncoding = []
    for i, v in enumerate(vocabList):
        vocavIntegerEncoding.append(i)
    for G in graphList:
        for node in G.nodes:
            for t, i in zip(vocabList, vocavIntegerEncoding):
                if(G.nodes[node]['class'] != "DataFlowHyperedge" and G.nodes[node]['class'] != "controlFlowHyperEdge" and G.nodes[node]['normalizedName']==t):
                    G.nodes[node]['nodeLabelUniqueID']=i
    return graphList


def giveNodeUniqueID(graphList):
    for G in graphList:
        nodeCounter=0
        for node in G.nodes:
            nodeDirc=G.nodes[node]
            if(nodeDirc['class']!="DataFlowHyperedge" and nodeDirc['class']!="controlFlowHyperEdge"):
                G.nodes[node]['nodeUniqueID'] = nodeCounter
                nodeCounter=nodeCounter+1
    return graphList

def giveHyperedgeUniqueID(graphList):
    for G in graphList:
        nodeCounter=0
        for node in G.nodes:
            if(G.nodes[node]['class']=="DataFlowHyperedge" or G.nodes[node]['class']=="controlFlowHyperEdge" ):
                G.nodes[node]['hyperedgeUniqueID'] = nodeCounter
                nodeCounter=nodeCounter+1
    return graphList

def giveEdgeUniqueID(graphList):
    for G in graphList:
        edgeCounter=0
        for edge in G.edges:
            if (G.nodes[edge[0]]['class'] != "DataFlowHyperedge" and G.nodes[edge[1]][
                'class'] != "DataFlowHyperedge" and
                    G.nodes[edge[0]]['class'] != "controlFlowHyperEdge" and G.nodes[edge[1]][
                        'class'] != "controlFlowHyperEdge"):
                G.edges[edge]['edgeUniqueID'] = edgeCounter
                edgeCounter=edgeCounter+1
    return graphList

def printNodeInfo(graphList):
    #print node information
    for G in graphList:
        for node in G.nodes:
            if(G.nodes[node]['class']=="DataFlowHyperedge" or G.nodes[node]['class']=="controlFlowHyperEdge" ):
                print("hyperedge",G.nodes[node])
            else:
                print("node:",G.nodes[node])

def printEdgeInfo(graphList):
    for G in graphList:
        for edge in G.edges:
            if (G.nodes[edge[0]]['class'] != "DataFlowHyperedge" and G.nodes[edge[1]][
                'class'] != "DataFlowHyperedge" and
                    G.nodes[edge[0]]['class'] != "controlFlowHyperEdge" and G.nodes[edge[1]][
                        'class'] != "controlFlowHyperEdge"):
                print("edge:",G.edges[edge],edge)
            else:
                print("partial hyperedge:", G.edges[edge],edge)


def addSenderReceiverInfoToHyperedge(graphList):

    # replace connected node name with node unique ID in hyperedges
    for G in graphList:
        for node in G.nodes:
            if (G.nodes[node]['class']=="DataFlowHyperedge" or G.nodes[node]['class']=="controlFlowHyperEdge"):
                fromList = []
                toList = []
                #fromNodeList=[]
                #toNodeList=[]
                for pre in G.predecessors(node):
                    fromList.append(G.nodes[pre]['nodeUniqueID'])
                    #fromNodeList.append(G.nodes[pre]['nodeName'])
                for suc in G.successors(node):
                    toList.append(G.nodes[suc]['nodeUniqueID'])
                    #toNodeList.append(G.nodes[suc]['nodeName'])
                G.nodes[node]['from'] = fromList
                G.nodes[node]['to'] = toList
                G.nodes[node]['Hyperedgeconection'] = fromList + toList
                # todo:include connected normal edge info. no need to do this? because these edges are part of hyperedge and has no Iedge D
                # for fromNode in fromNodeList:
                #     print(G.edges[(fromNode, node)])
                #     G.nodes[node]['inComingEdge']=G.edges[(fromNode,node)]['edgeUniqueID']
                # G.nodes[node]['outComingEdge'] = G.edges[(node, toNodeList[0])]['edgeUniqueID']


    return graphList

def addSenderReceiverInfoToEdge(graphList):
    # replace connected node name with node unique ID in edges
    for G in graphList:
        for edge in G.edges:
            if (G.nodes[edge[0]]['class'] != "DataFlowHyperedge" and G.nodes[edge[1]]['class'] != "DataFlowHyperedge" and
                    G.nodes[edge[0]]['class'] != "controlFlowHyperEdge" and G.nodes[edge[1]]['class'] != "controlFlowHyperEdge"):
                fromNode = G.nodes[edge[0]]['nodeUniqueID']
                toNode = G.nodes[edge[1]]['nodeUniqueID']
                G.edges[edge]['from'] = fromNode
                G.edges[edge]['to'] = toNode
                G.edges[edge]['edgeConection'] = [fromNode,toNode]
            elif("Hyperedge" in G.nodes[edge[0]]['class']):
                G.edges[edge]['connectedHyperedge'] = G.nodes[edge[0]]['hyperedgeUniqueID']
            elif("Hyperedge" in G.nodes[edge[1]]['class']):
                G.edges[edge]['connectedHyperedge'] = G.nodes[edge[1]]['hyperedgeUniqueID']

    return graphList

def main():
    graphList=readGraphsFromDot()
    vocabList,graphList=normalizeNodeLabel(graphList)

    graphList=encodeNodeLabelToInteger(graphList, vocabList)

    graphList=hyperedgeIntegerEncoding(graphList)

    graphList=edgeIntegerEncoding(graphList)

    # todo:how to represent edge connected to hyperedges?
    # they are components of hyperedges?

    graphList = giveNodeUniqueID(graphList)
    graphList = giveEdgeUniqueID(graphList)
    graphList = giveHyperedgeUniqueID(graphList)


    graphList=addSenderReceiverInfoToHyperedge(graphList)

    graphList=addSenderReceiverInfoToEdge(graphList)



    printNodeInfo(graphList)
    printEdgeInfo(graphList)







    #store networkx's graph to graphInfo

    '''
    #nodeLabelUniqueID_0 is a integer
    nodes:[nodeLabelUniqueID_0,nodeLabelUniqueID_1,...,nodeLabelUniqueID_n]
    edges:[edgeLabelUniqueID_0,edgeLabelUniqueID_1,...,edgeLabelUniqueID_m]
    hyperedges:[hyperedgeLabelUniqueID_0,hyperedgeLabelUniqueID_1,...,hyperedgeLabelUniqueID_k]

    edge_senders:[nodeUniqueID_a,nodeUniqueID_b,...,nodeUniqueID_c]
    edge_receivers:[nodeUniqueID_d,nodeUniqueID_e,...,nodeUniqueID_f]

    hyperedge_senders:[[nodeUniqueID_a,nodeUniqueID_b],[nodeUniqueID_c,nodeUniqueID_d],...,[nodeUniqueID_e]]
    hyperedge_receivers:[nodeUniqueID_a,nodeUniqueID_b,...,nodeUniqueID_c]
    #according to our definition, hyperedge has multiple input node and one output node.
    '''
    graphInfoList=[]
    for G in graphList:
        nodeLabelList=[]
        hyperedgeLabelList=[]
        hyperedgeSenderList=[]
        hyperedgeReceiverList=[]
        for node in G.nodes:
            if(G.nodes[node]['class']=="DataFlowHyperedge" or G.nodes[node]['class']=="controlFlowHyperEdge"):
                hyperedgeLabelList.append(G.nodes[node]['hyperedgeLabelUniqueID'])
                hyperedgeSenderList.append(G.nodes[node]['from'])
                hyperedgeReceiverList.append(G.nodes[node]['to'])
            else:
                nodeLabelList.append(G.nodes[node]['nodeLabelUniqueID'])

        edgeLabelList=[]
        edgeSenderList = []
        edgeReceiverList = []
        for edge in G.edges:
            if (G.nodes[edge[0]]['class'] != "DataFlowHyperedge" and G.nodes[edge[1]][
                'class'] != "DataFlowHyperedge" and
                    G.nodes[edge[0]]['class'] != "controlFlowHyperEdge" and G.nodes[edge[1]][
                        'class'] != "controlFlowHyperEdge"):
                edgeLabelList.append(G.edges[edge]['edgeLabelUniqueID'])
                edgeSenderList.append(G.edges[edge]['from'])
                edgeReceiverList.append(G.edges[edge]['to'])

        graphInfoList.append(graphInfo(nodeLabelList,edgeLabelList,hyperedgeLabelList,edgeSenderList,edgeReceiverList,hyperedgeSenderList,hyperedgeReceiverList))



    for g in graphInfoList:
        print("----------")
        g.printInfo()



    # for G in graphList:
    #     for edge in G.edges:
    #         if(G.nodes[edge[0]]['class']!="DataFlowHyperedge"  and G.nodes[edge[0]]['class']!="DataFlowHyperedge"):
    #             G.edges[edge]['from']=G.nodes[edge[0]]['uniqueID']
    #             G.edges[edge]['to'] = G.nodes[edge[1]]['uniqueID']




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