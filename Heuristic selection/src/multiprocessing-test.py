import os
import sys
from extractDataFromEldarica import checkSolvability, extractPredicatesFromOneProgram,extractTemplatesFromOneProgram
import subprocess
import shutil
import glob
from distutils.dir_util import copy_tree
from multiprocessing import Pool
from functools import partial

def main():
    print("Start")
    try:
        path=sys.argv[1]
        extractOption=sys.argv[2]
        abstractOption=sys.argv[3]
    except:
        print("First argument: ../benchmarks/sv-comp-clauses-solvability/sat")
        print("Second argument: predicates or templates")
        print("Third argument: -abstract or -abstract:manual")

    if (os.path.exists("../graphs")):
        shutil.rmtree("../graphs/")
        os.mkdir("../graphs")

    filePathList=list()
    for file in glob.glob(path+"/*"):
        filePathList.append(file)
    if(extractOption=="predicates"):
        partialExtractPredicatesFromOneProgram = partial(extractPredicatesFromOneProgram, abstractionOption=abstractOption,timeOut=60)
        pool = Pool(processes=8)
        #extractPredicatesFromOneProgram(filePath,abstractionOption,timeOut)
        pool.map(partialExtractPredicatesFromOneProgram,filePathList)
    if(extractOption=="templates"):
        partialExtractTemplatesFromOneProgram = partial(extractTemplatesFromOneProgram, abstractionOption=abstractOption,timeOut=60)
        pool = Pool(processes=8)
        #extractPredicatesFromOneProgram(filePath,abstractionOption,timeOut)
        pool.map(partialExtractTemplatesFromOneProgram,filePathList)

    # copy graph to trainData file
    copy_tree("../graphs/", "../trainData/")


    print("Finished")

if __name__ == '__main__':
    main()