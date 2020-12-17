import glob
import subprocess
import os
from multiprocessing import Pool
import signal
import psutil
import random
from shutil import copy

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

def separateDatasetToFold(path):
    file_list=[]
    for (dirpath, dirnames, filenames) in os.walk(path):
        file_list += [os.path.join(dirpath, file) for file in filenames]
    random.shuffle(file_list)
    print("file_list",len(file_list))
    directory = path+"-datafold"
    data_fold_folder_list=[os.path.join(directory,"train_data"),os.path.join(directory, "valid_data"),os.path.join(directory, "test_data")]
    if not os.path.exists(directory):
        os.makedirs(directory)
        for folder in data_fold_folder_list:
            os.makedirs(folder)
    file_fold_list=[file_list[:int(len(file_list)/3)],file_list[int(len(file_list)/3):int(len(file_list)*2/3)],file_list[int(len(file_list)*2/3):]]

    for fold_folder,file_fold in zip(data_fold_folder_list,file_fold_list):
        print("file_fold",len(file_fold))
        for file in file_fold:
            copy(file,fold_folder)


def extract_graph_from_eldarica(parameters):
    file=parameters[0]
    popen_parameter=["../eldarica-graph-generation/eld",file]
    for eldarica_parameter in parameters[1]:
        popen_parameter.append(eldarica_parameter)
    print("extracting",file)
    eld = subprocess.Popen(popen_parameter, stdout=subprocess.DEVNULL,shell=False)
    eld.wait()
    print("extracting finished", file)
def extract_train_data_pool(filePath,fun,countinous_extract=False,parameterList=[]):
    file_list = []
    for root, subdirs, files in os.walk(filePath):
        if len(subdirs)==0:
            if countinous_extract==True:
                for file in glob.glob(root+"/*.smt2"):
                    if not os.path.exists(file+".circles.gv"):
                        file_list.append([file,parameterList])
            else:
                for file in glob.glob(root + "/*.smt2"):
                    file_list.append([file,parameterList])
    pool = Pool(processes=6)
    pool.map(fun, file_list)


def main():
    #todo: extract unsat dataset
    #todo: extract template dataset
    #"-extractPredicates","-noIntervals","-absTimeout:120","getLabelFromCE","-getHornGraph","-getHornGraph:biDirectionLayerGraph","-getHornGraph:hyperEdgeGraph","-getHornGraph:monoDirectionLayerGraph","-getHornGraph:hybridDirectionLayerGraph","fineGrainedEdgeTypeLayerGraph"
    #parameterList = ["-getLabelFromCE", "-abstract:manual"]
    #parameterList = ["-getHornGraph","-abstract:manual"]
    parameterList = ["-generateSimplePredicates","-noIntervals", "-abstract"]
    #parameterList = ["-noIntervals", "-abstract:off","-generateSimplePredicates"]
    extract_train_data_pool("../benchmarks/small-dataset-trainData-datafold-test/",extract_graph_from_eldarica,countinous_extract=True,parameterList=parameterList)

main()
