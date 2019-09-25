import os
import glob
import subprocess
import time
import signal

def timeout_handler(num, stack):
    print("Received SIGALRM")
    print("timeout")
    raise Exception()

def verifySelectedHintsInOneProgram(filePath,timeOut,solvedProgramCount,abstractionOption):
    command = "../eldarica-graph-generation/./eld " \
              + "-absTimeout:"+str(timeOut)+" "
    run = command + filePath


    #verify program by NNs prediction
    signal.signal(signal.SIGALRM, timeout_handler)
    signal.alarm(timeOut)

    start = time.time()
    try:
        print("Command:",run)
        p = subprocess.Popen(run+ " -"+abstractionOption, shell=True, stdout=subprocess.PIPE)
        p.communicate()
        end = time.time()
        solvedProgramCount=solvedProgramCount+1
        print('Time consumption (NNs):',end - start)
        p.kill()
    except Exception as ex:
        print("Cannot be solved within "+str(timeOut)+" seconds ")

    finally:
        signal.alarm(0)

    #verify program by abstract:manual
    signal.signal(signal.SIGALRM, timeout_handler)
    signal.alarm(timeOut)

    start = time.time()
    try:
        print("Command:",run+" "+abstractionOption)
        p = subprocess.Popen(run+" -"+abstractionOption, shell=True, stdout=subprocess.PIPE)
        p.communicate()
        end = time.time()
        print("Time consumption ("+abstractionOption+"):",end - start)
        p.kill()
    except Exception as ex:
        print("Cannot be solved within "+str(timeOut)+" seconds ")

    finally:
        signal.alarm(0)


    return solvedProgramCount




def verifySelectedHintsInMultiplePrograms(timeOut,abstractionOption):
    programCount = 0
    solvedProgramCount=0

    for file in sorted(glob.glob('../benchmarks/allInOneFile/' + '/*.annot.c')):
        fileName = file[file.find("allInOneFile") + len("allInOneFile") + 1:]
        #parenDir = os.path.abspath(os.path.pardir)
        if(os.path.exists("../testData/"+fileName+".horn")):
            print(fileName)
            solvedProgramCount = verifySelectedHintsInOneProgram(file,timeOut,solvedProgramCount,abstractionOption)
            programCount = programCount + 1
            print('----------------------------', 'Program count: ', programCount, '--------------------------')
            #extractHornClausesFromOneProgram(filePath, benchmark, fileName, abstractionOption)

    print(programCount,"programs")
    print(solvedProgramCount, "solved programs")
    accuracy=solvedProgramCount/programCount
    print("accuracy:",accuracy)


def main():
    print("Start")


    abstractionOption = 'abstract:manual'

    timeOut=60
    benchmarkList = list()
    benchmarkList.append('dillig')
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

    verifySelectedHintsInMultiplePrograms(timeOut, abstractionOption)



if __name__ == '__main__':
    main()