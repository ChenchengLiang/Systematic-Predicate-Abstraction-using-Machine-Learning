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
from sklearn.metrics import confusion_matrix,multilabel_confusion_matrix

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

def plot_scatter(true_Y,predicted_Y,name="",range=[0,0],x_label="True Values",y_label="Predictions"):
    a = plt.axes(aspect='equal')
    plt.scatter(true_Y, predicted_Y)
    plt.xlabel(x_label)
    plt.ylabel(y_label)
    small_lims = range
    lims = [0, np.max([np.max(true_Y), np.max(predicted_Y)])]
    lims = (lambda : small_lims if range!=[0,0] else lims)()
    plt.xlim(lims)
    plt.ylim(lims)
    _ = plt.plot(lims, lims)
    plt.savefig("trained_model/" + name+ "-scatter.png")
    plt.clf()

def plot_confusion_matrix(predicted_Y_loaded_model,true_Y,saving_path,recall=0,precision=0,f1_score=0,threshold=0.5,label="template_relevance"):
    predicted_Y_loaded_model = my_round_fun(np.array(predicted_Y_loaded_model),label=label)
    #predicted_Y_loaded_model =  list(map(my_round_fun,np.array(predicted_Y_loaded_model)))#tf.math.round(predicted_Y_loaded_model)
    if label=="node_multiclass":
        predicted_Y_loaded_model=[np.argmax(x) for x in predicted_Y_loaded_model]
        true_Y = [np.argmax(x) for x in true_Y]
        cm = confusion_matrix(true_Y, predicted_Y_loaded_model)
    else:
        cm = confusion_matrix(true_Y, predicted_Y_loaded_model)
    plt.figure(figsize=(5, 5))
    seaborn.heatmap(cm, annot=True, fmt="d")
    plt.title("recall:"+str(recall)+", precision:"+str(precision)+",f1_score:"+str(f1_score))
    plt.ylabel('Actual label')
    plt.xlabel('Predicted label')
    plt.savefig(saving_path)
    plt.clf()
    seaborn.reset_defaults()
def plot_ROC(FP_rate,TP_rate,saving_path):
    plt.clf()
    plt.xlabel('FP rate')
    plt.ylabel('TP rate')
    plt.xlim([0,1])
    plt.ylim([0,1])
    plt.plot(FP_rate,TP_rate, label="ROC")
    plt.scatter(FP_rate, TP_rate)
    plt.legend()
    plt.savefig(saving_path)
    plt.clf()

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
def get_statistic_data(file_list,benchmark_fold="",separateByPredicates="",max_nodes_per_batch=10000):
    true_label = []
    predicted_label = []
    predicted_label_logit=[]
    file_list=glob.glob("../benchmarks/"+benchmark_fold+"/test_data/*.hyperEdgeHornGraph.JSON")
    for file in file_list:
        with open(file) as f:
            loaded_graph = json.load(f)
            if len(loaded_graph["nodeIds"])< max_nodes_per_batch:
                predicted_label.append(loaded_graph["predictedLabel"])
                true_label.append(loaded_graph["templateRelevanceLabel"])
                predicted_label_logit.append(loaded_graph["predictedLabelLogit"])
    true_label = flattenList(true_label)
    predicted_label = flattenList(predicted_label)
    predicted_label_logit = flattenList(predicted_label_logit)
    predicted_label_logit=[float(l) for l in predicted_label_logit]

    recall,precision,f1_score,false_positive_rate=get_recall_and_precision(true_label, predicted_label,verbose=True)

    #saving_path_confusion_matrix="../benchmarks/"+benchmark_fold+"/confusion-matrix.png"
    #saving_path_roc = "../benchmarks/" + benchmark_fold + "/ROC.png"
    saving_path_confusion_matrix="trained_model/"+benchmark_fold+"-confusion-matrix.png"
    saving_path_roc="trained_model/"+benchmark_fold+"-ROC.png"
    plot_confusion_matrix(predicted_label,true_label,saving_path_confusion_matrix,recall,precision,f1_score)
    #ROC
    false_positive_rate_list=[]
    recall_list=[]
    step=0.05
    for t in np.arange(0,1+step,step):
        predicted_label_with_threshold=[1 if l>=t else 0 for l in predicted_label_logit]
        recall, precision, f1_score, false_positive_rate = get_recall_and_precision(true_label, predicted_label_with_threshold)
        recall_list.append(recall)
        false_positive_rate_list.append(false_positive_rate)
    recall_list.append(0)
    false_positive_rate_list.append(0)
    plot_ROC(false_positive_rate_list,recall_list,saving_path_roc)


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
def get_recall_scatter(solvability_name_fold,json_solvability_obj_list,filtered_file_list):
    # description: how many predicates used in end
    print("----- out of test set recall info -----")
    minimizedPredicateFromCegar_name_list = ["minimizedPredicateFromCegar" + name + "InitialPredicates" for name in
                                             solvability_name_fold]

    minimizedPredicateFromCegar_list = {name: read_minimizedPredicateFromCegar(name, json_solvability_obj_list) for name
                                        in minimizedPredicateFromCegar_name_list}
    initialPredicatesUsedInMinimizedPredicateFromCegar_list = {
        name: read_minimizedPredicateFromCegar("initialPredicatesUsedInM" + name[1:], json_solvability_obj_list) for
        name in minimizedPredicateFromCegar_name_list}
    for name in minimizedPredicateFromCegar_name_list:
        print("number of initial predicates in minimized predicates/minimized predicates," + name[len(
            "minimizedPredicateFromCegar"):] + ":" + str(
            sum(initialPredicatesUsedInMinimizedPredicateFromCegar_list[name])) + "/" + str(
            sum(minimizedPredicateFromCegar_list[name])))
        print(str(initialPredicatesUsedInMinimizedPredicateFromCegar_list[name]))
        print(str(minimizedPredicateFromCegar_list[name]))
    scatter_plot_range = [0, 0]
    for name in minimizedPredicateFromCegar_name_list:
        fold_name = name[len("minimizedPredicateFromCegar"):]
        plot_scatter(minimizedPredicateFromCegar_list[name],
                     initialPredicatesUsedInMinimizedPredicateFromCegar_list[name],
                     name=fold_name + "_used_in_the_end", range=scatter_plot_range,
                     x_label="minimized_useful_predicate_number", y_label=fold_name + "_predicates")
        print("initialPredicatesUsedInMinimizedPredicate > minimizedPredicateFromCegar", name)
        f_number=0
        for i, (x, y) in enumerate(zip(minimizedPredicateFromCegar_list[name],
                                       initialPredicatesUsedInMinimizedPredicateFromCegar_list[name])):
            if x < y:
                f_number=f_number+1
                #print(filtered_file_list[i])
        print(f_number)

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

def my_round_fun(num_list,threshold=0.5,label="template_relevance"):
    if label=="node_multiclass":
        num_list=np.array(num_list[0])
        return [np.where(r==max(r),1,0)for r in num_list]
    else:
        return list(np.where(num_list > threshold, 1, 0))

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




