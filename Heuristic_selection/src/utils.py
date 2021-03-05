import subprocess
import json
import matplotlib.pyplot as plt
import numpy as np
from multiprocessing import Pool
import glob
import os
def call_eldarica(file,parameter_list,message="",supplementary_command=[]):
    print("call eldarica for " + message,file)
    param = ["../eldarica-graph-generation/eld", file] + parameter_list
    eld = subprocess.Popen(param, stdout=subprocess.DEVNULL, shell=False)
    eld.wait()
    print("eldarica finished ",file)

def call_eldarica_in_batch(file_list,parameter_list=["-abstract", "-noIntervals"]):
    for file in file_list:
        call_eldarica(file, parameter_list)

def filter_file_list_by_max_node(file_list,max_nodes_per_batch):
    filtered_file_list=[]
    for file in file_list:
        with open(file+".hyperEdgeHornGraph.JSON") as f:
            loaded_graph = json.load(f)
            if len(loaded_graph["nodeIds"]) <max_nodes_per_batch:
                filtered_file_list.append(file)
    return filtered_file_list

def plot_scatter(true_Y,predicted_Y,name="",range=0):
    a = plt.axes(aspect='equal')
    plt.scatter(true_Y, predicted_Y)
    plt.xlabel('True Values')
    plt.ylabel('Predictions')
    small_lims = [0,range]
    lims = [0, np.max([np.max(true_Y), np.max(predicted_Y)])]
    lims = (lambda : small_lims if range!=0 else lims)()
    plt.xlim(lims)
    plt.ylim(lims)
    _ = plt.plot(lims, lims)
    plt.savefig("trained_model/" + name+ "-scatter.png")
    plt.clf()


def run_eldarica_with_shell_pool(filePath, fun, eldarica_parameters, countinous_extract=True):
    file_list = []
    for root, subdirs, files in os.walk(filePath):
        if len(subdirs) == 0:
            if countinous_extract == True:
                for file in glob.glob(root + "/*.smt2"):
                    if not os.path.exists(file + ".circles.gv"):
                        file_list.append([file, eldarica_parameters])
            else:
                for file in glob.glob(root + "/*.smt2"):
                    file_list.append([file, eldarica_parameters])
    pool = Pool(processes=4)
    pool.map(fun, file_list)


def run_eldarica_with_shell(file_and_param):
    file = file_and_param[0]
    eldarica = "../eldarica-graph-generation/eld "
    # file = "../benchmarks/ulimit-test/Problem19_label06_true-unreach-call.c.flat_000.smt2"
    file_name = file[file.rfind("/") + 1:]
    parameter_list = file_and_param[1]
    shell_file_name = "run-ulimit" + "-" + file_name + ".sh"
    timeout_command = "timeout 30"
    f = open(shell_file_name, "w")
    f.write("#!/bin/sh\n")
    # f.write("ulimit -m 4000000; \n")
    # f.write("ulimit -v 6000000; \n")
    # f.write("ulimit -a; \n")
    f.write(timeout_command + " " + eldarica + " " + file + " " + parameter_list + "\n")
    f.close()
    supplementary_command = ["sh", shell_file_name]
    eld = subprocess.Popen(supplementary_command, stdout=subprocess.DEVNULL, shell=False)
    eld.wait()
    # subprocess.call(supplementary_command)
    os.remove(shell_file_name)
