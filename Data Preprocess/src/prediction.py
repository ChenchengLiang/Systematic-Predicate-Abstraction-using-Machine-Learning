from src.Miscellaneous import data2list, recoverPredictedText,printOnePredictedTextInStringForm,\
    doc2vecModelInferNewData,testAccuracy,pickleWrite,pickleRead
from src.loadData import load_model,readHornClausesAndHints,predict_doc2vec
import gensim
import os
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
    test_X, test_Y = readHornClausesAndHints(parenDir + '/' + 'testData' + '/', 'test',discardNegativeData=False)
    #predict_tokenization(model,train_X,verify_X, test_Y,test_X)
    predict_doc2vec(model,programDoc2VecModel,hintsDoc2VecModel,test_X,test_Y)







    print("finished")





if __name__ == '__main__':
    main()