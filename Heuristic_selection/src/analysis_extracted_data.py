import random
import os
from shutil import copy,rmtree,copytree
import glob
from archived.dotToGraphInfo import DotToGraphInfo
import numpy as np
import matplotlib.pyplot as plt
from distutils.dir_util import copy_tree
from Miscellaneous import pickleRead, clear_directory,clear_file
import subprocess
import json
from multiprocessing import Pool
import shutil

def generate_JSON_field(rootdir,json_file_type=".layerHornGraph.JSON",eldarica_parameters="-getHornGraph"):
    for root, subdirs, files in os.walk(rootdir):
        if len(subdirs)==1 and subdirs[0]=="wrong_extracted_cases":
            os.rmdir(root+"/wrong_extracted_cases")
    old_field=[]
    new_field=[]
    if json_file_type==".layerHornGraph.JSON" or json_file_type==".bi-layerHornGraph.JSON":
        new_field=["nodeIds", "nodeSymbolList","falseIndices", "argumentIndices", "controlLocationIndices",
                     "binaryAdjacentList", "ternaryAdjacencyList","unknownEdges","argumentIDList", "argumentNameList",
                     "predicateArgumentEdges","predicateInstanceEdges", "argumentInstanceEdges", "controlHeadEdges", "controlBodyEdges",
                     "argumentOccurrence","controlArgumentEdges", "guardEdges","dataEdges","predicateIndices","predicateOccurrenceInClause","predicateStrongConnectedComponent","argumentBoundList","argumentBinaryOccurrenceList","templateIndices","templateRelevanceLabel"]
    else:
        new_field = ["nodeIds", "nodeSymbolList","falseIndices", "argumentIndices", "controlLocationIndices",
                     "binaryAdjacentList", "ternaryAdjacencyList","unknownEdges","argumentIDList", "argumentNameList",
                     "argumentEdges","guardASTEdges","dataFlowASTEdges","controlFlowHyperEdges","dataFlowHyperEdges",
                     "argumentOccurrence","predicateIndices","predicateOccurrenceInClause","predicateStrongConnectedComponent","argumentBoundList","argumentBinaryOccurrenceList","templateIndices","templateRelevanceLabel"]

    for root, subdirs, files in os.walk(rootdir):
        if len(subdirs)==0:
            for file in glob.glob(root+"/*.smt2"):
                print(file)
                #read JSON' label
                json_file=file+".JSON"
                graph_json_file=file+json_file_type
                json_obj = {}
                with open(json_file) as f:
                    loaded_graph = json.load(f)
                    for field in old_field:
                        json_obj[field] = loaded_graph[field]
                eld = subprocess.Popen(["../eldarica-graph-generation/eld",file,eldarica_parameters], stdout=subprocess.DEVNULL,
                                       shell=False)
                eld.wait()
                #add more field
                with open(graph_json_file) as f:
                    loaded_graph = json.load(f)
                    for field in new_field:
                        json_obj[field] = loaded_graph[field]
                # write json object to JSON file
                clear_file(graph_json_file)
                with open(graph_json_file, 'w') as f:
                    json.dump(json_obj, f,indent=4)


def add_horn_graph_json_file(rootdir,graph_type="-getHornGraph",json_file_type=".layerHornGraph.JSON"):
    old_field = []
    new_field = []
    if json_file_type==".layerHornGraph.JSON" or json_file_type==".bi-layerHornGraph.JSON":
        new_field = ["nodeIds", "nodeSymbolList","falseIndices", "argumentIndices", "controlLocationIndices",
                     "binaryAdjacentList", "ternaryAdjacencyList","unknownEdges","argumentIDList", "argumentNameList",
                     "predicateArgumentEdges","predicateInstanceEdges", "argumentInstanceEdges", "controlHeadEdges", "controlBodyEdges",
                     "controlArgumentEdges", "guardEdges","dataEdges",
                     "argumentOccurrence","predicateIndices","predicateOccurrenceInClause","predicateStrongConnectedComponent","argumentBoundList","argumentBinaryOccurrenceList","templateIndices","templateRelevanceLabel"]

    else:
        new_field = ["nodeIds", "nodeSymbolList","falseIndices", "argumentIndices", "controlLocationIndices",
                     "binaryAdjacentList", "ternaryAdjacencyList","unknownEdges","argumentIDList", "argumentNameList",
                     "argumentEdges","guardASTEdges","dataFlowASTEdges","controlFlowHyperEdges","dataFlowHyperEdges",
                     "argumentOccurrence","predicateIndices","predicateOccurrenceInClause","predicateStrongConnectedComponent","argumentBoundList","argumentBinaryOccurrenceList","templateIndices","templateRelevanceLabel"]


    for root, subdirs, files in os.walk(rootdir):
        if len(subdirs)==1 and subdirs[0]=="wrong_extracted_cases":
            os.rmdir(root+"/wrong_extracted_cases")
    for root, subdirs, files in os.walk(rootdir):
        if len(subdirs)==0:
            for file in glob.glob(root+"/*.smt2"):
                json_file = file + ".JSON"
                graph_json_file = file + json_file_type
                #if not os.path.isfile(graph_json_file):
                #read JSON' label
                json_obj = {}
                with open(json_file) as f:
                    loaded_graph = json.load(f)
                    for field in old_field:
                        json_obj[field] = loaded_graph[field]
                print("../eldarica-graph-generation/eld", file, graph_type)
                eld = subprocess.Popen(["../eldarica-graph-generation/eld",file,graph_type], stdout=subprocess.DEVNULL,
                                       shell=False)
                eld.wait()
                #add more field
                with open(graph_json_file) as layer_f:
                    loaded_graph = json.load(layer_f)
                    for field in new_field:
                        json_obj[field] = loaded_graph[field]
                if os.path.isfile(graph_json_file):
                    # write json object to JSON file
                    clear_file(graph_json_file)
                    with open(graph_json_file, 'w') as f:
                        json.dump(json_obj, f,indent=4)
                else:
                    with open(graph_json_file, 'w') as f:
                        json.dump(json_obj, f,indent=4)
                    # for f in glob.glob(file+"*"):
                    #     copy(f,"../benchmarks/memory_problem_cases/")
                    #     os.remove(f)




def shuffle_data_train_valid(rootdir):
    file_list=glob.glob(rootdir + "/*.smt2")
    print(file_list)
    random.shuffle(file_list)
    random.shuffle(file_list)
    print(file_list)
    train_files=file_list[0:int(len(file_list)*0.8)]
    valid_files=file_list[int(len(file_list)*0.8):len(file_list)]
    print("train_files",len(train_files))
    print("valid_files",len(valid_files))
    for file in train_files:
        file_list_ = glob.glob(file+"*")
        for f in file_list_:
            copy(f, os.path.join("../benchmarks/temp/", "train_data"))
    for file in valid_files:
        file_list_ = glob.glob(file + "*")
        for f in file_list_:
            copy(f, os.path.join("../benchmarks/temp/", "valid_data"))

def shuffle_data(rootdir,target_folder):
    '''
    shuffle files in rootdir to shuffled_files
    '''
    file_list=glob.glob(rootdir + "/*.smt2")
    print("total file ",len(file_list))
    random.shuffle(file_list)
    random.shuffle(file_list)
    #print(file_list)
    train_files=file_list[0:int(len(file_list)*0.6)]
    valid_files = file_list[int(len(file_list) * 0.6):int(len(file_list) * 0.8)]
    test_files=file_list[int(len(file_list)*0.8):len(file_list)]
    try:
        os.mkdir("../benchmarks/"+target_folder)
    except:
        print("../benchmarks/"+target_folder + " existed")
    for file,fold_name in zip([train_files,valid_files,test_files],["train_data","valid_data","test_data"]):
        os.mkdir("../benchmarks/"+target_folder+"/"+fold_name)
        print(fold_name+"_files", len(file))
        final_target_folder=os.path.join("../benchmarks/"+target_folder+"/", fold_name)
        for f in file:
            copy(f, final_target_folder)
            copy_relative_data(f,final_target_folder)
    # os.mkdir(os.path.join("../benchmarks/"+target_folder+"/", "test_data_simple_generator"))
    # for file in test_files:
    #     copy(file, os.path.join("../benchmarks/"+target_folder+"/", "test_data_simple_generator"))

def copy_relative_data(f,target_folder):
    try:
        copy(f+".circles.gv",target_folder)
        copy(f + ".HornGraph", target_folder)
        copy(f + ".hyperEdgeHornGraph.gv", target_folder)
        copy(f + ".labeledPredicates.tpl", target_folder)
        copy(f + ".unlabeledPredicates.tpl", target_folder)
        copy(f + ".hyperEdgeHornGraph.JSON", target_folder)
        copy(f + ".predicateDistribution", target_folder)
    except:
        #print("no corresponding files")
        pass

def divide_data_to_threads(benchmark="",target_folder="",three_fold=True,chunk_number=17,datafold_list=["train_data", "valid_data", "test_data"]):
    root="../benchmarks/"+benchmark
    try:
        os.mkdir(os.path.join("../benchmarks",target_folder))
    except:
        print("path existed")
    datafold_files_list = [os.path.join(root, d) for d in datafold_list]
    if three_fold==False:
        datafold_list=datafold_list+["test_data_simple_generator"]
        datafold_files_list=datafold_files_list+[os.path.join(root,"test_data_simple_generator")]

    for datafold,datafold_files in zip(datafold_list,datafold_files_list):
        datafold_file_list=glob.glob(datafold_files+"/*.smt2")
        print(datafold_files,len(datafold_file_list))
        chunk_size=int(len(datafold_file_list)/chunk_number)
        for i in range(0,chunk_number):
            thread_dir=os.path.join("../benchmarks",target_folder,"thread_"+str(i))
            try:
                os.mkdir(thread_dir)
            except:
                pass
            try:
                os.mkdir(os.path.join(thread_dir, datafold))
            except:
                pass
            for file in datafold_file_list[i*chunk_size:(i+1)*chunk_size]:
                copy_relative_files(file, os.path.join(thread_dir, datafold))
                #copy(file, os.path.join(thread_dir,datafold))
        for file in datafold_file_list[chunk_number*chunk_size:]:
            copy_relative_files(file, os.path.join(thread_dir, datafold))
            #copy(file, os.path.join(thread_dir, datafold))



def moveIncompletedExtractionsToTemp(rootdir):
    '''
    move imcompleted ectraction to temp under the rootdir. need create that dirctory first
    '''
    for fold in ["train_data","valid_data","test_data"]:
        file_list = glob.glob(os.path.join(rootdir,fold) + "/*.smt2")
        for file in file_list:
            relative_file_list = glob.glob(file+"*")
            if len(relative_file_list)!=7:
                for f in relative_file_list:
                    shutil.move(f,os.path.join(rootdir,"temp"))




def gather_data_to_one_file(src,target):
    count = 1
    for root, subdirs, files in os.walk(src):
        if len(subdirs)==0:
            print(files)
            for f in files:
                if not os.path.exists(os.path.join(target,f)):
                    shutil.move(os.path.join(root,f),target)
                else:
                    renamed_f=f[:f.rfind(".smt2")]+"-"+str(count)+".smt2"
                    shutil.move(os.path.join(root, f), target+"/"+renamed_f)
                    count=count+1

class parameters():
    def __init__(self, root_dir,json_file_type,eldarica_parameters):
        self.root_dir=root_dir
        self.json_file_type=json_file_type
        self.eldarica_parameters=eldarica_parameters

def main():



    #generate_JSON_field("../benchmarks/temp-extract-trainData-datafold")
    #parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-hyperedge-graph",json_file_type=".hyperEdgeHornGraph.JSON",graph_type="-getHornGraph:hyperEdgeGraph")
    #parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-bi-direction-layer-graph",json_file_type=".layerHornGraph.JSON",graph_type="-getHornGraph:biDirectionLayerGraph")
    #parameter_for_JSON = parameters(root_dir="../benchmarks/small-dataset-trainData-datafold-bi-direction-layer-graph",json_file_type=".layerHornGraph.JSON",graph_type="-getHornGraph:biDirectionLayerGraph")
    #parameter_for_JSON = parameters(root_dir="../benchmarks/small-dataset-trainData-datafold-mono-direction-layer-graph",json_file_type=".layerHornGraph.JSON",graph_type="-getHornGraph:monoDirectionLayerGraph")
    #parameter_for_JSON = parameters(root_dir="../benchmarks/small-dataset-trainData-datafold-hyperedge-graph",json_file_type=".hyperEdgeHornGraph.JSON",graph_type="-getHornGraph:hyperEdgeGraph")
    #parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-hyperedge-graph",json_file_type=".hyperEdgeHornGraph.JSON",graph_type="-getHornGraph:hyperEdgeGraph")
    #parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-bi-direction-layer-graph",json_file_type=".layerHornGraph.JSON",graph_type="-getHornGraph:biDirectionLayerGraph")
    # parameter_for_JSON = parameters(
    #     root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-hybrid-direction-layer-graph",
    #     json_file_type=".layerHornGraph.JSON", graph_type="-getHornGraph:hybridDirectionLayerGraph")
    #parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-noInterval-trainData-datafold-hyperedge-graph",json_file_type=".hyperEdgeHornGraph.JSON", graph_type="-getHornGraph:hyperEdgeGraph")
    # parameter_for_JSON = parameters(root_dir="../benchmarks/LIA-lin-datafold",
    #                                 json_file_type=".layerHornGraph.JSON",
    #                                 eldarica_parameters="-getHornGraph:hybridDirectionLayerGraph")
    # generate_JSON_field(parameter_for_JSON.root_dir, json_file_type=parameter_for_JSON.json_file_type,
    #                          eldarica_parameters=parameter_for_JSON.eldarica_parameters)


    #extract_train_data_templates_pool("../benchmarks/small-dataset-sat-datafold-same-train-valid-test")
    #gather_data_to_one_file(os.path.join("../benchmarks/","sv-comp-clauses"),os.path.join("../benchmarks","shuffleFile"))
    #shuffle_data("../benchmarks/all-LIA-Lin","../benchmarks/all-LIA-Lin-1")
    #divide_data_to_threads("all-LIA-Lin","all-LIA-Lin-divided",three_fold=True)#datafold_list=["test_data"]

    #moveIncompletedExtractionsToTemp("../benchmarks/new-full-dataset-with-and")

    #analysis benchmark
    #benchmark_exceptions_analysis()

    #rebuild_exception_file()
    # get_generated_horn_graph()
    #clean_extracted_data("sv-comp-horn-graphs")
    #align_extracted_data(benchmark="chc-comp21-benchmarks-main-all",folder_name="extracted_data")
    #get_k_fold_train_data(benchmark="chc-comp21-benchmarks-main-all",folder_name="extracted_data")
    #collect_unsolvable_data(horn_graph_folder="temp-horn",unsolvable_folder="temp-target",target_file="temp-unsolvable_with_horn_graphs")

    analysis_guard_statistics(benchmark="temp",folder="extracted_data")
    #analysis_graph_structure(benchmark="temp-train")

def collect_unsolvable_data(horn_graph_folder="",unsolvable_folder="",target_file=""):
    unsolvable_file_list=glob.glob("../benchmarks/"+unsolvable_folder+"/*.smt2")
    horn_graph_file_list = glob.glob("../benchmarks/" + horn_graph_folder + "/*.smt2")
    intersect_file_folder=os.path.join("../benchmarks",target_file)
    unsolvable_file_name_list=[f[f.rfind("/")+1:] for f in unsolvable_file_list]
    horn_graph_file_name_list=[f[f.rfind("/")+1:] for f in horn_graph_file_list]
    print(unsolvable_file_name_list)
    print(horn_graph_file_name_list)
    try:
        os.mkdir(intersect_file_folder)
    except:
        print("folder existed")
    for f in unsolvable_file_name_list:
        if f in horn_graph_file_name_list and os.path.exists("../benchmarks/" + horn_graph_folder+"/"+f+".hyperEdgeHornGraph.JSON"):
            copy_relative_files("../benchmarks/"+horn_graph_folder+"/"+f,intersect_file_folder)
            #print(f)

def align_extracted_data(benchmark="chc-comp21-benchmarks-main-all",folder_name="extracted_data"):
    file_list=glob.glob("../benchmarks/"+benchmark+"/"+folder_name+"/*.circles.gv")
    #smt_file_list=glob.glob("../benchmarks/"+benchmark+"/exceptions/shell-timeout/*.smt2")
    for f in file_list:
        smt_file_path=f[:f.rfind(".circles.gv")]
        smt_file_name=smt_file_path[smt_file_path.rfind("/")+1:]
        if not os.path.exists(smt_file_path):
            shutil.move("../benchmarks/"+benchmark+"/exceptions/shell-timeout/"+smt_file_name,"../benchmarks/"+benchmark+"/"+folder_name)

def analysis_graph_structure(benchmark=""):
    structure_d={"node_number":[],"predicate_number":[]}
    file_list=[]
    for fold in ["train"]:#["train","valid","test"]:
        file_list=file_list+glob.glob("../benchmarks/"+benchmark+"/"+fold+"_data/*.hyperEdgeHornGraph.JSON")
    print("file_list",len(file_list))
    for file in file_list:
        with open(file) as f:
            loaded_graph = json.load(f)
            structure_d["node_number"].append(len(loaded_graph["nodeIds"]))
            structure_d["predicate_number"].append(len(loaded_graph["templateRelevanceLabel"]))

    print("node_number","average",str(sum(structure_d["node_number"])/len(structure_d["node_number"])),structure_d["node_number"])
    print("predicate_number","average",str(sum(structure_d["predicate_number"])/len(structure_d["predicate_number"])),structure_d["predicate_number"])


def analysis_guard_statistics(benchmark="chc-comp21-benchmarks-main-all-extract",folder="extracted_data-only-initial-predicates"):
    from utils import print_multiple_object
    file_list=glob.glob(os.path.join("../benchmarks",os.path.join(benchmark,folder))+"/*.smt2.predicateDistribution.JSON")
    statistics_d={"positive_guard_list":[],"total_guard_list":[],"positive_predicate_list":[],
                  "total_initial_predicate_list":[],"positive_redundant_pairwise_predicate_list":[],
                  "total_redundant_pairwise_predicate_list":[],"positive_constraint_predicate_list":[],
                  "total_constraint_predicate_list":[]}

    for json_file in file_list:
        with open(json_file) as f:
            loaded_graph = json.load(f)
            statistics_d["positive_guard_list"].append(int(loaded_graph["positiveGuards"]))
            statistics_d["total_guard_list"].append(int(loaded_graph["total guards"]))
            statistics_d["positive_predicate_list"].append(int(loaded_graph["positiveSimpleGeneratedPredicates"]))
            statistics_d["total_initial_predicate_list"].append(int(loaded_graph["simpleGeneratedPredicates"]))
            statistics_d["positive_redundant_pairwise_predicate_list"].append(int(loaded_graph["positiveRedundantPairwisePredicate"]))
            statistics_d["total_redundant_pairwise_predicate_list"].append(int(loaded_graph["redundantPairwisePredicate"]))
            statistics_d["positive_constraint_predicate_list"].append(int(loaded_graph["positiveConstraintPredicates"]))
            statistics_d["total_constraint_predicate_list"].append(int(loaded_graph["constraintPredicates"]))
            print(json_file)
    print("-"*10)
    print_multiple_object(statistics_d)
    print("-" * 10)
    print("positive guard / positive predicates",str(sum(statistics_d["positive_guard_list"]))+"/"+
          str(sum(statistics_d["positive_predicate_list"])))
    print("positive guard / total guards", str(sum(statistics_d["positive_guard_list"])) + "/" +
          str(sum(statistics_d["total_guard_list"])))
    print("positive pairwise predicates / positive predicates", str(sum(statistics_d["positive_redundant_pairwise_predicate_list"])) + "/" +
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

    print("total gaurd / total predicates",
          str(sum(statistics_d["total_guard_list"])) + "/" +
          str(sum(statistics_d["total_initial_predicate_list"])))
    print("total pairwise predicates / total predicates",
          str(sum(statistics_d["total_redundant_pairwise_predicate_list"])) + "/" +
          str(sum(statistics_d["total_initial_predicate_list"])))





def get_k_fold_train_data(fold=5, benchmark="chc-comp21-benchmarks-main-all",folder_name="extracted_data-only-initial-predicates"):
    path = os.path.join("../benchmarks/", benchmark)
    file_list = glob.glob(path + "/"+folder_name+"/*.smt2")
    separating_length = int(len(file_list) / fold)
    random.shuffle(file_list)
    random.shuffle(file_list)
    separated_file_list = [file_list[i * separating_length:min((i + 1) * separating_length, len(file_list))] for i in
                           range(fold)]
    for f in range(fold):
        fold_folder = os.path.join(path, benchmark+"-"+str(f) + "-fold")
        print("fold_folder",fold_folder)
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

def copy_relative_files(source,des):
    try:
        copy(source, des)
        if os.path.exists(source + ".hyperEdgeHornGraph.JSON"):
            copy(source+".hyperEdgeHornGraph.JSON", des)
        if os.path.exists(source + ".unlabeledPredicates.tpl"):
            copy(source + ".unlabeledPredicates.tpl", des)
        if os.path.exists(source + ".labeledPredicates.tpl"):
            copy(source + ".labeledPredicates.tpl", des)
        if os.path.exists(source + ".circles.gv"):
            copy(source + ".circles.gv", des)
        if os.path.exists(source + ".HornGraph"):
            copy(source + ".HornGraph", des)
        if os.path.exists(source + ".hyperEdgeHornGraph.gv"):
            copy(source + ".hyperEdgeHornGraph.gv", des)
        if os.path.exists(source + ".predicateDistribution"):
            copy(source + ".predicateDistribution", des)
    except:
        print("file existed")

def get_generated_horn_graph(horn_graph_folder="lia-lin-horn_graphs",target_folder="lia-lin-extract-unsolved-fullLabel"):
    horn_graph_file_list=glob.glob("../benchmarks/"+horn_graph_folder+"/*.hyperEdgeHornGraph.JSON")
    horn_graph_smt2_target_file_list=glob.glob("../benchmarks/"+target_folder+"/*.smt2")
    print("horn_graph_smt2_target_file_list",horn_graph_smt2_target_file_list)
    horn_graph_file_name_list=[f[f.find(horn_graph_folder)+len(horn_graph_folder)+1:] for f in horn_graph_file_list]
    print("horn_graph_file_name_list",horn_graph_file_name_list)
    for f in horn_graph_smt2_target_file_list:
        f_name=f[f.rfind(target_folder)+len(target_folder)+1:]
        graph_file_name=f_name+".hyperEdgeHornGraph.JSON"
        if graph_file_name in horn_graph_file_name_list:
            shutil.copyfile("../benchmarks/"+horn_graph_folder+"/"+f_name+".hyperEdgeHornGraph.JSON", "../benchmarks/"+target_folder+"/"+f_name+ ".hyperEdgeHornGraph.JSON")
            shutil.copyfile("../benchmarks/"+horn_graph_folder+"/"+f_name+".unlabeledPredicates.tpl","../benchmarks/"+target_folder+"/"+f_name+ ".unlabeledPredicates.tpl")
        else:
            os.remove(f)


def rebuild_exception_file():
    folder_name="lia-lin-exceptions-noIntervals-abstractOn-emptyLabel-only-initial-predicates"
    field_list=["solvability-timeout","shell-timeout"]
    loaded_fields = read_benchmark_exception_json(folder_name)
    for filed in field_list:
        new_folder="../benchmarks/"+folder_name+"/"+filed
        os.mkdir(new_folder)
        for f in loaded_fields[filed]:
            file_name="../benchmarks/lia-lin/"+f
            shutil.copyfile(file_name,new_folder+"/"+f)

def clean_extracted_data(benchmark):
    file_list=glob.glob("../benchmarks/"+benchmark+"/*.smt2")
    for f in file_list:
        if not (os.path.exists(f + ".hyperEdgeHornGraph.JSON") and os.path.exists(f+".unlabeledPredicates.tpl") ):
            os.remove(f)
            if os.path.exists(f+".HornGraph"):
                os.remove(f+".HornGraph")
            if os.path.exists(f+".circles.gv"):
                os.remove(f + ".circles.gv")
            if os.path.exists(f + ".hyperEdgeHornGraph.gv"):
                os.remove(f + ".hyperEdgeHornGraph.gv")

    circle_file_list = glob.glob("../benchmarks/" + benchmark + "/*.circles.gv")
    file_list=[f[:-len(".circles.gv")] for f in circle_file_list]
    #print(file_list)
    for f in file_list:
        if not os.path.exists(f):
            if os.path.exists(f + ".HornGraph"):
                os.remove(f + ".HornGraph")
            if os.path.exists(f + ".circles.gv"):
                os.remove(f + ".circles.gv")
            if os.path.exists(f + ".hyperEdgeHornGraph.gv"):
                os.remove(f + ".hyperEdgeHornGraph.gv")
            if os.path.exists(f + ".unlabeledPredicates.tpl"):
                os.remove(f + ".unlabeledPredicates.tpl")

    unlabel_file_list = glob.glob("../benchmarks/" + benchmark + "/*.unlabeledPredicates.tpl")
    file_list = [f[:-len(".unlabeledPredicates.tpl")] for f in unlabel_file_list]
    print(file_list)
    for f in file_list:
        if not os.path.exists(f):
            if os.path.exists(f + ".HornGraph"):
                os.remove(f + ".HornGraph")
            if os.path.exists(f + ".circles.gv"):
                os.remove(f + ".circles.gv")
            if os.path.exists(f + ".hyperEdgeHornGraph.gv"):
                os.remove(f + ".hyperEdgeHornGraph.gv")
            if os.path.exists(f + ".unlabeledPredicates.tpl"):
                os.remove(f + ".unlabeledPredicates.tpl")


def benchmark_exceptions_analysis():
    filed="shell-timeout" #shell-timeout, solvability-timeout
    loaded_fields_empty=read_benchmark_exception_json("lia-lin-exceptions-noIntervals-abstractOn-fullLabel-300*5")
    loaded_fields_full = read_benchmark_exception_json("lia-lin-exceptions-noIntervals-abstractOn-emptyLabel-300*5")
    common_files=set(loaded_fields_empty[filed]).intersection(set(loaded_fields_full[filed]))
    print("timeout files when use full label",len(loaded_fields_full[filed]))
    print("timeout files when use empty label", len(loaded_fields_empty[filed]))
    print("common timeout files",len(common_files))

def read_benchmark_exception_json(folder_name):
    json_file="../benchmarks/"+folder_name+"/benchmark_info_merged.JSON"
    with open(json_file) as f:
        loaded_graph = json.load(f)
    return loaded_graph

if __name__ == '__main__':
    main()