import nltk
import gensim
import numpy as np


def graph2vecModelInferNewData(test_X,programGraph2VecModel,hintsGraph2VecModel):

    graphEncodedPrograms=list()
    graphEncodedHints=list()
    #separate data to programs and hints
    programs, hints, graphs,grapHints= data2list(test_X)


    #infer new text to fixed vector size
    for graph in graphs:
        #graph is random walk list
        tempGraphList=list()
        for walk in graph:
            tempGraphList.append(programGraph2VecModel.infer_vector(walk))

        #aggregation
        tempVector=[0]*100
        for walk in tempGraphList:
            tempVector=tempVector+walk
        # print(tempGraphList[0])
        # print(tempGraphList[1])
        # print("Aggregated graph:")
        # print(tempVector)
        graphEncodedPrograms.append(tempVector)
    for graphHint in grapHints:
        tempGraphList=list()
        for walk in graphHint:
            tempGraphList.append(hintsGraph2VecModel.infer_vector(walk))
        tempVector=[0]*20
        #aggregation
        for walk in tempGraphList:
            tempVector=tempVector+walk
        graphEncodedHints.append(tempVector)


    # expand dimention to fit ConviD
    graphEncodedPrograms = np.expand_dims(graphEncodedPrograms, axis=2)
    graphEncodedHints = np.expand_dims(graphEncodedHints, axis=2)

    return graphEncodedPrograms,graphEncodedHints

def transform2TaggedDocument(programs):
    max=0
    average=0
    programs_trainList=list()
    for program in programs:
        programString=""
        #print(program)
        if isinstance(program,list):
            for walks in program:
                for walk in walks:
                    programString=programString+","+walk
            #print(programString)
            programs_trainList.append(nltk.word_tokenize(programString))
        else:
            programs_trainList.append(nltk.word_tokenize(program))
    taggeddocument=list()
    for i in range(len(programs_trainList)):
        #print("debug")
        #print(programs_trainList[i])
        taggeddocument.append(gensim.models.doc2vec.TaggedDocument(programs_trainList[i],[i]))
        average=average+len(taggeddocument[-1][0])
        if(max<len(taggeddocument[-1][0])):
            max=len(taggeddocument[-1][0])
    return taggeddocument,max,int(average/len(taggeddocument))

def nltkTokenize(programsOrHints):

    programsOrHintsList=list()
    for i in programsOrHints:
        programsOrHintsList.append(nltk.word_tokenize(i))

    return programsOrHintsList

def data2list(X_train):
    # print(X[0][0])
    # print(X[0][1])
    #extract data to programs and hints
    programs_train = list()
    hints_train = list()
    graphProgram_train = list()
    graphHint_train=list()
    for p in X_train:
        programs_train.append(p[0])
    for h in X_train:
        hints_train.append(h[1])
    for g in X_train:
        graphProgram_train.append(g[2])
    for gh in X_train:
        graphHint_train.append(gh[3])
    return programs_train,hints_train,graphProgram_train,graphHint_train

def doc2vecModelInferNewData(test_X,programDoc2VecModel,hintsDoc2VecModel):
    encodedPrograms=list()
    encodedHints=list()
    #separate data to programs and hints
    programs, hints, graphs,grapHints= data2list(test_X)
    uniquePrograms=list(set(programs))

    #tokenize programs and hints
    programsList=nltkTokenize(uniquePrograms)
    hintsList=nltkTokenize(hints)

    #create a directory to store infered programs
    programDirectory=dict()
    for i,program in enumerate(uniquePrograms,start=0):
        programDirectory[program]=programDoc2VecModel.infer_vector(programsList[i])
        #print('infer count',i)

    print(len(list(programDirectory.keys())),'unique programs')

    #infer new text to fixed vector size
    for program in programs:
        encodedPrograms.append(programDirectory[program])
    for hint in hintsList:
        encodedHints.append(hintsDoc2VecModel.infer_vector(hint))


    # expand dimention to fit ConviD
    encodedPrograms = np.expand_dims(encodedPrograms, axis=2)
    encodedHints = np.expand_dims(encodedHints, axis=2)


    return encodedPrograms,encodedHints
