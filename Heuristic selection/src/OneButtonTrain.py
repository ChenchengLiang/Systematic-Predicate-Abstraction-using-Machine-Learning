import os
from src.graphProcessing import callEldaricaGenerateGraphs

from src.loadData import train,readHornClausesAndHints_resplitTrainAndVerifyData
from src.trainDoc2VecModel import trainDoc2VecModelfunction
from src.plot import plotHistory
import gensim
from src.Miscellaneous import pickleRead,pickleWrite


def main():
    print("Start")

    # benchmark='dillig'
    benchmark = 'trainData'
    curpath = os.path.abspath(os.curdir)
    parenDir = os.path.abspath(os.path.pardir)
    path = parenDir + '/' + benchmark + '/'
    print(path)

    # get graph data
    #callEldaricaGenerateGraphs('trainData')

    # transformOneFiletoFeatures(path)
    train_X ,train_Y ,verify_X ,verify_Y =\
        readHornClausesAndHints_resplitTrainAndVerifyData(path ,\
        dataset='train',discardNegativeData=True,smallTrain=True,smallTrainSize=50)
    train_X=pickleRead('trainData_X')
    train_Y = pickleRead('trainData_Y')
    verify_X = pickleRead('verifyData_X')
    verify_X = pickleRead('verifyData_Y')
    #train_X=train_X[0:40]   #cut training size for debug
    #train_Y = train_Y[0:40] #cut training size for debug

    # # train and save Doc2Vec models
    # print("train Doc2Vec model begin")
    # trainProgramDoc2VecModel ,trainHintsDoc2VecModel = trainDoc2VecModelfunction(train_X,program_dim=100,hint_dim=20)
    # trainProgramDoc2VecModel.save(parenDir + '/models/programDoc2VecModel')
    # trainHintsDoc2VecModel.save(parenDir + '/models/hintsDoc2VecModel')
    # print("train Doc2Vec model end")

    # load Doc2Vec models
    programDoc2VecModel =gensim.models.doc2vec.Doc2Vec.load(parenDir +'/models/programDoc2VecModel')
    hintsDoc2VecModel =gensim.models.doc2vec.Doc2Vec.load(parenDir +'/models/hintsDoc2VecModel')

    # split data to training and verifiying sets
    # train_X, verify_X, train_Y, verify_Y = train_test_split(train_X, train_Y, test_size=0.2, random_state=42)

    # checkSplitData(X_train, X_test, y_train, y_test)

    # feature engineering
    # encodedPrograms_train,encodedPrograms_test,encodedHints_train,encodedHints_test=transformDatatoFeatures_tokennizer(train_X,verify_X)
    # encodedPrograms_train,encodedPrograms_test,encodedHints_train,encodedHints_test,\
    #     =transformDatatoFeatures_doc2vec(train_X, verify_X,programDoc2VecModel,hintsDoc2VecModel)
    from src.Data2Features import Doc2vecFeatureEngineering,Node2vecFeatureEngineering
    Doc2vecFeatureEngineering()
    Node2vecFeatureEngineering()

    # load features
    encodedPrograms_train = pickleRead('encodedPrograms_train')
    encodedPrograms_test = pickleRead('encodedPrograms_test')

    graphEncodedPrograms_train = pickleRead('graphEncodedPrograms_train')
    graphEncodedPrograms_test = pickleRead('graphEncodedPrograms_test')

    encodedHints_train = pickleRead('encodedHints_train')
    encodedHints_test = pickleRead('encodedHints_test')

    graphencodedHints_train = pickleRead('graphEncodedHints_train')
    graphencodedHints_test = pickleRead('graphEncodedHints_test')

    train_Y = pickleRead('train_Y')
    verify_Y = pickleRead('verify_Y')

    # train
    batch_size = round(encodedPrograms_train.shape[0] / 100)
    if(batch_size<1):
        batch_size=1
    epochs = 100
    #history, model = train(encodedPrograms_train, encodedPrograms_test, encodedHints_train, encodedHints_test, train_Y,
    #                       verify_Y, batch_size, epochs)
    history, model = train(encodedPrograms_train, encodedPrograms_test,\
                           graphEncodedPrograms_train,graphEncodedPrograms_test,\
                           encodedHints_train, encodedHints_test,\
                           graphencodedHints_train,graphencodedHints_test,\
                           train_Y,verify_Y, batch_size, epochs)
    plotHistory(history)

    # #load models instead of training
    # history=pickleRead('history')
    # plotHistory(history)
    # model=load_model(parenDir+'/models/my_model.h5')
    # model.summary()

    # read test data
    # test_X, test_Y = readHornClausesAndHints(parenDir + '/' + 'testData' + '/', 'test',discardNegativeData=False)
    # #predict_tokenization(model,train_X,verify_X, test_Y,test_X)
    # predict_doc2vec(model,programDoc2VecModel,hintsDoc2VecModel,test_X,test_Y)
    #
    #
    #


if __name__ == '__main__':
    main()

