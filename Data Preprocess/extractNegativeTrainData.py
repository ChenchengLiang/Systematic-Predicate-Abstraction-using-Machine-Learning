import os
import glob
import subprocess
from os import popen
import time
from subprocess import Popen, PIPE
from subprocess import STDOUT, check_output
from threading import Timer
import threading
def hintstoDictionary(hints):
    hints = hints.replace('inv_', '')
    hintsDictionary = dict()
    for head in hints.splitlines():
        if (head.find('main') != -1):
            head=head[:head.find('/')] #delete identifier count for dictionary key alignment
            head = head.strip()
            hintsDictionary[head]=list()

    for head in hintsDictionary.keys():
        storeFlag = False
        for line in hints.splitlines():
            if (line.find('main') != -1 and storeFlag == True): #find next head
                break
            if (storeFlag == True):
                hintsDictionary[head].append(line.strip())
            if (line.find(head) != -1):
                storeFlag = True
    return hintsDictionary

def dictionarytoHints(hintsDictionary):
    hints=str()
    for head in hintsDictionary.keys():
        identifiers=0#recover identifier count
        for line in hintsDictionary[head]:
            if(line.find('10000')!=-1):
                identifiers=identifiers+1

        hints=hints+head+'/'+str(identifiers)+'\n'

        for line in hintsDictionary[head]:
            hints=hints+line+'\n'

    return hints



def getRedundantHints(hintsText,redundantHintsText):

    hintsDictionary = hintstoDictionary(hintsText)
    redundantHintsDictionary=hintstoDictionary(redundantHintsText)
    #print(redundantHintsDictionary)
    #print(redundantHintsDictionary.keys())
    for head in hintsDictionary.keys():
        if(head in redundantHintsDictionary.keys()):
            for line in hintsDictionary[head]:
                #print(head)
                #print(line)
                if(line in redundantHintsDictionary[head]):
                    redundantHintsDictionary[head].remove(line)


    redundantHintsText=dictionarytoHints(redundantHintsDictionary)




    return redundantHintsText
def extractNegativeTrainData(path, benchmark):
    for fileHints, fileRedundantHints in zip(sorted(glob.glob(path + '*.hints')),
                                                       sorted(glob.glob(path + '*.redundantHints'))):
        # read optimized hints
        print(fileHints)
        f = open(fileHints, "r")
        hintsText = f.read()
        f.close()
        hintsText = hintsText.replace('inv_', '')

        # read redundant hints
        print(fileRedundantHints)
        f = open(fileRedundantHints, "r")
        redundantHintsText = f.read()
        f.close()
        redundantHintsText = getRedundantHints(hintsText, redundantHintsText)
        fileName = fileHints[fileHints.find(benchmark) + len(benchmark) + 1:]
        fileName=fileName[:fileName.find('.hints')]
        filename=path+fileName+'.negativeHints'
        f=open(filename,"w+")
        f.write(redundantHintsText)
        f.close()
        print("Write to", filename)



def main():
    print("Start")


    filePath = '/home/lcc/Desktop/benchmarks/'
    abstractionOption = 'abstract:manual'

    benchmarkList = list()
    #benchmarkList.append('dillig')
    #benchmarkList.append('svcomp16/locks')
    #benchmarkList.append('svcomp16/loop-acceleration')
    #     benchmarkList.append('svcomp16/loop-invgen')
    #     benchmarkList.append('svcomp16/loop-lit')
    #     benchmarkList.append('svcomp16/loop-new')
    #     benchmarkList.append('svcomp16/loops')
    #     benchmarkList.append('svcomp16/ntdrivers-simplified')
    #     benchmarkList.append('svcomp16/seq-mthreaded')
    #     benchmarkList.append('svcomp16/ssh-simplified')
    #     benchmarkList.append('svcomp16/systemc')
    #     benchmarkList.append('VeriMAP_bench')
    #     benchmarkList.append('dillig')
    benchmarkList.append('llreve')
    for b in benchmarkList:
        curpath = os.path.abspath(os.curdir)
        path = curpath + '/' + b + '/'
        print(path)
        extractNegativeTrainData(path, b)



if __name__ == '__main__':
    main()