
import numpy as np
import matplotlib.pyplot as plt
plt.style.use("ggplot")
import keras as k
import os
from keras.preprocessing.text import text_to_word_sequence,Tokenizer,hashing_trick,one_hot
from keras.preprocessing.sequence import pad_sequences
from keras.models import Model,load_model
import glob
import random
import gensim
import nltk
nltk.download('punkt')
from collections import Counter

from keras.layers import Conv1D, Dense,Input,concatenate, Flatten
from src.Miscellaneous import data2list, recoverPredictedText,printOnePredictedTextInStringForm,\
    doc2vecModelInferNewData,testAccuracy,pickleWrite,pickleRead,printList,sortHints
from src.plot import plotHistory

#from trainDoc2VecModel import trainDoc2VectModel

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


def constructUnsplitedData(hornText,hintsText,negativeHintsText,discardNegativeData=True):
    # construct positive training data
    heads = list()
    hintsList = list()
    negativeList=list()
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
    if negativeHintsText:
        for line in negativeHintsText.splitlines():
            if (line.find('main') != -1):
                heads.append(line)
        # print(heads)
        for head in heads:
            storeFlag = False
            for line in negativeHintsText.splitlines():
                # print(line)
                if (line.find('main') != -1 and storeFlag == True):
                    break
                if (storeFlag == True):
                    negativeList.append([head, line])
                if (line.find(head) != -1):
                    storeFlag = True

    if (discardNegativeData==True and len(negativeList)-len(hintsList)>0):
        random.shuffle(negativeList)
        negativeList=negativeList[0:len(hintsList)]



    return [hornText, hintsList,negativeList]

def readHornClausesAndHints_resplitTrainAndVerifyData(path,dataset,discardNegativeData):
    trainDataSplitRate=0.8
    print("horn file", len(sorted(glob.glob(path + '*.horn'))))
    print("hints file", len(sorted(glob.glob(path + '*.hints'))))
    print("negativeHints file", len(sorted(glob.glob(path + '*.negativeHints'))))

    unsplitedData = list()
    for fileHorn, fileHints, fileNegativeHints in zip(sorted(glob.glob(path + '*.horn')),
                                                      sorted(glob.glob(path + '*.hints')),
                                                      sorted(glob.glob(path + '*.negativeHints'))):
        # readp program
        print(fileHorn)
        f = open(fileHorn, "r")
        hornText = f.read()
        f.close()

        # read optimized hints
        print(fileHints)
        f = open(fileHints, "r")
        hintsText = f.read()
        f.close()
        hintsText = hintsText.replace('inv_', '')

        # read redundant hints
        print(fileNegativeHints)
        f = open(fileNegativeHints, "r")
        negativeHintsText = f.read()
        f.close()

        unsplitedData.append(constructUnsplitedData(hornText, hintsText, negativeHintsText, discardNegativeData))
        # print(unsplitedData[-1][0])
        # print(unsplitedData[-1][1])
        # print(unsplitedData[-1][2])

    print(len(glob.glob(path + '*.horn')), "programs' information read")

    #print("unsplitedData length", len(unsplitedData))
    random.shuffle(unsplitedData)
    splitPoint = int(trainDataSplitRate * len(unsplitedData))
    trainData = unsplitedData[:splitPoint]
    verifyData = unsplitedData[splitPoint:]


    trainData_X = list()
    trainData_Y = list()
    verifyData_X = list()
    verifyData_Y = list()

    for program in trainData:
        for positiveHint in program[1]:
            trainData_X.append([program[0], positiveHint[0] + '\n' + positiveHint[1]])
            trainData_Y.append(1)
        for negativeHint in program[2]:
            trainData_X.append([program[0], negativeHint[0] + '\n' + negativeHint[1]])
            trainData_Y.append(0)
    for program in verifyData:
        for positiveHint in program[1]:
            verifyData_X.append([program[0], positiveHint[0] + '\n' + positiveHint[1]])
            verifyData_Y.append(1)
        for negativeHint in program[2]:
            verifyData_X.append([program[0], negativeHint[0] + '\n' + negativeHint[1]])
            verifyData_Y.append(0)

    if(len(trainData_X)>0):
        shuf = list(zip(trainData_X, trainData_Y))
        random.shuffle(shuf)
        trainData_X, trainData_Y = zip(*shuf)
    if (len(verifyData_X)>0):
        shuf1 = list(zip(verifyData_X, verifyData_Y))
        random.shuffle(shuf1)
        verifyData_X, verifyData_Y = zip(*shuf1)


    print("trainData_X",len(trainData_X))
    print("trainData_Y",len(trainData_Y))
    print("verifyData_X",len(verifyData_X))
    print("verifyData_Y",len(verifyData_Y))
    pickleWrite(trainData_X,'trainData_X')
    pickleWrite(trainData_Y, 'trainData_Y')
    pickleWrite(verifyData_X, 'verifyData_X')
    pickleWrite(verifyData_Y, 'verifyData_Y')
    encodedPrograms_train = pickleRead('encodedPrograms_train')


    return trainData_X,trainData_Y,verifyData_X,verifyData_Y


def readHornClausesAndHints(path,dataset,discardNegativeData):
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


    for fileHorn,fileHints,fileNegativeHints in zip(sorted(glob.glob(path+'*.horn')),sorted(glob.glob(path+'*.hints')),sorted(glob.glob(path+'*.negativeHints'))):
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
        print(fileNegativeHints)
        f = open(fileNegativeHints, "r")
        negativeHintsText = f.read()
        f.close()
        #redundantHintsText=getRedundantHints(hintsText, redundantHintsText)
        #print(redundantHintsText)
        #wordSequence = text_to_word_sequence(redundantHintsText, filters=redundantHintFilter, split=' ')
        #RedundantHintVocab.update(wordSequence)


        # construct positive training data
        trainDataPositive.append(constructTrainingData(hornText, hintsText))
        # construct negative training data
        trainDataNegative.append(constructTrainingData(hornText, negativeHintsText))
    print(len(glob.glob(path+'*.horn')),"programs' information read")


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

    if(dataset=='train' and discardNegativeData==True):
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
    print("train_X_negative shape", len(train_X_negative), len(train_X_negative[0]))
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


def transformDatatoFeatures_tokennizer(X_train,X_test):
    programs_train, programs_test, hints_train, hints_test=data2list(X_train,X_test)

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


def buildTrainModel(encodedPrograms,encodedHints):

    # define two sets of inputs
    inputA = Input(shape=(encodedPrograms.shape[1],1))
    inputB = Input(shape=(encodedHints.shape[1],1))

    # the first branch operates on the first input
    #x = Dense(8, activation="relu")(inputA)
    x = Conv1D(filters=50,kernel_size=5, activation="relu")(inputA)
    x = Conv1D(filters=25, kernel_size=5, activation="relu")(x)
    x = Conv1D(filters=10, kernel_size=5, activation="relu")(x)
    x = Flatten()(x)
    #x = Dense(10, activation="relu")(x)
    x = Model(inputs=inputA, outputs=x)

    # the second branch opreates on the second input
    #y = Dense(64, activation="relu")(inputB)
    y = Conv1D(filters=20,kernel_size=5, activation="relu")(inputB)
    y = Conv1D(filters=15, kernel_size=5, activation="relu")(y)
    y = Conv1D(filters=10, kernel_size=5, activation="relu")(y)
    #y = Dense(32, activation="relu")(y)
    y = Flatten()(y)
    #y = Dense(10, activation="relu")(y)
    y = Model(inputs=inputB, outputs=y)

    # combine the output of the two branches
    combined = concatenate([x.output, y.output])

    # apply a FC layer and then a regression prediction on the
    # combined outputs
    z = Dense(64, activation="relu",\
              #activity_regularizer=k.regularizers.l1(0.01),\
              #kernel_regularizer=k.regularizers.l2(0.01)\
              )(combined)
    z = Dense(32, activation="relu")(z)
    z = Dense(16, activation="relu")(z)

    '''
    z = Dense(2, activation="softmax",\
              #activity_regularizer=k.regularizers.l1(0.0001)\
              )(z)
    '''

    z = Dense(1, activation="sigmoid", \
              # activity_regularizer=k.regularizers.l1(0.0001)\
              )(z)

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
    model=buildTrainModel(encodedPrograms_train, encodedHints_train)
    model.compile(optimizer=k.optimizers.RMSprop(),
                  #optimizer=k.optimizers.Adam(),
                  # optimizer=k.optimizers.SGD(),
                  loss='binary_crossentropy',
                   metrics=['accuracy'])
    model.summary()
    y_train = np.expand_dims(y_train, axis=2)
    y_test = np.expand_dims(y_test, axis=2)
    print('encodedPrograms_train',np.array(encodedPrograms_train).shape)
    print('encodedHints_train',np.array(encodedHints_train).shape)
    print('y_train',np.array(y_train).shape)
    #y_train=k.utils.to_categorical(y_train,num_classes=2)
    #y_test = k.utils.to_categorical(y_test, num_classes=2)
    history = model.fit([encodedPrograms_train, encodedHints_train],y_train,
                        batch_size=batch_size, epochs=epochs,
                        #callbacks=callbacks,
                        validation_data=([encodedPrograms_test, encodedHints_test], y_test),
                        verbose=1)
    pickleWrite(history,'history')
    parenDir = os.path.abspath(os.path.pardir)
    model.save(parenDir+'/models/my_model.h5')
    return history,model


def predict_doc2vec(model,programDoc2VecModel,hintsDoc2VecModel,test_X,test_Y,printExample=True):
    #embedding test data for prediction
    encodedPrograms_test,encodedHints_test = doc2vecModelInferNewData(test_X, programDoc2VecModel, hintsDoc2VecModel)

    #predict
    predicted_y = model.predict([encodedPrograms_test, encodedHints_test])
    predicted_y[predicted_y > 0.5] = 1  # convert decimals to 0 and 1
    predicted_y[predicted_y <= 0.5] = 0  # convert decimals to 0 and 1

    acc=testAccuracy(predicted_y,test_Y)


    y_test = np.expand_dims(test_Y, axis=2)
    print('predicted_y shape:', np.array(predicted_y).shape)
    print('y_test shape:', np.array(y_test).shape)
    print('encodedPrograms_test', encodedPrograms_test.shape)
    print('encodedHints_test', encodedHints_test.shape)

    # print predicted y true y
    print('predicted y vs. true y:')
    print(np.stack((np.array(predicted_y).T,np.array(y_test).T)))
    PredixtedHints = recoverPredictedText(test_X, predicted_y)
    testHints = recoverPredictedText(test_X, y_test)
    if(printExample==True):
        # print predicted hints and true hints

        print('predicted hints vs. true hints:')
        printOnePredictedTextInStringForm(PredixtedHints, index=0,printProgram=True)
        print('--------------True hints---------')
        printOnePredictedTextInStringForm(testHints, 0,False)
        print('--------------------------------------')
        printOnePredictedTextInStringForm(PredixtedHints, 1,True)
        print('-------------True hints-------------')
        printOnePredictedTextInStringForm(testHints, 1,False)


    return PredixtedHints



def predict_tokenization(model,train_X,verify_X,y_test,X_test):
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


def main():
    print("Start")

    #benchmark='dillig'
    benchmark = 'testData'
    curpath = os.path.abspath(os.curdir)
    parenDir = os.path.abspath(os.path.pardir)
    path = parenDir + '/' + benchmark + '/'
    print(path)

    #transformOneFiletoFeatures(path)
    train_X,train_Y,verify_X,verify_Y=readHornClausesAndHints_resplitTrainAndVerifyData(path,dataset='train',discardNegativeData=True)
    #train_X=train_X[0:40]   #cut training size for debug
    #train_Y = train_Y[0:40] #cut training size for debug

    # # train and save Doc2Vec models
    # trainProgramDoc2VecModel,trainHintsDoc2VecModel = trainDoc2VecModelfunction(train_X)
    # trainProgramDoc2VecModel.save(parenDir + '/models/programDoc2VecModel')
    # trainHintsDoc2VecModel.save(parenDir + '/models/hintsDoc2VecModel')

    #load Doc2Vec models
    programDoc2VecModel=gensim.models.doc2vec.Doc2Vec.load(parenDir+'/models/programDoc2VecModel')
    hintsDoc2VecModel=gensim.models.doc2vec.Doc2Vec.load(parenDir+'/models/hintsDoc2VecModel')

    #split data to training and verifiying sets
    #train_X, verify_X, train_Y, verify_Y = train_test_split(train_X, train_Y, test_size=0.2, random_state=42)

    # checkSplitData(X_train, X_test, y_train, y_test)

    #feature engineering
    #encodedPrograms_train,encodedPrograms_test,encodedHints_train,encodedHints_test=transformDatatoFeatures_tokennizer(train_X,verify_X)
    # encodedPrograms_train,encodedPrograms_test,encodedHints_train,encodedHints_test,\
    #     =transformDatatoFeatures_doc2vec(train_X, verify_X,programDoc2VecModel,hintsDoc2VecModel)
    from src.Data2Features import Doc2vecFeatureEngineering
    Doc2vecFeatureEngineering()


    #load features
    encodedPrograms_train = pickleRead('encodedPrograms_train')
    encodedPrograms_test = pickleRead('encodedPrograms_test')
    encodedHints_train = pickleRead('encodedHints_train')
    encodedHints_test = pickleRead('encodedHints_test')
    train_Y = pickleRead('train_Y')
    verify_Y = pickleRead('verify_Y')


    #train
    batch_size=int(encodedPrograms_train.shape[0]/100)
    epochs=100
    history,model=train(encodedPrograms_train,encodedPrograms_test,encodedHints_train,encodedHints_test,train_Y, verify_Y,batch_size,epochs)
    plotHistory(history)

    # #load models instead of training
    # history=pickleRead('history')
    # plotHistory(history)
    # model=load_model(parenDir+'/models/my_model.h5')
    # model.summary()

    #read test data
    # test_X, test_Y = readHornClausesAndHints(parenDir + '/' + 'testData' + '/', 'test',discardNegativeData=False)
    # #predict_tokenization(model,train_X,verify_X, test_Y,test_X)
    # predict_doc2vec(model,programDoc2VecModel,hintsDoc2VecModel,test_X,test_Y)
    #
    #
    #


if __name__ == '__main__':
    main()
