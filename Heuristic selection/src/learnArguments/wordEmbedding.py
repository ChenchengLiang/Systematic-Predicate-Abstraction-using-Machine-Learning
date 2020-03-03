from numpy import array
from sklearn.preprocessing import LabelEncoder
import glob
import networkx as nx
from graphviz import Source
from keras.utils import to_categorical
from tensorflow import keras
from tensorflow.keras import layers
import numpy as np
import tensorflow as tf
import random
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

def nodePreprocess():
    # normalize nodes label by class var1, var2. operators, constants
    # build a vocabulary
    vocab,graphList=normalizeNodeLabel()

    # integer encoding
    vocavIntegerEncoding=[]
    for i,v in enumerate(vocab):
        vocavIntegerEncoding.append(i)
    #print(vocavIntegerEncoding)
    # one hot encode
    oneHotEncodingTable = to_categorical(vocavIntegerEncoding)
    #print(oneHotEncodingTable)

    #store one hot vector to nodes
    for G in graphList:
        for node in G.nodes:
            for t, i, o in zip(vocab, vocavIntegerEncoding, oneHotEncodingTable):
                if(G.nodes[node]['normalizedName']==t):
                    G.nodes[node]['integer']=i
                    G.nodes[node]['oneHotVector'] = o

    return graphList,len(vocavIntegerEncoding)

def edgePreprocess(graphList):
    labelVocabulary=[]
    for G in graphList:
        for edge in G.edges:
            print(G.edges[edge]['label'])
            labelVocabulary.append(G.edges[edge]['label'])

    labelVocabulary=list(set(labelVocabulary))
    print(labelVocabulary)
    labelVocabularyIntegerEncoding=[]
    for i,l in enumerate(labelVocabulary):
        labelVocabularyIntegerEncoding.append(i)
    oneHotEncodingTable = to_categorical(labelVocabularyIntegerEncoding)

    #store one hot vector to edges
    for G in graphList:
        for edge in G.edges:
            for t, i, o in zip(labelVocabulary, labelVocabularyIntegerEncoding, oneHotEncodingTable):
                if(G.edges[edge]['label']==t):
                    G.edges[edge]['integer']=i
                    G.edges[edge]['oneHotVector'] = o
                    G.edges[edge]['source'] = edge[0]
                    G.edges[edge]['destination'] = edge[1]

    # for G in graphList:
    #     for edge in G.edges:
    #         print(G.edges[edge])

    return graphList


def main():
    print()

    graphList,vocabularySize=nodePreprocess()
    #NodeWordEmbedding(graphList, vocabularySize)

    graphList=edgePreprocess(graphList)




def NodeWordEmbedding(graphList,vocabularySize):

    #word embedding
    # get train and target data, window size 3, direct successors and predecessors
    train_X = []
    train_Y = []
    for G in graphList[1:]:
        for node in G.nodes:
            #print("------",node,"-------")
            #print("predecessors")
            for neighbor in G.predecessors(node):
                #print(neighbor)
                train_X.append(G.nodes[node]['oneHotVector'])
                train_Y.append(G.nodes[neighbor]['oneHotVector'])
            #print("successors")
            for neighbor in G.successors(node):
                #print(neighbor)
                train_X.append(G.nodes[node]['oneHotVector'])
                train_Y.append(G.nodes[neighbor]['oneHotVector'])



    train_X=np.array(train_X)
    train_Y=np.array(train_Y)

    #separate to train and validation data
    trainDataSplitRate=0.8
    shuf = list(zip(train_X, train_Y))
    random.shuffle(shuf)
    train_X, train_Y = zip(*shuf)
    splitPoint = int(trainDataSplitRate * len(train_Y))
    trainX = train_X[:splitPoint]
    validX = train_X[splitPoint:]
    trainY = train_Y[:splitPoint]
    validY = train_Y[splitPoint:]
    trainX=np.array(trainX)
    trainY=np.array(trainY)
    validX=np.array(validX)
    validY=np.array(validY)
    print(trainX.shape)
    print(trainY.shape)
    print(np.expand_dims(trainX[0],axis=1).transpose().shape)

    #np.expand_dims(y_train, axis=2)


    embedding_dim = 32

    model = keras.Sequential([
        layers.Embedding(vocabularySize, embedding_dim),
        layers.GlobalAveragePooling1D(),
        layers.Dense(32, activation='relu'),
        layers.Dense(vocabularySize)
    ])

    model.summary()

    model.compile(optimizer='adam',
                  #loss=tf.keras.losses.BinaryCrossentropy(from_logits=True),
                  loss='categorical_crossentropy',
                  metrics=['accuracy'])

    history = model.fit(
        trainX,trainY,
        epochs=100,
        validation_data=(validX, validY))


    #predict
    predicted=model.predict(np.expand_dims(trainX[0],axis=1).transpose())
    print(np.array(trainX[0]))
    print(np.array(trainY[0]))
    for i,x in enumerate(np.array(trainX[0])):
        if(x==1):
            print(i)
    for i,x in enumerate(np.array(trainY[0])):
        if(x==1):
            print(i)
    temp=0
    print(predicted.shape)
    maxValue=max(predicted[0])
    print(maxValue)
    for i,x in enumerate(predicted[0]):
        if(x==maxValue):
            print(i)
            temp=i




    #print(predicted)


main()