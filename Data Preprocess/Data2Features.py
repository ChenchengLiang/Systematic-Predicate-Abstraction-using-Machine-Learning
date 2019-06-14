import gensim
from loadData import transformDatatoFeatures_doc2vec,readHornClausesAndHints
import os
from sklearn.model_selection import train_test_split
from Miscellaneous import pickleWrite





def Doc2vecFeatureEngineering():
    benchmark = 'trainData'
    curpath = os.path.abspath(os.curdir)
    path = curpath + '/' + benchmark + '/'
    print(path)
    train_X, train_Y = readHornClausesAndHints(path, dataset='train', discardNegativeData=True)
    # train_X=train_X[0:10]   #cut training size for debug
    # train_Y = train_Y[0:10] #cut training size for debug


    # split data to training and verifiying sets
    train_X, verify_X, train_Y, verify_Y = train_test_split(train_X, train_Y, test_size=0.2, random_state=42)

    #load Doc2vec model
    programDoc2VecModel = gensim.models.doc2vec.Doc2Vec.load('models/programDoc2VecModel')
    hintsDoc2VecModel = gensim.models.doc2vec.Doc2Vec.load('models/hintsDoc2VecModel')
    transformDatatoFeatures_doc2vec(train_X, verify_X, programDoc2VecModel, hintsDoc2VecModel)

    pickleWrite(train_Y,'train_Y')
    pickleWrite(verify_Y, 'verify_Y')




def main():
    print("Start")

    Doc2vecFeatureEngineering()

    print('finished')











if __name__ == '__main__':
    main()