import os
import glob
import subprocess
from distutils.dir_util import copy_tree
import shutil
from os import popen
import time,signal,gc
from threading import Timer
import logging
#import psutil
import sys

# def timeout_handler(num, stack):
#     print("Received SIGALRM")
#     print("timeout")
#     raise Exception()
#
# def checkSolvability(timeOut,run):
#     #determine solvability
#     signal.signal(signal.SIGALRM, timeout_handler)
#     signal.alarm(timeOut)#timeOut
#     print("main pid"+str(os.getpid()))
#     start = time.time()
#     p=os.system(run)
#     p = subprocess.Popen(run, shell=True, close_fds=True)
#     print("pid:", str(p.pid))
#     try:
#         print("Check solvability. \n Command:",run)
#         print("check pid ", psutil.pid_exists(p.pid))
#         p.wait()
#         print("check pid ", psutil.pid_exists(p.pid))
#         #std=p.communicate()
#         end = time.time()
#         solvability=True
#         print('Solvable. Time consumption:',end - start)
#     except Exception as ex:
#         solvability=False
#         #p.stdout.close()
#         print("check pid ", psutil.pid_exists(p.pid))
#         os.kill(p.pid, signal.SIGTERM)
#         p.wait()
#         #p.terminate()
#         # p.kill()
#         # os.kill(p.pid,signal.SIGSTOP)
#         #print("check pid ", psutil.pid_exists(p.pid))
#         #os.kill(p.pid,signal.SIGSTOP)
#         print("check pid ", psutil.pid_exists(p.pid))
#
#         print("Cannot be solved within "+str(timeOut)+" seconds ")
#     finally:
#         signal.alarm(0)
#         if psutil.pid_exists(p.pid):
#             os.kill(p.pid, signal.SIGTERM)
#
#
#     return solvability


def checkSolvability(timeOut,run,abstractionOption):
    #print(os.path.abspath(os.pardir))
    file=run[run.find(" ../"):]
    file=file[3:]
    file=str(os.path.abspath(os.pardir))+file
    print("file",file)
    p=subprocess.Popen(["../eldarica-graph-generation/eld",file,abstractionOption],shell=False)
    #print("check pid ",p.pid, psutil.pid_exists(p.pid))
    solvability=False
    try:
        print("Check solvability. \n Command:", "../eldarica-graph-generation/eld",file,abstractionOption)
        p.wait(timeout=timeOut)
        solvability = True
    except subprocess.TimeoutExpired:
        print("Cannot be solved within "+str(timeOut)+" seconds" )
        p.kill()
    #print("check pid ",p.pid, psutil.pid_exists(p.pid))
    return solvability



def extractDataFromOneProgram(filePath,abstractionOption,timeOut):
    absParentPath=os.path.abspath(os.path.pardir)
    command = "../eldarica-graph-generation/./eld " \
              + abstractionOption  + " -absTimeout:"+str(timeOut)+" -generateTrainData "
    run_p = command + filePath
    #print("command:", run)
    run_normal = "../eldarica-graph-generation/./eld " \
              + abstractionOption  +" " +filePath
    solvability=checkSolvability(timeOut,run_normal,abstractionOption)

    if(solvability==True):#if the program can be solved in timeout time

        file = run_p[run_p.find(" ../"):]
        file = file[3:]
        file = str(os.path.abspath(os.pardir)) + file
        print("Extract training data.\n Command:", "../eldarica-graph-generation/eld", file, abstractionOption,
              "-absTimeout:" + str(timeOut), "-generateTrainData")
        gc.collect()#clear memory
        #eld = subprocess.Popen(run_p, shell=True, stdout=subprocess.PIPE)
        eld = subprocess.Popen(["../eldarica-graph-generation/eld",file ,abstractionOption , "-absTimeout:"+str(timeOut),"-generateTrainData"],stdout=subprocess.DEVNULL, shell=False)
        #stdout = eld.communicate()
        eld.wait()
        #eld.terminate()
        #os.system(run)
        gc.collect()  # clear memory
        return True
    else:
        return False

def extractDataFromMultipleProgram(benchmark, abstractionOption,timeOut):
    # logging.basicConfig(filename='log/memory-extract-data.log', filemode='w', format='%(name)s - %(levelname)s - %(message)s',level=logging.INFO)
    programCount = 0
    #print(sys.argv[1])
    # smt2 format
    if(str(sys.argv[1])=="smt"):
        for file in sorted(glob.glob('../benchmarks/' + benchmark + '/*.smt2')):
            fileName = file[file.find(benchmark) + len(benchmark) + 1:]
            print(file)
            extractDataFromOneProgram(file,"-abstract",timeOut)
            programCount = programCount + 1
            print('----------------------------', 'Program count: ', programCount, '--------------------------')
    if (str(sys.argv[1]) == "c"):
    #c format
        for file in sorted(glob.glob('../benchmarks/' + benchmark + '/*.annot.c')):
            fileName = file[file.find(benchmark) + len(benchmark) + 1:]
            extractDataFromOneProgram(file,abstractionOption,timeOut)
            programCount = programCount + 1
            print('----------------------------', 'Program count: ', programCount, '--------------------------')


def main():
    print("Start")


    filePath = '/home/chencheng/Desktop/benchmarks/'


    abstractionOptionList = ["-abstract:manual"]
    timeOut=60
    benchmarkList = list()
    # benchmarkList.append('dillig')
    # benchmarkList.append('llreve')
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

    benchmarkList.append('chc-comp19-benchmarks-master/lia-lin')

    for abstractionOption in abstractionOptionList:
        for b in benchmarkList:
            extractDataFromMultipleProgram(b, abstractionOption,timeOut)

    #copy graph to trainData file
    copy_tree("../graphs/", "../trainData/")

    print("Finished")
if __name__ == '__main__':
    main()