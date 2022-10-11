import random
import os
from shutil import copy, rmtree, copytree
import glob
import numpy as np
import matplotlib.pyplot as plt
from distutils.dir_util import copy_tree
#from Miscellaneous import pickleRead, clear_directory, clear_file
import subprocess
import json
from multiprocessing import Pool
import shutil
from utils import unzip_file,folder_compress
import zipfile
from utils_1 import delete_relative_files,copy_relative_files,get_file_list,make_dirct,move_file_list_to_new_folder,run_z3_with_shell

# def generate_JSON_field(rootdir, json_file_type=".layerHornGraph.JSON", eldarica_parameters="-getHornGraph"):
#     for root, subdirs, files in os.walk(rootdir):
#         if len(subdirs) == 1 and subdirs[0] == "wrong_extracted_cases":
#             os.rmdir(root + "/wrong_extracted_cases")
#     old_field = []
#     new_field = []
#     if json_file_type == ".layerHornGraph.JSON" or json_file_type == ".bi-layerHornGraph.JSON":
#         new_field = ["nodeIds", "nodeSymbolList", "falseIndices", "argumentIndices", "controlLocationIndices",
#                      "binaryAdjacentList", "ternaryAdjacencyList", "unknownEdges", "argumentIDList", "argumentNameList",
#                      "predicateArgumentEdges", "predicateInstanceEdges", "argumentInstanceEdges", "controlHeadEdges",
#                      "controlBodyEdges",
#                      "argumentOccurrence", "controlArgumentEdges", "guardEdges", "dataEdges", "predicateIndices",
#                      "predicateOccurrenceInClause", "predicateStrongConnectedComponent", "argumentBoundList",
#                      "argumentBinaryOccurrenceList", "templateIndices", "templateRelevanceLabel"]
#     else:
#         new_field = ["nodeIds", "nodeSymbolList", "falseIndices", "argumentIndices", "controlLocationIndices",
#                      "binaryAdjacentList", "ternaryAdjacencyList", "unknownEdges", "argumentIDList", "argumentNameList",
#                      "argumentEdges", "guardASTEdges", "dataFlowASTEdges", "controlFlowHyperEdges",
#                      "dataFlowHyperEdges",
#                      "argumentOccurrence", "predicateIndices", "predicateOccurrenceInClause",
#                      "predicateStrongConnectedComponent", "argumentBoundList", "argumentBinaryOccurrenceList",
#                      "templateIndices", "templateRelevanceLabel"]
#
#     for root, subdirs, files in os.walk(rootdir):
#         if len(subdirs) == 0:
#             for file in glob.glob(root + "/*.smt2"):
#                 print(file)
#                 # read JSON' label
#                 json_file = file + ".JSON"
#                 graph_json_file = file + json_file_type
#                 json_obj = {}
#                 with open(json_file) as f:
#                     loaded_graph = json.load(f)
#                     for field in old_field:
#                         json_obj[field] = loaded_graph[field]
#                 eld = subprocess.Popen(["../eldarica-graph-generation/eld", file, eldarica_parameters],
#                                        stdout=subprocess.DEVNULL,
#                                        shell=False)
#                 eld.wait()
#                 # add more field
#                 with open(graph_json_file) as f:
#                     loaded_graph = json.load(f)
#                     for field in new_field:
#                         json_obj[field] = loaded_graph[field]
#                 # write json object to JSON file
#                 clear_file(graph_json_file)
#                 with open(graph_json_file, 'w') as f:
#                     json.dump(json_obj, f, indent=4)
#
#
# def add_horn_graph_json_file(rootdir, graph_type="-getHornGraph", json_file_type=".layerHornGraph.JSON"):
#     old_field = []
#     new_field = []
#     if json_file_type == ".layerHornGraph.JSON" or json_file_type == ".bi-layerHornGraph.JSON":
#         new_field = ["nodeIds", "nodeSymbolList", "falseIndices", "argumentIndices", "controlLocationIndices",
#                      "binaryAdjacentList", "ternaryAdjacencyList", "unknownEdges", "argumentIDList", "argumentNameList",
#                      "predicateArgumentEdges", "predicateInstanceEdges", "argumentInstanceEdges", "controlHeadEdges",
#                      "controlBodyEdges",
#                      "controlArgumentEdges", "guardEdges", "dataEdges",
#                      "argumentOccurrence", "predicateIndices", "predicateOccurrenceInClause",
#                      "predicateStrongConnectedComponent", "argumentBoundList", "argumentBinaryOccurrenceList",
#                      "templateIndices", "templateRelevanceLabel"]
#
#     else:
#         new_field = ["nodeIds", "nodeSymbolList", "falseIndices", "argumentIndices", "controlLocationIndices",
#                      "binaryAdjacentList", "ternaryAdjacencyList", "unknownEdges", "argumentIDList", "argumentNameList",
#                      "argumentEdges", "guardASTEdges", "dataFlowASTEdges", "controlFlowHyperEdges",
#                      "dataFlowHyperEdges",
#                      "argumentOccurrence", "predicateIndices", "predicateOccurrenceInClause",
#                      "predicateStrongConnectedComponent", "argumentBoundList", "argumentBinaryOccurrenceList",
#                      "templateIndices", "templateRelevanceLabel"]
#
#     for root, subdirs, files in os.walk(rootdir):
#         if len(subdirs) == 1 and subdirs[0] == "wrong_extracted_cases":
#             os.rmdir(root + "/wrong_extracted_cases")
#     for root, subdirs, files in os.walk(rootdir):
#         if len(subdirs) == 0:
#             for file in glob.glob(root + "/*.smt2"):
#                 json_file = file + ".JSON"
#                 graph_json_file = file + json_file_type
#                 # if not os.path.isfile(graph_json_file):
#                 # read JSON' label
#                 json_obj = {}
#                 with open(json_file) as f:
#                     loaded_graph = json.load(f)
#                     for field in old_field:
#                         json_obj[field] = loaded_graph[field]
#                 print("../eldarica-graph-generation/eld", file, graph_type)
#                 eld = subprocess.Popen(["../eldarica-graph-generation/eld", file, graph_type],
#                                        stdout=subprocess.DEVNULL,
#                                        shell=False)
#                 eld.wait()
#                 # add more field
#                 with open(graph_json_file) as layer_f:
#                     loaded_graph = json.load(layer_f)
#                     for field in new_field:
#                         json_obj[field] = loaded_graph[field]
#                 if os.path.isfile(graph_json_file):
#                     # write json object to JSON file
#                     clear_file(graph_json_file)
#                     with open(graph_json_file, 'w') as f:
#                         json.dump(json_obj, f, indent=4)
#                 else:
#                     with open(graph_json_file, 'w') as f:
#                         json.dump(json_obj, f, indent=4)
#                     # for f in glob.glob(file+"*"):
#                     #     copy(f,"../benchmarks/memory_problem_cases/")
#                     #     os.remove(f)


def shuffle_data_train_valid(rootdir):
    file_list = glob.glob(rootdir + "/*.smt2")
    print(file_list)
    random.shuffle(file_list)
    random.shuffle(file_list)
    print(file_list)
    train_files = file_list[0:int(len(file_list) * 0.8)]
    valid_files = file_list[int(len(file_list) * 0.8):len(file_list)]
    print("train_files", len(train_files))
    print("valid_files", len(valid_files))
    for file in train_files:
        file_list_ = glob.glob(file + "*")
        for f in file_list_:
            copy(f, os.path.join("../benchmarks/temp/", "train_data"))
    for file in valid_files:
        file_list_ = glob.glob(file + "*")
        for f in file_list_:
            copy(f, os.path.join("../benchmarks/temp/", "valid_data"))


def shuffle_data(folder,fold,file_type, target_folder):
    '''
    shuffle files in rootdir to shuffled_files
    '''
    file_list = get_file_list(folder,fold,file_type)
    print("total file ", len(file_list))
    for i in range(5):
        random.shuffle(file_list)
    # print(file_list)
    #train_fold,valid_fold,test_fold=0.6,0.2,0.2
    train_fold, valid_fold, test_fold = 0.9, 0.05, 0.05
    train_files = file_list[0:int(len(file_list) * train_fold)]
    valid_files = file_list[int(len(file_list) * train_fold):int(len(file_list) * (1-valid_fold))]
    test_files = file_list[int(len(file_list) * (1-test_fold)):len(file_list)]
    make_dirct("../benchmarks/" + target_folder)
    for file, fold_name in zip([train_files, valid_files, test_files], ["train_data", "valid_data", "test_data"]):
        make_dirct("../benchmarks/" + target_folder + "/" + fold_name)
        print(fold_name + "_files", len(file))
        final_target_folder = os.path.join("../benchmarks/" + target_folder + "/", fold_name)
        for f in file:
            #copy(f, final_target_folder)
            #print(f[:-len(".zip")])
            copy_relative_files(f[:-len(".zip")], final_target_folder)

    #make_dirct(os.path.join("../benchmarks/"+target_folder+"/", "test_data_simple_generator"))
    # for file in test_files:
    #     copy(file, os.path.join("../benchmarks/"+target_folder+"/", "test_data_simple_generator"))





def divide_data_to_threads(benchmark="", target_folder="", three_fold=True, chunk_number=17,
                           datafold_list=["train_data", "valid_data", "test_data"],file_type="smt2"):
    target_folder=target_folder+"-"+str(chunk_number)
    root = "../benchmarks/" + benchmark
    make_dirct(os.path.join("../benchmarks", target_folder))
    datafold_files_list = [os.path.join(root, d) for d in datafold_list]
    if three_fold == False:
        datafold_list = datafold_list + ["test_data_simple_generator"]
        datafold_files_list = datafold_files_list + [os.path.join(root, "test_data_simple_generator")]

    for datafold, datafold_files in zip(datafold_list, datafold_files_list):
        datafold_file_list = glob.glob(datafold_files + "/*."+file_type+".zip")
        print(datafold_files, len(datafold_file_list))
        chunk_size = round(len(datafold_file_list) / chunk_number)
        for i in range(0, chunk_number):
            thread_dir = os.path.join("../benchmarks", target_folder, "thread_" + str(i))
            make_dirct(thread_dir)
            make_dirct(os.path.join(thread_dir, datafold))
            for file in datafold_file_list[i * chunk_size:(i + 1) * chunk_size]:
                file=file[:-len(".zip")]
                copy_relative_files(file, os.path.join(thread_dir, datafold))
                # copy(file, os.path.join(thread_dir,datafold))
        for file in datafold_file_list[chunk_number * chunk_size:]:
            file = file[:-len(".zip")]
            copy_relative_files(file, os.path.join(thread_dir, datafold))
            # copy(file, os.path.join(thread_dir, datafold))
    #compress
    target_folder=os.path.join("../benchmarks",target_folder)
    dir_list=[target_folder+"/thread_"+str(i) for i in range(chunk_number)]
    zipit(dir_list,target_folder+".zip")
    shutil.rmtree(target_folder)



def zipdir(path, ziph):
    # ziph is zipfile handle
    for root, dirs, files in os.walk(path):
        for file in files:
            ziph.write(os.path.join(root, file),
                       os.path.relpath(os.path.join(root, file),
                                       os.path.join(path, '..')))

def zipit(dir_list, zip_name):
    zipf = zipfile.ZipFile(zip_name, 'w', zipfile.ZIP_DEFLATED)
    for dir in dir_list:
        zipdir(dir, zipf)
    zipf.close()


def moveIncompletedExtractionsToTemp(rootdir):
    '''
    move imcompleted ectraction to temp under the rootdir. need create that dirctory first
    '''
    for fold in ["train_data", "valid_data", "test_data"]:
        file_list = glob.glob(os.path.join(rootdir, fold) + "/*.smt2")
        for file in file_list:
            relative_file_list = glob.glob(file + "*")
            if len(relative_file_list) != 7:
                for f in relative_file_list:
                    shutil.move(f, os.path.join(rootdir, "temp"))


def gather_data_to_one_file(src, target):
    count = 1
    for root, subdirs, files in os.walk(src):
        if len(subdirs) == 0:
            print(files)
            for f in files:
                if not os.path.exists(os.path.join(target, f)):
                    shutil.move(os.path.join(root, f), target)
                else:
                    renamed_f = f[:f.rfind(".smt2")] + "-" + str(count) + ".smt2"
                    shutil.move(os.path.join(root, f), target + "/" + renamed_f)
                    count = count + 1


class parameters():
    def __init__(self, root_dir, json_file_type, eldarica_parameters):
        self.root_dir = root_dir
        self.json_file_type = json_file_type
        self.eldarica_parameters = eldarica_parameters


def main():
    # generate_JSON_field("../benchmarks/temp-extract-trainData-datafold")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-hyperedge-graph",json_file_type=".hyperEdgeGraph.JSON",graph_type="-getHornGraph:hyperEdgeGraph")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-bi-direction-layer-graph",json_file_type=".layerHornGraph.JSON",graph_type="-getHornGraph:biDirectionLayerGraph")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/small-dataset-trainData-datafold-bi-direction-layer-graph",json_file_type=".layerHornGraph.JSON",graph_type="-getHornGraph:biDirectionLayerGraph")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/small-dataset-trainData-datafold-mono-direction-layer-graph",json_file_type=".layerHornGraph.JSON",graph_type="-getHornGraph:monoDirectionLayerGraph")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/small-dataset-trainData-datafold-hyperedge-graph",json_file_type=".hyperEdgeGraph.JSON",graph_type="-getHornGraph:hyperEdgeGraph")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-hyperedge-graph",json_file_type=".hyperEdgeGraph.JSON",graph_type="-getHornGraph:hyperEdgeGraph")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-bi-direction-layer-graph",json_file_type=".layerHornGraph.JSON",graph_type="-getHornGraph:biDirectionLayerGraph")
    # parameter_for_JSON = parameters(
    #     root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-hybrid-direction-layer-graph",
    #     json_file_type=".layerHornGraph.JSON", graph_type="-getHornGraph:hybridDirectionLayerGraph")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-hyperedge-graph",json_file_type=".hyperEdgeGraph.JSON", graph_type="-getHornGraph:hyperEdgeGraph")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-datafold",
    #                                 json_file_type=".layerHornGraph.JSON",
    #                                 eldarica_parameters="-getHornGraph:hybridDirectionLayerGraph")
    # generate_JSON_field(parameter_for_JSON.root_dir, json_file_type=parameter_for_JSON.json_file_type,
    #                          eldarica_parameters=parameter_for_JSON.eldarica_parameters)

    # for fold in ["train_data","valid_data","test_data"]:
    #     clean_extracted_data("thread_1/"+fold)
    #clean_extracted_data("linear-layer-CE-union-uppmax/extracted",total_file=3,edge_type="mono-layerHornGraph")
    # extract_train_data_templates_pool("../benchmarks/small-dataset-sat-datafold-same-train-valid-test")
    # gather_data_to_one_file(os.path.join("../benchmarks/","sv-comp-clauses"),os.path.join("../benchmarks","shuffleFile"))
    # shuffle_data("Template-selection-Liner-dateset/UNSAT","train_data","smt2",
    #              "../benchmarks/Template-selection-Liner-dateset/UNSAT/shuffle")
    # divide_data_to_threads("100+benchmarks/linear/non-unsat-bench",
    #                        "100+benchmarks/linear/non-unsat-bench-divided",three_fold=True,datafold_list=["train_data","valid_data","test_data"],
    #                        file_type="smt2",chunk_number=109)#datafold_list=["test_data"]

    # moveIncompletedExtractionsToTemp("../benchmarks/new-full-dataset-with-and")

    # analysis benchmark
    # benchmark_exceptions_analysis("LIA-Lin+sv-comp/exception-LIA-Lin+sv-comp-empty-label-template-selection",
    #                               "LIA-Lin+sv-comp/exception-LIA-Lin+sv-comp-full-label-template-selection")
    # collect_unsolvable_cases(["all-LIA-lin-abstract-empty-solvability","all-LIA-lin-abstract-term-solvability",
    #                                              "all-LIA-lin-abstract-oct-solvability","all-LIA-lin-abstract-relEqs-solvability",
    #                           "all-LIA-lin-abstract-relIneqs-solvability","all-LIA-lin-abstract-off-solvability",
    #                           "all-LIA-lin-abstract-comb-solvability"]
    #                                             ,["empty","term","oct","relEqs","relIneqs","off","comb"])
    #collect_unsolvable_cases(["all-LIA-lin-abstract-empty-solvability"], ["empty"], filed="solvable-file")

    # collect_one_field("linear-extracted-empty/exceptions",field_list=["time-out-exception","shell-timeout","no-predicates-selected",
    #                                                                   "solvable-file","empty-mined-label"],
    #                   target_folder="linear-extracted-empty/collected",source_folder="Linear-dataset/raw/train_data")
    # collect_differentiated_field("Template-selection-Liner-dateset-1/dataset1/exceptions",
    #                   field="solvable-file", substract_field_list=["no-simplified-clauses","unsat"],
    #                              target_folder="Template-selection-Liner-dateset-1/dataset1/collected", source_folder="Template-selection-Liner-dateset-1/dataset1/solvable")

    #rebuild_exception_file("exception-LIA-Lin+sv-comp-predicted",["solvable-file"])
    # get_generated_horn_graph()


    #align_extracted_data(benchmark="LIA-Lin+sv-comp",folder_name="sv-comp+LIA-Lin-train-with-CEGAR")
    # get_k_fold_train_data(benchmark="Linear-dataset",folder_name="Linear-dataset-extracted")
    # collect_unsolvable_data(horn_graph_folder="all-LIA-Lin/extractable-horn-hraph"
    #                         ,unsolvable_folder="exception-all-LIA-Lin-full-label-with-CEGAR/shell-timeout",
    #                         target_file="all-LIA-Lin-train-fixed-size-unsolvable-predicted")


    # AnalysisJsonFile("all-LIA-Lin/extracted-fixed-size/train_data","predicateDistribution").analysis_data_statistics()
    # AnalysisJsonFile("all-LIA-Lin/extracted-fixed-size/train_data","predicateDistribution").analysis_data_statistics(data_fold=["emptyInitialPredicates", "predictedInitialPredicates",
    #                                                             "fullInitialPredicates",
    #                                                             "trueInitialPredicates"])
    #
    # AnalysisJsonFile("all-LIA-Lin-temp-train", "hyperEdgeGraph").analysis_graph_structure()
    #
    # AnalysisJsonFile("all-LIA-Lin-distribution","TemplatesDistribution").analysis_template_distribution()
    #AnalysisJsonFile("template_selection_lin_test_1/train_data", "solvingTime").analysis_solving_time()

    #find_deduplicate_benchmarks(benchmarks="temp")#all-LIA-Lin/extractable-horn-hraph
    #separate_extracted_and_left_data("LIA-Lin+sv-comp/all-LIA-Lin-shell-timeout-horn-graphs","train_data")
    #file_compress(["../benchmarks/test/chc-LIA-lin_003.smt2"],"../benchmarks/test/chc-LIA-lin_003.smt2.zip")
    #separate_unsolvable_horn_graphs("LIA-Lin+sv-comp-template-unsolvable-horn-graph","test_data",trunck_number=6,train_folder="LIA-Lin+sv-comp-train-templates")

    # for i in range(0,17):
    #     for fold in ["train_data","valid_data","test_data"]:
    #         compress_all_file_folder("LIA-Lin+sv-comp/LIA-Lin+sv-comp-divided/thread_"+str(i)+"/"+fold)
    #compress_all_file_folder("thread_0/train_data")
    # for i in range(0,17):
    #     for fold in ["train_data"]:
    #         unzip_all_file_folder("all-LIA-Lin-train-unsolvable-predicted-measurement-2/temp-1-divided/thread_"+str(i)+"/"+fold)


    #compress_file_in_folder("Template-selection-Linear-solvability-check-uppmax-2/solvable")


    # for i in range(0,17):
    #     rename_files_in_benchmarks("LIA-Lin+sv-comp/LIA-Lin+sv-comp-divided/thread_"+str(i))
    #
    # compress_exception("exceptions")

    # for data_fold in ["train_data","valid_data","test_data"]:
    #     collect_common_files("Linear-dataset/first-three-task-extractable/extractable-raw/"+data_fold,"Linear-dataset/separated_benchmark-abstract-empty/exceptions/unsat","Linear-dataset/counter-example-task-extractable")

    #change_relative_file_names("non-linear-hyperedge-CE-common-1-uppmax", "train_data", "smt2")
    collect_common_files(folder1="100+benchmarks/linear/unsolvable",
                         folder2="Template-selection-Linear-solvability-check-uppmax-3/unsolvable",
                         out_put_folder="100+benchmarks/linear/common-unsolvable")
    # collect_common_files(folder1="align-lin+non-lin/fifth-task-union-hyperedge-linear+nonlinear",
    #                      folder2="align-lin+non-lin/fifth-task-union-layer-linear+nonlinear",
    #                      out_put_folder="align-lin+non-lin/fifth-task-union-hyperedge+layer-linear+nonlinear")
    # source_folder="Linear-dataset-pure-argument-identification-task"
    # select_files_with_condition(source_folder, source_folder+"-separate-by-node-number")

    #compile_dataset("100+benchmarks/non-linear","unsolvable")
    #compile_dataset("Template-selection-Liner-dateset/all-graphs-predicted/linear-156-benchmarks")


    # collect_relative_files("Template-selection-non-Liner-dateset/solvable-sat-mined-templates/non-linear-empty-mined-label",
    #                        "Template-selection-non-Liner-dateset/solvable-sat-solving-time","smt2")

    # collect_solvable_list_from_unsolvable_set("../benchmarks/Template-selection-non-Liner-dateset/non-linear-unsolvable-graphs-predicted-solvability/solvability_summary.JSON",
    #                                           "../benchmarks/Template-selection-non-Liner-dateset/non-linear-unsolvable","train_data")

    #separate_by_solvability_JSON("100+benchmarks-linear-solvability-check-uppmax","solvable","smt2")
    #check_solvability_summary_JSON("Template-selection-Liner-dateset-solvable-solvability-check","train_data","smt2")

    #check_cluster_log_files("Template-selection-Linear-solvability-check-uppmax","log","out","gz","chc-LIA-Lin_7910.smt2")
    #parse_solvability_100_benchmarks("../benchmarks/100+benchmarks/linear/eld-log-accel3","linear")

    #rewrite_prolog_file("/home/cheli243//Desktop/eldarica/predicted_arguments/example/2974/chc-LIA-non-lin_2974.smt2.simplified.prolog")

    #run_z3_with_shell("z3-solutions/unsolvable",60*10)


def rewrite_prolog_file(file):
    rewrited_lines=[]
    with open(file, 'rb') as f:
        file_content = f.readlines()
        for line in file_content:
            line = str(line.decode("utf-8")).rstrip("\n")
            arguments=line[line.find("(")+1:line.find(")")]
            #constraints = line[line.find(",")+1:]
            arguments_list=arguments.split(", ")
            print(line)
            #print(arguments_list)

            for (i,a) in enumerate(arguments_list):
                line=line.replace(a,"x"+str(i+1))
            rewrited_lines.append(line)

    with open(file[:-len(".prolog")]+".rewrited.prolog", 'a') as f:
        for l in rewrited_lines:
            f.write(l+"\n")


    # print("rewrited")
    # for l in rewrited_lines:
    #     print(l)

def parse_solvability_100_benchmarks(file,data_set):
    sat_file_list=[]
    unsat_file_list=[]
    unknown_file_list=[]
    timeout_file_list=[]
    with open(file, 'rb') as f:
        file_content = f.readlines()
        file_counter=0
        for (i,line) in enumerate(file_content):
            line=str(line.decode("utf-8"))
            if "Warning: ignoring exit" in line:
                file_counter=file_counter+1
                file_name=str(file_content[i-1].decode("utf-8")).rstrip("\n")
                file_name=file_name[file_name.find("/chc")+1:]
                result=str(file_content[i+1].decode("utf-8")).rstrip("\n")
                if result=="sat":
                    sat_file_list.append([file_name,"sat"])
                elif result=="unsat":
                    unsat_file_list.append([file_name,"unsat"])
                elif result == "unknown":
                    unknown_file_list.append([file_name,"unknown"])
                else:
                    timeout_file_list.append([file_name,"timeout"])

        for f in sat_file_list+unsat_file_list+unknown_file_list+timeout_file_list:
            print(f)

        print("sat_file_list",len(sat_file_list))
        print("unsat_file_list",len(unsat_file_list))
        print("unknown_file_list",len(unknown_file_list))
        print("timeout_file_list",len(timeout_file_list))
        print("file_counter",file_counter)

        sat_file_list= ["../benchmarks/100+benchmarks/"+data_set+"/train_data/"+f[0] for f in sat_file_list]
        unsat_file_list = ["../benchmarks/100+benchmarks/"+data_set+"/train_data/" + f[0] for f in unsat_file_list]
        unknown_file_list = ["../benchmarks/100+benchmarks/"+data_set+"/train_data/" + f[0] for f in unknown_file_list]
        timeout_file_list = ["../benchmarks/100+benchmarks/"+data_set+"/train_data/" + f[0] for f in timeout_file_list]


        move_file_list_to_new_folder("100+benchmarks/"+data_set, "sat_file_list", sat_file_list)
        move_file_list_to_new_folder("100+benchmarks/"+data_set, "unsat_file_list", unsat_file_list)
        move_file_list_to_new_folder("100+benchmarks/"+data_set, "unknown_file_list", unknown_file_list)
        move_file_list_to_new_folder("100+benchmarks/"+data_set, "timeout_file_list", timeout_file_list)




def check_cluster_log_files(benchmark,folder,file_type,compress_type,smt2_file):
    #print relation between .out and .smt2 files
    import gzip
    file_list=get_file_list(benchmark,folder,file_type,compress_type)
    for file in file_list:
        with gzip.open(file, 'rb') as f:
            file_content = f.read()
            file_content=str(file_content.decode("utf-8"))
            line=file_content[file_content.find("extracting chc-LIA"):file_content.find("-checkSolvability  -abstract:empty")]
            if smt2_file in line:
                print("file", smt2_file)
                print("out file",file)
                print(file_content)


def check_solvability_summary_JSON(folder,fold,file_type):
    # separate unsolvable from summary
    abstract_option = ["Empty","Term", "Octagon", "RelationalEqs", "RelationalIneqs"]#["Empty", "Term", "Octagon", "RelationalEqs", "RelationalIneqs", "Random", "Unlabeled", "Labeled","PredictedCG", "PredictedCDHG", "Mined"]
    file_list = get_file_list(folder, fold, file_type)
    solvable_folder_name="../benchmarks/"+folder + "/solvable"
    make_dirct(solvable_folder_name)
    solvable_problems=[]
    with open("../benchmarks/"+folder+"/solvability_summary.JSON") as f:
        loaded_graph = json.load(f)
        for ao in abstract_option:
            #print("-"*10,ao,"-"*10)
            for ff in loaded_graph[ao]["solvable_list"]:
                solvable_problems.append(ff)
    solvable_problems=set(solvable_problems)
    print(len(solvable_problems))
    print(solvable_problems)
    for f in solvable_problems:
        copy_relative_files("../benchmarks/"+folder+"/"+"train_data/"+f,solvable_folder_name)
        delete_relative_files("../benchmarks/"+folder+"/"+"train_data/"+f)

def separate_by_solvability_JSON(folder,fold,file_type):
    compress_file_in_folder(folder+"/"+fold)
    #separate unsolvable by json file
    file_list=get_file_list(folder, fold, file_type)
    unsolvable_list=[]
    no_solvability_list=[]
    for f in file_list:
        solving_time_json_file=f[:-len(".zip")]+".solvability.JSON"
        if os.path.exists(solving_time_json_file+".zip"):
            unzip_file(solving_time_json_file+".zip")
            os.remove(solving_time_json_file+".zip")
            with open(solving_time_json_file) as st:
                loaded_json = json.load(st)
                solvable_counter=0
                for k in loaded_json:
                    if len(loaded_json[k])!=0 and "solvingTime" in k and int(loaded_json[k][0])!=10800000:
                        #print(os.path.basename(f),k,loaded_json[k][0])
                        solvable_counter=solvable_counter+1
                print(solvable_counter,os.path.basename(f))
                if solvable_counter==0:
                    print("*"*10,"unsolvable",os.path.basename(f),"*"*10)
                    unsolvable_list.append(f)
            file_compress([solving_time_json_file], solving_time_json_file + ".zip")
            os.remove(solving_time_json_file)
        else:
            no_solvability_list.append(f)

    move_file_list_to_new_folder(folder,"unsolvable",unsolvable_list)
    move_file_list_to_new_folder(folder,"no-solvability",no_solvability_list)




def collect_solvable_list_from_unsolvable_set(json_file,unsolvable_folder,fold):
    abstract_option = ["Empty", "Term", "Octagon", "RelationalEqs", "RelationalIneqs", "Random", "Unlabeled", "Labeled",
                       "PredictedCG", "PredictedCDHG", "Mined"]
    make_dirct(os.path.dirname(json_file)+"/collected_solvable_files")
    with open(json_file) as f:
        loaded_graph = json.load(f)
        for ao in abstract_option:
            abstract_option_folder=os.path.dirname(json_file)+"/collected_solvable_files/"+ao
            make_dirct(abstract_option_folder)
            for ff in loaded_graph[ao]["solvable_list"]:
                print(ff)
                copy_relative_files(unsolvable_folder+"/"+fold+"/"+ff[:-len(".zip")],abstract_option_folder)



def collect_relative_files(folder,from_folder,file_type):
    file_list = get_file_list(folder, "train_data", file_type)
    file_list_with_relative_files = get_file_list(from_folder, "train_data", file_type)
    for f in file_list:
        for ff in file_list_with_relative_files:
            if os.path.basename(f) == os.path.basename(ff):
                copy_relative_files(ff[:-len(".zip")],os.path.dirname(f))

def change_relative_file_names(folder,fold,file_type):
    file_list=get_file_list(folder,fold,file_type)
    for f in file_list:
        for ff in glob.glob(f[:-len(".zip")]+"*"):
            unzip_file(ff)
            os.remove(ff)
            old_name = ff[:-len(".zip")]
            new_name = old_name.replace("chc-LIA-lin_","chc-LIA-non-lin_")
            os.rename(old_name,new_name)
            file_compress([new_name], new_name + ".zip")
            os.remove(new_name)



def compile_dataset(benchmark,folder):
    file_list=get_file_list(benchmark,folder,"smt2")
    print("file_list",len(file_list))
    make_dirct("../benchmarks/"+benchmark+"/"+folder+"-compiled")

    for f in file_list:
        raw_file_name=f[f.rfind("/")+1:-len(".zip")]
        file_folder=os.path.join("../benchmarks/"+benchmark+"/"+folder+"-compiled" ,raw_file_name)
        os.mkdir(file_folder)
        copy_relative_files(f[:-len(".zip")],file_folder)
        unzip_all_file_folder(file_folder)
        folder_compress(file_folder,file_folder)
        shutil.rmtree(file_folder)



def select_files_with_condition(source_folder_name,target_folder_name):
    target_folder_1="../benchmarks/" + target_folder_name + "_1"
    make_dirct(target_folder_1)
    target_folder_2="../benchmarks/" + target_folder_name + "_2"
    make_dirct(target_folder_2)
    for fold in ["train_data","valid_data","test_data"]:
        source_folder="../benchmarks/" + source_folder_name+"/"+fold
        target_folder_1_fold = target_folder_1 + "/" + fold
        target_folder_2_fold = target_folder_2+ "/" + fold
        make_dirct(target_folder_1_fold)
        make_dirct(target_folder_2_fold)
        unzip_all_file_folder(source_folder)
        file_list=glob.glob("../benchmarks/" + source_folder_name+"/"+fold + "/*.smt2")
        for file in file_list:
            with open(file+".hyperEdgeGraph.JSON") as f:
                loaded_graph = json.load(f)
            if len(loaded_graph["nodeIds"])>500:
                #print(file, "nodeIDs > 100, move to " + target_folder_1_fold)
                copy_relative_files(file, target_folder_1_fold)
            else:
                #print(file,"nodeIDs < 100, move to "+target_folder_2_fold)
                copy_relative_files(file,target_folder_2_fold)
        compress_file_in_folder(source_folder)
        compress_file_in_folder(target_folder_1_fold)
        compress_file_in_folder(target_folder_2_fold)


def collect_common_files(folder1,folder2,out_put_folder):
    files_in_folder_1=glob.glob("../benchmarks/" + folder1 + "/*.smt2.zip")
    files_in_folder_2 = glob.glob("../benchmarks/" + folder2 + "/*.smt2.zip")

    files_in_folder_1= [f[f.rfind("/")+1:] for f in files_in_folder_1]
    files_in_folder_2 = [f[f.rfind("/") + 1:] for f in files_in_folder_2]
    print("files_in_folder_1",len(files_in_folder_1))
    print(sorted(files_in_folder_1))
    print("files_in_folder_2", len(files_in_folder_2))
    print(sorted(files_in_folder_2))
    common_files=set(files_in_folder_1).intersection(set(files_in_folder_2))
    print("common_files",len(common_files))
    print(sorted(list(common_files)))
    make_dirct("../benchmarks/"+out_put_folder)
    for f in common_files:
        copy_relative_files("../benchmarks/" + folder1 +"/"+f[:-len(".zip")],"../benchmarks/"+out_put_folder)
        copy_relative_files("../benchmarks/" + folder2 + "/" + f[:-len(".zip")], "../benchmarks/" + out_put_folder)

def compress_exception(benchmark=""):
    folder = ["exceed-max-node", "lia-lin-multiple-predicates-in-body", "no-initial-predicates",
              "no-predicates-selected", "no-simplified-clauses", "other-error", "out-of-memory",
              "shell-timeout", "solvability-timeout", "stack-overflow", "test-timeout", "time-out-exception", "unsat","loop-head-empty"]
    benckmarks = ["../benchmarks/"+benchmark+"/" + f for f in folder]
    for b in benckmarks:
        from utils import file_compress
        for f in glob.glob("../benchmarks/" + b + "/*"):
            file_compress([f], f + ".zip")
            os.remove(f)


def rename_files_in_benchmarks(benchmark=""):
    from utils import unzip_file
    for fold in ["train_data","valid_data","test_data"]:
        for file in glob.glob("../benchmarks/"+benchmark+"/"+fold+"/*"):
            if file.find(".zip")!=-1:
                unzip_file(file)
                os.remove(file)
        for file in glob.glob("../benchmarks/" + benchmark + "/" + fold+"/*"):
            rename_file(file)
        compress_file_in_folder(benchmark+"/"+fold)


def rename_file(x):
    if (x.find(".smt2")!=x.rfind(".smt2")):
        middle_name=x[x.find(".smt2")+len(".smt2"):x.rfind(".smt2")]
        reassemble_name=x[:x.find(".smt2")]+middle_name+".smt2"
        dir_name=os.path.dirname(x)
        base_name=os.path.basename(x)
        os.rename(os.path.join(dir_name,base_name),reassemble_name)

def compress_file_in_folder(benchmark=""):
    from utils import file_compress
    for f in glob.glob("../benchmarks/"+benchmark+"/*"):
        if f[-4:]!=".zip":
            file_compress([f],f+".zip")
            os.remove(f)

def unzip_all_file_folder(benchmark=""):
    import zipfile
    for f in glob.glob("../benchmarks/"+benchmark+"/*"):
        with zipfile.ZipFile(f, 'r') as zip_ref:
            zip_ref.extractall(os.path.join("../benchmarks/",benchmark))
        os.remove(f)

def separate_unsolvable_horn_graphs(benchmarks="",folder="",trunck_number=5,train_folder=""):
    file_list=glob.glob("../benchmarks/"+benchmarks+"/"+folder+"/*.smt2.zip")
    file_list = [f[:-len(".zip")] for f in file_list]
    trunck_number=trunck_number
    batch_size=int(len(file_list)/trunck_number)
    folder_name=train_folder+"-unsolvable-predicted-"

    for t in range(trunck_number):
        make_dirct("../benchmarks/"+folder_name+str(t))
        make_dirct("../benchmarks/"+folder_name+str(t)+"/test_data")

    trunck=-1
    print("file_list",len(file_list))
    print("batch_size",batch_size)
    for count,file in enumerate(file_list):
        if count%batch_size==0:
            trunck=trunck+1
            if trunck>=trunck_number-1:
                trunck=trunck_number-1
        print(file,trunck)
        for f in glob.glob(file+"*"):
            copy(f,"../benchmarks/"+folder_name+str(trunck)+"/test_data")
            os.remove(f)



def separate_extracted_and_left_data(benchmark="",folder=""):
    file_list= glob.glob("../benchmarks/"+benchmark+"/"+folder+"/*.smt2")
    extracted_folder_name="../benchmarks/"+benchmark+"/extracted"
    not_extracted_folder_name="../benchmarks/" + benchmark + "/not-extracted"
    make_dirct(extracted_folder_name)
    make_dirct(not_extracted_folder_name)
    for file in file_list:
        if os.path.exists(file+"-0.hyperEdgeGraph.JSON"):
            #copy_relative_files(file,extracted_folder_name)
            pass
        else:
            print(file)
            copy(file,not_extracted_folder_name)
            os.remove(file)


def file_compress(inp_file_names, out_zip_file):
    import zipfile
    compression = zipfile.ZIP_DEFLATED
    #print(f" *** Input File name passed for zipping - {inp_file_names}")
    # create the zip file first parameter path/name, second mode
    #print(f' *** out_zip_file is - {out_zip_file}')
    zf = zipfile.ZipFile(out_zip_file, mode="w")

    try:
        for file_to_write in inp_file_names:
        # Add file to the zip file
        # first parameter file to zip, second filename in zip
            #print(f' *** Processing file {file_to_write}')
            zf.write(file_to_write, os.path.basename(out_zip_file)[:-len(".zip")], compress_type=compression)

    except FileNotFoundError as e:
        print(f' *** Exception occurred during zip process - {e}')
    finally:
        # Don't forget to close the file!
        zf.close()

def find_deduplicate_benchmarks(benchmarks=""):
    import zlib
    file_list=glob.glob("../benchmarks/"+benchmarks+"/*.smt2")
    file_list_with_compressed_str=[]
    for file in file_list:
        with open(file) as f:
            #print("first line",f.readline())
            file_list_with_compressed_str.append(zlib.compress(f.read().encode("utf-8")))

    import collections
    print("file_list",len(file_list))
    print("file_list_with_compressed_str",len(file_list_with_compressed_str))
    duplicate_str_temp=[[x,file_list_with_compressed_str.count(x)] for x in file_list_with_compressed_str if file_list_with_compressed_str.count(x) > 1]
    unseen=set()
    deduplicate_str=[]
    for d in duplicate_str_temp:
        if d[0]in unseen:
            deduplicate_str.append(d)
        else:
            unseen.add(d[0])

    print("duplicate_str",len(deduplicate_str))
    duplicated_file_list=[]
    for d in deduplicate_str:
        print("----")
        #print("d[0]", d[0])
        for _ in range(0,d[1]):
            deplicated_file = file_list[file_list_with_compressed_str.index(d[0])]
            print("deplicated_file", deplicated_file)
            duplicated_file_list.append(deplicated_file)
            file_list[file_list_with_compressed_str.index(d[0])]="None"
            file_list_with_compressed_str[file_list_with_compressed_str.index(d[0])]="None"
    print("duplicated_file_list",duplicated_file_list)

def collect_unsolvable_data(horn_graph_folder="", unsolvable_folder="", target_file=""):
    unsolvable_file_list = glob.glob("../benchmarks/" + unsolvable_folder + "/*.smt2")
    horn_graph_file_list = glob.glob("../benchmarks/" + horn_graph_folder + "/*.smt2")
    intersect_file_folder = os.path.join("../benchmarks", target_file)
    unsolvable_file_name_list = [f[f.rfind("/") + 1:] for f in unsolvable_file_list]
    horn_graph_file_name_list = [f[f.rfind("/") + 1:] for f in horn_graph_file_list]
    print(unsolvable_file_name_list)
    print(horn_graph_file_name_list)
    make_dirct(intersect_file_folder)
    for f in unsolvable_file_name_list:
        if f in horn_graph_file_name_list and os.path.exists(
                "../benchmarks/" + horn_graph_folder + "/" + f + ".circles.gv"):
            copy_relative_files("../benchmarks/" + horn_graph_folder + "/" + f, intersect_file_folder)
            # print(f)


def align_extracted_data(benchmark="chc-comp21-benchmarks-main-all", folder_name="extracted_data"):
    file_list = glob.glob("../benchmarks/" + benchmark + "/" + folder_name + "/*.circles.gv")
    # smt_file_list=glob.glob("../benchmarks/"+benchmark+"/exceptions/shell-timeout/*.smt2")
    for f in file_list:
        smt_file_path = f[:f.rfind(".circles.gv")]
        smt_file_name = smt_file_path[smt_file_path.rfind("/") + 1:]
        if not os.path.exists(smt_file_path):
            shutil.move("../benchmarks/" + benchmark + "/exceptions/shell-timeout/" + smt_file_name,
                        "../benchmarks/" + benchmark + "/" + folder_name)





def get_k_fold_train_data(fold=5, benchmark="chc-comp21-benchmarks-main-all",
                          folder_name="extracted_data-only-initial-predicates"):
    path = os.path.join("../benchmarks/", benchmark)
    file_list=[]
    for fo in ["train_data","valid_data","test_data"]:
        file_list = file_list + glob.glob(path + "/" + folder_name + "/"+fo+"/*.smt2.zip")
    #file_list = glob.glob(path + "/" + folder_name + "/*.smt2.zip")
    file_list=[f[:-len(".zip")] for f in file_list]
    print("file_list",file_list)
    separating_length = int(len(file_list) / fold)
    random.shuffle(file_list)
    random.shuffle(file_list)
    separated_file_list = [file_list[i * separating_length:min((i + 1) * separating_length, len(file_list))] for i in
                           range(fold)]
    for f in range(fold):
        fold_folder = os.path.join(path, folder_name + "-" + str(f) + "-fold")
        print("fold_folder", fold_folder)
        make_dirct(fold_folder)
        for df in ["train_data", "valid_data", "test_data"]:
            make_dirct(os.path.join(fold_folder, df))

        for file in separated_file_list[f]:  # test
            copy_relative_files(file, os.path.join(fold_folder, "test_data"))
        for file in separated_file_list[(f + 1) % (fold - 1)]:  # valid
            copy_relative_files(file, os.path.join(fold_folder, "valid_data"))
        for file in separated_file_list[(f + 2) % (fold - 1)] + separated_file_list[(f + 3) % (fold - 1)] + \
                    separated_file_list[(f + 4) % (fold - 1)]:  # train
            copy_relative_files(file, os.path.join(fold_folder, "train_data"))



def get_generated_horn_graph(horn_graph_folder="lia-lin-horn_graphs",
                             target_folder="lia-lin-extract-unsolved-fullLabel"):
    horn_graph_file_list = glob.glob("../benchmarks/" + horn_graph_folder + "/*.hyperEdgeGraph.JSON")
    horn_graph_smt2_target_file_list = glob.glob("../benchmarks/" + target_folder + "/*.smt2")
    print("horn_graph_smt2_target_file_list", horn_graph_smt2_target_file_list)
    horn_graph_file_name_list = [f[f.find(horn_graph_folder) + len(horn_graph_folder) + 1:] for f in
                                 horn_graph_file_list]
    print("horn_graph_file_name_list", horn_graph_file_name_list)
    for f in horn_graph_smt2_target_file_list:
        f_name = f[f.rfind(target_folder) + len(target_folder) + 1:]
        graph_file_name = f_name + ".hyperEdgeGraph.JSON"
        if graph_file_name in horn_graph_file_name_list:
            shutil.copyfile("../benchmarks/" + horn_graph_folder + "/" + f_name + ".hyperEdgeGraph.JSON",
                            "../benchmarks/" + target_folder + "/" + f_name + ".hyperEdgeGraph.JSON")
            shutil.copyfile("../benchmarks/" + horn_graph_folder + "/" + f_name + ".unlabeledPredicates.tpl",
                            "../benchmarks/" + target_folder + "/" + f_name + ".unlabeledPredicates.tpl")
        else:
            os.remove(f)


def rebuild_exception_file(benchmark="",field_list=["solvability-timeout", "shell-timeout"]):
    loaded_fields = read_benchmark_exception_json(benchmark)
    for filed in field_list:
        new_folder = "../benchmarks/" + benchmark + "/" + filed
        make_dirct(new_folder)
        for f in loaded_fields[filed]:
            file_name = "../benchmarks/LIA-Lin+sv-comp/LIA-Lin+sv-comp-templates-unsolvables/test_data/" + f
            shutil.copyfile(file_name, new_folder + "/" + f)



def clean_extracted_data(benchmark,separated_predicates=False,total_file=5,edge_type="hyperEdgeGraph"):
    if(separated_predicates):
        file_list = glob.glob("../benchmarks/" + benchmark + "/*.smt2.zip")
        file_list = [f[:-len(".zip")] for f in file_list]
        for f in file_list:
            if not (os.path.exists(f + "-0."+edge_type+".JSON.zip") ):#and os.path.exists(f + ".unlabeledPredicates.tpl.zip")
                print(f)
                delete_relative_files(f)


        file_list = glob.glob("../benchmarks/" + benchmark + "/*-0."+edge_type+".JSON.zip")
        file_list = [f[:-len("-0."+edge_type+".JSON.zip")] for f in file_list]
        for f in file_list:
            if not (os.path.exists(f+".zip")):  # and os.path.exists(f + ".unlabeledPredicates.tpl.zip")
                print(f)
                delete_relative_files(f)



    for unzipped_fold in [".gv",".JSON",".smt2"]:#".tpl"
        file_list = glob.glob("../benchmarks/" + benchmark + "/*"+unzipped_fold)
        for f in file_list:
            os.remove(f)

    file_list = glob.glob("../benchmarks/" + benchmark + "/*.smt2.zip")
    file_list = [f[:f.rfind("smt2.zip")] for f in file_list]
    for f in file_list:
        relative_f = glob.glob(f + "*")
        if (len(relative_f) != total_file):
            print(len(relative_f), total_file, relative_f)
            for ff in relative_f:
                os.remove(ff)



def collect_differentiated_field(benchmarks="",field="",substract_field_list=[],target_folder="",source_folder=""):
    loaded_jsons = read_benchmark_exception_json(benchmarks)
    file_list = loaded_jsons[field]
    file_list = [f + ".zip" if f.find(".zip") < 0 else f for f in file_list]
    for f in substract_field_list:
        load_field_list=[f + ".zip" if f.find(".zip") < 0 else f for f in loaded_jsons[f]]
        print("file_list",len(file_list))
        print("loaded_jsons[f]",len(load_field_list))
        file_list=set(file_list)-(set(load_field_list))
        print("file_list", len(file_list))
        print("----")
    print(field, len(file_list), file_list)
    os.mkdir(os.path.join("../benchmarks/" ,target_folder) )
    for f in file_list:
        copy("../benchmarks/"+source_folder+"/" + f, "../benchmarks/"+target_folder)
def collect_one_field(benchmarks="",field_list=[],target_folder="",source_folder=""):
    loaded_jsons=read_benchmark_exception_json(benchmarks)
    make_dirct("../benchmarks/" + target_folder)
    for field in field_list:
        file_list=loaded_jsons[field]
        file_list = [f + ".zip" if f.find(".zip") < 0 else f for f in file_list]
        print(field,len(file_list),file_list)
        for f in file_list:
            copy("../benchmarks/"+source_folder+"/" + f, "../benchmarks/"+target_folder)
def collect_unsolvable_cases(benchmarks=[],abstract_list=[],filed = "shell-timeout"):
    loaded_jsons=[read_benchmark_exception_json(b) for b in benchmarks]
    common_files = set(loaded_jsons[0][filed])
    for a,j in zip(abstract_list,loaded_jsons):
        print("abstract:",a,len(j[filed]))
        print(j[filed])
        common_files=common_files.intersection(set(j[filed]))

    print("common_files",len(common_files))
    print(common_files)
    make_dirct("../benchmarks/all-LIA-Lin/common-set")
    make_dirct("../benchmarks/all-LIA-Lin/common-set/train_data")
    for f in common_files:
        copy("../benchmarks/all-LIA-Lin/raw/train_data/"+f,"../benchmarks/all-LIA-Lin/common-set/train_data")




def benchmark_exceptions_analysis(benchmark1="",benchmark2=""):
    filed = "shell-timeout"  # shell-timeout, solvability-timeout
    loaded_fields_empty = read_benchmark_exception_json(benchmark1)
    loaded_fields_full = read_benchmark_exception_json(benchmark2)
    common_files = set(loaded_fields_empty[filed]).intersection(set(loaded_fields_full[filed]))
    print("timeout files when use full label", len(loaded_fields_full[filed]))
    print("timeout files when use empty label", len(loaded_fields_empty[filed]))
    print("common timeout files", len(common_files))
    print(common_files)
    #collect common files
    common_timeout_folder="../benchmarks/"+benchmark1+"/common_timeout"
    make_dirct(common_timeout_folder)
    for f in glob.glob("../benchmarks/"+benchmark1+"/shell-timeout/*"):
        file_name=f[f.rfind("/")+1:][:-len(".zip")]
        if file_name in common_files:
            copy(f,common_timeout_folder)

    only_cannot_solved_by_full_label=set(loaded_fields_full[filed]).difference(set(loaded_fields_empty[filed]))
    print("only_cannot_solved_by_full_label",len(only_cannot_solved_by_full_label))
    print(only_cannot_solved_by_full_label)
    only_cannot_solved_by_empty_label = set(loaded_fields_empty[filed]).difference(set(loaded_fields_full[filed]))
    print("only_cannot_solved_by_empty_label", len(only_cannot_solved_by_empty_label))
    print(only_cannot_solved_by_empty_label)


def read_benchmark_exception_json(folder_name):
    json_file = "../benchmarks/" + folder_name + "/benchmark_info_merged.JSON"
    with open(json_file) as f:
        loaded_graph = json.load(f)
    return loaded_graph



class AnalysisJsonFile:
    def __init__(self, benchmark, file_type):
        self.benchmark = benchmark
        self.file_type = file_type



    def load_JSON_fields_to_dict(self, file):
        loaded_json=None
        unzip_file(file)
        with open(file[:-len(".zip")]) as f:
            loaded_json = json.load(f)
        os.remove(file[:-len(".zip")])
        return loaded_json

    def get_file_list(self):
        return glob.glob("../benchmarks/" + self.benchmark + "/*.smt2." + self.file_type + ".JSON.zip")

    def analysis_solving_time(self):
        structure_d=["RelationalEqs_splitClauses_0","Octagon_splitClauses_1","Octagon_splitClauses_0","RelationalIneqs_splitClauses_1",
                     "Term_splitClauses_0","RelationalIneqs_splitClauses_0","Term_splitClauses_1","RelationalEqs_splitClauses_1"]
        for prefix in ["solvingTime_", "cegarIterationNumber_"]:
            output_structure_d={"num_of_"+prefix+d:0 for d in structure_d}
            for file in self.get_file_list():
                print("-"*10)
                print("file",file)
                loaded_data=self.load_JSON_fields_to_dict(file)
                print("loaded_data",loaded_data)
                min_solving_k_v=["",60*60*10*1000]
                for k in structure_d:
                    if loaded_data[prefix+k][0]<min_solving_k_v[1]:
                        min_solving_k_v[0]=prefix+k
                        min_solving_k_v[1]=loaded_data[prefix+k][0]
                print("min_solving_k_v",min_solving_k_v)
                output_structure_d["num_of_"+min_solving_k_v[0]]=output_structure_d["num_of_"+min_solving_k_v[0]]+1
            print(output_structure_d)





    def analysis_template_distribution(self):
        structure_d = {"numberOfIntegerEqOccurenceInMinedTemplates": [], "numberOfIntegerTermsFromInitialTemplates": [],
                       "numberOfBooleanTermsFromInitialTemplates": [], "numberOfIntegerTermsFromMinedTemplates": [],
                       "numberOfBooleanTermsFromMinedTemplates": []}
        file_list = []
        for fold in ["train"]:  # ["train","valid","test"]:
            file_list = file_list + glob.glob(
                "../benchmarks/" + self.benchmark + "/" + fold + "_data/*."+self.file_type+".JSON.zip")#TemplatesDistribution
        print("file_list", len(file_list))
        for file in file_list:
            unzip_file(file)
            with open(file[:-len(".zip")]) as f:
                loaded_graph = json.load(f)
                for k in structure_d:
                    structure_d[k].append(int(loaded_graph[k]))
                    if k == "numberOfBooleanTermsFromMinedTemplates" and int(loaded_graph[k]) > 0:
                        print(file)
            os.remove(file[:-len(".zip")])
        loaded_structure = structure_d
        print("loaded_structure", loaded_structure)
        print("number of positive integer terms in all single integer terms",
              str(sum(loaded_structure["numberOfIntegerTermsFromMinedTemplates"])) + "/" + str(
                  sum(loaded_structure["numberOfIntegerTermsFromInitialTemplates"])))
        print("number of positive boolean terms in all single boolean terms",
              str(sum(loaded_structure["numberOfBooleanTermsFromMinedTemplates"])) + "/" + str(
                  sum(loaded_structure["numberOfBooleanTermsFromInitialTemplates"])))
        print("number of positive Eq integer terms in all single integer terms",
              str(sum(loaded_structure["numberOfIntegerEqOccurenceInMinedTemplates"])) + "/" + str(
                  sum(loaded_structure["numberOfIntegerTermsFromInitialTemplates"])))

    def analysis_data_statistics(self,data_fold=[""]):
        from utils import print_multiple_object
        file_list = self.get_file_list()

        for fold in data_fold:
            print("-" * 10)
            print("fold:", fold, "number of file", len(file_list))
            statistics_d = {"positive_guard_list": [], "total_guard_list": [], "redundant_guard_list": [],
                            "positive_predicate_list": [],
                            "total_initial_predicate_list": [], "positive_redundant_pairwise_predicate_list": [],
                            "total_redundant_pairwise_predicate_list": [], "positive_constraint_predicate_list": [],
                            "total_constraint_predicate_list": [], "predicates_uniquely_from_CEGAR": [],
                            "positive_predicates_uniquely_from_CEGAR": [], "total_simple_genenerated_predicates": [],
                            "positive_simple_genenerated_predicates": []}

            for json_file in file_list:
                with open(json_file) as f:
                    loaded_graph = json.load(f)
                    statistics_d["positive_guard_list"].append(int(loaded_graph["positiveGuards" + fold]))
                    statistics_d["total_guard_list"].append(int(loaded_graph["total guards" + fold]))
                    # statistics_d["redundant_guard_list"].append(int(loaded_graph["redundant guards"]))
                    statistics_d["positive_predicate_list"].append(
                        int(loaded_graph["minimizedPredicates (initialPredicates go through CEGAR Filter)" + fold]))
                    statistics_d["total_initial_predicate_list"].append(int(loaded_graph[
                                                                                "initialPredicates (initial predicatesFromCEGAR, heuristic simpleGeneratedPredicates)" + fold]))
                    statistics_d["positive_simple_genenerated_predicates"].append(
                        int(loaded_graph["positiveSimpleGeneratedPredicates" + fold]))
                    statistics_d["total_simple_genenerated_predicates"].append(
                        int(loaded_graph["simpleGeneratedPredicates" + fold]))
                    statistics_d["positive_redundant_pairwise_predicate_list"].append(
                        int(loaded_graph["positiveRedundantPairwisePredicate" + fold]))
                    statistics_d["total_redundant_pairwise_predicate_list"].append(
                        int(loaded_graph["redundantPairwisePredicate" + fold]))
                    statistics_d["positive_constraint_predicate_list"].append(
                        int(loaded_graph["positiveConstraintPredicates" + fold]))
                    statistics_d["total_constraint_predicate_list"].append(
                        int(loaded_graph["constraintPredicates" + fold]))
                    statistics_d["predicates_uniquely_from_CEGAR"].append(
                        int(loaded_graph["predicatesFromCEGAR" + fold]))
                    statistics_d["positive_predicates_uniquely_from_CEGAR"].append(
                        int(loaded_graph["positivePredicatesFromCEGAR" + fold]))
                    # print(json_file)
            print("-" * 10)
            print_multiple_object(statistics_d)
            print("-" * 10)
            # print("redundant guards",str(sum(statistics_d["redundant_guard_list"])))
            print("unique guards", str(sum(statistics_d["total_guard_list"])))
            print("positive guard / positive predicates", str(sum(statistics_d["positive_guard_list"])) + "/" +
                  str(sum(statistics_d["positive_predicate_list"])))
            print("positive guard / total guards", str(sum(statistics_d["positive_guard_list"])) + "/" +
                  str(sum(statistics_d["total_guard_list"])))
            print("positive pairwise predicates / positive predicates",
                  str(sum(statistics_d["positive_redundant_pairwise_predicate_list"])) + "/" +
                  str(sum(statistics_d["positive_predicate_list"])))
            print("positive pairwise predicates / total pairwise predicates",
                  str(sum(statistics_d["positive_redundant_pairwise_predicate_list"])) + "/" +
                  str(sum(statistics_d["total_redundant_pairwise_predicate_list"])))
            print("positive constraint predicates / positive predicates",
                  str(sum(statistics_d["positive_constraint_predicate_list"])) + "/" +
                  str(sum(statistics_d["positive_predicate_list"])))
            print("positive constraint predicates / total constraint predicates",
                  str(sum(statistics_d["positive_constraint_predicate_list"])) + "/" +
                  str(sum(statistics_d["total_constraint_predicate_list"])))

            print("positive simple generated predicates / positive predicates",
                  str(sum(statistics_d["positive_simple_genenerated_predicates"])) + "/" +
                  str(sum(statistics_d["positive_predicate_list"])))
            print("positive simple generated predicates / total simple generated predicates",
                  str(sum(statistics_d["positive_simple_genenerated_predicates"])) + "/" +
                  str(sum(statistics_d["total_simple_genenerated_predicates"])))

            print("positive predicates from CEGAR / positive predicates",
                  str(sum(statistics_d["positive_predicates_uniquely_from_CEGAR"])) + "/" +
                  str(sum(statistics_d["positive_predicate_list"])))
            print("positive predicates from CEGAR / total predicates from CEGAR",
                  str(sum(statistics_d["positive_predicates_uniquely_from_CEGAR"])) + "/" +
                  str(sum(statistics_d["predicates_uniquely_from_CEGAR"])))

            print("total guard / total relevant predicates from cegar",
                  str(sum(statistics_d["total_guard_list"])) + "/" +
                  str(sum(statistics_d["total_initial_predicate_list"])))
            print("total constraint predicates / total relevant predicates from cegar",
                  str(sum(statistics_d["total_constraint_predicate_list"])) + "/" +
                  str(sum(statistics_d["total_initial_predicate_list"])))
            print("total pairwise predicates / total relevant predicates from cegar",
                  str(sum(statistics_d["total_redundant_pairwise_predicate_list"])) + "/" +
                  str(sum(statistics_d["total_initial_predicate_list"])))

    def analysis_graph_structure(self):
        structure_d = {"node_number": [], "predicate_number": []}
        file_list = []
        for fold in ["train"]:  # ["train","valid","test"]:
            file_list = file_list + glob.glob("../benchmarks/" + self.benchmark + "/" + fold + "_data/*."+self.file_type+".JSON")#hyperEdgeGraph
        print("file_list", len(file_list))
        for file in file_list:
            with open(file) as f:
                loaded_graph = json.load(f)
                structure_d["node_number"].append(len(loaded_graph["nodeIds"]))
                structure_d["predicate_number"].append(len(loaded_graph["templateRelevanceLabel"]))

        print("node_number", "average", str(sum(structure_d["node_number"]) / len(structure_d["node_number"])),
              structure_d["node_number"])
        print("predicate_number", "average",
              str(sum(structure_d["predicate_number"]) / len(structure_d["predicate_number"])),
              structure_d["predicate_number"])

if __name__ == '__main__':
    main()
