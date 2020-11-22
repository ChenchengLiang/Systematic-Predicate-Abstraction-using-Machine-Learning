import shutil
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

def extract_train_data_templates(file):
    print("extracting",file)
    eld = subprocess.Popen(["../eldarica-graph-generation-temp/eld",file,"-extractPredicates","-noIntervals","-absTimeout:120"], stdout=subprocess.DEVNULL,
                           shell=False)
    eld.wait()
def extract_train_data_unsat(file):
    print("extracting",file)
    eld = subprocess.Popen(["../eldarica-graph-generation-temp/eld",file,"-getLabelFromCE"], stdout=subprocess.DEVNULL,shell=False)
    eld.wait()
def extract_all_graph(file):
    print("extracting",file)
    eld = subprocess.Popen(["../eldarica-graph-generation-temp/eld",file,"-getHornGraph"], stdout=subprocess.DEVNULL,shell=False)
    eld.wait()
def extract_bi_layer_graph(file):
    print("extracting",file)
    eld = subprocess.Popen(["../eldarica-graph-generation-temp/eld",file,"-getHornGraph:biDirectionLayerGraph"], stdout=subprocess.DEVNULL,shell=False)
    eld.wait()
def extract_hyperedge_graph(file):
    print("extracting",file)
    eld = subprocess.Popen(["../eldarica-graph-generation-temp/eld",file,"-getHornGraph:hyperEdgeGraph"], stdout=subprocess.DEVNULL,shell=False)
    eld.wait()
def extract_mono_layer_graph(file):
    print("extracting",file)
    eld = subprocess.Popen(["../eldarica-graph-generation-temp/eld",file,"-getHornGraph:monoDirectionLayerGraph"], stdout=subprocess.DEVNULL,shell=False)
    eld.wait()
def extract_hybrid_layer_graph(file):
    print("extracting",file)
    eld = subprocess.Popen(["../eldarica-graph-generation-temp/eld",file,"-getHornGraph:hybridDirectionLayerGraph"], stdout=subprocess.DEVNULL,shell=False)
    eld.wait()
def extract_train_data_pool(filePath,fun):
    file_list = []
    for root, subdirs, files in os.walk(filePath):
        if len(subdirs)==0:
            file_list+=glob.glob(root+"/*.smt2")
    pool = Pool(processes=3)
    pool.map(fun, file_list)



def main():
    #todo: extract unsat dataset [processing in laptop]
    extract_train_data_pool("../benchmarks/LIA-lin-noInterval-trainData-datafold-graphs/",extract_all_graph)

main()
