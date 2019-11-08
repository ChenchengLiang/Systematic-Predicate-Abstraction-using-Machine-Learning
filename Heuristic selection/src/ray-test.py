import ray
import os
import gc
from extractDataFromEldarica import checkSolvability
import subprocess
import glob

import requests

#@ray.remote
def extractDataFromOneProgram(filePath,abstractionOption,timeOut):
    absParentPath=os.path.abspath(os.path.pardir)
    command = "../eldarica-graph-generation/./eld " \
              + abstractionOption  + " -absTimeout:"+str(timeOut)+" -generateTrainData "
    run_p = command + filePath
    #print("command:", run)
    run_normal = "../eldarica-graph-generation/./eld " \
              + abstractionOption  +" " +filePath
    solvability,runtime=checkSolvability(timeOut,run_normal,abstractionOption)

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

def separateFilesToGroups(benchmark,groupSize,numberOfWorkers):
    sursor = 0
    groupList = list()
    fileList = list()
    for file in sorted(glob.glob('../benchmarks/' + benchmark[0] + '/*.'+benchmark[1])):
        fileList.append(file)
    for w in range(numberOfWorkers):
        if w== numberOfWorkers-1:
            groupList.append(fileList[w * groupSize:])
        else:
            groupList.append(fileList[w*groupSize:(w+1)*groupSize])

    return groupList


@ray.remote
def oneWorker(group,timeOut,benchmark,workerID):
    global programCount
    for file in group:

        id = extractDataFromOneProgram(file, benchmark[2], timeOut)
#        results = ray.get(id)
        print('-----------------', "Worker ID:", workerID, ' Program count: ', programCount, "/" + str(len(group)),
              '--------------------------')
        programCount = programCount + 1

        #global programCount


    return programCount


def getNumberOfFiles(benchmark):
    length=0
    for file in sorted(glob.glob('../benchmarks/' + benchmark[0] + '/*.'+benchmark[1])):
        length=length+1
    return length


programCount = 1
def main():
    print("Start")
    ray.init()

    benchmarkList = list()
    benchmarkList.append(["chc-comp19-benchmarks-master/*","smt2","-abstract"])
    #benchmarkList.append(["allInOneFile/","c","-abstract:manual"])
    #benchmarkList.append(["sv-comp-clauses/*/*", "smt2", "-abstract"])
    timeOut=60


    for benchmark in benchmarkList:
        length=getNumberOfFiles(benchmark)
        print(length," files")
        numberOfWorkers=4
        groupList=separateFilesToGroups(benchmark,int(length/numberOfWorkers),numberOfWorkers)
        print("Number of worker",numberOfWorkers)
        for g,gn in zip(groupList,range(len(groupList))):
            print("Group number",gn,"size",len(g))
        result_ids = []
        workerID=0
        for group in groupList:
            result_ids.append(oneWorker.remote(group,timeOut,benchmark,workerID))
            workerID=workerID+1
        ray.get(result_ids)


    print("Finished")

if __name__ == '__main__':
    main()