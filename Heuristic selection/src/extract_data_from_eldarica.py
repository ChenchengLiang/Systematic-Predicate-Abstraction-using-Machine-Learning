import shutil
import glob
import subprocess
import os
from multiprocessing import Pool
import signal
import psutil
from shutil import copy
from Miscellaneous import copy_train_data_from_src_to_dst,clear_directory,copy_and_remove,clear_file

def separate_sat_unsat_dataset_pool(filePath):
    file_list = []
    for (dirpath, dirnames, filenames) in os.walk(filePath):
        file_list += [os.path.join(dirpath, file) for file in filenames]
    pool = Pool(processes=5)
    pool.map(separate_sat_unsat_dataset, file_list)

def separate_sat_unsat_dataset(file):
    print(file)
    try:
        p = subprocess.Popen(["../eldarica-graph-generation/eld", file,"-t:120"], shell=False,stdout=subprocess.PIPE)
        stdOut = p.communicate(timeout=120)
        outputFromEldarica = str(stdOut)
        print(outputFromEldarica)
        if "b\'unsat\\n" in outputFromEldarica:
            print("unsat")
            copy(file,os.path.join("../benchmarks/","LIA-lin-datafold-unsat"))
        elif "b\'sat\\n" in outputFromEldarica:
            print("sat")
            copy(file, os.path.join("../benchmarks/", "LIA-lin-datafold-sat"))
        else:
            print("unkown")
            copy(file, os.path.join("../benchmarks/", "LIA-lin-datafold-other"))

    except subprocess.TimeoutExpired:
        if psutil.pid_exists(p.pid):
            os.kill(p.pid,signal.SIGKILL)


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
        for argument_file,hints_file,horn_file,horn_graph_file,initialHints_file,negativeHints_file,positiveHints_file\
                in zip(glob.glob(root+"/*.arguments"),
                                           glob.glob(root+"/*.hints.graphs"),glob.glob(root+"/*.horn"),glob.glob(root+"/*.HornGraph"),
                                           glob.glob(root+"/*.initialHints"),glob.glob(root+"/*.negativeHints"),glob.glob(root+"/*.positiveHints"),): #identify files need hints
            smt2_file=argument_file[:argument_file.find(".arguments")]
            copy_and_remove(argument_file, root + "/trainData")
            copy_and_remove(hints_file, root + "/trainData")
            copy_and_remove(horn_file, root + "/trainData")
            copy_and_remove(horn_graph_file, root + "/trainData")
            copy_and_remove(initialHints_file, root + "/trainData")
            copy_and_remove(negativeHints_file, root + "/trainData")
            copy_and_remove(positiveHints_file, root + "/trainData")
            shutil.copy(smt2_file, root + "/trainData")
        for json_file in glob.glob(root+"/*.JSON"):
            copy_and_remove(json_file, root + "/trainData")
        for gv_file in glob.glob(root+"/*.gv"):
            copy_and_remove(gv_file, root + "/trainData")




            #copy_tree("../trainData/", root + "/trainData")


    return True

def main():
    # benchmark_list = ["../benchmarks/temp-extract"]
    # for benchmark in benchmark_list:
    #     # check_solvability_pool()
    #     #extract_data_pool(benchmark)
    #     #gather_all_train_data(src=benchmark,dst=benchmark+"-trainData")
    #     separate_dataset_to_train_valid_test_files(benchmark+"-trainData/",benchmark+"-trainData-datafold/")

    separate_sat_unsat_dataset_pool("../benchmarks/LIA-lin-datafold/")

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
