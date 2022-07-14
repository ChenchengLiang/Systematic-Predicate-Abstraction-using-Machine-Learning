import subprocess
import json
import numpy as np
from multiprocessing import Pool
import glob
import os
import time
import pandas as pd
from measurement_functions import read_measurement_from_JSON



def get_solvability_and_measurement_from_eldarica(params):

    # -measurePredictedPredicates -varyGeneratedPredicates
    check_solvability_parameter_list=[]
    check_solvability_parameter_list.append("-checkSolvability  -abstract:empty -t:"+str(params["timeout"]) + " -getHornGraph:monoDirectionLayerGraph")
    check_solvability_parameter_list.append("-checkSolvability  -abstract:unlabeled -t:" + str(params["timeout"]) + " -getHornGraph:monoDirectionLayerGraph")
    check_solvability_parameter_list.append("-checkSolvability  -abstract:labeled -t:" + str(params["timeout"]) + " -getHornGraph:monoDirectionLayerGraph")
    check_solvability_parameter_list.append("-checkSolvability  -abstract:predictedCG -t:" + str(params["timeout"]) + " -getHornGraph:monoDirectionLayerGraph")
    check_solvability_parameter_list.append("-checkSolvability  -abstract:predictedCDHG -t:" + str(params["timeout"]) + " -getHornGraph:hyperEdgeGraph")
    check_solvability_parameter_list.append("-checkSolvability  -abstract:random -t:" + str(params["timeout"]) + " -getHornGraph:monoDirectionLayerGraph")
    check_solvability_parameter_list.append("-checkSolvability  -abstract:term -t:" + str(params["timeout"]) + " -getHornGraph:monoDirectionLayerGraph")
    check_solvability_parameter_list.append("-checkSolvability  -abstract:oct -t:" + str(params["timeout"])+ " -getHornGraph:monoDirectionLayerGraph")
    check_solvability_parameter_list.append("-checkSolvability  -abstract:relEqs -t:" + str(params["timeout"]) + " -getHornGraph:monoDirectionLayerGraph")
    check_solvability_parameter_list.append("-checkSolvability  -abstract:relIneqs -t:" + str(params["timeout"]) + " -getHornGraph:monoDirectionLayerGraph")
    check_solvability_parameter_list.append("-checkSolvability  -abstract:mined -t:" + str(params["timeout"]) + " -getHornGraph:monoDirectionLayerGraph")
    #check_solvability_parameter_list.append("-checkSolvability  -abstract:off -t:" + str(params["timeout"]) + " -getHornGraph:monoDirectionLayerGraph")
    # one thread
    for file in params["filtered_file_list"]:
        for check_solvability_parameter in check_solvability_parameter_list:
            file_and_param = [file, check_solvability_parameter, params["shell_timeout"], params["move_file"], 1,
                              params["splitClauses"]]
            run_eldarica_with_shell(file_and_param)


    # multi-thread
    # check_solvability_parameter_list=params["checkSolvability"] + " " + params["separateByPredicates"] + " " + params["measurePredictedPredicates"] \
    #                                  + " " + params["onlyInitialPredicates"] + " " + params["generateTemplates"] + " " + params["abstract"] + " " + \
    #                                  params["noIntervals"] + " -solvabilityTimeout:" + params["solvabilityTimeout"] + " " + params["getHornGraph"]
    # file_list_with_parameters = (lambda: [
    #     [file, check_solvability_parameter_list, params["timeout"], params["move_file"]] if not os.path.exists(
    #         file + ".solvability.JSON.zip") else [] for
    #     file in params["filtered_file_list"]] if params["continuous_extracting"] == True
    # else [[file, check_solvability_parameter_list, params["timeout"], params["move_file"]] for
    #       file in params["filtered_file_list"]])()
    # file_list_for_solvability_check = list(filter(lambda x: len(x) != 0, file_list_with_parameters))
    # print("file_list_for_solvability_check", len(file_list_for_solvability_check))
    # run_eldarica_with_shell_pool_with_file_list(params["thread_number"], run_eldarica_with_shell, file_list_for_solvability_check)


def get_file_list(folder,fold,file_type):
    file_list = []
    for f in glob.glob("../benchmarks/" + folder + "/"+fold+"/" + "*."+file_type+".zip"):
        if "normalized" not in f and "simplified" not in f:
            file_list.append(f)
    return file_list

def read_solvability(filtered_file_list,benchmark_fold,splitClauses):
    json_solvability_obj_list = read_measurement_from_JSON(filtered_file_list, ".solvability.JSON")
    abstract_option = ["Empty", "Term", "Octagon", "RelationalEqs", "RelationalIneqs", "Random", "Unlabeled", "Labeled",
                       "PredictedCG", "PredictedCDHG", "Mined"]
    solvability_summary = {
        op: {"solvable_number": 0, "solvable_list": [], "unique_solvable_number": 0, "unique_solvable_list": []} for op
        in abstract_option}
    #print("json_solvability_obj_list", json_solvability_obj_list)
    splitClauses_name = "_splitClauses_1" if splitClauses == "-splitClauses:1" else "_splitClauses_0"
    for f in json_solvability_obj_list:
        for op in abstract_option:
            if list(f["solvability_" + op + splitClauses_name])[0] == "1":
                solvability_summary[op]["solvable_number"] = solvability_summary[op]["solvable_number"] + 1
                solvability_summary[op]["solvable_list"].append(
                    f["file_name"][f["file_name"].rfind("/") + 1:-len(".solvability.JSON")])

    # get unique solved list by differernt abstract option
    for i in solvability_summary:
        solvable_set_from_other_option = []
        for j in solvability_summary:
            if j != i:
                solvable_set_from_other_option = solvable_set_from_other_option + solvability_summary[j][
                    "solvable_list"]
        solvable_set_from_other_option = list(set(solvable_set_from_other_option))
        unique_solved_list = set(solvability_summary[i]["solvable_list"]).difference(
            set(solvable_set_from_other_option))
        if len(unique_solved_list) != 0:
            solvability_summary[i]["unique_solvable_number"] = len(unique_solved_list)
            solvability_summary[i]["unique_solvable_list"] = list(unique_solved_list)

    # write solvalbility summary to json file
    #print("solvability_summary",solvability_summary)
    summary_json_file_name = "../benchmarks/" + benchmark_fold + "/solvability_summary.JSON"
    import json
    with open(summary_json_file_name, 'w') as f:
        json.dump(solvability_summary, f, indent=4, sort_keys=True)


    #write to spreadsheet
    fields=["solvingTime","cegarIterationNumber","generatedPredicateNumber","averagePredicateSize","predicateGeneratorTime","solvability",
            "clauseNumberBeforeSimplification","clauseNumberAfterSimplification","smt2FileSizeByte","relationSymbolNumber",
    "minedSingleVariableTemplatesNumber","minedBinaryVariableTemplatesNumber","minedTemplateNumber","minedTemplateRelationSymbolNumber",
      "labeledSingleVariableTemplatesNumber","labeledBinaryVariableTemplatesNumber","labeledTemplateNumber","labeledTemplateRelationSymbolNumber",
      "unlabeledSingleVariableTemplatesNumber","unlabeledBinaryVariableTemplatesNumber","unlabeledTemplateNumber","unlabeledTemplateRelationSymbolNumber"]
    with pd.ExcelWriter("../benchmarks/" + benchmark_fold + "/solvability_summary.xlsx") as writer:
        for op in abstract_option:
            name_list=[]
            field_dict = {field:[] for field in fields}
            for f in json_solvability_obj_list:
                name_list.append(f["file_name"][f["file_name"].rfind("/")+1:][:-len(".solvability.JSON")])
            for f in json_solvability_obj_list:
                for k in field_dict:
                    field_dict[k].append(int(list(f[k+"_" + op + splitClauses_name])[0]))

            final_dict={**{"name_list":name_list},**field_dict}
            data=pd.DataFrame(final_dict)
            data.to_excel(writer, sheet_name=op)




def measurement_control_by_python(benchmark_fold):
    thread_number = 4
    continuous_extracting = True
    move_file = False
    max_nodes_per_batch = 100000
    generateTemplates=""
    separateByPredicates=""#-separateByPredicates
    abstract=""
    generateSimplePredicates=""
    noIntervals=""
    out_of_test_set = True
    timeout= 900
    wrapped_generate_horn_graph_params = {"benchmark_fold": benchmark_fold, "max_nodes_per_batch": max_nodes_per_batch,
                                          "separateByPredicates": separateByPredicates,
                                          "abstract": abstract, "move_file": move_file, "thread_number": thread_number,
                                          "generateSimplePredicates": generateSimplePredicates,
                                          "generateTemplates": generateTemplates, "data_fold": ["test_data"],
                                          "horn_graph_folder": "", "noIntervals": noIntervals}
    filtered_file_list, file_list_with_horn_graph, file_list = \
        wrapped_generate_horn_graph(wrapped_generate_horn_graph_params)#"train_data","valid_data",
    # description: get solvability and measurement info with different predicate setting for unseen data
    params = {"filtered_file_list": filtered_file_list,
                                                            "thread_number": thread_number,
                                                            "continuous_extracting": continuous_extracting,
                                                            "move_file": move_file,
                                                            "checkSolvability": "",
                                                            "generateTemplates": generateTemplates,
                                                            "measurePredictedPredicates": "",
                                                            "onlyInitialPredicates": "", "abstract": abstract,
                                                            "noIntervals": noIntervals,
                                                            "separateByPredicates": separateByPredicates,
                                                            "solvabilityTimeout": str(timeout), "timeout": timeout}

    check_solvability_parameter_list = params["checkSolvability"] + " " + params["separateByPredicates"] + " " + params[
        "measurePredictedPredicates"] \
                                       + " " + params["onlyInitialPredicates"] + " " + params[
                                           "generateTemplates"] + " " + params["abstract"] + " " + \
                                       params["noIntervals"] + " -solvabilityTimeout:" + params["solvabilityTimeout"]
    file_list_with_parameters = (lambda: [
        [file, check_solvability_parameter_list, params["timeout"], params["move_file"]] if not os.path.exists(
            file + ".measurement.JSON.zip") else [] for
        file in params["filtered_file_list"]] if params["continuous_extracting"] == True
    else [[file, check_solvability_parameter_list, params["timeout"], params["move_file"]] for
          file in params["filtered_file_list"]])()

    file_list_for_solvability_check = list(filter(lambda x: len(x) != 0, file_list_with_parameters))
    print("file_list_for_measurement", len(file_list_for_solvability_check))
    run_eldarica_with_shell_pool_with_file_list(params["thread_number"], run_eldarica_with_shell_get_measurement,
                                                file_list_for_solvability_check)


def get_solvability_log(data_fold, command_input,file_type):
    solvability_dict = {}
    #benchmark_name = os.path.join("../benchmarks/", command_input)
    solvable_file_list = []
    for fold in data_fold:
        solvable_file_list = solvable_file_list+get_file_list(command_input, fold, file_type)
        #solvable_file_list = solvable_file_list + glob.glob(benchmark_name + "/" + fold + "/*."+file_type+".zip")
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


def wrapped_generate_horn_graph(params):
    file_list=[]
    for fold in params["data_fold"]:
        current_file_list=get_file_list(params["benchmark_fold"] ,fold,params["file_type"])
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
    generate_horn_graph_params={"file_list":file_list,"max_nodes_per_batch":params["max_nodes_per_batch"],"move_file":params["move_file"],"timeout":params["timeout"],
                                "thread_number":params["thread_number"],"generateSimplePredicates":params["generateSimplePredicates"],
                                "generateTemplates":params["generateTemplates"],"separateByPredicates":params["separateByPredicates"],
                                "abstract":params["abstract"],"noIntervals":params["noIntervals"],"graph_type":params["graph_type"],"splitClauses":params["splitClauses"]}
    generate_horn_graph(generate_horn_graph_params)
    suffix = (lambda: "-0" if params["separateByPredicates"] else "")()
    file_list = [file if os.path.exists(file +suffix + "."+params["graph_type"]+".JSON.zip") else None for file in file_list]
    file_list = list(filter(None, file_list))
    file_list_with_horn_graph = "file with horn graph " + str(len(file_list)) + "/" + str(initial_file_number)
    print("file_list_with_horn_graph", file_list_with_horn_graph)
    # description: filter files by max_nodes_per_batch
    filtered_file_list = filter_file_list_by_max_node(file_list, params["max_nodes_per_batch"],separateByPredicates=params["separateByPredicates"],
                                                      benchmark_fold=params["benchmark_fold"],data_fold=params["data_fold"],graph_type=params["graph_type"])
    print("filtered_file_list",len(filtered_file_list))
    return filtered_file_list,file_list_with_horn_graph,file_list




def generate_horn_graph(params):
    # description: generate horn graph
    timeout = 60*60  # second
    suffix = (lambda: "-0" if params["separateByPredicates"] else "")()
    # todo: use intervals and abstract:off -varyGeneratedPredicates
    # move_file_parameter_eldarica = (lambda: " -moveFile " if params["move_file"] == True else " ")()
    # eldarica_parameters = "-getHornGraph:" + params["graph_type"] + " " + params["separateByPredicates"] + " " + \
    #                       params["generateSimplePredicates"] + " " + params[
    #                           "generateTemplates"] + " " + move_file_parameter_eldarica + " -maxNode:" + str(
    #     params["max_nodes_per_batch"]) + \
    #                       " " + params["abstract"] + " " + params["noIntervals"] + " " + params[
    #                           "splitClauses"]  # +" -mainTimeout:3600"
    #multiple thread
    # file_list_with_parameters = [
    #     [file, eldarica_parameters, timeout, params["move_file"]] if not os.path.exists(
    #         file + suffix + "." + params["graph_type"] + ".JSON.zip") else []
    #     for file in params["file_list"]]
    # file_list_for_horn_graph_generation = list(filter(lambda x: len(x) != 0, file_list_with_parameters))
    # print("file_list_for_horn_graph_generation", len(file_list_for_horn_graph_generation))
    # run_eldarica_with_shell_pool_with_file_list(params["thread_number"], run_eldarica_with_shell,
    #                                             file_list_for_horn_graph_generation)  # continuous extracting

    #one thread
    eldarica_parameters_list=[]
    eldarica_parameters_list.append("-getHornGraph:monoDirectionLayerGraph -extractTemplates -generateTemplates -maxNode:10000 -abstract:empty ")
    #eldarica_parameters_list.append("-getSMT2 -abstract:empty " )
    eldarica_parameters_list.append("-getHornGraph:monoDirectionLayerGraph -maxNode:10000 -abstract:empty " )
    eldarica_parameters_list.append("-getHornGraph:hyperEdgeGraph -maxNode:10000  -abstract:empty " )

    file_list=[]
    for f in params["file_list"]:
        if "normalized" not in f and "simplified" not in f and not os.path.exists(f + suffix + "." + params["graph_type"] + ".JSON.zip"):
            file_list.append(f)
    print("file_list_for_horn_graph_generation", len(file_list),file_list)
    split_clause_option=params["splitClauses"]
    runtime=1
    move_file=True
    shell_timeout=params["timeout"]
    for file in file_list:
        for eldarica_parameters in eldarica_parameters_list:
            file_and_param = [file, eldarica_parameters, shell_timeout, move_file, runtime, split_clause_option]
            run_eldarica_with_shell(file_and_param)

def call_eldarica(file,parameter_list,message="",supplementary_command=[]):
    print("call eldarica for " + message,file)
    param = ["../eldarica-graph-generation/eld", file] + parameter_list
    eld = subprocess.Popen(param, stdout=subprocess.DEVNULL, shell=False)
    eld.wait()
    print("eldarica finished ",file)

def call_eldarica_in_batch(file_list,parameter_list=["-abstract", "-noIntervals"]):
    for file in file_list:
        call_eldarica(file, parameter_list)

def filter_file_list_by_max_node(file_list,max_nodes_per_batch,separateByPredicates="",benchmark_fold="",data_fold=["test_data"],graph_type="hyperEdgeGraph"):
    suffix=""
    if separateByPredicates:
        file_list = []
        for df in data_fold:
            file_list=file_list+glob.glob("../benchmarks/"+benchmark_fold+"/"+df+"/*."+graph_type+".JSON.zip")
        file_list = [file[:-len(".zip")] for file in file_list]
    else:
        suffix="."+graph_type+".JSON"
    filtered_file_list=[]
    for file in file_list:
        file_name=file + suffix
        unzip_file(file_name+".zip")
        with open(file_name) as f:
            loaded_graph = json.load(f)
            if len(loaded_graph["nodeIds"]) < max_nodes_per_batch:
                filtered_file_list.append(file)
        if os.path.exists(file_name+".zip"):
            os.remove(file_name)

    return list(set(filtered_file_list))


def run_eldarica_with_shell_pool(filePath, fun, eldarica_parameters,timeout=60,thread=4,countinous_extract=True,
                                 graphtype="hyperEdgeGraph",runtime=1):
    param_list = []
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
                    if not os.path.exists(file_name +".gv.zip") :
                        param_list.append([file_name,eldarica_parameters,timeout,True,runtime])
            else:
                for file in glob.glob(root + "/*.smt2.zip"):
                    param_list.append([file,eldarica_parameters,timeout,True,runtime])
    run_eldarica_with_shell_pool_with_file_list(thread,fun,param_list)
    return param_list

def run_eldarica_with_shell_pool_with_file_list(thread,fun,file_list):
    pool = Pool(processes=thread)
    pool.map(fun, file_list)


def run_eldarica_with_shell(file_and_param):
    move_file= (lambda : file_and_param[3] if len(file_and_param)>3 else True)()
    runtime = (lambda: file_and_param[4] if len(file_and_param) > 4 else 1)()
    split_clause_option = (lambda: file_and_param[5] if len(file_and_param) > 5 else "")()
    file = file_and_param[0]
    for f in glob.glob(file+"*"):
        unzip_file(f)
        os.remove(f)
    eldarica = "../eldarica-graph-generation/eld "
    # file = "../benchmarks/ulimit-test/Problem19_label06_true-unreach-call.c.flat_000.smt2"
    file_name = file[file.rfind("/") + 1:]
    parameter_list = file_and_param[1]
    parameter_list=changeEldaricaOptionBySolvingTime(file,parameter_list,split_clause_option)
    #parameter_list=parameter_list+ " -log:1"
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

    if move_file==True:
        if used_time>timeout and os.path.exists(file) and (not os.path.exists(file+".gv")):
            new_file="../benchmarks/exceptions/shell-timeout/"+file_name
            os.rename(file,new_file)
            print("extracting " + file_name + " failed due to time out, move file to shell-timeout")
            #compress
            file_compress([new_file], new_file + ".zip")
            os.remove(new_file)
            delete_relative_files(file)


    # compress files
    if os.path.exists(file):
        file_list = glob.glob(file + "*")
        for f in file_list:
            file_compress([f], f + ".zip")
            os.remove(f)


def changeEldaricaOptionBySolvingTime(file,parameter_list,split_clause_option):
    #use abstract option according to solving time
    json_file = file + ".solvingTime.JSON"
    if os.path.exists(json_file) and "-abstract" not in parameter_list:
        abstracOptionDict = {"solvingTime_RelationalEqs_splitClauses_0": "-abstract:relEqs -splitClauses:0",
                             "solvingTime_RelationalEqs_splitClauses_1": "-abstract:relEqs -splitClauses:1",
                             "solvingTime_Octagon_splitClauses_0": "-abstract:oct -splitClauses:0",
                             "solvingTime_Octagon_splitClauses_1": "-abstract:oct -splitClauses:1",
                             "solvingTime_RelationalIneqs_splitClauses_0": "-abstract:relIneqs -splitClauses:0",
                             "solvingTime_RelationalIneqs_splitClauses_1": "-abstract:relIneqs -splitClauses:1",
                             "solvingTime_Term_splitClauses_0": "-abstract:term -splitClauses:0",
                             "solvingTime_Term_splitClauses_1": "-abstract:term -splitClauses:1"}
        maxKeyValue = ["", 60*60*3*1000*10]
        # print("read",json_file)
        with open(json_file) as f:
            loaded_graph = json.load(f)
            for k in loaded_graph:
                #print(k,np.array(loaded_graph[k]))
                if "solvingTime" in k and split_clause_option in k:
                    solvingTime = int(np.array(loaded_graph[k])[0])
                    if solvingTime < maxKeyValue[1]:
                        maxKeyValue[0] = k
                        maxKeyValue[1] = solvingTime
        # add abstract and splitClause otpion
        print(file, "maxKeyValue", maxKeyValue[0],":", maxKeyValue[1])
        parameter_list = parameter_list + " " + abstracOptionDict[maxKeyValue[0]]
        return parameter_list
    else:
        return parameter_list


def run_eldarica_with_shell_get_measurement(file_and_param):
    move_file= (lambda : file_and_param[3] if len(file_and_param)>3 else True)()
    runtime = (lambda: file_and_param[4] if len(file_and_param) > 4 else 1)()
    file = file_and_param[0]
    file_dir_name=os.path.dirname(file)
    unzip_file_list=[]
    for one_file in glob.glob(file+"*"):
        unzip_file(one_file)
        unzip_file_list.append(one_file)
        #os.remove(f)
    eldarica = "../eldarica-graph-generation/eld "
    file_name = file[file.rfind("/") + 1:]
    measurement_params_fold=["true", "full", "empty", "predicted", "random","term", "oct", "relEqs", "relIneqs"]
    measurement_str={}
    for fold in measurement_params_fold:
        if fold in ["empty","term","oct","relEqs","relIneqs"]:
            parameter_list=" -abstract:"+fold + " -singleMeasurement"
        elif fold in ["full"]:
            parameter_list = " -abstract:empty -generateTemplates -singleMeasurement"
        elif fold in ["random"]:
            parameter_list = " -abstract:empty -generateTemplates -rdm -singleMeasurement"
        elif fold in ["predicted"]:
            parameter_list = " -abstract:empty -generateTemplates -readTemplates -singleMeasurement"
        elif fold in ["true"]:
            parameter_list = " -abstract:empty -generateTemplates -readTrueLabel -singleMeasurement"

        timeout=file_and_param[2]
        shell_file_name = "run-ulimit" + "-" + file_name + ".sh"
        timeout_command = "timeout "+str(timeout)
        f_shell = open(shell_file_name, "w")
        f_shell.write("#!/bin/sh\n")
        f_shell.write(timeout_command + " " + eldarica + " " + file + " " + parameter_list + "\n")
        f_shell.close()
        supplementary_command = ["sh", shell_file_name]
        used_time=0
        for i in range(runtime):
            if os.path.exists(file):
                used_time=used_time+call_Eldarica_one_time(file_name,parameter_list,supplementary_command,str(i+1)+"/"+str(runtime))

        used_time=used_time/runtime
        # subprocess.call(supplementary_command)
        os.remove(shell_file_name)
        #read measurement
        json_file=file+".measure.JSON"
        if os.path.exists(json_file):
            with open(json_file) as f:
                loaded_measurement = json.load(f)
            measurement_str["measurementWith"+fold+"Label"]=loaded_measurement
            os.remove(json_file)
        else:
            relative_files = glob.glob(file + "*")
            for file in relative_files:
                if os.path.exists(file):
                    os.rename(file,"../benchmarks/exceptions/shell-timeout/"+os.path.basename(file))

    if os.path.exists(file):
        with open(file_dir_name+'/'+ file_name + '.measurement.JSON', 'w') as f:
            json.dump(measurement_str, f, indent=4)

        # compress files
        for f in unzip_file_list:
            os.remove(f)
        file_list = glob.glob(file + "*")
        for f in file_list:
            file_compress([f], f + ".zip")
            os.remove(f)

def delete_relative_files(f):
    relative_files = glob.glob(f + "*")
    for file in relative_files:
        if os.path.exists(file):
            os.remove(file)

def copy_relative_files(source, des):
    from shutil import copy
    try:
        #copy(source, des)
        relative_file_list = glob.glob(source + "*")
        for file in relative_file_list:
            copy(file, des)
    except:
        print("file existed")

def run_eldarica_with_shell_get_solvability(file_and_param):
    #todo:debug for ""File is not a zip file""
    move_file= (lambda : file_and_param[3] if len(file_and_param)>3 else True)()
    runtime = (lambda: file_and_param[4] if len(file_and_param) > 4 else 1)()
    file = file_and_param[0]
    file_dir_name=os.path.dirname(file)
    unzip_file_list=[]
    # todo: rename these file to not be deleted by Eldarica
    # zipped_file_list=glob.glob(file+"*")
    # for f in zipped_file_list:

    for f in glob.glob(file+"*"):
        unzip_file(f)
        unzip_file_list.append(f[:-len(".zip")])
        #os.remove(f)
    print("unzip_file_list",unzip_file_list)
    eldarica = "../eldarica-graph-generation/eld "
    # file = "../benchmarks/ulimit-test/Problem19_label06_true-unreach-call.c.flat_000.smt2"
    file_name = file[file.rfind("/") + 1:]
    # parameter_list = file_and_param[1]
    # print("parameter_list",parameter_list)
    solvability_params_fold=["full","empty","predicted","random","term","oct","relEqs","relIneqs"]
    solvability_str={}
    for fold in solvability_params_fold:
        if fold in ["empty","term","oct","relEqs","relIneqs"]:
            parameter_list=" -abstract:"+fold + " -moveFile"
        elif fold in ["full"]:
            parameter_list = " -abstract:empty -generateTemplates -moveFile"
        elif fold in ["random"]:
            parameter_list = " -abstract:empty -generateTemplates -rdm -moveFile"
        elif fold in ["predicted"]:
            parameter_list = " -abstract:empty -generateTemplates -readTemplates -moveFile"

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
            if os.path.exists(file): #if moved by Eldarica zip it back
                used_time=used_time+call_Eldarica_one_time(file_name,parameter_list,supplementary_command,str(i+1)+"/"+str(runtime))

        used_time=used_time/runtime
        # subprocess.call(supplementary_command)
        os.remove(shell_file_name)

        solvability_str["solveTime"+fold+"InitialPredicates"]=used_time
        if used_time<timeout and os.path.exists(file):
            solvability_str["solvability"+fold+"InitialPredicates"]="true"
        else:
            solvability_str["solvability"+fold+"InitialPredicates"] = "false"

    solvability_file=file_dir_name+'/'+ file_name + '.solvability.JSON'
    if os.path.exists(file):
        with open(solvability_file, 'w') as f:
            json.dump(solvability_str, f, indent=4)

    for f in unzip_file_list:
        if os.path.exists(f):
            os.remove(f)
    # compress solvability_file
    if os.path.exists(solvability_file):
        file_compress([solvability_file], solvability_file + ".zip")
        os.remove(solvability_file)


def call_Eldarica_one_time(file_name,parameter_list,supplementary_command,runtime_progress):
    print("-" * 20)
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





