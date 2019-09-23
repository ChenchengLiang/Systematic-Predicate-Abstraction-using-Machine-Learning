import os
import glob
import subprocess
from distutils.dir_util import copy_tree
import shutil
from os import popen
import time
from subprocess import Popen, PIPE
from subprocess import STDOUT, check_output
from threading import Timer

def extractDataFromOneProgram(filePath,abstractionOption,timeOut):
    absParentPath=os.path.abspath(os.path.pardir)
    command = "../eldarica-graph-generation/./eld -" \
              + abstractionOption + " -p " + "-absTimeout:"+str(timeOut)+" "
    run = command + filePath
    print("command:", run)
    eld = subprocess.Popen(run, shell=True, stdout=subprocess.PIPE)
    stdout = eld.communicate()
    #os.system(run)

def extractDataFromMultipleProgram(filePath, benchmark, abstractionOption,timeOut):
    programCount = 1
    parenDir = os.path.abspath(os.path.pardir)
    for file in sorted(glob.glob('../benchmarks/' + benchmark + '/*.annot.c')):
        # print(file)
        fileName = file[file.find(benchmark) + len(benchmark) + 1:]

        print(file)
        extractDataFromOneProgram(file,abstractionOption,timeOut)
        print('----------------------------', 'Program count: ', programCount, '--------------------------')
        programCount = programCount + 1
        #extractHornClausesFromOneProgram(filePath, benchmark, fileName, abstractionOption)



    print()

def main():
    print("Start")


    filePath = '/home/chencheng/Desktop/benchmarks/'
    abstractionOption = 'abstract:manual'
    timeOut=60
    benchmarkList = list()
    #benchmarkList.append('dillig')
    benchmarkList.append('llreve')
    # benchmarkList.append('VeriMAP_bench')
    # benchmarkList.append('svcomp16/locks')
    # benchmarkList.append('svcomp16/loop-acceleration')
    # benchmarkList.append('svcomp16/loop-invgen')
    # benchmarkList.append('svcomp16/loop-lit')
    # benchmarkList.append('svcomp16/loop-new')
    # benchmarkList.append('svcomp16/loops')
    # benchmarkList.append('svcomp16/ntdrivers-simplified')
    # benchmarkList.append('svcomp16/seq-mthreaded')
    # benchmarkList.append('svcomp16/ssh-simplified')
    # benchmarkList.append('svcomp16/systemc')


    for b in benchmarkList:
        extractDataFromMultipleProgram(filePath, b, abstractionOption,timeOut)

    #copy graph to trainData file
    copy_tree("../graphs/", "../temp/")
if __name__ == '__main__':
    main()