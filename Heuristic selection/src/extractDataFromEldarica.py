import os
import glob
import subprocess
from distutils.dir_util import copy_tree
import shutil
from os import popen
import time,signal,gc
from subprocess import Popen, PIPE
from subprocess import STDOUT, check_output
from threading import Timer

def timeout_handler(num, stack):
    print("Received SIGALRM")
    print("timeout")
    raise Exception()

def checkSolvability(timeOut,run):
    #determine solvability
    signal.signal(signal.SIGALRM, timeout_handler)
    signal.alarm(timeOut)

    start = time.time()
    try:
        print("Check solvability. Command:",run)
        p = subprocess.Popen(run, shell=True, stdout=subprocess.PIPE)
        p.communicate()
        end = time.time()
        solvability=True
        print('Solvable. Time consumption:',end - start)
        p.kill()
    except Exception as ex:
        solvability=False
        print("Cannot be solved within "+str(timeOut)+" seconds ")

    finally:
        signal.alarm(0)

    return solvability

def extractDataFromOneProgram(filePath,abstractionOption,timeOut):
    absParentPath=os.path.abspath(os.path.pardir)
    command = "../eldarica-graph-generation/./eld -" \
              + abstractionOption + " -p " + "-absTimeout:"+str(timeOut)+" "
    run_p = command + filePath
    #print("command:", run)
    run_normal = "../eldarica-graph-generation/./eld -" \
              + abstractionOption  + " -absTimeout:"+str(timeOut)+" " +filePath
    solvability=checkSolvability(timeOut,run_normal)

    if(solvability==True):#if the program can be solved in timeout time
        print("Extract training data. Command:", run_p)
        gc.collect()#clear memory
        eld = subprocess.Popen(run_p, shell=True, stdout=subprocess.PIPE)
        stdout = eld.communicate()
        #os.system(run)
        gc.collect()  # clear memory
def extractDataFromMultipleProgram(filePath, benchmark, abstractionOption,timeOut):
    programCount = 0
    parenDir = os.path.abspath(os.path.pardir)
    for file in sorted(glob.glob('../benchmarks/' + benchmark + '/*.annot.c')):
        # print(file)
        fileName = file[file.find(benchmark) + len(benchmark) + 1:]

        print(file)
        extractDataFromOneProgram(file,abstractionOption,timeOut)
        programCount = programCount + 1
        print('----------------------------', 'Program count: ', programCount, '--------------------------')


def main():
    print("Start")


    filePath = '/home/chencheng/Desktop/benchmarks/'
    abstractionOptionManual = 'abstract:manual'
    abstractionOptionList = ["abstract:manual","abstract:term","abstract:oct",\
                             "abstract:relEqs","abstract:relIneqs"]
    timeOut=60
    benchmarkList = list()
    # benchmarkList.append('dillig')
    # benchmarkList.append('llreve')
    # benchmarkList.append('VeriMAP_bench')
    benchmarkList.append('svcomp16/locks')
    benchmarkList.append('svcomp16/loop-acceleration')
    benchmarkList.append('svcomp16/loop-invgen')
    benchmarkList.append('svcomp16/loop-lit')
    benchmarkList.append('svcomp16/loop-new')
    benchmarkList.append('svcomp16/loops')
    benchmarkList.append('svcomp16/ntdrivers-simplified')
    benchmarkList.append('svcomp16/seq-mthreaded')
    benchmarkList.append('svcomp16/ssh-simplified')
    benchmarkList.append('svcomp16/systemc')
    for abstractionOption in abstractionOptionList:
        for b in benchmarkList:
            extractDataFromMultipleProgram(filePath, b, abstractionOption,timeOut)

    #copy graph to trainData file
    copy_tree("../graphs/", "../trainData/")

    print("Finished")
if __name__ == '__main__':
    main()