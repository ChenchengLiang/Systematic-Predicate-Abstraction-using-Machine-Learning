import random
import os
from shutil import copy, rmtree, copytree
import glob
from archived.dotToGraphInfo import DotToGraphInfo
import numpy as np
import matplotlib.pyplot as plt
from distutils.dir_util import copy_tree
from Miscellaneous import pickleRead, clear_directory, clear_file
import subprocess
import json
from multiprocessing import Pool
import shutil


def generate_JSON_field(rootdir, json_file_type=".layerHornGraph.JSON", eldarica_parameters="-getHornGraph"):
    for root, subdirs, files in os.walk(rootdir):
        if len(subdirs) == 1 and subdirs[0] == "wrong_extracted_cases":
            os.rmdir(root + "/wrong_extracted_cases")
    old_field = []
    new_field = []
    if json_file_type == ".layerHornGraph.JSON" or json_file_type == ".bi-layerHornGraph.JSON":
        new_field = ["nodeIds", "nodeSymbolList", "falseIndices", "argumentIndices", "controlLocationIndices",
                     "binaryAdjacentList", "ternaryAdjacencyList", "unknownEdges", "argumentIDList", "argumentNameList",
                     "predicateArgumentEdges", "predicateInstanceEdges", "argumentInstanceEdges", "controlHeadEdges",
                     "controlBodyEdges",
                     "argumentOccurrence", "controlArgumentEdges", "guardEdges", "dataEdges", "predicateIndices",
                     "predicateOccurrenceInClause", "predicateStrongConnectedComponent", "argumentBoundList",
                     "argumentBinaryOccurrenceList", "templateIndices", "templateRelevanceLabel"]
    else:
        new_field = ["nodeIds", "nodeSymbolList", "falseIndices", "argumentIndices", "controlLocationIndices",
                     "binaryAdjacentList", "ternaryAdjacencyList", "unknownEdges", "argumentIDList", "argumentNameList",
                     "argumentEdges", "guardASTEdges", "dataFlowASTEdges", "controlFlowHyperEdges",
                     "dataFlowHyperEdges",
                     "argumentOccurrence", "predicateIndices", "predicateOccurrenceInClause",
                     "predicateStrongConnectedComponent", "argumentBoundList", "argumentBinaryOccurrenceList",
                     "templateIndices", "templateRelevanceLabel"]

    for root, subdirs, files in os.walk(rootdir):
        if len(subdirs) == 0:
            for file in glob.glob(root + "/*.smt2"):
                print(file)
                # read JSON' label
                json_file = file + ".JSON"
                graph_json_file = file + json_file_type
                json_obj = {}
                with open(json_file) as f:
                    loaded_graph = json.load(f)
                    for field in old_field:
                        json_obj[field] = loaded_graph[field]
                eld = subprocess.Popen(["../eldarica-graph-generation/eld", file, eldarica_parameters],
                                       stdout=subprocess.DEVNULL,
                                       shell=False)
                eld.wait()
                # add more field
                with open(graph_json_file) as f:
                    loaded_graph = json.load(f)
                    for field in new_field:
                        json_obj[field] = loaded_graph[field]
                # write json object to JSON file
                clear_file(graph_json_file)
                with open(graph_json_file, 'w') as f:
                    json.dump(json_obj, f, indent=4)


def add_horn_graph_json_file(rootdir, graph_type="-getHornGraph", json_file_type=".layerHornGraph.JSON"):
    old_field = []
    new_field = []
    if json_file_type == ".layerHornGraph.JSON" or json_file_type == ".bi-layerHornGraph.JSON":
        new_field = ["nodeIds", "nodeSymbolList", "falseIndices", "argumentIndices", "controlLocationIndices",
                     "binaryAdjacentList", "ternaryAdjacencyList", "unknownEdges", "argumentIDList", "argumentNameList",
                     "predicateArgumentEdges", "predicateInstanceEdges", "argumentInstanceEdges", "controlHeadEdges",
                     "controlBodyEdges",
                     "controlArgumentEdges", "guardEdges", "dataEdges",
                     "argumentOccurrence", "predicateIndices", "predicateOccurrenceInClause",
                     "predicateStrongConnectedComponent", "argumentBoundList", "argumentBinaryOccurrenceList",
                     "templateIndices", "templateRelevanceLabel"]

    else:
        new_field = ["nodeIds", "nodeSymbolList", "falseIndices", "argumentIndices", "controlLocationIndices",
                     "binaryAdjacentList", "ternaryAdjacencyList", "unknownEdges", "argumentIDList", "argumentNameList",
                     "argumentEdges", "guardASTEdges", "dataFlowASTEdges", "controlFlowHyperEdges",
                     "dataFlowHyperEdges",
                     "argumentOccurrence", "predicateIndices", "predicateOccurrenceInClause",
                     "predicateStrongConnectedComponent", "argumentBoundList", "argumentBinaryOccurrenceList",
                     "templateIndices", "templateRelevanceLabel"]

    for root, subdirs, files in os.walk(rootdir):
        if len(subdirs) == 1 and subdirs[0] == "wrong_extracted_cases":
            os.rmdir(root + "/wrong_extracted_cases")
    for root, subdirs, files in os.walk(rootdir):
        if len(subdirs) == 0:
            for file in glob.glob(root + "/*.smt2"):
                json_file = file + ".JSON"
                graph_json_file = file + json_file_type
                # if not os.path.isfile(graph_json_file):
                # read JSON' label
                json_obj = {}
                with open(json_file) as f:
                    loaded_graph = json.load(f)
                    for field in old_field:
                        json_obj[field] = loaded_graph[field]
                print("../eldarica-graph-generation/eld", file, graph_type)
                eld = subprocess.Popen(["../eldarica-graph-generation/eld", file, graph_type],
                                       stdout=subprocess.DEVNULL,
                                       shell=False)
                eld.wait()
                # add more field
                with open(graph_json_file) as layer_f:
                    loaded_graph = json.load(layer_f)
                    for field in new_field:
                        json_obj[field] = loaded_graph[field]
                if os.path.isfile(graph_json_file):
                    # write json object to JSON file
                    clear_file(graph_json_file)
                    with open(graph_json_file, 'w') as f:
                        json.dump(json_obj, f, indent=4)
                else:
                    with open(graph_json_file, 'w') as f:
                        json.dump(json_obj, f, indent=4)
                    # for f in glob.glob(file+"*"):
                    #     copy(f,"../benchmarks/memory_problem_cases/")
                    #     os.remove(f)


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


def shuffle_data(rootdir, target_folder):
    '''
    shuffle files in rootdir to shuffled_files
    '''
    file_list = glob.glob(rootdir + "/*.smt2")
    print("total file ", len(file_list))
    random.shuffle(file_list)
    random.shuffle(file_list)
    # print(file_list)
    train_files = file_list[0:int(len(file_list) * 0.6)]
    valid_files = file_list[int(len(file_list) * 0.6):int(len(file_list) * 0.8)]
    test_files = file_list[int(len(file_list) * 0.8):len(file_list)]
    try:
        os.mkdir("../benchmarks/" + target_folder)
    except:
        print("../benchmarks/" + target_folder + " existed")
    for file, fold_name in zip([train_files, valid_files, test_files], ["train_data", "valid_data", "test_data"]):
        os.mkdir("../benchmarks/" + target_folder + "/" + fold_name)
        print(fold_name + "_files", len(file))
        final_target_folder = os.path.join("../benchmarks/" + target_folder + "/", fold_name)
        for f in file:
            #copy(f, final_target_folder)
            copy_relative_files(f, final_target_folder)
    # os.mkdir(os.path.join("../benchmarks/"+target_folder+"/", "test_data_simple_generator"))
    # for file in test_files:
    #     copy(file, os.path.join("../benchmarks/"+target_folder+"/", "test_data_simple_generator"))





def divide_data_to_threads(benchmark="", target_folder="", three_fold=True, chunk_number=17,
                           datafold_list=["train_data", "valid_data", "test_data"]):
    root = "../benchmarks/" + benchmark
    try:
        os.mkdir(os.path.join("../benchmarks", target_folder))
    except:
        print("path existed")
    datafold_files_list = [os.path.join(root, d) for d in datafold_list]
    if three_fold == False:
        datafold_list = datafold_list + ["test_data_simple_generator"]
        datafold_files_list = datafold_files_list + [os.path.join(root, "test_data_simple_generator")]

    for datafold, datafold_files in zip(datafold_list, datafold_files_list):
        datafold_file_list = glob.glob(datafold_files + "/*.smt2.zip")
        print(datafold_files, len(datafold_file_list))
        chunk_size = int(len(datafold_file_list) / chunk_number)
        for i in range(0, chunk_number):
            thread_dir = os.path.join("../benchmarks", target_folder, "thread_" + str(i))
            try:
                os.mkdir(thread_dir)
            except:
                pass
            try:
                os.mkdir(os.path.join(thread_dir, datafold))
            except:
                pass
            for file in datafold_file_list[i * chunk_size:(i + 1) * chunk_size]:
                file=file[:-len(".zip")]
                copy_relative_files(file, os.path.join(thread_dir, datafold))
                # copy(file, os.path.join(thread_dir,datafold))
        for file in datafold_file_list[chunk_number * chunk_size:]:
            file = file[:-len(".zip")]
            copy_relative_files(file, os.path.join(thread_dir, datafold))
            # copy(file, os.path.join(thread_dir, datafold))


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
    # parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-hyperedge-graph",json_file_type=".hyperEdgeHornGraph.JSON",graph_type="-getHornGraph:hyperEdgeGraph")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-bi-direction-layer-graph",json_file_type=".layerHornGraph.JSON",graph_type="-getHornGraph:biDirectionLayerGraph")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/small-dataset-trainData-datafold-bi-direction-layer-graph",json_file_type=".layerHornGraph.JSON",graph_type="-getHornGraph:biDirectionLayerGraph")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/small-dataset-trainData-datafold-mono-direction-layer-graph",json_file_type=".layerHornGraph.JSON",graph_type="-getHornGraph:monoDirectionLayerGraph")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/small-dataset-trainData-datafold-hyperedge-graph",json_file_type=".hyperEdgeHornGraph.JSON",graph_type="-getHornGraph:hyperEdgeGraph")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-hyperedge-graph",json_file_type=".hyperEdgeHornGraph.JSON",graph_type="-getHornGraph:hyperEdgeGraph")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-bi-direction-layer-graph",json_file_type=".layerHornGraph.JSON",graph_type="-getHornGraph:biDirectionLayerGraph")
    # parameter_for_JSON = parameters(
    #     root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-hybrid-direction-layer-graph",
    #     json_file_type=".layerHornGraph.JSON", graph_type="-getHornGraph:hybridDirectionLayerGraph")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-hyperedge-graph",json_file_type=".hyperEdgeHornGraph.JSON", graph_type="-getHornGraph:hyperEdgeGraph")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-datafold",
    #                                 json_file_type=".layerHornGraph.JSON",
    #                                 eldarica_parameters="-getHornGraph:hybridDirectionLayerGraph")
    # generate_JSON_field(parameter_for_JSON.root_dir, json_file_type=parameter_for_JSON.json_file_type,
    #                          eldarica_parameters=parameter_for_JSON.eldarica_parameters)

    # extract_train_data_templates_pool("../benchmarks/small-dataset-sat-datafold-same-train-valid-test")
    # gather_data_to_one_file(os.path.join("../benchmarks/","sv-comp-clauses"),os.path.join("../benchmarks","shuffleFile"))
    # shuffle_data("../benchmarks/LIA-Lin+sv-comp/sv-comp+LIA-Lin-train-with-CEGAR",
    #              "../benchmarks/LIA-Lin+sv-comp/sv-comp+LIA-Lin-train-with-CEGAR-shuffled")
    divide_data_to_threads("all-LIA-Lin-common-unsolvable-set",
                           "all-LIA-Lin-common-unsolvable-set-divided",three_fold=True,datafold_list=["test_data"])#datafold_list=["test_data"]

    # moveIncompletedExtractionsToTemp("../benchmarks/new-full-dataset-with-and")

    # analysis benchmark
    # benchmark_exceptions_analysis("LIA-Lin+sv-comp/exception-LIA-Lin+sv-comp-empty-label-template-selection",
    #                               "LIA-Lin+sv-comp/exception-LIA-Lin+sv-comp-full-label-template-selection")
    # collect_unsolvable_cases(["all-LIA-lin-abstract-empty-solvability","all-LIA-lin-abstract-term-solvability",
    #                                              "all-LIA-lin-abstract-oct-solvability","all-LIA-lin-abstract-relEqs-solvability",
    #                           "all-LIA-lin-abstract-relIneqs-solvability","all-LIA-lin-abstract-off-solvability",
    #                           "all-LIA-lin-abstract-comb-solvability"]
    #                                             ,["empty","term","oct","relEqs","relIneqs","off","comb"])

    #rebuild_exception_file("exception-LIA-Lin+sv-comp-predicted",["solvable-file"])
    # get_generated_horn_graph()
    # for fold in ["train_data","valid_data","test_data"]:
    #     clean_extracted_data("thread_1/"+fold)
    #clean_extracted_data("LIA-Lin+sv-comp-template-unsolvable-horn-graph/test_data")

    #align_extracted_data(benchmark="LIA-Lin+sv-comp",folder_name="sv-comp+LIA-Lin-train-with-CEGAR")
    #get_k_fold_train_data(benchmark="LIA-Lin+sv-comp",folder_name="LIA-Lin+sv-comp-train-templates")
    # collect_unsolvable_data(horn_graph_folder="all-LIA-Lin/extractable-horn-hraph"
    #                         ,unsolvable_folder="exception-all-LIA-Lin-full-label-with-CEGAR/shell-timeout",
    #                         target_file="all-LIA-Lin-train-fixed-size-unsolvable-predicted")

    # analysis_data_statistics(benchmark="all-LIA-Lin",folder="extracted-fixed-size/train_data",
    #                          jsonType="predicateDistribution")
    # analysis_data_statistics(benchmark="all-LIA-Lin-train-fixed-size-unsolvable-predicted",
    #                          folder="test_data",
    #                          jsonType="solvability", data_fold=["emptyInitialPredicates", "predictedInitialPredicates",
    #                                                             "fullInitialPredicates",
    #                                                             "trueInitialPredicates"])  # solvability
    # analysis_graph_structure(benchmark="temp-train")
    #find_deduplicate_benchmarks(benchmarks="temp")#all-LIA-Lin/extractable-horn-hraph
    #separate_extracted_and_left_data("LIA-Lin+sv-comp/all-LIA-Lin-shell-timeout-horn-graphs","train_data")
    #file_compress(["../benchmarks/test/chc-LIA-lin_003.smt2"],"../benchmarks/test/chc-LIA-lin_003.smt2.zip")
    #separate_unsolvable_horn_graphs("LIA-Lin+sv-comp-template-unsolvable-horn-graph","test_data",trunck_number=6,train_folder="LIA-Lin+sv-comp-train-templates")

    # for i in range(0,17):
    #     for fold in ["train_data","valid_data","test_data"]:
    #         compress_all_file_folder("LIA-Lin+sv-comp/LIA-Lin+sv-comp-divided/thread_"+str(i)+"/"+fold)
    # for fold in ["test_data"]:
    #     compress_all_file_folder("all-LIA-Lin-common-unsolvable-set"+"/"+fold)
    #
    # for i in range(0,17):
    #     rename_files_in_benchmarks("LIA-Lin+sv-comp/LIA-Lin+sv-comp-divided/thread_"+str(i))
    #compress_exception("LIA-Lin+sv-comp-train-templates/exceptions")


def get_json_filed_files(benchmark=""):
    pass

def compress_exception(benchmark=""):
    folder = ["exceed-max-node", "lia-lin-multiple-predicates-in-body", "no-initial-predicates",
              "no-predicates-selected", "no-simplified-clauses", "other-error", "out-of-memory",
              "shell-timeout", "solvability-timeout", "stack-overflow", "test-timeout", "time-out-exception", "unsat"]
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
        compress_all_file_folder(benchmark+"/"+fold)


def rename_file(x):
    if (x.find(".smt2")!=x.rfind(".smt2")):
        middle_name=x[x.find(".smt2")+len(".smt2"):x.rfind(".smt2")]
        reassemble_name=x[:x.find(".smt2")]+middle_name+".smt2"
        dir_name=os.path.dirname(x)
        base_name=os.path.basename(x)
        os.rename(os.path.join(dir_name,base_name),reassemble_name)

def compress_all_file_folder(benchmark=""):
    from utils import file_compress
    for f in glob.glob("../benchmarks/"+benchmark+"/*"):
        file_compress([f],f+".zip")
        os.remove(f)

def separate_unsolvable_horn_graphs(benchmarks="",folder="",trunck_number=5,train_folder=""):
    file_list=glob.glob("../benchmarks/"+benchmarks+"/"+folder+"/*.smt2.zip")
    file_list = [f[:-len(".zip")] for f in file_list]
    trunck_number=trunck_number
    batch_size=int(len(file_list)/trunck_number)
    folder_name=train_folder+"-unsolvable-predicted-"
    try:
        for t in range(trunck_number):
            os.mkdir("../benchmarks/"+folder_name+str(t))
            os.mkdir("../benchmarks/"+folder_name+str(t)+"/test_data")
    except:
        print("folder existed")
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
    try:
        os.mkdir(extracted_folder_name)
        os.mkdir(not_extracted_folder_name)
    except:
        print("folder existed")
    for file in file_list:
        if os.path.exists(file+"-0.hyperEdgeHornGraph.JSON"):
            #copy_relative_files(file,extracted_folder_name)
            pass
        else:
            print(file)
            copy(file,not_extracted_folder_name)
            os.remove(file)


def file_compress(inp_file_names, out_zip_file):
    import zipfile
    compression = zipfile.ZIP_DEFLATED

    print(f" *** Input File name passed for zipping - {inp_file_names}")

    # create the zip file first parameter path/name, second mode
    print(f' *** out_zip_file is - {out_zip_file}')
    zf = zipfile.ZipFile(out_zip_file, mode="w")

    try:
        for file_to_write in inp_file_names:
        # Add file to the zip file
        # first parameter file to zip, second filename in zip
            print(f' *** Processing file {file_to_write}')
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
    try:
        os.mkdir(intersect_file_folder)
    except:
        print("folder existed")
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


def analysis_graph_structure(benchmark=""):
    structure_d = {"node_number": [], "predicate_number": []}
    file_list = []
    for fold in ["train"]:  # ["train","valid","test"]:
        file_list = file_list + glob.glob("../benchmarks/" + benchmark + "/" + fold + "_data/*.hyperEdgeHornGraph.JSON")
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


def analysis_data_statistics(benchmark="chc-comp21-benchmarks-main-all-extract",
                             folder="extracted_data-only-initial-predicates",
                             jsonType="predicateDistribution", data_fold=[""]):
    from utils import print_multiple_object
    file_list = glob.glob(
        os.path.join("../benchmarks", os.path.join(benchmark, folder)) + "/*.smt2." + jsonType + ".JSON")

    for fold in data_fold:
        print("-" * 10)
        print("fold:", fold,"number of file",len(file_list))
        statistics_d = {"positive_guard_list": [], "total_guard_list": [],"redundant_guard_list":[], "positive_predicate_list": [],
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
                #statistics_d["redundant_guard_list"].append(int(loaded_graph["redundant guards"]))
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
                statistics_d["total_constraint_predicate_list"].append(int(loaded_graph["constraintPredicates" + fold]))
                statistics_d["predicates_uniquely_from_CEGAR"].append(int(loaded_graph["predicatesFromCEGAR" + fold]))
                statistics_d["positive_predicates_uniquely_from_CEGAR"].append(
                    int(loaded_graph["positivePredicatesFromCEGAR" + fold]))
                # print(json_file)
        print("-" * 10)
        print_multiple_object(statistics_d)
        print("-" * 10)
        #print("redundant guards",str(sum(statistics_d["redundant_guard_list"])))
        print("unique guards",str(sum(statistics_d["total_guard_list"])))
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
        try:
            os.mkdir(fold_folder)
            for df in ["train_data", "valid_data", "test_data"]:
                os.mkdir(os.path.join(fold_folder, df))
        except:
            pass
        for file in separated_file_list[f]:  # test
            copy_relative_files(file, os.path.join(fold_folder, "test_data"))
        for file in separated_file_list[(f + 1) % (fold - 1)]:  # valid
            copy_relative_files(file, os.path.join(fold_folder, "valid_data"))
        for file in separated_file_list[(f + 2) % (fold - 1)] + separated_file_list[(f + 3) % (fold - 1)] + \
                    separated_file_list[(f + 4) % (fold - 1)]:  # train
            copy_relative_files(file, os.path.join(fold_folder, "train_data"))


def copy_relative_files(source, des):
    try:
        #copy(source, des)
        relative_file_list = glob.glob(source + "*")
        for file in relative_file_list:
            copy(file, des)
        # if os.path.exists(source + ".hyperEdgeHornGraph.JSON"):
        #     copy(source + ".hyperEdgeHornGraph.JSON", des)
        # if os.path.exists(source + ".unlabeledPredicates.tpl"):
        #     copy(source + ".unlabeledPredicates.tpl", des)
        # if os.path.exists(source + ".labeledPredicates.tpl"):
        #     copy(source + ".labeledPredicates.tpl", des)
        # if os.path.exists(source + ".circles.gv"):
        #     copy(source + ".circles.gv", des)
        # if os.path.exists(source + ".HornGraph"):
        #     copy(source + ".HornGraph", des)
        # if os.path.exists(source + ".hyperEdgeHornGraph.gv"):
        #     copy(source + ".hyperEdgeHornGraph.gv", des)
        # if os.path.exists(source + ".predicateDistribution"):
        #     copy(source + ".predicateDistribution", des)
    except:
        print("file existed")


def get_generated_horn_graph(horn_graph_folder="lia-lin-horn_graphs",
                             target_folder="lia-lin-extract-unsolved-fullLabel"):
    horn_graph_file_list = glob.glob("../benchmarks/" + horn_graph_folder + "/*.hyperEdgeHornGraph.JSON")
    horn_graph_smt2_target_file_list = glob.glob("../benchmarks/" + target_folder + "/*.smt2")
    print("horn_graph_smt2_target_file_list", horn_graph_smt2_target_file_list)
    horn_graph_file_name_list = [f[f.find(horn_graph_folder) + len(horn_graph_folder) + 1:] for f in
                                 horn_graph_file_list]
    print("horn_graph_file_name_list", horn_graph_file_name_list)
    for f in horn_graph_smt2_target_file_list:
        f_name = f[f.rfind(target_folder) + len(target_folder) + 1:]
        graph_file_name = f_name + ".hyperEdgeHornGraph.JSON"
        if graph_file_name in horn_graph_file_name_list:
            shutil.copyfile("../benchmarks/" + horn_graph_folder + "/" + f_name + ".hyperEdgeHornGraph.JSON",
                            "../benchmarks/" + target_folder + "/" + f_name + ".hyperEdgeHornGraph.JSON")
            shutil.copyfile("../benchmarks/" + horn_graph_folder + "/" + f_name + ".unlabeledPredicates.tpl",
                            "../benchmarks/" + target_folder + "/" + f_name + ".unlabeledPredicates.tpl")
        else:
            os.remove(f)


def rebuild_exception_file(benchmark="",field_list=["solvability-timeout", "shell-timeout"]):
    loaded_fields = read_benchmark_exception_json(benchmark)
    for filed in field_list:
        new_folder = "../benchmarks/" + benchmark + "/" + filed
        os.mkdir(new_folder)
        for f in loaded_fields[filed]:
            file_name = "../benchmarks/LIA-Lin+sv-comp/LIA-Lin+sv-comp-templates-unsolvables/test_data/" + f
            shutil.copyfile(file_name, new_folder + "/" + f)


def clean_extracted_data(benchmark,separated_predicates=False):
    if(separated_predicates):
        file_list = glob.glob("../benchmarks/" + benchmark + "/*.smt2.zip")
        file_list = [f[:-len(".zip")] for f in file_list]
        for f in file_list:
            if not (os.path.exists(f + "-0.hyperEdgeHornGraph.JSON.zip") ):#and os.path.exists(f + ".unlabeledPredicates.tpl.zip")
                print(f)
                relative_files=glob.glob(f+"*")
                for file in relative_files:
                    if os.path.exists(file):
                        os.remove(file)

        file_list = glob.glob("../benchmarks/" + benchmark + "/*-0.hyperEdgeHornGraph.JSON.zip")
        file_list = [f[:-len("-0.hyperEdgeHornGraph.JSON.zip")] for f in file_list]
        for f in file_list:
            if not (os.path.exists(f+".zip")):  # and os.path.exists(f + ".unlabeledPredicates.tpl.zip")
                print(f)
                relative_files = glob.glob(f + "*")
                for file in relative_files:
                    if os.path.exists(file):
                        os.remove(file)

    file_list = glob.glob("../benchmarks/" + benchmark + "/*.smt2.zip")
    file_list = [f[:-len(".zip")] for f in file_list]
    for f in file_list:
        if not os.path.exists(f + ".circles.gv.zip") :
            relative_files = glob.glob(f + "*")
            for file in relative_files:
                if os.path.exists(file):
                    os.remove(file)

    circle_file_list = glob.glob("../benchmarks/" + benchmark + "/*.circles.gv.zip")
    file_list = [f[:-len(".circles.gv.zip")] for f in circle_file_list]
    for f in file_list:
        if not os.path.exists(f+".zip"):
            for file in glob.glob(f+"*"):
                if os.path.exists(file):
                    os.remove(file)
    circle_file_list = glob.glob("../benchmarks/" + benchmark + "/*.circles.gv")
    file_list = [f[:-len(".circles.gv")] for f in circle_file_list]
    for f in file_list:
        if not os.path.exists(f):
            for file in glob.glob(f + "*"):
                if os.path.exists(file):
                    os.remove(file)


def collect_unsolvable_cases(benchmarks=[],abstract_list=[]):
    filed = "shell-timeout"
    loaded_jsons=[read_benchmark_exception_json(b) for b in benchmarks]
    common_timeout_files = set(loaded_jsons[0][filed])
    for a,j in zip(abstract_list,loaded_jsons):
        print("abstract:",a,len(j[filed]))
        print(j[filed])
        common_timeout_files=common_timeout_files.intersection(set(j[filed]))

    print("common_timeout_files",len(common_timeout_files))
    print(common_timeout_files)
    try:
        os.mkdir("../benchmarks/all-LIA-Lin/common-unsolvable-set")
        os.mkdir("../benchmarks/all-LIA-Lin/common-unsolvable-set/train_data")
    except:
        print("folder existed")
    for f in common_timeout_files:
        copy("../benchmarks/all-LIA-Lin/raw/"+f,"../benchmarks/all-LIA-Lin/common-unsolvable-set/train_data")




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
    try:
        os.mkdir(common_timeout_folder)
    except:
        print("folder existed")
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


if __name__ == '__main__':
    main()
