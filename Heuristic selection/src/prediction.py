from src.Miscellaneous import data2list, recoverPredictedText,printOnePredictedTextInStringForm,\
    doc2vecModelInferNewData,testAccuracy,pickleWrite,pickleRead,sortHints,printList
from src.loadData import load_model,readHornClausesAndHints,readHornClausesAndHints_graph_predict,predict_doc2vec,readHornClausesAndHints_resplitTrainAndVerifyData
import gensim
import os
import numpy as np
from keras import backend as K

def getRankedResults(test_X,test_Y,sigmoidOutput,printOneExample=False):
    # get unique program list
    programList = list()
    for p in range(len(test_X)):
        programList.append(test_X[p][0])
    progranList = list(set(programList))  # delete duplication in program list

    predictedData = list()
    # predictedData[][0]=program
    # predictedData[][1]=hint list
    # predictedData[][2]=predicted hint score list
    # predictedData[][3]=true hint score list
    predictedDataWithUnsortedHints = list()
    # predictedDataWithUnsortedHints[][0]=program
    # predictedDataWithUnsortedHints[][1]=sorted hint list
    for i in range(len(progranList)):  # for one program
        program = progranList[i]
        hints = list()
        trueHintsScore = list()
        predictedHintsScore = list()
        for j in range(len(test_X)):
            if (progranList[i] == test_X[j][0]):  # collect all hints and scores
                hints.append(test_X[j][1])
                trueHintsScore.append(test_Y[j])
                predictedHintsScore.append(sigmoidOutput.tolist()[j][0])
        hints = list(set(hints))
        predictedData.append([program, hints, predictedHintsScore, trueHintsScore])
        unsortedList = list(zip(hints, predictedHintsScore, trueHintsScore))
        sortedList = sortHints(unsortedList)
        predictedDataWithUnsortedHints.append([program, sortedList])

    if(printOneExample==True):
        #print one example
        print("program")
        print(predictedDataWithUnsortedHints[0][0])
        print("sorted hints")
        printList(predictedDataWithUnsortedHints[0][1])
    # print(np.array(sigmoidOutput).T)
    return predictedDataWithUnsortedHints

def printRankNHints(predictedDataWithUnsortedHints,index,topN=3):
    RankedHintList=list()
    if(topN<len(predictedDataWithUnsortedHints[index][1])):
        for hint in predictedDataWithUnsortedHints[index][1][0:topN]:
            print(hint)
            RankedHintList.append(hint)
    return RankedHintList
def predict_doc2vec_rank(model, programDoc2VecModel, hintsDoc2VecModel, test_X, test_Y, printExample=True):
    # embedding test data for prediction
    encodedPrograms_test, encodedHints_test,graphEncodedPrograms_test,graphEncodedHints_test= doc2vecModelInferNewData(test_X, programDoc2VecModel, hintsDoc2VecModel)

    # predict
    sigmoidOutput = model.predict([encodedPrograms_test, encodedHints_test,graphEncodedPrograms_test,graphEncodedHints_test])
    #text_X[][0]=program text_X[][1]=hint

    predictedDataWithUnsortedHints=getRankedResults(test_X,test_Y,sigmoidOutput,printOneExample=False)
    # predictedDataWithUnsortedHints[][0]=program
    # predictedDataWithUnsortedHints[][1]=sorted hint list

    predicted_y = sigmoidOutput
    predicted_y[predicted_y > 0.5] = 1  # convert decimals to 0 and 1
    predicted_y[predicted_y <= 0.5] = 0  # convert decimals to 0 and 1

    acc = testAccuracy(predicted_y, test_Y)

    y_test = np.expand_dims(test_Y, axis=2)
    print('predicted_y shape:', np.array(predicted_y).shape)
    print('y_test shape:', np.array(y_test).shape)
    print('encodedPrograms_test', encodedPrograms_test.shape)
    print('encodedHints_test', encodedHints_test.shape)
    print('graphEncodedPrograms_test',graphEncodedPrograms_test.shape)
    print('graphEncodedHints', graphEncodedHints_test.shape)

    # print predicted y true y
    print('predicted y vs. true y:')
    print(np.stack((np.array(predicted_y).T, np.array(y_test).T)))
    PredixtedHints = recoverPredictedText(test_X, predicted_y)
    testHints = recoverPredictedText(test_X, y_test)
    if (printExample == True):
        # print predicted hints and true hints
        Top=5
        print('predicted hints vs. true hints:')
        print(test_X[0][0])#print program
        print('--------------Predicted hints---------')
        printOnePredictedTextInStringForm(PredixtedHints, index=0, printProgram=False)
        print('--------------Predicted Top'+str(Top)+' hints rank---------')
        printRankNHints(predictedDataWithUnsortedHints, index=0, topN=Top)
        print('--------------True hints---------')
        printOnePredictedTextInStringForm(testHints, 0, False)
        print('--------------------------------------')
        print(test_X[1][0])#print program
        print('--------------Predicted hints---------')
        printOnePredictedTextInStringForm(PredixtedHints, 1, False)
        print('--------------Predicted Top'+str(Top)+' hints rank---------')
        printRankNHints(predictedDataWithUnsortedHints, index=1, topN=Top)
        print('-------------True hints-------------')
        printOnePredictedTextInStringForm(testHints, 1, False)

    return PredixtedHints, sigmoidOutput




def main():
    print("Start")

    parenDir = os.path.abspath(os.path.pardir)

    #load Doc2Vec models
    programDoc2VecModel=gensim.models.doc2vec.Doc2Vec.load(parenDir+'/models/programDoc2VecModel')
    hintsDoc2VecModel=gensim.models.doc2vec.Doc2Vec.load(parenDir+'/models/hintsDoc2VecModel')



    # #load models instead of training
    # history=pickleRead('history')
    # plotHistory(history)
    model=load_model(parenDir+'/models/my_model.h5')
    model.summary()


    #read test data
    test_X, test_Y = readHornClausesAndHints_graph_predict(parenDir + '/' + 'testData' + '/', 'test',discardNegativeData=False)

    #predict_tokenization(model,train_X,verify_X, test_Y,test_X)
    #predict_doc2vec(model,programDoc2VecModel,hintsDoc2VecModel,test_X,test_Y,printExample=False)
    predict_doc2vec_rank(model, programDoc2VecModel, hintsDoc2VecModel, test_X, test_Y,\
                         printExample=True)





    print("finished")





if __name__ == '__main__':
    main()