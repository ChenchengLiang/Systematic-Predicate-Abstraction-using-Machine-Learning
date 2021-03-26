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
        for f in file:
            copy(f, os.path.join("../benchmarks/"+target_folder+"/", fold_name))
    os.mkdir(os.path.join("../benchmarks/"+target_folder+"/", "test_data_simple_generator"))
    for file in test_files:
        copy(file, os.path.join("../benchmarks/"+target_folder+"/", "test_data_simple_generator"))



def divide_data_to_threads(root,target_folder):
    chunk_number=16
    try:
        os.mkdir(os.path.join("../benchmarks",target_folder))
    except:
        print("path existed")
    for datafold,datafold_files in zip(["train_data","valid_data","test_data","test_data_simple_generator"],[os.path.join(root,"train_data"),os.path.join(root,"valid_data"),os.path.join(root,"test_data"),os.path.join(root,"test_data_simple_generator")]):
        datafold_file_list=glob.glob(datafold_files+"/*")
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
                copy(file, os.path.join(thread_dir,datafold))
        for file in datafold_file_list[chunk_number*chunk_size:]:
            copy(file, os.path.join(thread_dir, datafold))



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


    #get_statistic_data("../benchmarks/LIA-lin-traiData/")

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
    gather_data_to_one_file(os.path.join("../benchmarks/","LIA-nonlin"),os.path.join("../benchmarks","shuffleFile"))
    shuffle_data("../benchmarks/shuffleFile","../benchmarks/shuffled_files")
    #divide_data_to_threads("../benchmarks/shuffled_files","shuffled_files_divided")

    #moveIncompletedExtractionsToTemp("../benchmarks/new-full-dataset-with-and")



if __name__ == '__main__':
    main()