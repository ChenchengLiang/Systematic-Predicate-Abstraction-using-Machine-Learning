import os
import sys
from utils_1 import run_eldarica_with_shell,run_eldarica_with_shell_pool,get_exceptions_folder_names,get_solvability_log
import glob
# import subprocess
# from multiprocessing import Pool
# import signal
# import psutil
# import random
# from shutil import copy
#
# def separate_sat_unsat_dataset(file):
#     print(file)
#     try:
#         p = subprocess.Popen(["../eldarica-graph-generation/eld", file,"-t:120"], shell=False,stdout=subprocess.PIPE)
#         stdOut = p.communicate(timeout=120)
#         outputFromEldarica = str(stdOut)
#         print(outputFromEldarica)
#         if "b\'unsat\\n" in outputFromEldarica:
#             print("unsat")
#             copy(file,os.path.join("../benchmarks/","LIA-lin-datafold-unsat"))
#         elif "b\'sat\\n" in outputFromEldarica:
#             print("sat")
#             copy(file, os.path.join("../benchmarks/", "LIA-lin-datafold-sat"))
#         else:
#             print("unkown")
#             copy(file, os.path.join("../benchmarks/", "LIA-lin-datafold-other"))
#
#     except subprocess.TimeoutExpired:
#         if psutil.pid_exists(p.pid):
#             os.kill(p.pid,signal.SIGKILL)
#
# def separateDatasetToFold(path):
#     file_list=[]
#     for (dirpath, dirnames, filenames) in os.walk(path):
#         file_list += [os.path.join(dirpath, file) for file in filenames]
#     random.shuffle(file_list)
#     print("file_list",len(file_list))
#     directory = path+"-datafold"
#     data_fold_folder_list=[os.path.join(directory,"train_data"),os.path.join(directory, "valid_data"),os.path.join(directory, "test_data")]
#     if not os.path.exists(directory):
#         os.makedirs(directory)
#         for folder in data_fold_folder_list:
#             os.makedirs(folder)
#     file_fold_list=[file_list[:int(len(file_list)/3)],file_list[int(len(file_list)/3):int(len(file_list)*2/3)],file_list[int(len(file_list)*2/3):]]
#
#     for fold_folder,file_fold in zip(data_fold_folder_list,file_fold_list):
#         print("file_fold",len(file_fold))
#         for file in file_fold:
#             copy(file,fold_folder)
#
#
# def extract_graph_from_eldarica(parameters):
#     file=parameters[0]
#     popen_parameter=["../eldarica-graph-generation/eld",file]
#     for eldarica_parameter in parameters[1]:
#         popen_parameter.append(eldarica_parameter)
#     print("extracting",file)
#     eld = subprocess.Popen(popen_parameter, stdout=subprocess.DEVNULL,shell=False)
#     eld.wait()
#     print("extracting finished", file)
# def extract_train_data_pool(filePath,fun,countinous_extract=False,parameterList=[]):
#     file_list = []
#     for root, subdirs, files in os.walk(filePath):
#         if len(subdirs)==0:
#             if countinous_extract==True:
#                 for file in glob.glob(root+"/*.smt2"):
#                     if not os.path.exists(file+".circles.gv"):
#                         file_list.append([file,parameterList])
#             else:
#                 for file in glob.glob(root + "/*.smt2"):
#                     file_list.append([file,parameterList])
#     pool = Pool(processes=8)
#     pool.map(fun, file_list)



def extract_data_by_shell():
    '''
        "-varyGeneratedPredicates","-labelSimpleGeneratedPredicates","-extractPredicates","-solvabilityTimeout:120","-mainTimeout:1200","t:1200"
        "-noIntervals","-absTimeout:120","getLabelFromCE","-getHornGraph","-getHornGraph:biDirectionLayerGraph",
        "-getHornGraph:hyperEdgeGraph","-getHornGraph:monoDirectionLayerGraph","-getHornGraph:hybridDirectionLayerGraph",
        "fineGrainedEdgeTypeLayerGraph"
        '''
    # extract data by shell
    data_fold = ["train_data", "test_data", "valid_data"]
    command_input = sys.argv[1]  # "temp-debug"
    benchmark_name = os.path.join("../benchmarks/", command_input)  # sys.argv[1]
    thread_number = 1
    shell_timeout = 60*60*3
    eldarica_timeout=60*60*3
    # not use -abstract:all but try them separately
    # separateMultiplePredicatesInBody,-getLabelFromCounterExample,-argumentOccurenceLabel,-argumentBoundLabel,extractTemplates,-onlyInitialPredicates -noIntervals -separateByPredicates  -generateTemplates
    # monoDirectionLayerGraph,hyperEdgeGraph
    # -maxNode:
    parameters_solvability_1 = "-moveFile -splitClauses:0 -abstract:oct -t:"+str(eldarica_timeout)
    parameters_solvability_2 = "-moveFile -splitClauses:0 -abstract:term -t:" + str(eldarica_timeout)
    parameters_solvability_3 = "-moveFile -splitClauses:0 -abstract:relEqs -t:" + str(eldarica_timeout)
    parameters_solvability_4 = "-moveFile -splitClauses:0 -abstract:relIneqs -t:" + str(eldarica_timeout)
    parameters_solvability_5 = "-moveFile -splitClauses:1 -abstract:oct -t:" + str(eldarica_timeout)
    parameters_solvability_6 = "-moveFile -splitClauses:1 -abstract:term -t:" + str(eldarica_timeout)
    parameters_solvability_7 = "-moveFile -splitClauses:1 -abstract:relEqs -t:" + str(eldarica_timeout)
    parameters_solvability_8 = "-moveFile -splitClauses:1 -abstract:relIneqs -t:" + str(eldarica_timeout)

    parameters_extract_train_data_for_template_selection_and_simplified_smt_files_without_graph="-moveFile -extractTemplates -getHornGraph:monoDirectionLayerGraph  -t:" + str(eldarica_timeout)
    parameters_extract_train_data_for_template_selection_and_normalized_smt_files_without_graph = "-moveFile -extractTemplates -getHornGraph:hyperEdgeGraph  -t:" + str(
        eldarica_timeout)
    parameters_extract_train_data_get_normalized_benchmark = "-getSMT2 "
    parameters_draw_graph_using_labeled_templates_layer_graph="-moveFile -getHornGraph:monoDirectionLayerGraph -maxNode:10000"
    parameters_draw_graph_using_labeled_templates_hyperedge_graph = "-moveFile -getHornGraph:hyperEdgeGraph -maxNode:10000"
    parameters_extract_train_data_for_template_selection = "-moveFile -abstract:empty -getHornGraph:hyperEdgeGraph -extractTemplates -t:"+str(eldarica_timeout)+" -maxNode:10000"
    parameters_generate_horn_graph_for_unsolvable_data_template_selection = "-moveFile -abstract:empty -getHornGraph:hyperEdgeGraph -generateTemplates -t:"+str(eldarica_timeout)+" -maxNode:10000"
    parameters_extract_train_data_for_first_three_graph_hyperedge = "-moveFile -abstract:empty -getHornGraph:hyperEdgeGraph -t:" + str(
        eldarica_timeout) + " -maxNode:10000"
    parameters_extract_train_data_for_counter_example_graph_hyperedge = "-moveFile -abstract:empty -getLabelFromCounterExample -t:"+str(60*20)+" -maxNode:10000"
    parameters_extract_train_data_for_counter_example_graph_hyperedge_union = "-moveFile -abstract:empty -getLabelFromCounterExample:union -t:"+str(60*20)+" -maxNode:10000"
    parameters_extract_train_data_for_counter_example_graph_layer = "-moveFile -abstract:empty -getLabelFromCounterExample -getHornGraph:monoDirectionLayerGraph -t:"+str(60*20)+" -maxNode:10000"
    parameters_extract_train_data_for_counter_example_graph_layer_union = "-moveFile -abstract:empty -getLabelFromCounterExample:union -getHornGraph:monoDirectionLayerGraph -t:"+str(60*20)+" -maxNode:10000"
    parameters_extract_train_data_for_first_three_graph_mono_layer = "-moveFile -abstract:empty -getHornGraph:monoDirectionLayerGraph -t:1800 -maxNode:10000"
    parameters_extract_train_data_for_first_three_graph_bi_layer = "-moveFile -abstract:empty -getHornGraph:biDirectionLayerGraph -t:1800 -maxNode:10000"
    parameters_extract_train_data_for_argument_bound_graph_hyperedge = "-moveFile -abstract:empty -getHornGraph:hyperEdgeGraph -argumentBoundLabel -boundsAnalysis -t:" + str(
        60*60*3) + " -boundsAnalysisTO:3 -maxNode:10000"
    parameters_extract_train_data_for_argument_bound_graph_layer = "-moveFile -abstract:empty -getHornGraph:monoDirectionLayerGraph -argumentBoundLabel -boundsAnalysis -t:" + str(
        60*60*3) + " -boundsAnalysisTO:3 -maxNode:10000"
    #
    #
    eldarica_parameters = parameters_solvability_4
    for df in data_fold:
        run_eldarica_with_shell_pool(os.path.join(benchmark_name, df), run_eldarica_with_shell, eldarica_parameters,
                                     timeout=shell_timeout, thread=thread_number)

    get_solvability_log(data_fold, command_input)


#draw highlighted predicted graph in a folder
def draw_graph_in_folder(folder_name,eldarica_params="-getLabelFromCounterExample "):
    import subprocess
    import glob
    from utils_1 import unzip_file
    timeout=3600
    thread_number=1
    eldarica_parameters=eldarica_params+" -gp"
    run_eldarica_with_shell_pool(folder_name, run_eldarica_with_shell, eldarica_parameters,
                                 timeout=timeout, thread=thread_number)
    for file in glob.glob(folder_name + "/*.hyperEdgeGraph.gv.zip"):
        unzip_file(file)
        unzipped_file=file[:-len(".zip")]
        supplementary_command = "dot -Tpng "+unzipped_file+ " -o \"" + unzipped_file +".png\""
        print(supplementary_command)
        eld = subprocess.Popen(supplementary_command, stdout=subprocess.DEVNULL, shell=True)
        eld.wait()
        #file_compress([file], file + ".zip")
        os.remove(unzipped_file)


def main():
    # #-visualizeLowerBound
    # eldarica_params_argument_bound="-getHornGraph:hyperEdgeGraph -argumentBoundLabel -boundsAnalysis -boundsAnalysisTO:3"
    # eldarica_params_counter_example_union="-getHornGraph:hyperEdgeGraph -getLabelFromCounterExample:union"
    # folder="Linear-dataset-4-tasks-dataset-predict"
    # draw_graph_in_folder(folder_name="../benchmarks/"+folder+"/draw_some_examples",
    #                      eldarica_params=eldarica_params_argument_bound)

    extract_data_by_shell()

main()


