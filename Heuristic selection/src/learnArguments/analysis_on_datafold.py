import random
import os
from shutil import copyfile,copy,rmtree,copytree,copy2
import glob
from learnArguments.dotToGraphInfo import DotToGraphInfo
import numpy as np
import matplotlib.pyplot as plt
import errno
from distutils.dir_util import copy_tree
from Miscellaneous import pickleRead,pickleWrite
import subprocess
def separate_dataset_to_train_valid_test_files(source,train=120,valid=11,test=30):

    temp_shuffle=[]
    for g,a,i,p,n in zip(sorted(glob.glob(source + '*' + '.gv')),sorted(glob.glob(source + '*' + '.arguments')),
                   sorted(glob.glob(source + '*' + '.initialHints')),sorted(glob.glob(source + '*' + '.positiveHints')),
                   sorted(glob.glob(source + '*' + '.negativeHints'))):
        temp_shuffle.append([g,a,i,p,n])
    random.shuffle(temp_shuffle)
    gv_files=[]
    arguments_files=[]
    initial_hints_files=[]
    positive_hints_files=[]
    negative_hints_files=[]
    for t in temp_shuffle:
        gv_files.append(t[0])
        arguments_files.append(t[1])
        initial_hints_files.append(t[2])
        positive_hints_files.append(t[3])
        negative_hints_files.append(t[4])

    gv_fold = [gv_files[:train],gv_files[train:train+valid],gv_files[train+valid:]]
    argument_fold = [arguments_files[:train], arguments_files[train:train + valid], arguments_files[train + valid:]]
    initial_hints_fold = [initial_hints_files[:train], initial_hints_files[train:train + valid], initial_hints_files[train + valid:]]
    positive_fold = [positive_hints_files[:train], positive_hints_files[train:train + valid], positive_hints_files[train + valid:]]
    negative_fold = [negative_hints_files[:train], negative_hints_files[train:train + valid], negative_hints_files[train + valid:]]
    for gvs,arguments,initial_hints,positive_hints,negative_hints,fold in zip(gv_fold,argument_fold,initial_hints_fold,positive_fold,negative_fold,["train","valid","test"]):
        try:
            rmtree(source+fold+"Data")
            os.mkdir(source + fold + "Data")
        except:
            os.mkdir(source+fold+"Data")
        for gv,argument,initial_hint,positive_hint,negative_hint in zip(gvs,arguments,initial_hints,positive_hints,negative_hints):
            copy(gv, source+fold+"Data/")
            copy(argument, source+fold+"Data/")
            copy(initial_hint, source + fold + "Data/")
            copy(positive_hint, source + fold + "Data/")
            copy(negative_hint, source + fold + "Data/")


def write_graph_to_pickle(benchmark,  data_fold=["train", "valid", "test"], label="analysis",path="../../", curssor=0,buckets=10):
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
            p = subprocess.Popen(["../../venv/bin/python3", "split_read_graphs.py", path,df,str(i),file_type,label,str(buckets),"anlysis"])
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


def separate_datafold_and_get_statistic_data(rootdir="../../benchmarks/LIA-lin/",file_type=".smt2"):
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
                get_statistic_data(root+"/extracted_data/",file_type=file_type)
                copytree(root + "/extracted_data/trainData",root + "/trainData")
                copytree(root + "/extracted_data/validData", root + "/validData")
                copytree(root + "/extracted_data/testData", root + "/testData")
                copytree(root + "/extracted_data/statistic", root + "/statistic")
                rmtree(root+"/extracted_data")


def gather_all_train_data(rootdir="../../benchmarks/LIA-lin/"):

    for root, subdirs, files in os.walk(rootdir):
        if os.path.isdir(root + "/extracted_data"):
            rmtree(root + "/extracted_data")
    for root, subdirs, files in os.walk(rootdir):
        #print(root,subdirs,files)

        if len(subdirs)==1 and subdirs[0]=="trainData":
            srcname=root+"/trainData/"
            dstname=rootdir[:-1]+"-traiData/"

            copy_tree(srcname,dstname)


def main():
    benchmark_list = []
    #benchmark_list.append(["../../benchmarks/trainData-chc-comp-predicates/", 120, 11, 30,".smt2"])
    # benchmark_list.append(["../../benchmarks/trainData-sv-comp-c-predicates/", 70, 10, 26,".c"])
    #benchmark_list.append(["../../benchmarks/trainData-sv-comp-smt-predicates/", 100, 20, 20,".smt2"])
    # benchmark_list.append(["../../benchmarks/trainData-chc-comp-predicates+sv-comp-smt-predicates/", 220, 30, 51,".smt2"])
    # benchmark_list.append(
    #     ["../../benchmarks/trainData-chc-comp-predicates+sv-comp-smt-predicates+sv-comp-c-predicates/", 330, 30, 57,".c"])
    # benchmark_list.append(["../../benchmarks/trainData-sv-comp-smt-templates/", 25, 8, 5,".smt2"])
    ###benchmark_list.append(["../../benchmarks/trainData-sv-comp-c-templates/", 25, 5, 8,".c"])
    #benchmark_list.append(["../../benchmarks/trainData-chc-comp-templates/", 25, 5, 5,".smt2"])
    benchmark_list.append(["../../benchmarks/LIA-lin-extracted-analysis-temp/", int(545 * 0.6), int(545 * 0.2), int(545 * 0.2),".smt2"])
    #benchmark_list.append(["../../benchmarks/LIA-lin-trainData-temp/", int(545 * 0.6), int(545 * 0.2), int(545 * 0.2), ".smt2"])
    #benchmark_list.append(["../../benchmarks/LIA-lin-trainData/", int(545 * 0.6), int(545 * 0.2), int(545 * 0.2), ".smt2"])
    for benchmark in benchmark_list:
        #separate_dataset_to_train_valid_test_files(benchmark[0], benchmark[1], benchmark[2], benchmark[3])
        #get_statistic_data(benchmark[0],file_type=benchmark[4],buckets=10)
        separate_datafold_and_get_statistic_data(rootdir=benchmark[0],file_type=".smt2")

    #gather_all_train_data(rootdir="../../benchmarks/LIA-nonlin-extracted/")

    #separate_dataset_to_train_valid_test_files("../../benchmarks/LIA-lin-traiData/", int(413*0.6), int(413*0.2), int(413*0.2))
    #get_statistic_data("../../benchmarks/LIA-lin-traiData/")

main()