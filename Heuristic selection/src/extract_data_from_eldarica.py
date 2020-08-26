import shutil
import glob
import subprocess
import os
from multiprocessing import Pool
from functools import partial
from distutils.dir_util import copy_tree
import gc
import signal
import psutil
from analysis_extracted_data import gather_all_train_data,separate_dataset_to_train_valid_test_files
from Miscellaneous import copy_train_data_from_src_to_dst,clear_directory
# def check_solvability(timeOut,abstractionOption,benchmark_solvability_folders,file):
#
#     solvability, runtime, flag = checkSolvability(timeOut, file, abstractionOption)
#     print("solvability", solvability)
#
#     if (solvability == True):
#         shutil.copy2(file, benchmark_solvability_folders["solvable"])
#         if (flag == "sat"):
#             shutil.copy2(file, benchmark_solvability_folders["sat"])
#         if (flag == "SAFE"):
#             shutil.copy2(file, benchmark_solvability_folders["sat"])
#         if (flag == "unsat"):
#             shutil.copy2(file, benchmark_solvability_folders["unsat"])
#         if (flag == "UNSAFE"):
#             shutil.copy2(file, benchmark_solvability_folders["unsat"])
#     else:
#         if (flag == "error"):
#             shutil.copy2(file, benchmark_solvability_folders["syntaxError"])
#         if (flag == "unknown"):
#             shutil.copy2(file, benchmark_solvability_folders["unknown"])
#         if (flag == "timeout"):
#             shutil.copy2(file, benchmark_solvability_folders["unsolvable"])
#
# def check_solvability_pool(rootdir="../benchmarks/LIA-lin/"):
#     timeOut, abstractionOption = 60,"-noIntervals"
#     for root, subdirs, files in os.walk(rootdir):
#         if os.path.exists(root + "/solvability"):
#             shutil.rmtree(root + "/solvability")
#     for root, subdirs, files in os.walk(rootdir):
#         print(root,subdirs,files)
#         if len(subdirs)==0:
#             file_list=[]
#             for file in files:
#                 file_list.append(root+"/"+file)
#
#             benchmark_solvability_folders={"sat":root + "/solvability/sat","unsat":root + "/solvability/unsat",
#                                            "solvable":root + "/solvability/solvable","unsolvable":root + "/solvability/unsolvable",
#                                            "syntaxError":root + "/solvability/syntaxError","unknown":root + "/solvability/unknown"}
#
#             if not os.path.exists(root+"/solvability"):
#                 for fol in benchmark_solvability_folders:
#                     if not os.path.exists(benchmark_solvability_folders[fol]):
#                         os.makedirs(benchmark_solvability_folders[fol])
#
#
#             partialExtractTemplatesFromOneProgram = partial(check_solvability,
#                                                             timeOut,abstractionOption,benchmark_solvability_folders)
#             pool = Pool(processes=8)
#             pool.map(partialExtractTemplatesFromOneProgram, file_list)

def extract_one_file(parameterList):
    filePath=parameterList[0]
    abstractionOption = parameterList[1]
    absTimeOut = parameterList[2]
    timeOut=parameterList[3]
    command = "../eldarica-graph-generation/./eld " \
              + abstractionOption  + " -absTimeout:"+str(absTimeOut)+" -extractPredicates " +" -t:"+str(timeOut) +\
              " -solvabilityTimeout:" + str(absTimeOut) +" -solvabilityTimeout:" + str(absTimeOut) +" "
    run_p = command + filePath

    print("Command:", run_p)

    print("os.pid",os.getpid())
    pid=None
    try:
        eld = subprocess.Popen(["../eldarica-graph-generation/eld", \
                                filePath, abstractionOption, \
                                "-absTimeout:" + str(absTimeOut), \
                                "-solvabilityTimeout:" + str(absTimeOut), \
                                "-extractPredicates","-t:"+str(timeOut)], stdout=subprocess.DEVNULL, shell=False)
        # eld = subprocess.Popen(["../eldarica-graph-generation/eld", \
        #                         filePath, abstractionOption, \
        #                         "-absTimeout:" + str(absTimeOut), \
        #                         "-extractPredicates", "-t:" + str(timeOut)], shell=False)
        # eld = subprocess.run(["../eldarica-graph-generation/eld", \
        #                         filePath, abstractionOption, \
        #                         "-absTimeout:" + str(absTimeOut), \
        #                         "-extractPredicates", "-t:" + str(timeOut)],stdout=subprocess.DEVNULL)
        pid=eld.pid
        print("popen PID",pid)
        eld.wait(timeout=timeOut+10)#timeout=3600
        if psutil.pid_exists(pid):
            print("kill pid", pid)
            os.kill(pid, signal.SIGKILL)
        return True
    except:
        print("Time out","Command:", run_p)
        print("Time out", "PID:", pid)
        shutil.copy2(filePath, "../benchmarks/extracting_time_out_samples/")
        if psutil.pid_exists(pid):
            print("kill pid", pid)
            os.kill(pid,signal.SIGKILL)
        return True



def extract_data_pool(rootdir="../benchmarks/LIA-lin/"):

    absTimeout=60*3
    timeout=absTimeout*20

    for root, subdirs, files in os.walk(rootdir):
        if os.path.exists(root + "/trainData"):
            shutil.rmtree(root + "/trainData")
    for root, subdirs, files in os.walk(rootdir):
        print(root,subdirs,files)

        if len(subdirs)==0:
            clear_directory("../trainData")
            print("extract data in",root)
            clear_directory(root + "/trainData")

            parameterList=[]
            for file in files:
                parameterList.append([root+"/"+file,"-noIntervals",absTimeout,timeout])
            pool = Pool(processes=4)

            pool.map(extract_one_file, parameterList)
            pool.close()
            copy_tree("../trainData/", root + "/trainData")


    return True

def add_GNN_inputs_and_auto_graphviz_to_extracted_data(rootdir):
    for file in glob.glob("../trainData/*"):
        os.remove(file)
    for root, subdirs, files in os.walk(rootdir):
        if len(subdirs)==1 and subdirs[0]=="trainData":
            print(root,subdirs,files)
            full_file_list=files
            extracted_file_list=glob.glob(root+"/trainData/*.smt2")
            print("full_file_list",len(full_file_list),full_file_list)
            print("extracted_file_list",len(extracted_file_list),extracted_file_list)
            for fileName in extracted_file_list:
                print("processing file:",fileName)
                eld = subprocess.run(["../eldarica-graph-generation/eld", \
                                        fileName, "-getHornGraph"], stdout=subprocess.DEVNULL, shell=False)
            copy_tree("../trainData",root+"/trainData")
            for file in glob.glob("../trainData/*"):
                os.remove(file)


def main():
    benchmark_list = ["../benchmarks/temp-train"]
    for benchmark in benchmark_list:
        # check_solvability_pool()
        extract_data_pool(benchmark)

    #add_GNN_inputs_and_auto_graphviz_to_extracted_data("../benchmarks/LIA-nonlin-extracted-noIntervals")
    #gather_all_train_data(src="../benchmarks/LIA-nonlin-extracted-noIntervals/",dst="../benchmarks/LIA-nonlin-trainData-noIntervals/")
    # separate_dataset_to_train_valid_test_files("../benchmarks/LIA-nonlin-trainData-noIntervals/",
    #                                            "../benchmarks/LIA-nonlin-trainData-noIntervals-datafold/")

    #copy_train_data_from_src_to_dst("../benchmarks/temp-train/train_data/wrong_extracted_cases/trainData/", "../benchmarks/temp-train/train_data")

main()
