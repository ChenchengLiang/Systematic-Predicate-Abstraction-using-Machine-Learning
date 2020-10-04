import nltk
nltk.download('punkt')
import gensim
import numpy as np
import pickle
import os,glob,shutil,gc
from pathlib import Path
from distutils.dir_util import copy_tree
import json



def add_JSON_field(fileName="",file_type=".layerHornGraph.JSON",old_field=[],new_field=[],new_field_content=[]):
    json_file = fileName + file_type
    json_obj = {}
    with open(json_file) as f:
        loaded_graph = json.load(f)
        for field in old_field:
            json_obj[field] = loaded_graph[field]
    # add more field
    with open(json_file) as f:
        loaded_graph = json.load(f)
        for field,content in zip(new_field,new_field_content):
            json_obj[field] = content
    # write json object to JSON file
    clear_file(json_file)
    with open(json_file, 'w') as f:
        json.dump(json_obj, f)

def copy_and_remove(src,dst):
    if os.path.isdir(src):
        hints_dir=dst+src[src.rfind("/"):]
        os.mkdir(hints_dir)
        copy_tree(src,hints_dir)
        shutil.rmtree(src)
    else:
        shutil.copy(src, dst)
        os.remove(src)

def remove_list_of_file(name):
    if os.path.exists(name):
        os.remove(name)
    if os.path.exists(name+".initialHints"):
        os.remove(name+".initialHints")
    if os.path.exists(name+".negativeHints"):
        os.remove(name+".negativeHints")
    if os.path.exists(name+".positiveHints"):
        os.remove(name+".positiveHints")
    if os.path.exists(name+"-auto.gv"):
        os.remove(name+"-auto.gv")
    if os.path.exists(name+".JSON"):
        os.remove(name+".JSON")
    if os.path.exists(name+".HornGraph"):
        os.remove(name+".HornGraph")
    if os.path.exists(name+".horn"):
        os.remove(name+".horn")
    if os.path.exists(name+".arguments"):
        os.remove(name+".arguments")
    if os.path.exists(name+".gv"):
        os.remove(name+".gv")


def clear_directory(name):
    if os.path.exists(name):
        shutil.rmtree(name)
        os.makedirs(name)
    else:
        os.makedirs(name)
def clear_file(name):
    if os.path.exists(name):
        os.remove(name)
        with open(name, 'w') as fp:
            pass
    else:
        with open(name, 'w') as fp:
            pass


def copy_train_data_from_src_to_dst(src,dst):
    arguments_file_list=glob.glob(src+"*.arguments")
    initial_hints_file_list=glob.glob(src+"*.initialHints")
    negative_hints_file_list = glob.glob(src + "*.negativeHints")
    positive_hints_file_list = glob.glob(src + "*.positiveHints")
    json_file_list = glob.glob(src + "*.JSON")
    original_file_list = glob.glob(src + "*.smt2")
    auto_gv_file_list = glob.glob(src + "*auto.gv")
    for arguments_file,initial_hints_file,negative_hints_file,positive_hints_file,json_file,original_file,auto_gv_file in zip(arguments_file_list,initial_hints_file_list,negative_hints_file_list,positive_hints_file_list,json_file_list,original_file_list,auto_gv_file_list):
        shutil.copy(arguments_file, dst)
        shutil.copy(initial_hints_file, dst)
        shutil.copy(negative_hints_file, dst)
        shutil.copy(positive_hints_file, dst)
        shutil.copy(json_file, dst)
        shutil.copy(original_file, dst)
        shutil.copy(auto_gv_file, dst)

def renameBenchmarkFiles():

    counter=0
    for txt_file in glob.iglob('/home/chencheng/Downloads/sv-benchmarks-master/c/*/*.c'):
        print(txt_file)
        if os.path.exists(txt_file + ".annot.c"):
            print("")
        else:
            shutil.copy2(txt_file, txt_file + ".annot.c")
            counter=counter+1
    print("Program counter:"+str(counter))

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

def printOnePredictedTextInStringForm(recoverdX,index,printProgram=False):

        #print program in string form
        if(printProgram == True):
            print('program in horn format:')
            strProgram=''.join(str(p) for p in recoverdX[index][0])
            print(strProgram)

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

        # print hints in string form
        for head in hintsDictionary.keys():
            print(head)
            print(''.join(str(h)+str('\n') for h in hintsDictionary[head]))

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
def testAccuracy(predictedY,trueY):
    counter=0
    for i in range(len(predictedY)):
        if(predictedY[i]==trueY[i]):
            counter=counter+1
    acc=counter/len(predictedY)
    print("test accuracy:", acc)
    return acc

def pickleWrite(content,name,path=""):
    parenDir = os.path.abspath(os.path.pardir)
    file=path+'../pickleData/'+name+'.txt'
    print('pickle write to '+file)
    with open(file,"wb") as fp :
        pickle.dump(content,fp)

def pickleRead(name,path=""):
    parenDir = os.path.abspath(os.path.pardir)
    file=path+'../pickleData/' + name + '.txt'
    print('pickle read '+file)
    with open(file,"rb") as fp :
        content=pickle.load(fp)
    return content

def printList(l):
    for i in l:
        print(i)

def sortHints(unsortedList):
    def sortSecond(val):
        return val[1]
    unsortedList.sort(key=sortSecond,reverse=True)
    #printList(unsortedList)
    return unsortedList

def rank_arguments_naive(arr):
    array = np.array(arr)
    temp = array.argsort()
    ranks = np.empty_like(temp)
    ranks[temp] = np.arange(len(array))
    return ranks

def replicate_files(directory,times):
    for file in glob.glob(directory+"*"):
        for i in range(1, times):
            fileName=file[file.rfind("/")+1:]
            shutil.copy(file,directory+str(i)+"-"+fileName)








