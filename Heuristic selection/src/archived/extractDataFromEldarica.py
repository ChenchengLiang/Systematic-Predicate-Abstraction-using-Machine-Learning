import os
import glob
import subprocess
from distutils.dir_util import copy_tree
from os import popen
import time,signal,gc
from threading import Timer
import logging
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


def checkSolvability(timeOut,file,abstractionOption):
    #print(os.path.abspath(os.pardir))
    runTime=timeOut
    print("file",file)
    start = time.time()
    solvability = False
    p=subprocess.Popen(["../eldarica-graph-generation/eld",file,abstractionOption],shell=False,stdout=subprocess.PIPE)
    #print("check pid ",p.pid, psutil.pid_exists(p.pid))
    flag="sat"
    try:
        print("Check solvability. \n Command:", "../eldarica-graph-generation/eld",file,abstractionOption)
        stdOut=p.communicate(timeout=timeOut)
        #p.wait(timeout=timeOut)
        end = time.time()
        runTime=end-start
        solvability = True
        outputFromEldarica = str(stdOut)
        print(outputFromEldarica)
        # check if it is sat for c programs
        if ("SAFE" in str(outputFromEldarica)):
            solvability = True
            flag = "SAFE"
            if("UNSAFE") in str(outputFromEldarica):
                flag="UNSAFE"
        #check if it is sat
        if ("unsat" in str(outputFromEldarica)):
            solvability = True
            flag = "unsat"
        # check syntax error
        if("error" in str(outputFromEldarica)):
            solvability =False
            flag="error"
        # check if returns unknown
        if ("unknown" in str(outputFromEldarica)):
            solvability = False
            flag = "unknown"
    except subprocess.TimeoutExpired:
        print("Cannot be solved within "+str(timeOut)+" seconds" )
        solvability = False
        flag="timeout"
        p.kill()
    print(abstractionOption,"time consumption:",runTime,"solvability:",solvability)
    return solvability,runTime,flag


def checkSolvabilityWithOutAbstraction(timeOut,file):
    #print(os.path.abspath(os.pardir))
    runTime=timeOut
    print("file",file)
    start = time.time()
    p=subprocess.Popen(["../eldarica-graph-generation/eld",file,"-abstract:off"],shell=False)
    #print("check pid ",p.pid, psutil.pid_exists(p.pid))
    solvability=False
    flag="sat"
    try:
        print("Check solvability. \n Command:", "../eldarica-graph-generation/eld",file,"-abstract:off")
        stdOut = p.communicate(timeout=timeOut)
        #p.wait(timeout=timeOut)
        end = time.time()
        runTime=end-start
        solvability = True
        outputFromEldarica=str(stdOut)
        print(outputFromEldarica)
        # check if it is sat for c programs
        if ("SAFE" in str(outputFromEldarica)):
            solvability = True
            flag = "sat"
        #check if it is sat
        if ("unsat" in str(outputFromEldarica)):
            solvability = True
            flag = "unsat"
        # check syntax error
        if("error" in str(outputFromEldarica)):
            solvability =False
            flag="error"
        # check if returns unknown
        if ("unknown" in str(outputFromEldarica)):
            solvability = False
            flag = "unknown"
    except subprocess.TimeoutExpired:
        print("Cannot be solved within "+str(timeOut)+" seconds" )
        flag="timeout"
        solvability = False
        p.kill()
    print("abstract:off time consumption:",runTime)
    return solvability,runTime,flag


def extractTemplatesFromOneProgram(filePath,abstractionOption,timeOut):

    #check solvability and its runtime with abstraction
    solvabilityWithAbstraction,runTimeWithAbstraction,flag=checkSolvability(timeOut,filePath,abstractionOption)
    #check solvability and its runtime with abstraction
    if solvabilityWithAbstraction==True:
        solvabilityWithOutAbstraction, runTimeWithOutAbstraction, flag = checkSolvabilityWithOutAbstraction(timeOut,filePath)



    #if(solvabilityWithAbstraction==True and runTimeWithOutAbstraction-runTimeWithAbstraction>0):#if the program can be solved in timeout time
    if (solvabilityWithAbstraction == True):
        print("Extract training data.\n Command:",\
              "../eldarica-graph-generation/./eld", filePath, abstractionOption,
              "-absTimeout:" + str(runTimeWithAbstraction), "-extractTemplates")
        gc.collect()#clear memory
        #eld = subprocess.Popen(run_p, shell=True, stdout=subprocess.PIPE)
        eld = subprocess.Popen(["../eldarica-graph-generation/eld",\
                                filePath ,abstractionOption , \
                                "-absTimeout:"+str(runTimeWithAbstraction),\
                                "-extractTemplates"],stdout=subprocess.DEVNULL, shell=False)
        #stdout = eld.communicate()
        eld.wait()
        #eld.terminate()
        #os.system(run)
        gc.collect()  # clear memory
        return True
    else:
        return False

def extractPredicatesFromOneProgram(filePath,abstractionOption,timeOut):
    absParentPath=os.path.abspath(os.path.pardir)
    command = "../eldarica-graph-generation/./eld " \
              + abstractionOption  + " -absTimeout:"+str(timeOut)+" -extractPredicates "
    run_p = command + filePath

    #check solvability and its runtime with abstraction
    solvabilityWithAbstraction,runTimeWithAbstraction,flag=checkSolvability(timeOut,filePath,abstractionOption)
    #check solvability and its runtime with abstraction
    if solvabilityWithAbstraction ==True:
        solvabilityWithOutAbstraction,runTimeWithOutAbstraction,flag=checkSolvabilityWithOutAbstraction(timeOut,filePath)


    #if(solvabilityWithAbstraction==True and runTimeWithOutAbstraction-runTimeWithAbstraction>0):#if the program can be solved in timeout time
    if (solvabilityWithAbstraction == True):
        file = run_p[run_p.find(" ../"):]
        file = file[3:]
        file = str(os.path.abspath(os.pardir)) + file
        print("Extract training data.\n Command:", "../eldarica-graph-generation/eld",\
              filePath, abstractionOption,\
              "-absTimeout:" + str(runTimeWithAbstraction), "-extractPredicates")
        gc.collect()#clear memory
        #eld = subprocess.Popen(run_p, shell=True, stdout=subprocess.PIPE)
        eld = subprocess.Popen(["../eldarica-graph-generation/eld",\
                                filePath ,abstractionOption , \
                                "-absTimeout:"+str(runTimeWithAbstraction),\
                                "-extractPredicates"],stdout=subprocess.DEVNULL, shell=False)
        #stdout = eld.communicate()
        eld.wait()
        #eld.terminate()
        #os.system(run)
        gc.collect()  # clear memory
        return True
    else:
        return False


def extractPredicatesFromOneProgramForMultiprocess(parameterList):
    #parameterList=[file,abstractOption,60]
    filePath=parameterList[0]
    abstractionOption = parameterList[1]
    timeOut = parameterList[2]
    absParentPath=os.path.abspath(os.path.pardir)
    command = "../eldarica-graph-generation/./eld " \
              + abstractionOption  + " -absTimeout:"+str(timeOut)+" -extractPredicates "
    run_p = command + filePath

    #check solvability and its runtime with abstraction
    solvabilityWithAbstraction,runTimeWithAbstraction,flag=checkSolvability(timeOut,filePath,abstractionOption)
    #check solvability and its runtime with abstraction
    if solvabilityWithAbstraction ==True:
        solvabilityWithOutAbstraction,runTimeWithOutAbstraction,flag=checkSolvabilityWithOutAbstraction(timeOut,filePath)


    #if(solvabilityWithAbstraction==True and runTimeWithOutAbstraction-runTimeWithAbstraction>0):#if the program can be solved in timeout time
    if (solvabilityWithAbstraction == True):
        file = run_p[run_p.find(" ../"):]
        file = file[3:]
        file = str(os.path.abspath(os.pardir)) + file
        print("Extract training data.\n Command:", "../eldarica-graph-generation/eld",\
              filePath, abstractionOption,\
              "-absTimeout:" + str(runTimeWithAbstraction), "-extractPredicates")
        gc.collect()#clear memory
        #eld = subprocess.Popen(run_p, shell=True, stdout=subprocess.PIPE)
        eld = subprocess.Popen(["../eldarica-graph-generation/eld",\
                                filePath ,abstractionOption , \
                                "-absTimeout:"+str(runTimeWithAbstraction),\
                                "-extractPredicates"],stdout=subprocess.DEVNULL, shell=False)
        #stdout = eld.communicate()
        eld.wait()
        #eld.terminate()
        #os.system(run)
        return True
    else:
        return False

def extractTemplatesFromMultipleProgram(benchmark, abstractionOption,timeOut,extractFlag):
    # logging.basicConfig(filename='log/memory-extract-data.log', filemode='w', format='%(name)s - %(levelname)s - %(message)s',level=logging.INFO)
    programCount = 0
    #print(sys.argv[1])
    if(str(sys.argv[1])=="smt"):# smt2 format
        if(extractFlag=="templates"):
            for file in sorted(glob.glob('../benchmarks/' + benchmark + '/*.smt2')):
                fileName = file[file.find(benchmark) + len(benchmark) + 1:]
                print(file)
                extractTemplatesFromOneProgram(file,"-abstract",timeOut)
                programCount = programCount + 1
                print('----------------------------', 'Program count: ', programCount, '--------------------------')
        if(extractFlag=="predicates"):
            for file in sorted(glob.glob('../benchmarks/' + benchmark + '/*.smt2')):
                fileName = file[file.find(benchmark) + len(benchmark) + 1:]
                print(file)
                extractPredicatesFromOneProgram(file, "-abstract", timeOut)
                programCount = programCount + 1
                print('----------------------------', 'Program count: ', programCount, '--------------------------')
    if (str(sys.argv[1]) == "c"):#c format
        if(extractFlag=="templates"):
            for file in sorted(glob.glob('../benchmarks/' + benchmark + '/*.annot.c')):
                fileName = file[file.find(benchmark) + len(benchmark) + 1:]
                extractTemplatesFromOneProgram(file,abstractionOption,timeOut)
                programCount = programCount + 1
                print('----------------------------', 'Program count: ', programCount, '--------------------------')
        if(extractFlag=="predicates"):
            for file in sorted(glob.glob('../benchmarks/' + benchmark + '/*.annot.c')):
                fileName = file[file.find(benchmark) + len(benchmark) + 1:]
                extractPredicatesFromOneProgram(file,abstractionOption,timeOut)
                programCount = programCount + 1
                print('----------------------------', 'Program count: ', programCount, '--------------------------')
def main():
    print("Start")
    #sys.argv[1] = c or smt
    #sys.argv[2] =  path to files

    filePath = '/home/chencheng/Desktop/benchmarks/'


    abstractionOptionList = ["-abstract:manual"] #optio for c programs
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

    #benchmarkList.append('chc-comp19-benchmarks-master/*')
    try:
        sys.argv[1]
        benchmarkList.append(sys.argv[3])
        extractFlag=sys.argv[2]

    except:
        print("The first argument is c or smt")
        print("The second argument is templates or predicates")
        print("The third argument is path to file")
        return


    for abstractionOption in abstractionOptionList:
        for b in benchmarkList:
            extractTemplatesFromMultipleProgram(b, abstractionOption,timeOut,extractFlag)


    #copy graph to trainData file
    #copy_tree("../graphs/", "../trainData/")

    print("Finished")
if __name__ == '__main__':
    main()