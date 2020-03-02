from numpy import array
from sklearn.preprocessing import LabelEncoder
import glob
import networkx as nx
from graphviz import Source
from keras.utils import to_categorical
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
            else:
                className=G.nodes[node]['class']
                G.nodes[node]['normalizedName']=className+str(nodeCounterDict[className])
                nodeCounterDict[className] = nodeCounterDict[className]+1
                #print(G.nodes[node]['normalizedName'])
        operatorList=list(set(operatorList))


        for node in G.nodes:
            vocabList.append(G.nodes[node]['normalizedName'])
        vocabList = list(set(vocabList))
        graphList.append(G)
    #print(len(vocabList))
    #print(vocabList)
    return vocabList,graphList

def main():
    print()
    # normalize nodes label by class var1, var2. operators, constants
    # build a vocabulary
    vocab,graphList=normalizeNodeLabel()

    # integer encoding
    vocavIntegerEncoding=[]
    for i,v in enumerate(vocab):
        vocavIntegerEncoding.append(i)
    print(vocavIntegerEncoding)
    # one hot encode
    encoded = to_categorical(vocavIntegerEncoding)
    print(encoded.shape)



    #word embedding

main()