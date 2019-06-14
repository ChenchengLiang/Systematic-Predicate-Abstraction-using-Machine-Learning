import nltk
import gensim
import numpy as np
def checkSplitData(X_train, X_test, y_train, y_test):
    print("------train-----")
    print("X_train",len(X_train))
    print("y_train", len(y_train))
    for i,j in zip(X_train,y_train):
        print(i[1])
        print(j)
    print("-----test-----")
    print("X_train", len(X_test))
    print("y_train", len(y_test))
    for i,j in zip(X_test,y_test):
        print(i[1])
        print(j)


def data2list(X_train):
    # print(X[0][0])
    # print(X[0][1])
    #extract data to programs and hints
    programs_train = list()
    hints_train = list()
    for p in X_train:
        programs_train.append(p[0])
    for h in X_train:
        hints_train.append(h[1])

    return programs_train,hints_train

def transform2TaggedDocument(programs):

    programs_trainList=list()
    for program in programs:
        programs_trainList.append(nltk.word_tokenize(program))
    taggeddocument=list()
    for i in range(len(programs_trainList)):
        taggeddocument.append(gensim.models.doc2vec.TaggedDocument(programs_trainList[i],[i]))

    return taggeddocument,programs_trainList

def nltkTokenize(programsOrHints):

    programsOrHintsList=list()
    for i in programsOrHints:
        programsOrHintsList.append(nltk.word_tokenize(i))

    return programsOrHintsList


def recoverPredictedText(predictedX,predictedY):
    recoverdX=list()

    programList=list()
    for p in range(len(predictedX)):
        programList.append(predictedX[p][0])
    progranList=list(set(programList))  #delete duplication in program list
    for i in range(len(progranList)):
        program=progranList[i]
        hints=list()
        for j in range(len(predictedX)):
            if (progranList[i] == predictedX[j][0] and predictedY[j]==1):
                hints.append(predictedX[j][1])
        hints=list(set(hints))
        recoverdX.append([[program],hints])
    return recoverdX

def printOnePredictedTextInStringForm(recoverdX,index):

        #print in string form
        strProgram=''.join(str(p) for p in recoverdX[index][0])
        strHints=''.join(str(h)+str('\n') for h in recoverdX[index][1])
        #print(strProgram)
        #print(strHints)
        hintsDictionary = dict()
        for head in recoverdX[index][1]:
            if (head.find('main') != -1):
                head = head.strip()
                hintsDictionary[head[:head.find('\n')]]=list()
        for head in hintsDictionary.keys():
            for content in recoverdX[index][1]:
                if (content.find(head) != -1):
                    hintsDictionary[head].append(content[content.find('\n'):].strip())
        #print(hintsDictionary)

        print(strProgram)
        for head in hintsDictionary.keys():
            print(head)
            print(''.join(str(h)+str('\n') for h in hintsDictionary[head]))

def doc2vecModelInferNewData(test_X,programDoc2VecModel,hintsDoc2VecModel):
    encodedPrograms_test=list()
    encodedHints_test=list()
    #separate data to programs and hints
    programs_test, hints_test = data2list(test_X)
    #tokenize programs and hints
    programs_testList=nltkTokenize(programs_test)
    hints_testList=nltkTokenize(hints_test)

    #infer new text to fixed vector size
    for program in programs_testList:
        encodedPrograms_test.append(programDoc2VecModel.infer_vector(program))
    for hint in hints_testList:
        encodedHints_test.append(hintsDoc2VecModel.infer_vector(hint))

    # expand dimention to fit ConviD
    encodedPrograms_test = np.expand_dims(encodedPrograms_test, axis=2)
    encodedHints_test = np.expand_dims(encodedHints_test, axis=2)

    return encodedPrograms_test,encodedHints_test

def testAccuracy(predictedY,trueY):
    counter=0
    for i in range(len(predictedY)):
        if(predictedY[i]==trueY[i]):
            counter=counter+1
    acc=counter/len(predictedY)
    print("test accuracy:", acc)
    return acc








