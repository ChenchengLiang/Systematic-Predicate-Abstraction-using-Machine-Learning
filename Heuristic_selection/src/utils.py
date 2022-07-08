import shutil
import subprocess
import json
import matplotlib.pyplot as plt
import numpy as np
from multiprocessing import Pool
import glob
import os
import time
import seaborn

def call_eldarica(file,parameter_list,message="",supplementary_command=[]):
    print("call eldarica for " + message,file)
    param = ["../eldarica-graph-generation/eld", file] + parameter_list
    eld = subprocess.Popen(param, stdout=subprocess.DEVNULL, shell=False)
    eld.wait()
    print("eldarica finished ",file)

def call_eldarica_in_batch(file_list,parameter_list=["-abstract", "-noIntervals"]):
    for file in file_list:
        call_eldarica(file, parameter_list)



def run_eldarica_with_shell_pool(filePath, fun, eldarica_parameters,timeout=60,thread=4,countinous_extract=True,
                                 graphtype="hyperEdgeGraph",runtime=1):
    file_list = []
    for root, subdirs, files in os.walk(filePath):
        if len(subdirs) == 0:

            if len(glob.glob(root + "/*.smt2"))!=0:
                for f in glob.glob(root + "/*.smt2"):
                    file_compress([f], f + ".zip")
                    os.remove(f)

            if countinous_extract == True:
                for file in glob.glob(root + "/*.smt2.zip"):
                    #if not os.path.exists(file + ".circles.gv"):
                    file_name=file[:-len(".zip")]
                    if not os.path.exists(file_name +".circles.gv.zip") :
                        file_list.append([file_name,eldarica_parameters,timeout,True,runtime])
            else:
                for file in glob.glob(root + "/*.smt2.zip"):
                    file_list.append([file,eldarica_parameters,timeout,True,runtime])
    run_eldarica_with_shell_pool_with_file_list(thread,fun,file_list)
    return file_list

def run_eldarica_with_shell_pool_with_file_list(thread,fun,file_list):
    pool = Pool(processes=thread)
    pool.map(fun, file_list)


def run_eldarica_with_shell(file_and_param):
    move_file= (lambda : file_and_param[3] if len(file_and_param)>3 else True)()
    runtime = (lambda: file_and_param[4] if len(file_and_param) > 4 else 1)()
    file = file_and_param[0]
    for f in glob.glob(file+"*"):
        unzip_file(f)
        os.remove(f)
    eldarica = "../eldarica-graph-generation/eld "
    # file = "../benchmarks/ulimit-test/Problem19_label06_true-unreach-call.c.flat_000.smt2"
    file_name = file[file.rfind("/") + 1:]
    parameter_list = file_and_param[1]
    timeout=file_and_param[2]
    shell_file_name = "run-ulimit" + "-" + file_name + ".sh"
    timeout_command = "timeout "+str(timeout)
    f = open(shell_file_name, "w")
    f.write("#!/bin/sh\n")
    # f.write("ulimit -m 4000000; \n")
    # f.write("ulimit -v 6000000; \n")
    # f.write("ulimit -a; \n")
    f.write(timeout_command + " " + eldarica + " " + file + " " + parameter_list + "\n")
    f.close()
    supplementary_command = ["sh", shell_file_name]
    used_time=0
    for i in range(runtime):
        if os.path.exists(file): #not moved by Eldarica
            used_time=used_time+call_Eldarica_one_time(file_name,parameter_list,supplementary_command,str(i+1)+"/"+str(runtime))
    used_time=used_time/runtime
    # subprocess.call(supplementary_command)
    os.remove(shell_file_name)

    if used_time>timeout and os.path.exists(file) and (not os.path.exists(file+"circles.gv")) and move_file==True:
        os.rename(file,"../benchmarks/exceptions/shell-timeout/"+file_name)
        print("extracting " + file_name + " failed due to time out, move file to shell-timeout")

    # compress files
    if os.path.exists(file):
        file_list = glob.glob(file + "*")
        for f in file_list:
            file_compress([f], f + ".zip")
            os.remove(f)


def call_Eldarica_one_time(file_name,parameter_list,supplementary_command,runtime_progress):
    print("extracting " + file_name, parameter_list,runtime_progress)
    start = time.time()
    eld = subprocess.Popen(supplementary_command, stdout=subprocess.DEVNULL, shell=False)
    eld.wait()
    end = time.time()
    used_time = end - start
    print("extracting " + file_name + " finished", "use time: ", used_time,runtime_progress)
    return used_time

def file_compress(inp_file_names, out_zip_file):
    import zipfile
    compression = zipfile.ZIP_DEFLATED
    zf = zipfile.ZipFile(out_zip_file, mode="w")
    try:
        for file_to_write in inp_file_names:
            zf.write(file_to_write, os.path.basename(out_zip_file)[:-len(".zip")], compress_type=compression)
    except FileNotFoundError as e:
        print("*** Exception occurred during zip process -" ,str(e))
    finally:
        zf.close()

def folder_compress(output_filename,dir_name):
    import shutil
    shutil.make_archive(output_filename, 'zip', dir_name)

def get_recall_and_precision(true_label,predicted_label,verbose=False):
    truePositive, trueNegative, faslePositive, falseNegative = 0, 0, 0, 0
    for t, p in zip(true_label, predicted_label):
        if t == 1 and p == 1:
            truePositive = truePositive + 1
        elif t == 0 and p == 0:
            trueNegative = trueNegative + 1
        elif t == 0 and p == 1:
            faslePositive = faslePositive + 1
        elif t == 1 and p == 0:
            falseNegative = falseNegative + 1

    falsePositiveRate=faslePositive/(faslePositive+trueNegative)
    precision = (lambda : 0 if truePositive==0 else round(truePositive / (truePositive + faslePositive),2))()
    '''
    precision is  true positive results divided by the number of all positive results, including those not identified correctly
    
    higher precision closer to empty label
    higher precision = lower falsePositive means more negative label. closer to the combination given by train data
    lower precision = higher falsePositive means try to find new combination in redundancy given by the train data (a part of one combination)
    '''
    recall = (lambda : 0 if truePositive==0 else round(truePositive / (truePositive + falseNegative),2))()
    '''
    recall is the number of true positive results divided by the number of all samples that should have been identified as positive
    
    higher recall = lower flaseNegative means closer to full label, possible to give new combination
    lower recall = higher flaseNegative means less probability to find the same combination given by train data.
    lower recall have higher probability to eliminate more redundant predicates to find new combination.
    In summary, both direction provide possibility to get new combination. Lower recall tend to give newer and smaller combination 
    '''
    f1_score= (lambda : 0 if truePositive==0 else round((2*recall*precision) /(recall+precision),2))()
    '''
    F1 score is the harmonic mean of precision and recall
    the highest possible value of an F-score is 1.0, indicating perfect precision and recall, and the lowest possible value is 0, if either the precision or the recall is zero.
    Higher F1 score means closer to the results given by train data
    '''
    if verbose==True:
        print("----- statistic info -----")
        print("truePositive", truePositive)
        print("trueNegative", trueNegative)
        print("faslePositive", faslePositive)
        print("falseNegative", falseNegative)
        print("precision", precision)
        print("recall/true positive rate", recall)
        print("false positive rate",falsePositiveRate)
        print("f1_score", f1_score)
    return recall, precision,f1_score,falsePositiveRate

def read_minimizedPredicateFromCegar(fild_name, json_solvability_obj_list):
    minimizedPredicateFromCegar_for_empty_initial_predicates = [
        s[fild_name]
        for s in json_solvability_obj_list]
    return list(map(lambda x: int(x), minimizedPredicateFromCegar_for_empty_initial_predicates))

def flattenList(t):
    return [item for sublist in t for item in sublist]

def assemble_name(*args):
    name=""
    for a in args:
        name=name+"-"+a
    return name[1:]

def mutual_differences(set_1,set_2):
    set_1=set(set_1)
    set_2=set(set_2)
    return set_1.difference(set_2).union(set_2.difference(set_1))



def print_multiple_object(d):
    for k in d:
        print(k,d[k])

def unzip_file(zip_file):
    if os.path.exists(zip_file):
        import zipfile
        with zipfile.ZipFile(zip_file, 'r') as zip_ref:
            zip_ref.extractall(os.path.dirname(zip_file))
    else:
        print("zip file "+zip_file+" not existed")




