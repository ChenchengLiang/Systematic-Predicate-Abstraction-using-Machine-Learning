
import numpy as np
import matplotlib.pyplot as plt
plt.style.use("ggplot")
import pyltr
import keras as k
import os
from keras.preprocessing.text import text_to_word_sequence,Tokenizer,hashing_trick,one_hot
from keras.preprocessing.sequence import pad_sequences
from keras.models import Model,load_model
import glob
import random
import h5py
import subprocess
from os import popen
import time
from subprocess import Popen, PIPE
from collections import Counter

from keras.layers import Conv1D,Concatenate,Dense,Input,concatenate,Embedding,Add,Flatten, Activation, Reshape
from sklearn.model_selection import train_test_split

from Miscellaneous import checkSplitData

from extractNegativeTrainData import getRedundantHints
from plot import plotHistory

def read_program():
    vocab = list()
    vocab_one_hot = list()
    vocab_hash = list()
    filter = '\n'
    for file in glob.glob('/root/eclipse-workspace/Ranking/src/C/*.c'):
        print(file)
        f = open(file, "r")
        text = f.read()

        print(text)

        vocab.append(text_to_word_sequence(text, filters=filter, split=' '))
        print(vocab[-1])

        words = set(vocab[-1])
        vocab_size = len(words)
        print("vocab_size = ", vocab_size)

        # One hot encoding
        print('One-hot encoding:')
        vocab_one_hot.append(one_hot(text, round(vocab_size * 1.3), filters=filter))
        print(vocab_one_hot[-1])

        # Hash encoding
        print('Hash encoding:')
        vocab_hash.append(hashing_trick(text, round(vocab_size * 1.3), hash_function='md5', filters=filter))
        print(vocab_hash[-1])

        print('--------------------------')



def constructTrainingData(hornText,hintsText):
    # construct positive training data
    heads = list()
    hintsList = list()
    if hintsText:
        for line in hintsText.splitlines():
            if (line.find('main') != -1):
                heads.append(line)
        # print(heads)
        for head in heads:
            storeFlag = False
            for line in hintsText.splitlines():
                # print(line)
                if (line.find('main') != -1 and storeFlag == True):
                    break
                if (storeFlag == True):
                    hintsList.append([head, line])
                if (line.find(head) != -1):
                    storeFlag = True
        #print(hintsList)
    return [hornText, hintsList]

def readHornClausesAndHints(path,dataset):
    hornVocab = Counter()
    hintVocab = Counter()
    RedundantHintVocab = Counter()
    hornFilter = '\n,().'
    hintFilter = '\n,().'
    redundantHintFilter = '\n,().'

    trainDataPositive=list()
    trainDataNegative = list()

    print("horn file",len(sorted(glob.glob(path+'*.horn'))))
    print("hints file", len(sorted(glob.glob(path + '*.hints'))))
    print("negativeHints file", len(sorted(glob.glob(path + '*.negativeHints'))))

    for fileHorn,fileHints,fileRedundantHints in zip(sorted(glob.glob(path+'*.horn')),sorted(glob.glob(path+'*.hints')),sorted(glob.glob(path+'*.negativeHints'))):
        #readp program
        print(fileHorn)
        f = open(fileHorn, "r")
        hornText = f.read()
        f.close()
        #print(text)
        #wordSequence = text_to_word_sequence(hornText, filters=hornFilter, split=' ')
        #hornVocab.update(wordSequence)

        #read optimized hints
        print(fileHints)
        f = open(fileHints, "r")
        hintsText = f.read()
        f.close()
        hintsText=hintsText.replace('inv_', '')
        #print(hintsText)
        #wordSequence = text_to_word_sequence(hintsText, filters=hintFilter, split=' ')
        #hintVocab.update(wordSequence)

        # read redundant hints
        print(fileRedundantHints)
        f = open(fileRedundantHints, "r")
        redundantHintsText = f.read()
        f.close()
        #redundantHintsText=getRedundantHints(hintsText, redundantHintsText)
        #print(redundantHintsText)
        #wordSequence = text_to_word_sequence(redundantHintsText, filters=redundantHintFilter, split=' ')
        #RedundantHintVocab.update(wordSequence)

        # construct positive training data
        trainDataPositive.append(constructTrainingData(hornText, hintsText))
        # construct negative training data
        trainDataNegative.append(constructTrainingData(hornText, redundantHintsText))
    print(len(glob.glob(path+'*.horn')),"programs' information read")
    #print(hornVocab)
    #print(hintVocab)

    #read negative and positive data
    train_X_positive = list()
    train_X_negative = list()
    train_Y_positive = list()
    train_Y_negative = list()
    for program in trainDataPositive:
        #print(program[0])
        #print(program[1])
        for h in program[1]:
            #print(h)
            #train_X_positive.append(program[0] + '\n' + h[0] + '\n' + h[1])
            train_X_positive.append([program[0], h[0] + '\n' + h[1]])
            train_Y_positive.append(1)
    #print(trainDataProgramWise[0][0])
    #print(trainDataProgramWise[0][1][0])

    for program in trainDataNegative:
        for h in program[1]:
            #train_X_negative.append(program[0] + '\n' + h[0] + '\n' + h[1])
            train_X_negative.append([program[0], h[0] + '\n' + h[1]])
            train_Y_negative.append(0)


    print("-----------------")

    if(dataset=='train'):
        #cut nagative data size for unbalanced data
        discardNegativeData=len(train_X_negative)-len(train_X_positive)
        print("Discard",discardNegativeData,"row of negative data from",len(train_X_negative))
        negativeData=list(zip(train_X_negative,train_Y_negative))
        random.shuffle(negativeData)
        for i in range(discardNegativeData):
            negativeData.pop()
        train_X_negative, train_Y_negative=zip(*negativeData)
        train_X_negative=list(train_X_negative)
        train_Y_negative=list(train_Y_negative)

    #merge positive and negative data togather
    train_X = train_X_positive + train_X_negative
    train_Y = train_Y_positive + train_Y_negative

    #shuffle for merged data
    shuf = list(zip(train_X, train_Y))
    random.shuffle(shuf)
    train_X, train_Y = zip(*shuf)

#programing embeded system
    #minimizing input


    #print a example and shape
    # index=10
    # print(train_X[index][0])
    # print(train_X[index][1])
    # print("relevance:",train_Y[index])
    #
    #print("train_X_positive shape", np.array(train_X_positive).shape)
    print("train_X_positive shape", len(train_X_positive),len(train_X_positive[0]))
    print("train_Y_positive shape", np.array(train_Y_positive).shape)
    #print("train_X_negative shape", np.array(train_X_negative).shape)
    print("train_X_positive shape", len(train_X_negative), len(train_X_negative[0]))
    print("train_Y_negative shape", np.array(train_Y_negative).shape)
#    print("train_X shape", np.array(train_X).shape)
    print("train_X shape", len(train_X),len(train_X[0]))
    print("train_Y shape", np.array(train_Y).shape)

    return train_X,train_Y
def transformOneDatatoFeatures_bagOfWord(path):
    # define vocab
    vocab = Counter()

    fileHorn=glob.glob(path+'*.horn')[0]
    print(fileHorn)
    f = open(fileHorn, "r")
    text = f.read()
    f.close()
    print(text)
    filter = '\n,().'
    wordSequence= text_to_word_sequence(text, filters=filter, split=' ')
    print(wordSequence)
    vocab.update(wordSequence)
    print(vocab)

def getWordSequence():
    print()

def transformDatatoFeatures_tokennizer(X_train,X_test):
    #print(X[0][0])
    #print(X[0][1])
    programs_train=list()
    hints_train=list()
    programs_test = list()
    hints_test = list()
    for p in X_train:
        programs_train.append(p[0])
    for h in X_train:
        hints_train.append(h[1])

    for p in X_test:
        programs_test.append(p[0])
    for h in X_test:
        hints_test.append(h[1])

    print("-----program tokenization-----")

    tProgram=Tokenizer(lower=False,char_level=False)
    tProgram.fit_on_texts(programs_train+programs_test)  #build vocabulary
    print('word_counts:',tProgram.word_counts)
    print('document_count',tProgram.document_count)
    print('word_index',tProgram.word_index)
    print('unique tokens', len(tProgram.word_index))
    print('word_docs',tProgram.word_docs)

    encodedPrograms = tProgram.texts_to_sequences(programs_train + programs_test)  # text to integer
    encodedPrograms = pad_sequences(encodedPrograms, padding='post')  # Padding  maxlen=2
    encodedPrograms_train=encodedPrograms[:len(programs_train)] #separate train and test
    encodedPrograms_test = encodedPrograms[len(programs_train):] #separate train and test
    tP =encodedPrograms_train

    encodedPrograms_train = np.array(encodedPrograms_train)  # transform to numpy array
    print("encodedPrograms_train", encodedPrograms_train.shape)
    encodedPrograms_test = np.array(encodedPrograms_test)  # transform to numpy array
    print("encodedPrograms_test", encodedPrograms_test.shape)



    print("-----Hints tokenization-----")

    tHint=Tokenizer(lower=False,char_level=False)
    tHint.fit_on_texts(hints_train+hints_test) #build vocabulary
    print('word_counts:',tHint.word_counts)
    print('document_count',tHint.document_count)
    print('word_index',tHint.word_index)
    print('unique tokens', len(tHint.word_index))
    print('word_docs',tHint.word_docs)


    encodedHints = tHint.texts_to_sequences(hints_train + hints_test)  # text to integer
    encodedHints = pad_sequences(encodedHints, padding='post')  # Padding  maxlen=2
    encodedHints_train=encodedHints[:len(hints_train)] #separate train and test
    encodedHints_test = encodedHints[len(hints_train):] #separate train and test
    tH=encodedHints_train


    encodedHints_train = np.array(encodedHints_train)  # transform to numpy array
    print("encodedHints_train", encodedHints_train.shape)
    encodedHints_test = np.array(encodedHints_test)  # transform to numpy array
    print("encodedHints_test", encodedHints_test.shape)

    # #check if train and test is properly separated
    # for i in range(len(hints_test)):
    #     # print(tHint.texts_to_sequences(hints_train + hints_test)[i])
    #     # print(tHint.texts_to_sequences(hints_train)[i])
    #     print(tHint.texts_to_sequences(hints_train + hints_test)[len(hints_train)+i])
    #     print(tHint.texts_to_sequences(hints_test)[i])
    # for i in range(len(programs_test)):
    #     # print(tHint.texts_to_sequences(hints_train + hints_test)[i])
    #     # print(tHint.texts_to_sequences(hints_train)[i])
    #     print(tHint.texts_to_sequences(programs_train + programs_test)[len(programs_test)+i])
    #     print(tHint.texts_to_sequences(programs_test)[i])

    #expand dimention to fit ConviD
    encodedPrograms_train = np.expand_dims(encodedPrograms_train, axis=2)
    encodedPrograms_test = np.expand_dims(encodedPrograms_test, axis=2)
    encodedHints_train = np.expand_dims(encodedHints_train, axis=2)
    encodedHints_test = np.expand_dims(encodedHints_test, axis=2)
    return encodedPrograms_train,encodedPrograms_test,encodedHints_train,encodedHints_test




    #bag of words
    # tokenizer = Tokenizer(filters='',split=' ',lower=False,char_level=True)
    # tokenizer.fit_on_texts(X[0]+X[1])
    # sequences_train = tokenizer.texts_to_sequences(X[0])
    # print(sequences_train)
    # word_index = tokenizer.word_index
    # print('Found %s unique tokens.' % len(word_index))
    #
    # return sequences_train


def trainModel(encodedPrograms,encodedHints):


    # define two sets of inputs
    inputA = Input(shape=(encodedPrograms.shape[1],1))
    inputB = Input(shape=(encodedHints.shape[1],1))

    # the first branch operates on the first input
    #x = Dense(8, activation="relu")(inputA)
    x = Conv1D(filters=10,kernel_size=10, activation="relu")(inputA)
    x = Flatten()(x)
    x = Dense(4, activation="relu")(x)
    x = Model(inputs=inputA, outputs=x)

    # the second branch opreates on the second input
    #y = Dense(64, activation="relu")(inputB)
    y = Conv1D(filters=10,kernel_size=5, activation="relu")(inputB)
    #y = Dense(32, activation="relu")(y)
    y = Flatten()(y)
    y = Dense(4, activation="relu")(y)
    y = Model(inputs=inputB, outputs=y)

    # combine the output of the two branches
    combined = concatenate([x.output, y.output])

    # apply a FC layer and then a regression prediction on the
    # combined outputs
    z = Dense(2, activation="relu")(combined)
    z = Dense(1, activation="sigmoid")(z)

    # our model will accept the inputs of the two branches and
    # then output a single value
    model = Model(inputs=[x.input, y.input], outputs=z)

    '''
    input1 = Input(shape=(None,encodedPrograms.shape[1]))
    x1 = Conv1D(filters=10,kernel_size=5, activation='relu',data_format='channels_last')(input1)
    input2 = Input(shape=(None,encodedHints.shape[1]))
    x2 = Conv1D(filters=10,kernel_size=5, activation='relu',data_format='channels_last')(input2)
    # equivalent to added = keras.layers.add([x1, x2])
    added = Add()([x1, x2])

    out = Dense(10)(added)
    model = Model(inputs=[input1, input2], outputs=out)
'''
    return model

def train(encodedPrograms_train,encodedPrograms_test,encodedHints_train,encodedHints_test,y_train, y_test,batch_size,epochs):
    model=trainModel(encodedPrograms_train, encodedHints_train)
    model.compile(optimizer=k.optimizers.Adam(), loss='binary_crossentropy',
                   metrics=['accuracy'])
    model.summary()
    y_train = np.expand_dims(y_train, axis=2)
    y_test = np.expand_dims(y_test, axis=2)
    print('encodedPrograms_train',np.array(encodedPrograms_train).shape)
    print('encodedHints_train',np.array(encodedHints_train).shape)
    print('y_train',np.array(y_train).shape)
    history = model.fit([encodedPrograms_train, encodedHints_train],y_train,
                        batch_size=batch_size, epochs=epochs,
                        #callbacks=callbacks,
                        validation_data=([encodedPrograms_test, encodedHints_test], y_test),
                        verbose=1)

    model.save('models/my_model.h5')
    return history,model

def predict(model,train_X,verify_X,y_test,X_test):
        encodedPrograms_train, encodedPrograms_test, encodedHints_train, encodedHints_test = transformDatatoFeatures_tokennizer(
        train_X+verify_X, X_test)

        predicted_y=model.predict([encodedPrograms_test,encodedHints_test]) #predict
        predicted_y[predicted_y>0.5] = 1       #convert decimals to 0 and 1
        predicted_y[predicted_y <= 0.5] = 0    #convert decimals to 0 and 1

        y_test = np.expand_dims(y_test, axis=2)
        print('predicted_y shape:',np.array(predicted_y).shape)
        print('y_test shape:', np.array(y_test).shape)
        print('encodedPrograms_test',encodedPrograms_test.shape)
        print('encodedHints_test',encodedHints_test.shape)

        # print predicted y true y
        print('predicted y vs. true y:')
        print(np.stack((np.array(predicted_y).T, np.array(y_test).T)))

        #print predicted hints true hints
        PredixtedHints=recoverPredictedText(X_test, predicted_y)
        testHints = recoverPredictedText(X_test, y_test)
        print('predicted hints vs. true hints:')
        printOnePredictedTextInStringForm(PredixtedHints, 0)
        printOnePredictedTextInStringForm(testHints, 0)
        return PredixtedHints

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
            #print(head)
            print(head+'\n'+''.join(str(h)+str('\n') for h in hintsDictionary[head]))








def main():
    print("Start")

    #benchmark='dillig'
    benchmark = 'trainData'
    curpath = os.path.abspath(os.curdir)
    path = curpath + '/' + benchmark + '/'
    print(path)

    #transformOneFiletoFeatures(path)
    train_X,train_Y=readHornClausesAndHints(path,'train')

    #train_X=train_X[0:40]   #cut training size for debug
    #train_Y = train_Y[0:40] #cut training size for debug
    train_X, verify_X, train_Y, verify_Y = train_test_split(train_X, train_Y, test_size=0.2, random_state=42)

    # checkSplitData(X_train, X_test, y_train, y_test)

    encodedPrograms_train,encodedPrograms_test,encodedHints_train,encodedHints_test=transformDatatoFeatures_tokennizer(train_X,verify_X)


    batch_size=int(encodedPrograms_train.shape[0]/100)
    epochs=100
    # #expand dimention to fit ConviD
    # encodedPrograms_train = np.expand_dims(encodedPrograms_train, axis=2)
    # encodedPrograms_test = np.expand_dims(encodedPrograms_test, axis=2)
    # encodedHints_train = np.expand_dims(encodedHints_train, axis=2)
    # encodedHints_test = np.expand_dims(encodedHints_test, axis=2)


    history,model=train(encodedPrograms_train,encodedPrograms_test,encodedHints_train,encodedHints_test,train_Y, verify_Y,batch_size,epochs)
    #model=load_model('models/my_model.h5')


    #plotHistory(history)
    test_X, test_Y = readHornClausesAndHints(curpath + '/' + 'testData' + '/', 'test')
    predict(model,train_X,verify_X, test_Y,test_X)







if __name__ == '__main__':
    main()