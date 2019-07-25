import os
import glob
import subprocess
from os import popen
import time
from subprocess import Popen, PIPE
from subprocess import STDOUT, check_output
from threading import Timer
import threading

def extractRedundantHintsFromOneProgram(filePath, benchmark, fileName, abstractionOption):
    command = "/home/chencheng/Downloads/eldarica-master-unmodified/./eld -" + abstractionOption + " -p "
    run = command + filePath + benchmark + '/' + fileName
    print("command:", run)
    eld = subprocess.Popen(run, shell=True, stdout=subprocess.PIPE)
    stdout = eld.communicate()
    lines=stdout[0].decode("utf-8").rstrip("\n")
    parenDir = os.path.abspath(os.path.pardir)
    filename = parenDir + '/' + benchmark + '/' + fileName + ".redundantHints"
    f = open(filename, "w+")

    beginFlag=False
    printBegin = False
    for line in lines.splitlines():
        if (line.find('After simplification')!=-1):
            beginFlag=True
        if printBegin == True:
            f.write(line + "\n")
            #print(line)
        if (line.find('Verification hints') !=-1 and beginFlag==True):
            printBegin=True
            #print("DEBUG")
    f.close()

    print("Write to", filename)

def extractRedundantHintsFromMultipleProgram(filePath, benchmark, abstractionOption):
    programCount = 1

    for file in sorted(glob.glob('/home/chencheng/Desktop/benchmarks/' + benchmark + '/*.annot.c')):
        # print(file)
        fileName = file[file.find(benchmark) + len(benchmark) + 1:]
        parenDir = os.path.abspath(os.path.pardir)
        hintPath = str(parenDir + '/' + benchmark + '/' + fileName + '.hints')
        exists = os.path.isfile(hintPath)
        if exists:
            extractRedundantHintsFromOneProgram(filePath, benchmark, fileName, abstractionOption)
            print('----------------------------', 'Program count: ', programCount, '--------------------------')
            programCount = programCount + 1
    print()

def main():
    print("Start")


    filePath = '/home/chencheng/Desktop/benchmarks/'
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
        extractRedundantHintsFromMultipleProgram(filePath, b, abstractionOption)



if __name__ == '__main__':
    main()