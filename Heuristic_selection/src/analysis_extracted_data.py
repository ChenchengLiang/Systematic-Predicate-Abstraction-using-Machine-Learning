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

def separate_dataset_to_train_valid_test_files(source,destination,train_rate=0.6,valid_rate=0.2,test_rate=0.2,remove_src=False):
    print("source file",source)
    total_file_number=len(glob.glob(source+"*.arguments"))
    train=round(total_file_number*train_rate)
    valid=round(total_file_number*valid_rate)
    test=round(total_file_number*test_rate)
    print("total_file_number",total_file_number)
    print("train number",train)
    print("valid number", valid)
    print("test number", test)

    clear_directory(destination)

    temp_shuffle=[]
    for g,a,i,p,n,j,s in zip(sorted(glob.glob(source + '*' + 'auto.gv')),
                                sorted(glob.glob(source + '*' + '.arguments')),sorted(glob.glob(source + '*' + '.initialHints')),
                                   sorted(glob.glob(source + '*' + '.positiveHints')),sorted(glob.glob(source + '*' + '.negativeHints')),
                                   sorted(glob.glob(source + '*' + 'smt2.JSON')),
                           sorted(glob.glob(source + '*' + '.smt2'))):
        temp_shuffle.append([g,a,i,p,n,j,s])
    random.shuffle(temp_shuffle)
    gv_files=[]
    arguments_files=[]
    initial_hints_files=[]
    positive_hints_files=[]
    negative_hints_files=[]
    json_files=[]
    smt2_files=[]
    for t in temp_shuffle:
        gv_files.append(t[0])
        arguments_files.append(t[1])
        initial_hints_files.append(t[2])
        positive_hints_files.append(t[3])
        negative_hints_files.append(t[4])
        json_files.append(t[5])
        smt2_files.append(t[6])

    gv_fold = [gv_files[:train],gv_files[train:train+valid],gv_files[train+valid:]]
    argument_fold = [arguments_files[:train], arguments_files[train:train + valid], arguments_files[train + valid:]]
    initial_hints_fold = [initial_hints_files[:train], initial_hints_files[train:train + valid], initial_hints_files[train + valid:]]
    positive_fold = [positive_hints_files[:train], positive_hints_files[train:train + valid], positive_hints_files[train + valid:]]
    negative_fold = [negative_hints_files[:train], negative_hints_files[train:train + valid], negative_hints_files[train + valid:]]
    json_fold=[json_files[:train], json_files[train:train + valid], json_files[train + valid:]]
    smt2_fold = [smt2_files[:train], smt2_files[train:train + valid], smt2_files[train + valid:]]
    for gvs,arguments,initial_hints,positive_hints,negative_hints,jsons,smts,fold in zip(gv_fold,argument_fold,initial_hints_fold,positive_fold,negative_fold,json_fold,smt2_fold,["train","valid","test"]):
        try:
            rmtree(destination+fold+"_data")
            os.mkdir(destination + fold + "_data")
        except:
            os.mkdir(destination+fold+"_data")
        for gv,argument,initial_hint,positive_hint,negative_hint,json,smt in zip(gvs,arguments,initial_hints,positive_hints,negative_hints,jsons,smts):
            copy(gv, destination+fold+"_data")
            copy(argument, destination+fold+"_data")
            copy(initial_hint, destination + fold + "_data")
            copy(positive_hint, destination + fold + "_data")
            copy(negative_hint, destination + fold + "_data")
            copy(json, destination + fold + "_data")
            copy(smt,destination + fold + "_data")

    if remove_src == True:
        rmtree(source)

def write_graph_to_pickle(benchmark,  data_fold=["train", "valid", "test"], label="analysis",path="../", curssor=0,buckets=10):
    benchmark_name = benchmark.replace("/", "-")
    graphs_node_label_ids = []
    graphs_argument_indices = []
    graphs_adjacency_lists = []
    graphs_argument_scores = []
    total_number_of_node = 0
    graph_info_list=[]
    for df in data_fold:
        print("write data_fold to pickle data:", df)
        file_type=".smt2"
        for i in range(1,buckets+1):
            p = subprocess.Popen(["../venv/bin/python3", "split_read_graphs.py", path,df,str(i),file_type,label,str(buckets),"anlysis"])
            p.wait()
            # os.kill(p.pid,signal.SIGKILL)
            print("curssor=",i)

        for i in range(1,buckets+1):
            graphs_node_label_ids.extend(pickleRead(label+"-graphs_node_label_ids-"+str(i),path="../"))
            graphs_argument_indices.extend(pickleRead(label+"-graphs_argument_indices-"+str(i),path="../"))
            graphs_adjacency_lists.extend(pickleRead(label+"-graphs_adjacency_lists-" + str(i), path="../"))
            graphs_argument_scores.extend(pickleRead(label+"-graphs_argument_scores-" + str(i), path="../"))
            total_number_of_node+=pickleRead(label+"-total_number_of_node-" + str(i), path="../")
            graph_info_list.extend(pickleRead(label + "-graphs_graph_info_list-" + str(i), path="../"))
    return graphs_node_label_ids, graphs_argument_indices, graphs_adjacency_lists, graphs_argument_scores, total_number_of_node,graph_info_list

def get_statistic_data(path="",file_type=".smt2",buckets=10):
    try:
        rmtree(path + "statistic")
        os.mkdir(path + "statistic")
    except:
        os.mkdir(path + "statistic")

    with open(path + "statistic/statistics" + ".log", 'w') as out_file:
        edge_name_map={0:"binary edge",1:"ternary edge",2:"quaternary edge",3:"quinary"}
        statistic_list_datafold={}
        for data_fold in ["train","valid","test"]:

            out_file.write(str(data_fold)+":\n")
            total_graph=len(glob.glob(path + data_fold+"Data/" + '*' + '.gv'))
            out_file.write("total graph: "+str(total_graph)+"\n")
            statistic_list={"argument_number_list":[],"argument_total_occurance_list":[],"argument_average_occurance_list":[],
                            "positive_hint_number_list":[],"node_number_list":[],"adjacency_list_number_list":[],
                            "binary_edge_sender_number_list":[],"binary_edge_receiver_number_list":[],"hyperedge_sender_number_list":[],
                            "hyperedge_reiceiver_number_list":[],"control_flow_node_number_list":[],"operator_node_number_list":[],
                            "constant_node_number_list":[],"literal_node_number_list":[],"true_node_number_list":[],
                            "bool_value_node_number_list":[],"data_flow_hyperedge_number_list":[],"control_flow_hyperedge_number_list":[]}



            #todo:separated reading
            if total_graph<buckets+1:
                graphInfoList = DotToGraphInfo(data_fold + "Data", path)
                graphInfoList._file_type=file_type
                graphInfoList._split_flag=0
                graphs_node_ids, graphs_argument_indices, graphs_adjacency_lists, graphs_argument_scores, total_number_of_node,graph_info_list = graphInfoList.getHornGraphSample_analysis()
            else:
                graphs_node_ids, graphs_argument_indices, graphs_adjacency_lists, graphs_argument_scores, total_number_of_node,graph_info_list= write_graph_to_pickle(path, data_fold=[data_fold], label="analysis", path=path,
                                  curssor=0,buckets=buckets)

            for g, a, i, p, n, graph_info,adjacency_list in zip(sorted(glob.glob(path + data_fold+"Data/" + '*' + '.gv')),
                                     sorted(glob.glob(path + data_fold+"Data/" + '*' + '.arguments')),
                                     sorted(glob.glob(path + data_fold+"Data/" + '*' + '.initialHints')),
                                     sorted(glob.glob(path + data_fold+"Data/" + '*' + '.positiveHints')),
                                     sorted(glob.glob(path + data_fold+"Data/" + '*' + '.negativeHints')),
                                                                graph_info_list,
                                     #graphInfoList.finalGraphInfoList,
                                    graphs_adjacency_lists):

                with open(a, 'r') as file:
                    lines = file.readlines()
                    total_occurance = 0
                    for line in lines:
                        total_occurance += int(line[line.rfind(":")+1:])
                    average_occurance = total_occurance / len(lines)
                    statistic_list["argument_number_list"].append(len(lines))
                    statistic_list["argument_total_occurance_list"].append(total_occurance)
                    statistic_list["argument_average_occurance_list"].append(average_occurance)
                with open(p, 'r') as file:
                    lines = file.readlines()
                    statistic_list["positive_hint_number_list"].append(len(lines))
                statistic_list["node_number_list"].append(graph_info.numberOfUniqueNodeID)
                adjacency_list_numbers={}
                for i,adj_list in enumerate(adjacency_list):
                    adjacency_list_numbers[edge_name_map[i]]=len(adj_list)
                statistic_list["adjacency_list_number_list"].append(adjacency_list_numbers)
                statistic_list["binary_edge_sender_number_list"].append(len(graph_info.edge_senders))
                statistic_list["binary_edge_receiver_number_list"].append(len(graph_info.edge_receivers))
                statistic_list["hyperedge_sender_number_list"].append(len(graph_info.hyperedge_senders))
                statistic_list["hyperedge_reiceiver_number_list"].append(len(graph_info.hyperedge_receivers))

                statistic_list["control_flow_node_number_list"].append(len(graph_info.controlFlowNodes))
                statistic_list["operator_node_number_list"].append(len(graph_info.operatorNodes))
                statistic_list["constant_node_number_list"].append(len(graph_info.constantNodes))
                statistic_list["literal_node_number_list"].append(len(graph_info.literalNodes))
                statistic_list["true_node_number_list"].append(len(graph_info.trueNodes))
                statistic_list["bool_value_node_number_list"].append(len(graph_info.boolValueNode))
                statistic_list["data_flow_hyperedge_number_list"].append(len(graph_info.dataFlowHyperedges))
                statistic_list["control_flow_hyperedge_number_list"].append(len(graph_info.controlFlowHyperedges))

            statistic_list_datafold[data_fold]=statistic_list
            for l in statistic_list:
                out_file.write(l +" :"+ str(statistic_list[l]) + "\n")

            # get min, max, and std except average info
            for l in statistic_list:
                out_file.write("---\n")
                if l=="adjacency_list_number_list":
                    if len(statistic_list[l])>0:
                        binary_edge_list=[]
                        ternary_edge_list=[]
                        for i in statistic_list[l]:
                            binary_edge_list.append(i["binary edge"])
                            ternary_edge_list.append(i["ternary edge"])
                        out_file.write("average_binary_edge"" :" + str(np.mean(binary_edge_list)) + "\n")
                        out_file.write("average_ternary_edge" + " :" + str(np.mean(ternary_edge_list)) + "\n")
                        out_file.write("std_binary_edge"" :" + str(np.std(binary_edge_list)) + "\n")
                        out_file.write("std_ternary_edge" + " :" + str(np.std(ternary_edge_list)) + "\n")
                        out_file.write("min_binary_edge"" :" + str(np.min(binary_edge_list)) + "\n")
                        out_file.write("min_ternary_edge" + " :" + str(np.min(ternary_edge_list)) + "\n")
                        out_file.write("max_binary_edge"" :" + str(np.max(binary_edge_list)) + "\n")
                        out_file.write("max_ternary_edge" + " :" + str(np.max(ternary_edge_list)) + "\n")

                else:
                    if len(statistic_list[l])>0:
                        out_file.write("average_"+l[:l.rfind("_list")] +" :"+str(np.mean(statistic_list[l])) + "\n")
                        out_file.write("std_" + l[:l.rfind("_list")] + " :" + str(np.std(statistic_list[l])) + "\n")
                        out_file.write("min_" + l[:l.rfind("_list")] + " :" + str(np.min(statistic_list[l])) + "\n")
                        out_file.write("max_" + l[:l.rfind("_list")] + " :" + str(np.max(statistic_list[l])) + "\n")
                    else:
                        out_file.write("average_" + l[:l.rfind("_list")] + " :" + str(0) + "\n")
                        out_file.write("std_" + l[:l.rfind("_list")] + " :" + str(0) + "\n")
                        out_file.write("min_" + l[:l.rfind("_list")] + " :" + str(0) + "\n")
                        out_file.write("max_" + l[:l.rfind("_list")] + " :" + str(0) + "\n")


            out_file.write("\n")
        # visualize analysis
        labels=[]
        for label in statistic_list_datafold["train"]:
            labels.append(label)
        for label in labels:
            if label == "adjacency_list_number_list":
                fig, (ax1, ax2) = plt.subplots(1, 2)
                for fold in statistic_list_datafold:
                    binary_edge_list = []
                    ternary_edge_list = []
                    for i in statistic_list_datafold[fold][label]:
                        binary_edge_list.append(i["binary edge"])
                        ternary_edge_list.append(i["ternary edge"])
                    ax1.plot(binary_edge_list,label=fold+"-"+"binary_edge_number")#, label=fold+"-"+label  #label[:label.rfind("_list")]
                    ax2.plot(ternary_edge_list, label=fold + "-" + "ternary_edge_number")
                plt.legend()
                plt.xlabel('graph inde')
                plt.ylabel('edge number')

                plt.savefig(path + "statistic/"+ label + ".png")
                plt.clf()
            else:
                for fold in statistic_list_datafold:
                    plt.plot(statistic_list_datafold[fold][label],label=fold+"-"+label[:label.rfind("_list")])
                plt.legend()
                plt.xlabel('graph inde')
                plt.ylabel('node numbers')

                plt.savefig(path + "statistic/"+ label + ".png")
                plt.clf()

def separate_datafold_and_get_statistic_data(rootdir="../benchmarks/LIA-lin/",file_type=".smt2",buckets=10):

    for root, subdirs, files in os.walk(rootdir):
        if os.path.isdir(root + "/extracted_data"):
            rmtree(root + "/extracted_data")

    total_graph=0
    for root, subdirs, files in os.walk(rootdir):
        if len(subdirs)==1 and subdirs[0]=="trainData":
            total_graph += len(files)
    print("total_graph:",total_graph)


    for root, subdirs, files in os.walk(rootdir):
        print(root,subdirs,files)

        if len(subdirs)==1 and subdirs[0]=="trainData":
            number_of_graph = len(glob.glob(root + "/trainData/*.arguments"))
            copytree(root+"/trainData",root+"/extracted_data")
            rmtree(root + "/trainData")

            print(root)
            print("number_of_graph",number_of_graph)
            if number_of_graph >= 3:
                separate_dataset_to_train_valid_test_files(root+"/extracted_data/", int(number_of_graph*0.6), int(number_of_graph*0.2),int(number_of_graph*0.2))
                get_statistic_data(root+"/extracted_data/",file_type=file_type,buckets=buckets)
                copytree(root + "/extracted_data/trainData",root + "/trainData")
                copytree(root + "/extracted_data/validData", root + "/validData")
                copytree(root + "/extracted_data/testData", root + "/testData")
                copytree(root + "/extracted_data/statistic", root + "/statistic")
                rmtree(root+"/extracted_data")

def gather_all_train_data(src="../../benchmarks/LIA-lin/",dst="../../benchmarks/LIA-nonlin-trainData-noIntevals/",unique_file=False):
    if not os.path.isdir(dst):
        os.mkdir(dst)
    temp_file='../benchmarks/temp'
    copytree(src,temp_file)
    if unique_file==True:
        unique_names(temp_file)
    for root, subdirs, files in os.walk(temp_file):
        #print(root,subdirs,files)
        if len(subdirs)==1 and subdirs[0]=="trainData":
            srcname=root+"/trainData/"
            dstname=dst
            copy_tree(srcname,dstname)

    rmtree(temp_file)

def unique_names(rootdir):
    count=0
    for root, subdirs, files in os.walk(rootdir):
        #print(root,subdirs,files)
        if "trainData" in subdirs:
            srcname = root + "/trainData/*"
            #print(srcname)
            file_list=glob.glob(srcname)
            for file in file_list:
                preffix=file[:file.rfind(".smt2")]
                suffix=file[file.rfind(".smt2"):]
                #print(preffix,count,suffix)
                os.rename(file,preffix+"-"+str(count)+suffix)
            count += 1


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
                    json.dump(json_obj, f)


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
                        json.dump(json_obj, f)
                else:
                    with open(graph_json_file, 'w') as f:
                        json.dump(json_obj, f)
                    # for f in glob.glob(file+"*"):
                    #     copy(f,"../benchmarks/memory_problem_cases/")
                    #     os.remove(f)





def extract_train_data_templates(file):
    print("extracting",file)
    eld = subprocess.Popen(["../eldarica-graph-generation/eld",file,"-extractPredicates","-noIntervals","-absTimeout:120"], stdout=subprocess.DEVNULL,
                           shell=False)
    eld.wait()


def extract_train_data_templates_pool(filePath):
    # file_list = []
    # for (dirpath, dirnames, filenames) in os.walk(filePath):
    #     file_list += [os.path.join(dirpath, file) for file in filenames]
    file_list = []
    for root, subdirs, files in os.walk(filePath):
        if len(subdirs) == 0:
            file_list += glob.glob(root + "/*.smt2")
    pool = Pool(processes=3)
    pool.map(extract_train_data_templates, file_list)

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
    chunk_number=15
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







class parameters():
    def __init__(self, root_dir,json_file_type,eldarica_parameters):
        self.root_dir=root_dir
        self.json_file_type=json_file_type
        self.eldarica_parameters=eldarica_parameters

def main():
    #benchmark_list.append(["../benchmarks/temp-extract/", int(545 * 0.6), int(545 * 0.2), int(545 * 0.2), ".smt2"])
    # buckets = 10
    # for benchmark in benchmark_list:
    #     separate_dataset_to_train_valid_test_files(benchmark[0],benchmark[0][:-1]+"-datafold/", benchmark[1], benchmark[2], benchmark[3])
    #     get_statistic_data(benchmark[0],file_type=benchmark[4],buckets=10)
    #     separate_datafold_and_get_statistic_data(rootdir=benchmark[0],file_type=".smt2",buckets=buckets)


    #unique_names("../benchmarks/temp")

    #gather_all_train_data(src="../benchmarks/LIA-lin-noInterval-extract/",dst="../benchmarks/LIA-lin-noInterval-trainData/")
    #separate_dataset_to_train_valid_test_files("../benchmarks/LIA-lin-noInterval-trainData/","../benchmarks/LIA-lin-noInterval-trainData-datafold/")

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

    #shuffle_data("../benchmarks/LIA-nonlin-shuffled-all","../benchmarks/LIA-nonlin-shuffled-datafold")
    divide_data_to_threads("../benchmarks/mixed-four-fold","divided_threads_four_fold_mix")

    #moveIncompletedExtractionsToTemp("../benchmarks/new-full-dataset-with-and")



if __name__ == '__main__':
    main()