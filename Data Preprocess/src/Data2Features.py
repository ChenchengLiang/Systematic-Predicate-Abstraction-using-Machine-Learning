import gensim
from src.loadData import readHornClausesAndHints
import os
from sklearn.model_selection import train_test_split
from src.Miscellaneous import pickleWrite,doc2vecModelInferNewData



def transformDatatoFeatures_doc2vec(X_train,X_test,programDoc2VecModel,hintsDoc2VecModel):
    #create Doc2Vec model
    #programDoc2VecModel, hintsDoc2VecModel=trainDoc2VectModel(X_train)

    #infer/embedding programs and hints to vectors
    print("Doc2Vec begin")
    encodedPrograms_train,encodedHints_train=doc2vecModelInferNewData(X_train, programDoc2VecModel, hintsDoc2VecModel)
    encodedPrograms_test, encodedHints_test = doc2vecModelInferNewData(X_test, programDoc2VecModel,hintsDoc2VecModel)
    print("Doc2Vec end")
    print('write infered train and test data to files')
    pickleWrite(content=encodedPrograms_train,name='encodedPrograms_train')
    pickleWrite(content=encodedHints_train, name='encodedHints_train')
    pickleWrite(content=encodedPrograms_test, name='encodedPrograms_test')
    pickleWrite(content=encodedHints_test, name='encodedHints_test')

    return encodedPrograms_train,encodedPrograms_test,encodedHints_train,encodedHints_test


def Doc2vecFeatureEngineering():
    benchmark = 'trainData'
    curpath = os.path.abspath(os.curdir)
    parenDir = os.path.abspath(os.path.pardir)
    path = parenDir + '/' + benchmark + '/'
    print(path)
    train_X, train_Y = readHornClausesAndHints(path, dataset='train', discardNegativeData=True)
    # train_X=train_X[0:10]   #cut training size for debug
    # train_Y = train_Y[0:10] #cut training size for debug


    # split data to training and verifiying sets
    train_X, verify_X, train_Y, verify_Y = train_test_split(train_X, train_Y, test_size=0.2, random_state=42)

    #load Doc2vec model

    programDoc2VecModel = gensim.models.doc2vec.Doc2Vec.load(parenDir+'/models/programDoc2VecModel')
    hintsDoc2VecModel = gensim.models.doc2vec.Doc2Vec.load(parenDir+'/models/hintsDoc2VecModel')
    transformDatatoFeatures_doc2vec(train_X, verify_X, programDoc2VecModel, hintsDoc2VecModel)

    pickleWrite(train_Y,'train_Y')
    pickleWrite(verify_Y, 'verify_Y')




def main():
    print("Start")

    Doc2vecFeatureEngineering()

    print('finished')











if __name__ == '__main__':
    main()