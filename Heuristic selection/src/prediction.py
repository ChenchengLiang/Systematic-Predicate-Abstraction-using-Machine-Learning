from src.Miscellaneous import data2list, recoverPredictedText,printOnePredictedTextInStringForm,\
    doc2vecModelInferNewData,graph2vecModelInferNewData,testAccuracy,pickleWrite,pickleRead,sortHints,printList
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
def predict_rank(model, programDoc2VecModel, hintsDoc2VecModel,programGraph2VecModel,hintsGraph2VecModel,test_X, test_Y, printExample=True,predictFlag=2):
    # embedding test data for prediction
    encodedPrograms_test, encodedHints_test= doc2vecModelInferNewData(test_X, programDoc2VecModel, hintsDoc2VecModel)
    graphEncodedPrograms_test, graphEncodedHints_test=graph2vecModelInferNewData(test_X,programGraph2VecModel,hintsGraph2VecModel)
    if(predictFlag==2):# predict with text
        sigmoidOutput = model.predict([encodedPrograms_test, encodedHints_test])
    if(predictFlag==3):# predict with text and program graph
        sigmoidOutput = model.predict([encodedPrograms_test, encodedHints_test, graphEncodedPrograms_test])
    if(predictFlag==4):# predict with text, program graph, and hint graph
        sigmoidOutput = model.predict([encodedPrograms_test, encodedHints_test, graphEncodedPrograms_test,graphEncodedHints_test])
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

    # print("debug")
    # print("test_X[0][0]", test_X[0][0])  # program
    # print("test_X[0][1]", test_X[0][1])  # hint text (head \n hint)
    # print("test_X[0][2]", test_X[0][2])  # progran graph embedding
    # print("test_X[0][3]", test_X[0][3])  # hint graph
    # print("test_X[0][4]", test_X[0][4])  # hint ID
    # print("test_X len:", len(test_X))
    # print(predicted_y[0])
    # print(y_test[0])


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


def predictAndOutputHints(model, programDoc2VecModel, hintsDoc2VecModel,programGraph2VecModel,hintsGraph2VecModel):
    test_X = pickleRead('testData_X')
    parenDir = os.path.abspath(os.path.pardir)
    path=parenDir+"/predictedHints/"
    #embedding
    encodedPrograms_test, encodedHints_test= doc2vecModelInferNewData(test_X, programDoc2VecModel, hintsDoc2VecModel)
    graphEncodedPrograms_test, graphEncodedHints_test=graph2vecModelInferNewData(test_X,programGraph2VecModel,hintsGraph2VecModel)

    #predict
    sigmoidOutput = model.predict(
        [encodedPrograms_test, encodedHints_test, graphEncodedPrograms_test, graphEncodedHints_test])
    #transform probability to binary classification
    predicted_y = sigmoidOutput.copy()
    predicted_y[predicted_y > 0.5] = int(1)  # convert decimals to 0 and 1
    predicted_y[predicted_y <= 0.5] = int(0)  # convert decimals to 0 and 1

    print("debug")
    print("test_X[0][0]", test_X[0][0])  # program
    print("test_X[0][1]", test_X[0][1])  # hint text (head \n hint)
    print("test_X[0][2]", test_X[0][2])  # progran graph embedding
    print("test_X[0][3]", test_X[0][3])  # hint graph
    print("test_X[0][4]", test_X[0][4])  # hint ID
    print("test_X len:", len(test_X))
    print(predicted_y[0])

    #write results to file
    fileList=list()
    for X in test_X:
        fileList.append(X[5])
    fileList=list(set(fileList))
    for fileName in fileList:
        predictedHintListWithID = list()
        print(fileName)
        f = open(path + fileName+".optimizedHints", "w+")
        for X,y,score in zip(test_X,predicted_y,sigmoidOutput):
            if(X[5]==fileName):
                predictedHintListWithID.append([X[4],X[1][0], X[1][1],y,score])
                # ID,head,hint,predicted result,score
                head=X[1][:X[1].find("\n")]
                head=head[:head.find("/")]
                hint=X[1][X[1].find("\n")+1:]
                content =X[4]+":"+ head+ ":" + hint+ ":" + str(y) + ":" + str(score)+"\n"
                f.write(content)
        f.close()


def main():
    print("Start")

    parenDir = os.path.abspath(os.path.pardir)

    #load Doc2Vec models
    programDoc2VecModel=gensim.models.doc2vec.Doc2Vec.load(parenDir+'/models/programDoc2VecModel')
    hintsDoc2VecModel=gensim.models.doc2vec.Doc2Vec.load(parenDir+'/models/hintsDoc2VecModel')
    # load Graph2Vec models
    programGraph2VecModel = gensim.models.doc2vec.Doc2Vec.load(parenDir + '/models/programGraph2VecModel')
    hintsGraph2VecModel = gensim.models.doc2vec.Doc2Vec.load(parenDir + '/models/hintsGraph2VecModel')


    # #load models instead of training
    # history=pickleRead('history')
    # plotHistory(history)
    model=load_model(parenDir+'/models/my_model.h5')
    model.summary()


    #read test data
    test_X, test_Y = readHornClausesAndHints_graph_predict(parenDir + '/' + 'testData' + '/', 'test',discardNegativeData=False,shuf=True)
    #read from file
    # test_X= pickleRead('testData_X')
    # test_Y= pickleRead('testData_Y')
    #predict_tokenization(model,train_X,verify_X, test_Y,test_X)

    # #with text
    # predict_rank(model, programDoc2VecModel, hintsDoc2VecModel,programGraph2VecModel,hintsGraph2VecModel, test_X, test_Y, \
    #                      printExample=True, predictFlag=2)
    # # with text and program graph
    # predict_rank(model, programDoc2VecModel, hintsDoc2VecModel,programGraph2VecModel,hintsGraph2VecModel,test_X, test_Y,\
    #                      printExample=True,predictFlag=3)
    # with text, program graph and hint graph
    # predict_rank(model, programDoc2VecModel, hintsDoc2VecModel,programGraph2VecModel,hintsGraph2VecModel, test_X, test_Y, \
    #              printExample=True, predictFlag=4)

    predictAndOutputHints(model, programDoc2VecModel, hintsDoc2VecModel,programGraph2VecModel,hintsGraph2VecModel)





    print("finished")





if __name__ == '__main__':
    main()