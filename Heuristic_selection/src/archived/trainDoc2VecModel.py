
import os
import gensim
import nltk
nltk.download('punkt')

from loadData import readHornClausesAndHints_resplitTrainAndVerifyData
from Miscellaneous import data2list,transform2TaggedDocument,pickleRead

def trainDoc2VecModelfunction(program_dim=100,hint_dim=20):
    X_train = pickleRead('trainData_X')

    # extract programs and hints from dataset
    programs_train, hints_train,graphProgram_train,graphHint_train= data2list(X_train)
    programs_train=list(set(programs_train))


    # transform to TaggedDocument
    programs_trainTaggedDocument,programsMaxLength,programsAverageLength  =transform2TaggedDocument(programs_train)
    hints_trainTaggedDocument,hintsMaxLength,hintsAverageLength  = transform2TaggedDocument(hints_train)
    # print('programsMaxLength',programsMaxLength)
    # print('programsAverageLength',programsAverageLength)
    # print('hintsMaxLength',hintsMaxLength)
    # print('hintsAverageLength',hintsAverageLength)


    # create Doc2Vec model
    # parameters window=2
    programDoc2VecModel =gensim.models.doc2vec.Doc2Vec(
        vector_size=program_dim, min_count=0 ,window=programsAverageLength, epochs=50)
    hintsDoc2VecModel = gensim.models.doc2vec.Doc2Vec(
        vector_size=hint_dim, min_count=0, window=hintsMaxLength, epochs=50)

    # build vovabulary
    programDoc2VecModel.build_vocab(programs_trainTaggedDocument)
    hintsDoc2VecModel.build_vocab(hints_trainTaggedDocument)
    # train Doc2Vec model
    programDoc2VecModel.train(programs_trainTaggedDocument ,total_examples=programDoc2VecModel.corpus_count
                              ,epochs=programDoc2VecModel.epochs)
    hintsDoc2VecModel.train(hints_trainTaggedDocument ,total_examples=hintsDoc2VecModel.corpus_count
                            ,epochs=hintsDoc2VecModel.epochs)
    # save trained doc2vec models
    parenDir = os.path.abspath(os.path.pardir)
    programDoc2VecModel.save(parenDir + '/models/programDoc2VecModel')
    hintsDoc2VecModel.save(parenDir + '/models/hintsDoc2VecModel')
    return programDoc2VecModel ,hintsDoc2VecModel


def trainGraph2VecModelfunction(program_dim=100,hint_dim=20):
    X_train = pickleRead('trainData_X')
    # extract programs and hints from dataset
    programs_train, hints_train,graphProgram_train,graphHint_train= data2list(X_train)

    # transform to TaggedDocument
    programs_trainTaggedDocument,programsMaxLength,programsAverageLength  =transform2TaggedDocument(graphProgram_train)
    hints_trainTaggedDocument,hintsMaxLength,hintsAverageLength  = transform2TaggedDocument(graphHint_train)
    # print('programsMaxLength',programsMaxLength)
    # print('programsAverageLength',programsAverageLength)
    # print('hintsMaxLength',hintsMaxLength)
    # print('hintsAverageLength',hintsAverageLength)


    # create Doc2Vec model
    # parameters window=2
    programDoc2VecModel =gensim.models.doc2vec.Doc2Vec(
        vector_size=program_dim, min_count=0 ,window=programsAverageLength, epochs=50)
    hintsDoc2VecModel = gensim.models.doc2vec.Doc2Vec(
        vector_size=hint_dim, min_count=0, window=hintsMaxLength, epochs=50)

    # build vovabulary
    programDoc2VecModel.build_vocab(programs_trainTaggedDocument)
    hintsDoc2VecModel.build_vocab(hints_trainTaggedDocument)
    # train Doc2Vec model
    programDoc2VecModel.train(programs_trainTaggedDocument ,total_examples=programDoc2VecModel.corpus_count
                              ,epochs=programDoc2VecModel.epochs)
    hintsDoc2VecModel.train(hints_trainTaggedDocument ,total_examples=hintsDoc2VecModel.corpus_count
                            ,epochs=hintsDoc2VecModel.epochs)
    # save trained doc2vec models
    parenDir = os.path.abspath(os.path.pardir)
    programDoc2VecModel.save(parenDir + '/models/programGraph2VecModel')
    hintsDoc2VecModel.save(parenDir + '/models/hintsGraph2VecModel')
    return programDoc2VecModel ,hintsDoc2VecModel





def main():
    print("Start")
    #benchmark='dillig'
    benchmark = 'trainData'
    curpath = os.path.abspath(os.curdir)
    parenDir=os.path.abspath(os.path.pardir)
    path = parenDir + '/' + benchmark + '/'
    print(path)

    #transformOneFiletoFeatures(path)
    #train_X,train_Y=readHornClausesAndHints(path,'train',discardNegativeData=False)
    train_X,train_Y,verify_X,verify_Y=readHornClausesAndHints_resplitTrainAndVerifyData(path,'train',discardNegativeData=True)
    #train_X=train_X[0:40]   #cut training size for debug
    #train_Y = train_Y[0:40] #cut training size for debug

    #train and save Doc2Vec models
    trainProgramDoc2VecModel,trainHintsDoc2VecModel=trainDoc2VecModelfunction(train_X)


    trainProgramGraph2VecModel,trainHintsGraph2VecModel=trainGraph2VecModelfunction(train_X, program_dim=100, hint_dim=20)

    print('finished')




if __name__ == '__main__':
    main()