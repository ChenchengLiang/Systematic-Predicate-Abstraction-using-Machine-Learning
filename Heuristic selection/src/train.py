
import os
import gensim

from src.Miscellaneous import pickleRead
from src.plot import plotHistory
from src.loadData import train
def main():
    print("Start")

    #benchmark='dillig'
    benchmark = 'trainData'
    curpath = os.path.abspath(os.curdir)
    parenDir = os.path.abspath(os.path.pardir)
    path = parenDir + '/' + benchmark + '/'
    print(path)


    #load Doc2Vec models
    #programDoc2VecModel=gensim.models.doc2vec.Doc2Vec.load(parenDir+'/models/programDoc2VecModel')
    #hintsDoc2VecModel=gensim.models.doc2vec.Doc2Vec.load(parenDir+'/models/hintsDoc2VecModel')


    #load features
    encodedPrograms_train = pickleRead('encodedPrograms_train')
    encodedPrograms_test = pickleRead('encodedPrograms_test')
    encodedHints_train = pickleRead('encodedHints_train')
    encodedHints_test = pickleRead('encodedHints_test')

    graphEncodedPrograms_train = pickleRead('graphEncodedPrograms_train')
    graphEncodedPrograms_test = pickleRead('graphEncodedPrograms_test')

    train_Y = pickleRead('train_Y')
    verify_Y = pickleRead('verify_Y')


    #train
    batch_size=int(encodedPrograms_train.shape[0]/100)
    epochs=100
    #history,model=train(encodedPrograms_train,encodedPrograms_test,encodedHints_train,encodedHints_test,train_Y, verify_Y,batch_size,epochs)
    history, model = train(encodedPrograms_train, encodedPrograms_test,graphEncodedPrograms_train,graphEncodedPrograms_test, encodedHints_train, encodedHints_test, train_Y,
                           verify_Y, batch_size, epochs)
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