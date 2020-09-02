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
import json
from dotToGraphInfo import parseArguments
from analysis_extracted_data import gather_all_train_data,separate_dataset_to_train_valid_test_files
from Miscellaneous import copy_train_data_from_src_to_dst,clear_directory,copy_and_remove,clear_file
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
            #clear_directory("../trainData")
            print("extract data in",root)
            clear_directory(root + "/trainData")

            parameterList=[]
            for file in files:
                parameterList.append([root+"/"+file,"-noIntervals",absTimeout,timeout])
            pool = Pool(processes=4)

            pool.map(extract_one_file, parameterList)
            pool.close()
        for json_file,argument_file,gv_file,hints_file,horn_file,horn_graph_file,initialHints_file,negativeHints_file,positiveHints_file,auto_gv_file in zip(glob.glob(root+"/*.JSON"),glob.glob(root+"/*.arguments"),glob.glob(root+"/*.smt2.gv"),
                                           glob.glob(root+"/*.hints.graphs"),glob.glob(root+"/*.horn"),glob.glob(root+"/*.HornGraph"),
                                           glob.glob(root+"/*.initialHints"),glob.glob(root+"/*.negativeHints"),glob.glob(root+"/*.positiveHints"),
                                           glob.glob(root+"/*.smt2-auto.gv")): #identify files need hints
            smt2_file=json_file[:json_file.find(".JSON")]
            copy_and_remove(json_file,root + "/trainData")
            copy_and_remove(argument_file, root + "/trainData")
            copy_and_remove(gv_file, root + "/trainData")
            copy_and_remove(hints_file, root + "/trainData")
            copy_and_remove(horn_file, root + "/trainData")
            copy_and_remove(horn_graph_file, root + "/trainData")
            copy_and_remove(initialHints_file, root + "/trainData")
            copy_and_remove(negativeHints_file, root + "/trainData")
            copy_and_remove(positiveHints_file, root + "/trainData")
            shutil.copy(smt2_file, root + "/trainData")
            copy_and_remove(auto_gv_file, root + "/trainData")


            #copy_tree("../trainData/", root + "/trainData")


    return True

# Impossible to transfer .argument to JSON file because cannot match argument name
# def add_GNN_inputs_and_auto_graphviz_to_extracted_data(rootdir):
#     # for file in glob.glob("../trainData/*"):
#     #     os.remove(file)
#     for root, subdirs, files in os.walk(rootdir):
#         if len(subdirs)==1 and subdirs[0]=="trainData":
#             print(root,subdirs,files)
#             full_file_list=files
#             extracted_file_list=glob.glob(root+"/trainData/*.smt2")
#             print("full_file_list",len(full_file_list),full_file_list)
#             print("extracted_file_list",len(extracted_file_list),extracted_file_list)
#             for fileName in extracted_file_list:
#                 print("processing file:",fileName)
#                 eld = subprocess.run(["../eldarica-graph-generation/eld", \
#                                         fileName, "-getHornGraph"], stdout=subprocess.DEVNULL, shell=False)
#                 #read .argument to Json
#                 with open(fileName+".arguments") as f:
#                     parsed_arguments = parseArguments(f.read())
#                 predicted_argument_score=[int(argument.score) for argument in parsed_arguments]
#                 argument_id_list=[int(argument.ID) for argument in parsed_arguments]
#                 argument_name_list=[int(argument.head+":"+argument.arg) for argument in parsed_arguments]
#                 json_file = fileName + ".JSON"
#                 json_obj = {}
#                 # read JSON file and add predicted_argument_score to json object
#                 with open(json_file) as f:
#                     loaded_graph = json.load(f)
#                     json_obj["nodeIds"] = loaded_graph["nodeIds"]
#                     json_obj["binaryAdjacentList"] = loaded_graph["binaryAdjacentList"]
#                     json_obj["tenaryAdjacencyList"] = loaded_graph["tenaryAdjacencyList"]
#                     json_obj["argumentIndices"] = loaded_graph["argumentIndices"]
#                     json_obj["controlLocationIndices"] = loaded_graph["controlLocationIndices"]
#                     json_obj["predictedArgumentScores"] = predicted_argument_score
#                     json_obj["argumentIDList"] = argument_id_list
#                     json_obj["argumentNameList"] = argument_name_list
#
#                 # write json object to JSON file
#                 clear_file(json_file)
#                 with open(json_file, 'w') as f:
#                     json.dump(json_obj, f)
#             # copy_tree("../trainData",root+"/trainData")
#             # for file in glob.glob("../trainData/*"):
#             #     os.remove(file)
#

def main():
    benchmark_list = ["../benchmarks/temp-extract"]
    for benchmark in benchmark_list:
        # check_solvability_pool()
        extract_data_pool(benchmark)
        gather_all_train_data(src=benchmark,dst=benchmark+"-trainData")
        separate_dataset_to_train_valid_test_files(benchmark+"-trainData/",benchmark+"-trainData-datafold/")

    # gather_all_train_data(src="../benchmarks/temp-train-6",dst="../benchmarks/temp-train-7")
    # separate_dataset_to_train_valid_test_files("../benchmarks/temp-train-7/",
    #                                            "../benchmarks/temp-train-8/")

    #copy_train_data_from_src_to_dst("../benchmarks/temp-train-2/train_data/wrong_extracted_cases/trainData/", "../benchmarks/temp-train-2/train_data")
    # copy_train_data_from_src_to_dst("../benchmarks/temp-train-2/valid_data/wrong_extracted_cases/trainData/",
    #                                 "../benchmarks/temp-train-2/valid_data")
    # copy_train_data_from_src_to_dst("../benchmarks/temp-train-2/test_data/wrong_extracted_cases/trainData/",
    #                                 "../benchmarks/temp-train-2/test_data")

    pass
main()
