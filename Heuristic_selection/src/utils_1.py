import subprocess
import json
import numpy as np
from multiprocessing import Pool
import glob
import os
import time


def get_solvability_log(data_fold, command_input):
    solvability_dict = {}
    benchmark_name = os.path.join("../benchmarks/", command_input)
    solvable_file_list = []
    for fold in data_fold:
        solvable_file_list = solvable_file_list + glob.glob(benchmark_name + "/" + fold + "/*.smt2.zip")
    solvable_file_list = [os.path.basename(f) for f in solvable_file_list]
    solvability_dict["solvable-file"] = solvable_file_list
    folder_name_list, file_list = get_exceptions_folder_names()
    for folder_name, files in zip(folder_name_list, file_list):
        solvability_dict[folder_name] = files

    solvability_dict_with_number = {"number-of-" + k: len(solvability_dict[k]) for k in solvability_dict}
    solvability_dict_with_number.update(solvability_dict)
    with open('../benchmarks/exceptions/benchmark_info_' + command_input + '.JSON', 'w') as f:
        json.dump(solvability_dict_with_number, f, indent=4)


def get_exceptions_folder_names():
    folder_name_list = []
    file_list = []
    benchmark_name_excepiton = os.path.join("../benchmarks/", "exceptions")
    for root, subdirs, files in os.walk(benchmark_name_excepiton):
        if len(subdirs) == 0:
            folder_name_list.append(root[root.rfind("/") + 1:])
            file_list.append(files)
    return folder_name_list, file_list


def get_solvability_and_measurement_from_eldarica(params):

    # -measurePredictedPredicates -varyGeneratedPredicates
    check_solvability_parameter_list=params["checkSolvability"] + " " + params["separateByPredicates"] + " " + params["measurePredictedPredicates"] \
                                     + " " + params["onlyInitialPredicates"] + " " + params["generateTemplates"] + " " + params["abstract"] + " " + \
                                     params["noIntervals"] + " -solvabilityTimeout:" + params["solvabilityTimeout"]

    file_list_with_parameters = (lambda: [
        [file, check_solvability_parameter_list, params["timeout"], params["move_file"]] if not os.path.exists(
            file + ".solvability.JSON.zip") else [] for
        file in params["filtered_file_list"]] if params["continuous_extracting"] == True
    else [[file, check_solvability_parameter_list, params["timeout"], params["move_file"]] for
          file in params["filtered_file_list"]])()
    file_list_for_solvability_check = list(filter(lambda x: len(x) != 0, file_list_with_parameters))
    print("file_list_for_solvability_check", len(file_list_for_solvability_check))
    run_eldarica_with_shell_pool_with_file_list(params["thread_number"], run_eldarica_with_shell, file_list_for_solvability_check)

def wrapped_generate_horn_graph(params):
    file_list=[]
    for fold in params["data_fold"]:
        current_folder="../benchmarks/" + params["benchmark_fold"] + "/"+fold
        current_file_list=glob.glob(current_folder+"/*.smt2.zip")
        file_list = file_list + current_file_list
        # if horn_graph_folder!="": #before continous genereate horn graphs, copy from prepared horn graph
        #     for f in current_file_list:
        #         graph_file=f+".hyperEdgeHornGraph.JSON"
        #         if not os.path.exists(graph_file):
        #             shutil.copy(os.path.join("../benchmarks/",horn_graph_folder)+"/"+graph_file,current_folder)

    initial_file_number = len(file_list)
    print("file_list " + str(initial_file_number))
    file_list=[f[:-len(".zip")] for f in file_list]

    # description: generate horn graph
    generate_horn_graph_params={"file_list":file_list,"max_nodes_per_batch":params["max_nodes_per_batch"],"move_file":params["move_file"],
                                "thread_number":params["thread_number"],"generateSimplePredicates":params["generateSimplePredicates"],
                                "generateTemplates":params["generateTemplates"],"separateByPredicates":params["separateByPredicates"],
                                "abstract":params["abstract"],"noIntervals":params["noIntervals"]}
    generate_horn_graph(generate_horn_graph_params)
    suffix = (lambda: "-0" if params["separateByPredicates"] else "")()
    file_list = [file if os.path.exists(file +suffix + ".hyperEdgeHornGraph.JSON.zip") else None for file in file_list]
    file_list = list(filter(None, file_list))
    file_list_with_horn_graph = "file with horn graph " + str(len(file_list)) + "/" + str(initial_file_number)
    print("file_list_with_horn_graph", file_list_with_horn_graph)
    # description: filter files by max_nodes_per_batch
    filtered_file_list = filter_file_list_by_max_node(file_list, params["max_nodes_per_batch"],separateByPredicates=params["separateByPredicates"],
                                                      benchmark_fold=params["benchmark_fold"],data_fold=params["data_fold"])
    print("filtered_file_list",len(filtered_file_list))
    return filtered_file_list,file_list_with_horn_graph,file_list

def generate_horn_graph(params):
    # description: generate horn graph
    timeout = 60*60  # second
    move_file_parameter_eldarica = (lambda: " -moveFile " if params["move_file"] == True else " ")()
    # todo: use intervals and abstract:off -varyGeneratedPredicates
    eldarica_parameters = "-getHornGraph:hyperEdgeGraph "+params["separateByPredicates"]+" "+\
                          params["generateSimplePredicates"] +" "+params["generateTemplates"]+" " + move_file_parameter_eldarica + " -maxNode:" + str(
        params["max_nodes_per_batch"]) + " "+params["abstract"] +" "+params["noIntervals"]+" -mainTimeout:3600"
    suffix = (lambda: "-0" if params["separateByPredicates"] else "")()

    file_list_with_parameters = [
        [file, eldarica_parameters, timeout, params["move_file"]] if not os.path.exists(file+suffix + ".hyperEdgeHornGraph.JSON.zip") else []
        for file in params["file_list"]]

    file_list_for_horn_graph_generation = list(filter(lambda x: len(x) != 0, file_list_with_parameters))
    print("file_list_for_horn_graph_generation", len(file_list_for_horn_graph_generation))
    run_eldarica_with_shell_pool_with_file_list(params["thread_number"], run_eldarica_with_shell, file_list_for_horn_graph_generation) #continuous extracting

def call_eldarica(file,parameter_list,message="",supplementary_command=[]):
    print("call eldarica for " + message,file)
    param = ["../eldarica-graph-generation/eld", file] + parameter_list
    eld = subprocess.Popen(param, stdout=subprocess.DEVNULL, shell=False)
    eld.wait()
    print("eldarica finished ",file)

def call_eldarica_in_batch(file_list,parameter_list=["-abstract", "-noIntervals"]):
    for file in file_list:
        call_eldarica(file, parameter_list)

def filter_file_list_by_max_node(file_list,max_nodes_per_batch,separateByPredicates="",benchmark_fold="",data_fold=["test_data"]):
    suffix=""
    if separateByPredicates:
        file_list = []
        for df in data_fold:
            file_list=file_list+glob.glob("../benchmarks/"+benchmark_fold+"/"+df+"/*.hyperEdgeHornGraph.JSON.zip")
        file_list = [file[:-len(".zip")] for file in file_list]
    else:
        suffix=".hyperEdgeHornGraph.JSON"
    filtered_file_list=[]
    for file in file_list:
        file_name=file + suffix
        unzip_file(file_name+".zip")
        with open(file_name) as f:
            loaded_graph = json.load(f)
            if len(loaded_graph["nodeIds"]) < max_nodes_per_batch:
                filtered_file_list.append(file[:file.rfind("smt2") + 4])
        if os.path.exists(file_name+".zip"):
            os.remove(file_name)

    return list(set(filtered_file_list))



def run_eldarica_with_shell_pool(filePath, fun, eldarica_parameters,timeout=60,thread=4,countinous_extract=True,
                                 graphtype="hyperEdgeHornGraph",runtime=1):
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



def run_eldarica_with_shell_get_solvability(file_and_param):
    move_file= (lambda : file_and_param[3] if len(file_and_param)>3 else True)()
    runtime = (lambda: file_and_param[4] if len(file_and_param) > 4 else 1)()
    file = file_and_param[0]
    file_dir_name=os.path.dirname(file)
    for f in glob.glob(file+"*"):
        unzip_file(f)
        os.remove(f)
    eldarica = "../eldarica-graph-generation/eld "
    # file = "../benchmarks/ulimit-test/Problem19_label06_true-unreach-call.c.flat_000.smt2"
    file_name = file[file.rfind("/") + 1:]
    # parameter_list = file_and_param[1]
    # print("parameter_list",parameter_list)
    solvability_params_fold=["full","empty","predicted","random","term","oct","relEqs","relIneqs"]
    solvability_str={}
    for fold in solvability_params_fold:
        if fold in ["empty","term","oct","relEqs","relIneqs"]:
            parameter_list=" -abstract:"+fold
        elif fold in ["full"]:
            parameter_list = " -abstract:empty -generateTemplates"
        elif fold in ["random"]:
            parameter_list = " -abstract:empty -generateTemplates -rdm"
        elif fold in ["predicted"]:
            parameter_list = " -abstract:empty -generateTemplates -readTemplates"

        timeout=file_and_param[2]
        shell_file_name = "run-ulimit" + "-" + file_name + ".sh"
        timeout_command = "timeout "+str(timeout)
        f = open(shell_file_name, "w")
        f.write("#!/bin/sh\n")
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

        solvability_str["solveTime"+fold+"InitialPredicates"]=used_time
        if used_time>timeout:
            solvability_str["solvability"+fold+"InitialPredicates"]="false"
        else:
            solvability_str["solvability"+fold+"InitialPredicates"] = "true"


    with open(file_dir_name+'/'+ file_name + '.solvability.JSON', 'w') as f:
        json.dump(solvability_str, f, indent=4)

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
        print(str(e))
    finally:
        zf.close()



def unzip_file(zip_file):
    if os.path.exists(zip_file):
        import zipfile
        with zipfile.ZipFile(zip_file, 'r') as zip_ref:
            zip_ref.extractall(os.path.dirname(zip_file))
    else:
        print("zip file "+zip_file+" not existed")



