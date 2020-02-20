import random
import glob
import os
import shutil
import sys
from graphProcessing import readGraphFromGraphvizFromTrainData,getGraphNode2vecWalks
from Miscellaneous import pickleWrite,pickleRead
import networkx as nx
class trainInputs:
    def __init__(self,graph,hornText,argumentID,argumentHead,argument,argumentScore):
        self.graph = graph
        self.hornText=hornText
        self.argumentHead = argumentHead
        self.argument=argument
        self.argumentScore = argumentScore
        self.argumentID=argumentID

class programInfo:
    def __init__(self,fileName,trainDataList):
        self.programName=fileName
        self.trainDataList=trainDataList


def readMultiplePrograms():
    path="../../trainData/"
    suffix = ".c"  # some file name include .horn
    print("horn file", len(sorted(glob.glob(path + '*'+suffix+'.horn'))))
    print("hints file", len(sorted(glob.glob(path + '*'+suffix+'.positiveHints'))))
    print("graph file", len(sorted(glob.glob(path + '*'+suffix+'.gv'))))
    programList=[]
    for fileHorn,fileGraph, fileArgument in zip(sorted(glob.glob(path + '*'+suffix+'.horn')),
                                                sorted(glob.glob(path + '*' + suffix + '.gv')),
                                                      sorted(glob.glob(path + '*'+suffix+'.arguments'))):
        fileName=fileHorn[:fileHorn.find(suffix+".horn")+len(suffix)]
        fileName=fileName[fileName.rindex("/")+1:]
        print(fileName)
        # read horn file
        print(fileHorn)
        f = open(fileHorn, "r")
        hornText = f.read()
        f.close()
        # read argument hints
        print(fileArgument)
        f = open(fileArgument, "r")
        arguments = f.read()
        f.close()
        # read horn graph
        print(fileGraph)
        graph = readGraphFromGraphvizFromTrainData(fileGraph, vitualize=False)
        programList.append(programInfo(fileName,readOneProgram(hornText,arguments,graph)))
    return programList

def readOneProgram(hornText,arguments,graph):
    #parse argument
    trainInputList=[]
    argumentLines=arguments.splitlines()
    for line in argumentLines:
        (ID,head,hint,score)=line.split(":")
        #print(ID,head,hint,score)
        trainInputList.append(trainInputs(graph,hornText,ID,head,hint,score))
    return trainInputList

def shuffleData(programList,trainDataSplitRate):
    #splite train and test data
    random.shuffle(programList)
    splitPoint = int(trainDataSplitRate * len(programList))
    trainData = programList[:splitPoint]
    testData = programList[splitPoint:]

    #write train and test data to file
    path = "../../trainData/"
    if (os.path.exists("../../testData")):
        shutil.rmtree("../../testData/")
        os.mkdir("../../testData")
    for pi in testData:
        fileName=pi.programName
        #print(fileName)
        if(os.path.exists("../../trainData/"+fileName+".arguments")):
            shutil.move("../../trainData/"+fileName+".arguments","../../testData/"+fileName+".arguments")
            shutil.move("../../trainData/" + fileName + ".gv", "../../testData/" + fileName + ".gv")
            shutil.move("../../trainData/" + fileName + ".hints.graphs", "../../testData/" + fileName + ".hints.graphs")
            shutil.move("../../trainData/" + fileName + ".horn", "../../testData/" + fileName + ".horn")
            shutil.move("../../trainData/" + fileName + ".HornGraph", "../../testData/" + fileName + ".HornGraph")
            shutil.move("../../trainData/" + fileName + ".initialHints", "../../testData/" + fileName + ".initialHints")
            shutil.move("../../trainData/" + fileName + ".negativeHints", "../../testData/" + fileName + ".negativeHints")
            shutil.move("../../trainData/" + fileName + ".positiveHints", "../../testData/" + fileName + ".positiveHints")
            shutil.move("../../trainData/" + fileName + ".smt2", "../../testData/" + fileName + ".smt2")
    pickleWrite(trainData,"argumentTrainData",path="../")
    pickleWrite(testData, "argumentTestData",path="../")
    return trainData,testData

def transformDataToTrainingVector(data):
    data_X=[]
    data_Y=[]
    for p in data:
        for oneData in p.trainDataList:
            data_X.append([oneData.graph,oneData.argumentHead,oneData.argument,oneData.hornText,p.programName,oneData.argumentID])
            data_Y.append(oneData.argumentScore)
    shuf = list(zip(data_X, data_Y))
    random.shuffle(shuf)
    train_X, train_Y = zip(*shuf)
    return train_X,train_Y

def main():
    programList=readMultiplePrograms()
    trainData,testData=shuffleData(programList, 0.8)
    trainData_X,trainData_Y=transformDataToTrainingVector(pickleRead("argumentTrainData",path="../"))
    testData_X,testData_Y=transformDataToTrainingVector(pickleRead("argumentTestData",path="../"))
    pickleWrite(trainData_X, "argumentTrainData_X", path="../")
    pickleWrite(trainData_Y, "argumentTrainData_Y", path="../")
    pickleWrite(testData_X, "argumentTestData_X", path="../")
    pickleWrite(testData_Y, "argumentTestData_Y", path="../")



main()