import networkx as nx
from graphviz import Source
import glob
from networkx.readwrite import json_graph
import tf2_gnn
import tensorflow as tf
import numpy as np
from typing import Dict


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

class GraphInfo:
    def __init__(self,nodeUniqueIDList,nodesAttributes,edgesAttributes,hyperedgesAttributes,edge_senders,edge_receivers,hyperedge_senders,hyperedge_receivers,edgeEmbeddingInputs,hyperedgeEmbeddingInputs,nodeEmbeddingInputs):
        self.nodeUniqueIDList=nodeUniqueIDList
        self.nodesAttributes = nodesAttributes
        self.edgesAttributes=edgesAttributes
        self.hyperedgesAttributes = hyperedgesAttributes
        self.edge_senders=edge_senders
        self.edge_receivers = edge_receivers
        self.hyperedge_senders=hyperedge_senders
        self.hyperedge_receivers = hyperedge_receivers
        self.numberOfNodesAttributes=len(nodesAttributes)
        self.numberOfEdgesAttributes = len(edgesAttributes)
        self.numberOfHyperedgesAttributes=len(hyperedgesAttributes)
        self.numberOfUniqueNodeID=len(nodeUniqueIDList)
        self.edgeEmbeddingInputs=edgeEmbeddingInputs
        self.hyperedgeEmbeddingInputs=hyperedgeEmbeddingInputs
        self.nodeEmbeddingInputs = nodeEmbeddingInputs
    def printInfo(self):
        print("nodeUniqueIDList", sorted(self.nodeUniqueIDList))
        print("nodesAttributes",sorted(self.nodesAttributes))
        print("edgesAttributes",sorted(self.edgesAttributes))
        print("hyperedgesAttributes",self.hyperedgesAttributes)
        print("edge_senders",self.edge_senders)
        print("edge_receivers",self.edge_receivers)
        print("hyperedge_senders",self.hyperedge_senders)
        print("hyperedge_receivers",self.hyperedge_receivers)
        print("edgeEmbeddingInputs", self.edgeEmbeddingInputs)
        print("hyperedgeEmbeddingInputs", self.hyperedgeEmbeddingInputs)
        print("nodeEmbeddingInputs", self.nodeEmbeddingInputs)

class ArgumentInfo:
    def __init__(self,ID, head, arg, score):
        self.ID = ID
        self.head = head
        self.arg = arg
        self.score = score
        self.nodeUniqueIDInGraph=-1
        self.nodeLabelUniqueIDInGraph=-1
    def printArgs(self):
        print("ID:"+self.ID,"head:"+self.head,"arg:"+
              self.arg,"score:"+self.score,"nodeIDInGraph:"+str(self.nodeUniqueIDInGraph),
              "nodeLabelUniqueIDInGraph:"+str(self.nodeLabelUniqueIDInGraph))


class RawGNNInput:
    def __init__(self,nodeNumberList,nodeIDList):
        self.nodeNumberList=nodeNumberList
        self.nodeIDList=nodeIDList
class DotToGraphInfo:
    def __init__(self):
        self.graphList=[]
        self.vocabList=[]
        self.argumentList=[]
        self.parsedArgumentList=[]
        self.finalGraphInfoList=[]

    def getFinalGraphInfoList(self):
        # read graph file
        self.readGraphsFromDot()
        # parse argument to graph info
        self.getParsedArgument()

        # give every node unique ID, differentiate hyperedges and nodes

        self.giveNodeUniqueID()
        self.giveEdgeUniqueID()
        self.giveHyperedgeUniqueID()

        self.normalizeNodeLabel()
        self.encodeNodeLabelToInteger()
        self.hyperedgeIntegerEncoding()
        self.edgeIntegerEncoding()

        # parse argument to graph info
        self.getArgumentIDFromGraph()

        # find sender and receiver for all edges
        self.addSenderReceiverInfoToEdge()
        self.addSenderReceiverInfoToHyperedge()

        self.getGraphInfoList()

        # graphInfoList.printFinalGraphInfo()

    def getHornGraphSample(self):
        self.getFinalGraphInfoList()
        totalGraphNodeIDList = []
        totalGraphArgumentIDList = []
        argumentScoreList = []
        for graphInfo, args in zip(self.finalGraphInfoList, self.parsedArgumentList):
            totalGraphNodeIDList.append(graphInfo.nodeUniqueIDList)
            tempArgList = []
            tempArgScoreList=[]
            for arg in args:
                tempArgList.append(arg.nodeUniqueIDInGraph)
                tempArgScoreList.append(int(arg.score))
            totalGraphArgumentIDList.append(tempArgList)
            argumentScoreList.append(tempArgScoreList)


        nodeNumberList = []
        argumentNumberList = []
        for graphNodeIDList, graphArgumentIDList in zip(totalGraphNodeIDList, totalGraphArgumentIDList):
            nodeNumberList.append(len(graphNodeIDList))
            argumentNumberList.append(len(graphArgumentIDList))

        #get uniformed node ID and argument ID per graph
        totalGraphNodeIDList = np.concatenate(totalGraphNodeIDList).ravel().tolist()  # flatten
        uniformedTotalGraphNodeIDList = list(range(0, len(totalGraphNodeIDList)))
        uniformedTotalGraphArgumentIDList = []
        counter = 0
        for args, graphOffset in zip(totalGraphArgumentIDList, nodeNumberList):
            for arg in args:
                uniformedTotalGraphArgumentIDList.append(arg + counter)
            counter = counter + graphOffset


        uniformedGraphNodeIDList=[]
        uniformedGraphArgumentIDList=[]
        nodeCounter=0
        for nodeOffset,args in zip(nodeNumberList,totalGraphArgumentIDList):
            uniformedGraphNodeIDList.append(list(range(nodeCounter, nodeCounter+nodeOffset)))
            tempArgList=[]
            for arg in args:
                tempArgList.append(arg + nodeCounter)
            uniformedGraphArgumentIDList.append(tempArgList)
            nodeCounter = nodeCounter +nodeOffset

        #print("uniformedGraphNodeIDList",uniformedGraphNodeIDList)
        #print("uniformedGraphArgumentIDList",uniformedGraphArgumentIDList)

        #get adjacent_list per graph
        edgeTypeList = {}
        edgeTypeNumberDict = {}
        edgeTypeNumberList = {}
        all_graphs_adjacent_list = []
        maxNodeForAHypedEdge = 10
        for i in range(2, maxNodeForAHypedEdge):
            edgeTypeList[str(i)] = list()
            edgeTypeNumberDict[str(i)] = [0] * len(self.finalGraphInfoList)
        for j, graphInfo in enumerate(self.finalGraphInfoList):
            # print('numberOfUniqueNodeID',graphInfo.numberOfUniqueNodeID)
            # map local node ID to uniformed node ID
            offset = sum(nodeNumberList[:j])
            local_node_ID_to_uniformed_node_ID = list(range(offset, offset + graphInfo.numberOfUniqueNodeID))
            # print(local_node_ID_to_uniformed_node_ID)
            edgeTypeNumberDict['2'][j] = len(graphInfo.edgeEmbeddingInputs)
            for edge in graphInfo.edgeEmbeddingInputs:
                edgeTypeList['2'].append([local_node_ID_to_uniformed_node_ID[edge['sender']],
                                          local_node_ID_to_uniformed_node_ID[edge['receiver']]])
            # print(graphInfo.hyperedgeEmbeddingInputs)
            for hyperedge in graphInfo.hyperedgeEmbeddingInputs:
                localNodeIDList = [hyperedge['senderIDList'], hyperedge['receiverIDList']]
                localNodeIDList = np.concatenate(localNodeIDList).ravel().tolist()
                uniformedNodeIDList = []
                for localID in localNodeIDList:
                    uniformedNodeIDList.append(local_node_ID_to_uniformed_node_ID[localID])
                for i in range(2, maxNodeForAHypedEdge):
                    if (len(uniformedNodeIDList) == i):
                        edgeTypeList[str(i)].append(uniformedNodeIDList)
                        edgeTypeNumberDict[str(i)][j] = edgeTypeNumberDict[str(i)][j] + 1
            one_graph_adjacent_list=[]
            for typeKey in edgeTypeList:
                if len(edgeTypeList[str(typeKey)]) != 0:
                    one_graph_adjacent_list.append(np.array(edgeTypeList[typeKey])[-edgeTypeNumberDict[typeKey][j]:])
            #print("one_graph_adjacent_list",len(one_graph_adjacent_list[0]),len(one_graph_adjacent_list[1]))
            all_graphs_adjacent_list.append(one_graph_adjacent_list)
        #     print("one graph type",len(one_graph_adjacent_list))
        #     print("one graph binary edage number", len(one_graph_adjacent_list[0]))
        #     print("one graph trianry edage number", len(one_graph_adjacent_list[1]))
        #     print("---")
        #
        #print(len(all_graphs_adjacent_list))
        #print(all_graphs_adjacent_list)

        return uniformedGraphNodeIDList,uniformedGraphArgumentIDList,all_graphs_adjacent_list,argumentScoreList,sum(nodeNumberList)







    def getGNNInputs(self):
        self.getFinalGraphInfoList()
        totalGraphNodeIDList=[]
        totalGraphArgumentIDList = []
        argumentScoreList=[]
        for graphInfo, args in zip(self.finalGraphInfoList, self.parsedArgumentList):
            totalGraphNodeIDList.append(graphInfo.nodeUniqueIDList)
            tempArgList=[]
            for arg in args:
                tempArgList.append(arg.nodeUniqueIDInGraph)
                argumentScoreList.append(int(arg.score))
            totalGraphArgumentIDList.append(tempArgList)

        nodeNumberList=[]
        argumentNumberList=[]
        for graphNodeIDList,graphArgumentIDList in zip(totalGraphNodeIDList,totalGraphArgumentIDList):
            nodeNumberList.append(len(graphNodeIDList))
            argumentNumberList.append(len(graphArgumentIDList))

        totalGraphNodeIDList=np.concatenate(totalGraphNodeIDList).ravel().tolist()#flatten
        uniformedTotalGraphNodeIDList=list(range(0, len(totalGraphNodeIDList)))
        uniformedTotalGraphArgumentIDList=[]
        counter=0
        for args, graphOffset in zip(totalGraphArgumentIDList,nodeNumberList):
            for arg in args:
                uniformedTotalGraphArgumentIDList.append(arg+counter)
            counter=counter+graphOffset

        # print("totalGraphNodeIDList",totalGraphNodeIDList)
        # print("totalGraphArgumentIDList", totalGraphArgumentIDList)
        # print("uniformedTotalGraphNodeIDList",uniformedTotalGraphNodeIDList)
        # print("uniformedTotalGraphArgumentIDList",uniformedTotalGraphArgumentIDList)
        # print("nodeNumberList",nodeNumberList)
        # print("argumentNumberList", argumentNumberList)

        # get node_to_graph_map from nodeNumberList
        node_to_graph_map_tensor = []
        node_to_graph_map_list=[]
        for i, nodeNumber in enumerate(nodeNumberList):
            node_to_graph_map_tensor.append(tf.fill(dims=(nodeNumber,), value=i))
            node_to_graph_map_list.append([i]*nodeNumber)
        node_to_graph_map_tensor = tf.concat(node_to_graph_map_tensor, 0)
        node_to_graph_map_list=np.concatenate(node_to_graph_map_list).ravel().tolist()#flatten
        #print("node_to_graph_map_list", node_to_graph_map_list)
        #print("node_to_graph_map_tensor",node_to_graph_map_tensor)

        # get adjacent_list
        edgeTypeList={}
        edgeTypeNumberDict={}
        edgeTypeNumberList={}
        adjacent_list=[]
        maxNodeForAHypedEdge=10
        for i in range(2,maxNodeForAHypedEdge):
            edgeTypeList[str(i)]=list()
            edgeTypeNumberDict[str(i)] = [0]*len(self.finalGraphInfoList)
        for j,graphInfo in enumerate(self.finalGraphInfoList):
            #print('numberOfUniqueNodeID',graphInfo.numberOfUniqueNodeID)
            #map local node ID to uniformed node ID
            offset=sum(nodeNumberList[:j])
            local_node_ID_to_uniformed_node_ID=list(range(offset,offset+graphInfo.numberOfUniqueNodeID))
            #print(local_node_ID_to_uniformed_node_ID)
            edgeTypeNumberDict['2'][j]=len(graphInfo.edgeEmbeddingInputs)
            for edge in graphInfo.edgeEmbeddingInputs:
                edgeTypeList['2'].append([local_node_ID_to_uniformed_node_ID[edge['sender']],local_node_ID_to_uniformed_node_ID[edge['receiver']]])
            #print(graphInfo.hyperedgeEmbeddingInputs)
            for hyperedge in graphInfo.hyperedgeEmbeddingInputs:
                localNodeIDList=[hyperedge['senderIDList'],hyperedge['receiverIDList']]
                localNodeIDList = np.concatenate(localNodeIDList).ravel().tolist()
                uniformedNodeIDList=[]
                for localID in localNodeIDList:
                    uniformedNodeIDList.append(local_node_ID_to_uniformed_node_ID[localID])
                for i in range(2,maxNodeForAHypedEdge):
                    if(len(uniformedNodeIDList)==i):
                        edgeTypeList[str(i)].append(uniformedNodeIDList)
                        edgeTypeNumberDict[str(i)][j]=edgeTypeNumberDict[str(i)][j]+1


        #eleminate empty edge type
        for typeKey in edgeTypeList:
            if len(edgeTypeList[str(typeKey)])!=0:
                adjacent_list.append(tf.constant(edgeTypeList[typeKey],dtype=tf.int32))
                edgeTypeNumberList[typeKey]=edgeTypeNumberDict[typeKey]
        print(edgeTypeNumberList)
        #print edge types
        # for i,edges in enumerate(adjacent_list):
        #     print(f"edge type {i}",edges)


        return tf.constant(uniformedTotalGraphNodeIDList),\
               tuple(adjacent_list),node_to_graph_map_tensor,nodeNumberList,argumentNumberList,sum(nodeNumberList),\
               tf.constant(uniformedTotalGraphArgumentIDList),argumentScoreList,edgeTypeNumberList


    def printFinalGraphInfo(self):
        for graphInfo,args in zip(self.finalGraphInfoList,self.parsedArgumentList):
            graphInfo.printInfo()
            for arg in args:
                arg.printArgs()

    def edgeIntegerEncoding(self):
        #not include edge which connect to hyperedge
        #edge normalization
        edgeClassList=[]
        for G in self.graphList:
            for edge in G.edges:
                edgeClassList.append(G.edges[edge]['label'])

        edgeClassList=list(set(edgeClassList))

        edgeCounterDict = {}
        for c in edgeClassList:
            edgeCounterDict[c] = 0

        for G in self.graphList:
            for edge in G.edges:
                edgeClassName=G.edges[edge]['label']
                G.edges[edge]['edgeNormalizedName']=edgeClassName.replace('"','')+str(edgeCounterDict[edgeClassName])
                edgeCounterDict[edgeClassName]=edgeCounterDict[edgeClassName]+1
            for c in edgeCounterDict:
                edgeCounterDict[c] = 0

        #encode edge to integer
        #get vocabulary
        edgeVocaList = []
        for G in self.graphList:
            for edge in G.edges:
                edgeVocaList.append(G.edges[edge]['edgeNormalizedName'])
            edgeVocaList = list(set(edgeVocaList))

        edgeVocaIntegerEncoding = []
        for i, v in enumerate(edgeVocaList):
            edgeVocaIntegerEncoding.append(i)

        for G in self.graphList:
            for edge in G.edges:
                for t, i in zip(edgeVocaList, edgeVocaIntegerEncoding):
                    if(G.edges[edge]['edgeNormalizedName']==t):
                        G.edges[edge]['edgeLabelUniqueID']=i




    def hyperedgeIntegerEncoding(self):

        #encoding hyperedge to unique Integer ID
        #normalize hyoeredge names
        nodeCounterDict = {}
        nodeCounterDict['DataFlowHyperedge'] = 0
        nodeCounterDict['controlFlowHyperEdge'] = 0

        for G in self.graphList:
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
        for G in self.graphList:
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
        for G in self.graphList:
            for node in G.nodes:
                for t, i in zip(hyperedgeVocaList, hyperedgeVocaIntegerEncoding):
                    if(G.nodes[node]['class'] == "DataFlowHyperedge" and G.nodes[node]['hyperedgeNormalizedName']==t):
                        G.nodes[node]['hyperedgeLabelUniqueID']=i
                    if (G.nodes[node]['class'] == "controlFlowHyperEdge" and G.nodes[node]['hyperedgeNormalizedName'] == t):
                        G.nodes[node]['hyperedgeLabelUniqueID'] = i





    def normalizeNodeLabel(self):
        vocabList=[]
        for G in self.graphList:

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
            self.vocabList = list(set(vocabList))



    def encodeNodeLabelToInteger(self):
        # integer encoding
        vocavIntegerEncoding = []
        for i, v in enumerate(self.vocabList):
            vocavIntegerEncoding.append(i)
        for G in self.graphList:
            for node in G.nodes:
                for t, i in zip(self.vocabList, vocavIntegerEncoding):
                    if(G.nodes[node]['class'] != "DataFlowHyperedge" and G.nodes[node]['class'] != "controlFlowHyperEdge" and G.nodes[node]['normalizedName']==t):
                        G.nodes[node]['nodeLabelUniqueID']=i



    def giveNodeUniqueID(self):
        for G in self.graphList:
            nodeCounter=0
            for node in G.nodes:
                nodeDirc=G.nodes[node]
                if(nodeDirc['class']!="DataFlowHyperedge" and nodeDirc['class']!="controlFlowHyperEdge"):
                    G.nodes[node]['nodeUniqueID'] = nodeCounter
                    nodeCounter=nodeCounter+1


    def giveHyperedgeUniqueID(self):
        for G in self.graphList:
            nodeCounter=0
            for node in G.nodes:
                if(G.nodes[node]['class']=="DataFlowHyperedge" or G.nodes[node]['class']=="controlFlowHyperEdge" ):
                    G.nodes[node]['hyperedgeUniqueID'] = nodeCounter
                    nodeCounter=nodeCounter+1


    def giveEdgeUniqueID(self):
        for G in self.graphList:
            edgeCounter=0
            for edge in G.edges:
                if (G.nodes[edge[0]]['class'] != "DataFlowHyperedge" and G.nodes[edge[1]][
                    'class'] != "DataFlowHyperedge" and
                        G.nodes[edge[0]]['class'] != "controlFlowHyperEdge" and G.nodes[edge[1]][
                            'class'] != "controlFlowHyperEdge"):
                    G.edges[edge]['edgeUniqueID'] = edgeCounter
                    edgeCounter=edgeCounter+1


    def printNodeInfo(self):
        #print node information
        for G in self.graphList:
            for node in G.nodes:
                if(G.nodes[node]['class']=="DataFlowHyperedge" or G.nodes[node]['class']=="controlFlowHyperEdge" ):
                    print("hyperedge",G.nodes[node])
                else:
                    print("node:",G.nodes[node])

    def printEdgeInfo(self):
        for G in self.graphList:
            for edge in G.edges:
                if (G.nodes[edge[0]]['class'] != "DataFlowHyperedge" and G.nodes[edge[1]][
                    'class'] != "DataFlowHyperedge" and
                        G.nodes[edge[0]]['class'] != "controlFlowHyperEdge" and G.nodes[edge[1]][
                            'class'] != "controlFlowHyperEdge"):
                    print("edge:",G.edges[edge],edge)
                else:
                    print("partial hyperedge:", G.edges[edge],edge)


    def addSenderReceiverInfoToHyperedge(self):

        # replace connected node name with node unique ID in hyperedges
        for G in self.graphList:
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


    def addSenderReceiverInfoToEdge(self):
        # replace connected node name with node unique ID in edges
        for G in self.graphList:
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




    def readGraphsFromDot(self):

        path = "../../trainData/"
        suffix = ".c"  # some file name include .horn
        first_file_name=glob.glob(path+"*")[0]
        if ".smt2" in first_file_name:
            suffix = ".smt2"
        else:
            suffix=".c"
        print("graph file", len(sorted(glob.glob(path + '*' + suffix + '.gv'))))
        print("argument file", len(sorted(glob.glob(path + '*' + suffix + '.arguments'))))
        for fileGraph,fileArgument in zip(sorted(glob.glob(path + '*' + suffix + '.gv')),sorted(glob.glob(path + '*'+suffix+'.arguments'))):
            fileName = fileGraph[:fileGraph.find(suffix + ".gv") + len(suffix)]
            fileName = fileName[fileName.rindex("/") + 1:]
            print(fileName)
            # read graph
            print(fileGraph)
            hornGraph = Source.from_file(fileGraph)
            G = nx.DiGraph(nx.drawing.nx_pydot.read_dot(fileGraph))
            self.graphList.append(G)

            #read argument
            print(fileArgument)
            f = open(fileArgument, "r")
            arguments = f.read()
            f.close()
            self.argumentList.append(arguments)



    def transform_list_to_string(self,head_list):
        head=""
        if len(head_list)>1:
            for s in head_list:
                head=head+":"+s
            head=head[1:]
        else:
            head=head_list[0]
        return head

    def parseArguments(self,arguments):
        ParsedArgumentList=[]
        argumentLines=arguments.splitlines()
        for line in argumentLines:
            argument_content_list = line.split(":")
            ID=argument_content_list[0]
            head=self.transform_list_to_string(argument_content_list[1:-2])
            hint=argument_content_list[-2]
            score=argument_content_list[-1]
            ParsedArgumentList.append(ArgumentInfo(ID,head,hint,score))
            #print(ID,head,hint,score)
        return ParsedArgumentList


    def getGraphInfoList(self):
        graphInfoList = []
        for G in self.graphList:
            nodeUniqueIDList=[]
            nodeLabelList = []
            hyperedgeLabelList = []
            hyperedgeSenderList = []
            hyperedgeReceiverList = []
            hyperedgeEmbeddingInputs = []
            nodeEmbeddingInputs=[]
            for node in G.nodes:
                if (G.nodes[node]['class'] == "DataFlowHyperedge" or G.nodes[node]['class'] == "controlFlowHyperEdge"):
                    hyperedgeLabelList.append(G.nodes[node]['hyperedgeLabelUniqueID'])
                    hyperedgeSenderList.append(G.nodes[node]['from'])
                    hyperedgeReceiverList.append(G.nodes[node]['to'])
                    senderLabelList=[]
                    receiverLabelList=[]
                    for pre in G.predecessors(node):
                        senderLabelList.append(G.nodes[pre]['nodeLabelUniqueID'])
                    for suc in G.successors(node):
                        receiverLabelList.append(G.nodes[suc]['nodeLabelUniqueID'])

                    hyperedgeEmbeddingInputs.append({'hyperedgeLabelUniqueID':G.nodes[node]['hyperedgeLabelUniqueID'],
                                                     'senderIDList':G.nodes[node]['from'],'receiverIDList':G.nodes[node]['to'],
                                                     'senderLabelList':senderLabelList,'receiverLabelList':receiverLabelList,
                                                     'hyperedgeEmbedding':'dummy'})
                else:
                    nodeLabelList.append(G.nodes[node]['nodeLabelUniqueID'])
                    nodeUniqueIDList.append(G.nodes[node]['nodeUniqueID'])
                    #todo:node embedding inputs
                    # if node connect to normal edges
                    incommingEdgeList = []
                    incommingHyperedgeList = []
                    for edge in G.edges:
                        if(edge[1]==node):
                            if(G.nodes[edge[0]]['class']!="DataFlowHyperedge" and
                                    G.nodes[edge[1]]['class']!="DataFlowHyperedge"and
                                    G.nodes[edge[0]]['class']!="controlFlowHyperEdge" and
                                    G.nodes[edge[1]]['class']!="controlFlowHyperEdge"):
                                incommingEdgeList.append(G.edges[edge]['edgeUniqueID'])#edge
                    # if node connect to hyperedges
                    for hyperedge in G.nodes:
                        for suc in G.successors(hyperedge):
                            if(suc==node and (G.node[hyperedge]['class']=="DataFlowHyperedge" or G.node[hyperedge]['class']=="controlFlowHyperEdge")):
                                incommingHyperedgeList.append(G.nodes[hyperedge]['hyperedgeUniqueID'])#nodeName


                    nodeEmbeddingInputs.append({'nodeName':G.nodes[node]['nodeName'],
                                                'nodeID':G.nodes[node]['nodeUniqueID'],
                                                'nodeLabel': G.nodes[node]['nodeLabelUniqueID'],
                                                'incommingEdgeID': incommingEdgeList,
                                                'incommingHyperedgeID':incommingHyperedgeList,
                                                'incomingEdgeEmbedding': 'dummy',
                                                'incomingHyperedgeEmbedding':'dummy',
                                                'nodeEmbedding':'dummy'})


            edgeLabelList = []
            edgeSenderList = []
            edgeReceiverList = []
            edgeEmbeddingInputs=[]
            for edge in G.edges:
                if (G.nodes[edge[0]]['class'] != "DataFlowHyperedge" and G.nodes[edge[1]][
                    'class'] != "DataFlowHyperedge" and
                        G.nodes[edge[0]]['class'] != "controlFlowHyperEdge" and G.nodes[edge[1]][
                            'class'] != "controlFlowHyperEdge"):
                    edgeLabelList.append(G.edges[edge]['edgeLabelUniqueID'])
                    edgeSenderList.append(G.edges[edge]['from'])
                    edgeReceiverList.append(G.edges[edge]['to'])
                    edgeEmbeddingInputs.append({'edgeLabelUniqueID':G.edges[edge]['edgeLabelUniqueID'],
                                                'sender':G.edges[edge]['from'],'receiver':G.edges[edge]['to'],
                                                'senderLabel':G.nodes[edge[0]]['nodeLabelUniqueID'],
                                                'receiverLabel':G.nodes[edge[1]]['nodeLabelUniqueID'],
                                                'edgeEmbedding':'dummy'})

            self.finalGraphInfoList.append(
                GraphInfo(nodeUniqueIDList,nodeLabelList, edgeLabelList, hyperedgeLabelList, edgeSenderList, edgeReceiverList,
                          hyperedgeSenderList, hyperedgeReceiverList,edgeEmbeddingInputs,hyperedgeEmbeddingInputs,nodeEmbeddingInputs))

    def getArgumentHead(self):
        for G, args in zip(self.graphList, self.parsedArgumentList):
            for node in G.nodes:
                nodeDir = G.nodes[node]
                if(nodeDir['class']=="argument"):
                    tempString=nodeDir['label']
                    head=tempString[1:tempString.find('argument')-1]
                    nodeDir['head'] = head
                    argument = "argument"+tempString[tempString.find('argument_') +9 :-1]
                    nodeDir['argument'] = argument

    def getArgumentIDFromGraph(self):
        self.getArgumentHead()
        #connect integer encoding from the graph to input argument
        for G, args in zip(self.graphList, self.parsedArgumentList):
            for node in G.nodes:
                for arg in args:
                    nodeDir = G.nodes[node]
                    if(nodeDir['class']=="argument"):
                        #nodeName
                        if(nodeDir['argument']==arg.arg and nodeDir['head']==arg.head[:arg.head.find("/")]):
                            arg.nodeUniqueIDInGraph=nodeDir['nodeUniqueID']
                            arg.nodeLabelUniqueIDInGraph = nodeDir['nodeLabelUniqueID']

    def getParsedArgument(self):
        for args in self.argumentList:
            self.parsedArgumentList.append(self.parseArguments(args))
#
# def main():
#     graphInfoList=DotToGraphInfo()
#     graphInfoList.readGraphsFromDot()
#
#     graphInfoList.getParsedArgument()
#
#     graphInfoList.normalizeNodeLabel()
#
#     graphInfoList.encodeNodeLabelToInteger()
#
#     graphInfoList.hyperedgeIntegerEncoding()
#
#     graphInfoList.edgeIntegerEncoding()
#
#     # how to represent edge connected to hyperedges?
#     # they are components of hyperedges
#
#     graphInfoList.giveNodeUniqueID()
#     graphInfoList.giveEdgeUniqueID()
#     graphInfoList.giveHyperedgeUniqueID()
#
#     graphInfoList.addSenderReceiverInfoToEdge()
#     graphInfoList.addSenderReceiverInfoToHyperedge()
#
#     # graphInfoList.printNodeInfo()
#     # graphInfoList.printEdgeInfo()
#
#
#
#     #store networkx's graph to graphInfo
#
#     '''
#     #nodeLabelUniqueID_0 is a integer
#     nodes:[nodeLabelUniqueID_0,nodeLabelUniqueID_1,...,nodeLabelUniqueID_n]
#     edges:[edgeLabelUniqueID_0,edgeLabelUniqueID_1,...,edgeLabelUniqueID_m]
#     hyperedges:[hyperedgeLabelUniqueID_0,hyperedgeLabelUniqueID_1,...,hyperedgeLabelUniqueID_k]
#
#     edge_senders:[nodeUniqueID_a,nodeUniqueID_b,...,nodeUniqueID_c]
#     edge_receivers:[nodeUniqueID_d,nodeUniqueID_e,...,nodeUniqueID_f]
#
#     hyperedge_senders:[[nodeUniqueID_a,nodeUniqueID_b],[nodeUniqueID_c,nodeUniqueID_d],...,[nodeUniqueID_e]]
#     hyperedge_receivers:[nodeUniqueID_a,nodeUniqueID_b,...,nodeUniqueID_c]
#     #according to our definition, hyperedge has multiple input node and one output node.
#     '''
#
#
#
#     graphInfoList.getArgumentIDFromGraph()
#
#     graphInfoList.getGraphInfoList()
#
#     graphInfoList.printFinalGraphInfo()
#
#
#
# main()
