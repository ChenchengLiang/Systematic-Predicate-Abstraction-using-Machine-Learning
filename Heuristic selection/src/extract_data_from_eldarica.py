import shutil
import glob
from extractDataFromEldarica import checkSolvability
import subprocess
import os
from multiprocessing import Pool
from functools import partial
from distutils.dir_util import copy_tree

def check_solvability(timeOut,abstractionOption,benchmark_solvability_folders,file):

    solvability, runtime, flag = checkSolvability(timeOut, file, abstractionOption)
    print("solvability", solvability)

    if (solvability == True):
        shutil.copy2(file, benchmark_solvability_folders["solvable"])
        if (flag == "sat"):
            shutil.copy2(file, benchmark_solvability_folders["sat"])
        if (flag == "SAFE"):
            shutil.copy2(file, benchmark_solvability_folders["sat"])
        if (flag == "unsat"):
            shutil.copy2(file, benchmark_solvability_folders["unsat"])
        if (flag == "UNSAFE"):
            shutil.copy2(file, benchmark_solvability_folders["unsat"])
    else:
        if (flag == "error"):
            shutil.copy2(file, benchmark_solvability_folders["syntaxError"])
        if (flag == "unknown"):
            shutil.copy2(file, benchmark_solvability_folders["unknown"])
        if (flag == "timeout"):
            shutil.copy2(file, benchmark_solvability_folders["unsolvable"])

def check_solvability_pool(rootdir="../benchmarks/LIA-lin/"):
    timeOut, abstractionOption = 60,"-abstract"
    for root, subdirs, files in os.walk(rootdir):
        if os.path.exists(root + "/solvability"):
            shutil.rmtree(root + "/solvability")
    for root, subdirs, files in os.walk(rootdir):
        print(root,subdirs,files)
        if len(subdirs)==0:
            file_list=[]
            for file in files:
                file_list.append(root+"/"+file)

            benchmark_solvability_folders={"sat":root + "/solvability/sat","unsat":root + "/solvability/unsat",
                                           "solvable":root + "/solvability/solvable","unsolvable":root + "/solvability/unsolvable",
                                           "syntaxError":root + "/solvability/syntaxError","unknown":root + "/solvability/unknown"}

            if not os.path.exists(root+"/solvability"):
                for fol in benchmark_solvability_folders:
                    if not os.path.exists(benchmark_solvability_folders[fol]):
                        os.makedirs(benchmark_solvability_folders[fol])


            partialExtractTemplatesFromOneProgram = partial(check_solvability,
                                                            timeOut,abstractionOption,benchmark_solvability_folders)
            pool = Pool(processes=8)
            pool.map(partialExtractTemplatesFromOneProgram, file_list)

def extract_one_file(parameterList):
    filePath=parameterList[0]
    abstractionOption = parameterList[1]
    timeOut = parameterList[2]
    command = "../eldarica-graph-generation/./eld " \
              + abstractionOption  + " -absTimeout:"+str(timeOut)+" -extractPredicates "
    run_p = command + filePath

    print("Command:", run_p)
    try:
        eld = subprocess.Popen(["../eldarica-graph-generation/eld", \
                                filePath, abstractionOption, \
                                "-absTimeout:" + str(timeOut), \
                                "-extractPredicates"], stdout=subprocess.DEVNULL, shell=False)
        eld.wait(timeout=600)
    except:
        print("Time out","Command:", run_p)
        shutil.copy2(filePath, "../benchmarks/extracting_time_out_samples/")

def extract_data_pool(rootdir="../benchmarks/LIA-lin/"):
    for root, subdirs, files in os.walk(rootdir):
        if os.path.exists(root + "/trainData"):
            shutil.rmtree(root + "/trainData")
    for root, subdirs, files in os.walk(rootdir):
        print(root,subdirs,files)

        if len(subdirs)==0:
            print("extract data in",root)
            if (os.path.exists("../trainData")):
                shutil.rmtree("../trainData/")
                os.mkdir("../trainData")

            if not os.path.exists(root + "/trainData"):
                os.makedirs(root + "/trainData")

            parameterList=[]
            for file in files:
                parameterList.append([root+"/"+file,"-abstract",30])
            pool = Pool(processes=8)
            pool.map(extract_one_file, parameterList)


            copy_tree("../trainData/", root + "/trainData")


    pass

def main():
    benchmark_list = ["../benchmarks/LIA-lin/", "../benchmarks/LIA-nonlin/"]
    for benchmark in benchmark_list:
        # check_solvability_pool()
        extract_data_pool(benchmark)


main()
