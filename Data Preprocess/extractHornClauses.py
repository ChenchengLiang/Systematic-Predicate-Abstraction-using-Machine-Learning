import os
import glob
import subprocess
from os import popen
import time
from subprocess import Popen, PIPE
from subprocess import STDOUT, check_output
from threading import Timer
import threading

def extractHornClausesFromOneProgram(filePath, benchmark, fileName, abstractionOption):
    command = "/home/lcc/Downloads/eldarica-master-unmodified/./eld -" + abstractionOption + " -p "
    run = command + filePath + benchmark + '/' + fileName
    print("command:", run)
    eld = subprocess.Popen(run, shell=True, stdout=subprocess.PIPE)
    stdout = eld.communicate()
    lines=stdout[0].decode("utf-8").rstrip("\n")
    printBegin=False
    curpath = os.path.abspath(os.curdir)
    filename = curpath + '/' + benchmark + '/' + fileName + ".horn"
    f = open(filename, "w+")

    for line in lines.splitlines():
        if line.find('Verification hints:')!=-1:
            print("Write to", filename)
            break
        if printBegin == True:
            f.write(line + "\n")
            #print(line)
        if line.find('Singleton') !=-1:
            printBegin=True
            #print("DEBUG")
    f.close()

def extractHornClausesFromMultipleProgram(filePath, benchmark, abstractionOption):
    programCount = 1

    for file in sorted(glob.glob('/home/lcc/Desktop/benchmarks/' + benchmark + '/*.annot.c')):
        # print(file)
        fileName = file[file.find(benchmark) + len(benchmark) + 1:]

        extractHornClausesFromOneProgram(filePath, benchmark, fileName, abstractionOption)
        print('----------------------------', 'Program count: ', programCount, '--------------------------')

        programCount = programCount + 1
    print()

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
    benchmarkList.append('VeriMAP_bench')
    #     benchmarkList.append('dillig')
    benchmarkList.append('llreve')
    for b in benchmarkList:
        extractHornClausesFromMultipleProgram(filePath, b, abstractionOption)



if __name__ == '__main__':
    main()