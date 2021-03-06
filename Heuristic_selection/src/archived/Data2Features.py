import gensim
from loadData import readHornClausesAndHints,readHornClausesAndHints_resplitTrainAndVerifyData
import os
import numpy as np
from sklearn.model_selection import train_test_split
from Miscellaneous import pickleWrite,doc2vecModelInferNewData,pickleRead,graph2vecModelInferNewData

def transformDatatoFeatures_graph2vec(X_train,X_test,programGraph2VecModel,hintsGraph2VecModel):
    #create Doc2Vec model
    #programDoc2VecModel, hintsDoc2VecModel=trainDoc2VectModel(X_train)

    #infer/embedding programs and hints to vectors
    print("Doc2Vec (graph) inferring begin")
    graphEncodedPrograms_train,graphEncodedHints_train=graph2vecModelInferNewData(X_train, programGraph2VecModel, hintsGraph2VecModel)
    graphEncodedPrograms_verify,graphEncodedHints_verify = graph2vecModelInferNewData(X_test, programGraph2VecModel,hintsGraph2VecModel)
    print('write infered train and test data to files')
    pickleWrite(content=graphEncodedPrograms_train,name='graphEncodedPrograms_train')
    pickleWrite(content=graphEncodedHints_train, name='graphEncodedHints_train')
    pickleWrite(content=graphEncodedPrograms_verify, name='graphEncodedPrograms_verify')
    pickleWrite(content=graphEncodedHints_verify, name='graphEncodedHints_verify')

    return graphEncodedPrograms_train,graphEncodedPrograms_verify,graphEncodedHints_train,graphEncodedHints_verify

def transformDatatoFeatures_doc2vec(X_train,X_test,programDoc2VecModel,hintsDoc2VecModel):
    #create Doc2Vec model
    #programDoc2VecModel, hintsDoc2VecModel=trainDoc2VectModel(X_train)

    #infer/embedding programs and hints to vectors
    print("Doc2Vec (text) inferring begin")
    encodedPrograms_train,encodedHints_train=doc2vecModelInferNewData(X_train, programDoc2VecModel, hintsDoc2VecModel)
    encodedPrograms_verify, encodedHints_verify = doc2vecModelInferNewData(X_test, programDoc2VecModel,hintsDoc2VecModel)
    print("Doc2Vec (text) inferring end")
    print('write infered train and test data to files')
    pickleWrite(content=encodedPrograms_train,name='encodedPrograms_train')
    pickleWrite(content=encodedHints_train, name='encodedHints_train')
    pickleWrite(content=encodedPrograms_verify, name='encodedPrograms_verify')
    pickleWrite(content=encodedHints_verify, name='encodedHints_verify')

    return encodedPrograms_train,encodedPrograms_verify,encodedHints_train,encodedHints_verify

def transformDatatoFeatures_node2vec(X_train,X_test):
    graphEncodedPrograms_train=list()
    for graph in X_train:
        graphEncodedPrograms_train.append(graph[2])
    graphEncodedPrograms_train = np.expand_dims(graphEncodedPrograms_train, axis=2)

    graphEncodedPrograms_verify = list()
    for graph in X_test:
        graphEncodedPrograms_verify.append(graph[2])
    graphEncodedPrograms_verify = np.expand_dims(graphEncodedPrograms_verify, axis=2)

    print('write  train and test  graph embedding data to files')
    pickleWrite(content=graphEncodedPrograms_train,name='graphEncodedPrograms_train')
    pickleWrite(content=graphEncodedPrograms_verify, name='graphEncodedPrograms_test')

    graphEncodedHints_train = list()
    for graph in X_train:
        graphEncodedHints_train.append(graph[3])
    graphEncodedHints_train = np.expand_dims(graphEncodedHints_train, axis=2)
    #graphEncodedHints_train=np.array(graphEncodedHints_train)

    graphEncodedHints_verify = list()
    for graph in X_test:
        graphEncodedHints_verify.append(graph[3])
    graphEncodedHints_verify = np.expand_dims(graphEncodedHints_verify, axis=2)
    #graphEncodedHints_verify=np.array(graphEncodedHints_verify)

    pickleWrite(content=graphEncodedHints_train, name='graphEncodedHints_train')
    pickleWrite(content=graphEncodedHints_verify, name='graphEncodedHints_test')


    return graphEncodedPrograms_train,graphEncodedPrograms_verify,graphEncodedHints_train,graphEncodedHints_verify



def Doc2vecFeatureEngineering():
    benchmark = 'trainData'
    curpath = os.path.abspath(os.curdir)
    parenDir = os.path.abspath(os.path.pardir)
    path = parenDir + '/' + benchmark + '/'
    print(path)
    #train_X,train_Y,verify_X,verify_Y = readHornClausesAndHints_resplitTrainAndVerifyData(path, dataset='train', discardNegativeData=True)
    train_X=pickleRead('trainData_X')
    train_Y = pickleRead('trainData_Y')
    verify_X = pickleRead('verifyData_X')
    verify_Y = pickleRead('verifyData_Y')
    # train_X=train_X[0:10]   #cut training size for debug
    # train_Y = train_Y[0:10] #cut training size for debug


    # split data to training and verifiying sets
    #train_X, verify_X, train_Y, verify_Y = train_test_split(train_X, train_Y, test_size=0.2, random_state=42)

    #load Doc2vec model

    programDoc2VecModel = gensim.models.doc2vec.Doc2Vec.load(parenDir+'/models/programDoc2VecModel')
    hintsDoc2VecModel = gensim.models.doc2vec.Doc2Vec.load(parenDir+'/models/hintsDoc2VecModel')
    transformDatatoFeatures_doc2vec(train_X, verify_X, programDoc2VecModel, hintsDoc2VecModel)
    #transformDatatoFeatures_node2vec(train_X, verify_X)
    pickleWrite(train_Y,'train_Y')
    pickleWrite(verify_Y, 'verify_Y')

def Node2vecFeatureEngineering():
    benchmark = 'trainData'
    curpath = os.path.abspath(os.curdir)
    parenDir = os.path.abspath(os.path.pardir)
    path = parenDir + '/' + benchmark + '/'
    print(path)
    #train_X,train_Y,verify_X,verify_Y = readHornClausesAndHints_resplitTrainAndVerifyData(path, dataset='train', discardNegativeData=True)
    train_X=pickleRead('trainData_X')
    train_Y = pickleRead('trainData_Y')
    verify_X = pickleRead('verifyData_X')
    verify_Y = pickleRead('verifyData_Y')
    transformDatatoFeatures_node2vec(train_X, verify_X)
    pickleWrite(train_Y,'train_Y')
    pickleWrite(verify_Y, 'verify_Y')

def Graph2vecFeatureEngineering():
    benchmark = 'trainData'
    curpath = os.path.abspath(os.curdir)
    parenDir = os.path.abspath(os.path.pardir)
    path = parenDir + '/' + benchmark + '/'
    print(path)
    #train_X,train_Y,verify_X,verify_Y = readHornClausesAndHints_resplitTrainAndVerifyData(path, dataset='train', discardNegativeData=True)
    train_X=pickleRead('trainData_X')
    train_Y = pickleRead('trainData_Y')
    verify_X = pickleRead('verifyData_X')
    verify_Y = pickleRead('verifyData_Y')
    programGraph2VecModel = gensim.models.doc2vec.Doc2Vec.load(parenDir+'/models/programGraph2VecModel')
    hintsGraph2VecModel = gensim.models.doc2vec.Doc2Vec.load(parenDir+'/models/hintsGraph2VecModel')
    transformDatatoFeatures_graph2vec(train_X, verify_X,programGraph2VecModel,hintsGraph2VecModel)
    pickleWrite(train_Y,'train_Y')
    pickleWrite(verify_Y, 'verify_Y')




def main():
    print("Start")

    Doc2vecFeatureEngineering()
    Graph2vecFeatureEngineering()

    print('finished')











if __name__ == '__main__':
    main()