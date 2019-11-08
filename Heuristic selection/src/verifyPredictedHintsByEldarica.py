import os
import glob
import subprocess
import time


def verifySelectedHintsInOneProgram(filePath,timeOut,solvedProgramCount,abstractionOption,rankOption):
    command = "../eldarica-graph-generation/./eld "
    run = command + filePath

    # verify program by read hints
    start = time.time()
    p=subprocess.Popen(["../eldarica-graph-generation/eld",filePath,rankOption,"-readHints",abstractionOption],shell=False)
    #print("check pid ",p.pid, psutil.pid_exists(p.pid))
    solvability=False
    try:
        print("Check solvability. \n Command:", "../eldarica-graph-generation/eld",filePath,abstractionOption,rankOption,"-readHints")
        p.wait(timeout=timeOut)
        end = time.time()
        print('Time consumption (NNs):', end - start)
        solvedProgramCount = solvedProgramCount + 1
    except subprocess.TimeoutExpired:
        print("Cannot be solved within "+str(timeOut)+" seconds" )
        p.kill()

    #verify program by original hints
    start = time.time()
    p=subprocess.Popen(["../eldarica-graph-generation/eld",filePath,abstractionOption],shell=False)
    try:
        print("Check solvability. \n Command:", "../eldarica-graph-generation/eld",filePath,abstractionOption)
        p.wait(timeout=timeOut)
        end = time.time()
        print("Time consumption ("+abstractionOption+"):",end - start)
    except subprocess.TimeoutExpired:
        print("Cannot be solved within "+str(timeOut)+" seconds" )
        p.kill()


    return solvedProgramCount




def verifySelectedHintsInMultiplePrograms(timeOut,abstractionOption,rankOption):
    programCount = 0
    solvedProgramCount=0

    for file in sorted(glob.glob("../benchmarks/sv-comp-c/*/*.annot.c")):
        fileName = file[file.rfind("/") +  1:]
        #parenDir = os.path.abspath(os.path.pardir)
        if(os.path.exists("../testData/"+fileName+".horn")):
            print(fileName)
            solvedProgramCount = verifySelectedHintsInOneProgram(file,timeOut,solvedProgramCount,abstractionOption,rankOption)
            programCount = programCount + 1
            print('----------------------------', 'Program count: ', programCount, '--------------------------')
            #extractHornClausesFromOneProgram(filePath, benchmark, fileName, abstractionOption)

    for file in sorted(glob.glob("../benchmarks/sv-comp-clauses/*/*/*.smt2")):
        fileName = file[file.rfind("/") +  1:]
        #parenDir = os.path.abspath(os.path.pardir)
        if(os.path.exists("../testData/"+fileName+".horn")):
            print(fileName)
            solvedProgramCount = verifySelectedHintsInOneProgram(file,timeOut,solvedProgramCount,abstractionOption,rankOption)
            programCount = programCount + 1
            print('----------------------------', 'Program count: ', programCount, '--------------------------')
            #extractHornClausesFromOneProgram(filePath, benchmark, fileName, abstractionOption)
    for file in sorted(glob.glob("../benchmarks/chc-comp/*/*.smt2")):
        fileName = file[file.rfind("/") +  1:]
        #parenDir = os.path.abspath(os.path.pardir)
        if(os.path.exists("../testData/"+fileName+".horn")):
            print(fileName)
            solvedProgramCount = verifySelectedHintsInOneProgram(file,timeOut,solvedProgramCount,abstractionOption,rankOption)
            programCount = programCount + 1
            print('----------------------------', 'Program count: ', programCount, '--------------------------')
            #extractHornClausesFromOneProgram(filePath, benchmark, fileName, abstractionOption)

    print(programCount,"programs")
    print(solvedProgramCount, "solved programs")
    accuracy=solvedProgramCount/programCount
    print("accuracy:",accuracy)


def main():
    print("Start")


    abstractionOption = '-abstract:manual'
    rankOption = "-rank:0.5"

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

    verifySelectedHintsInMultiplePrograms(timeOut, abstractionOption,rankOption)



if __name__ == '__main__':
    main()