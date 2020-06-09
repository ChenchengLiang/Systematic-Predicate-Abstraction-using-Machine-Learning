import random
import os
from shutil import copyfile,copy,rmtree,copytree,copy2
import glob
from learnArguments.dotToGraphInfo import DotToGraphInfo
import numpy as np
import matplotlib.pyplot as plt
import errno
from distutils.dir_util import copy_tree
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

def get_statistic_data(path=""):
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
            out_file.write("total graph: "+str(len(glob.glob(path + data_fold+"Data/" + '*' + '.gv')))+"\n")
            statistic_list={"argument_number_list":[],"argument_total_occurance_list":[],"argument_average_occurance_list":[],
                            "positive_hint_number_list":[],"node_number_list":[],"adjacency_list_number_list":[],
                            "binary_edge_sender_number_list":[],"binary_edge_receiver_number_list":[],"hyperedge_sender_number_list":[],
                            "hyperedge_reiceiver_number_list":[],"control_flow_node_number_list":[],"operator_node_number_list":[],
                            "constant_node_number_list":[],"literal_node_number_list":[],"true_node_number_list":[],
                            "bool_value_node_number_list":[],"data_flow_hyperedge_number_list":[],"control_flow_hyperedge_number_list":[]}



            graphInfoList = DotToGraphInfo(data_fold + "Data", path)

            graphs_node_ids, graphs_argument_indices, graphs_adjacency_lists, graphs_argument_scores, total_number_of_node = graphInfoList.getHornGraphSample_no_offset()
            for g, a, i, p, n, graph_info,adjacency_list in zip(sorted(glob.glob(path + data_fold+"Data/" + '*' + '.gv')),
                                     sorted(glob.glob(path + data_fold+"Data/" + '*' + '.arguments')),
                                     sorted(glob.glob(path + data_fold+"Data/" + '*' + '.initialHints')),
                                     sorted(glob.glob(path + data_fold+"Data/" + '*' + '.positiveHints')),
                                     sorted(glob.glob(path + data_fold+"Data/" + '*' + '.negativeHints')),
                                     graphInfoList.finalGraphInfoList,
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
                    out_file.write("average_"+l[:l.rfind("_list")] +" :"+str(np.mean(statistic_list[l])) + "\n")
                    out_file.write("std_" + l[:l.rfind("_list")] + " :" + str(np.std(statistic_list[l])) + "\n")
                    out_file.write("min_" + l[:l.rfind("_list")] + " :" + str(np.min(statistic_list[l])) + "\n")
                    out_file.write("max_" + l[:l.rfind("_list")] + " :" + str(np.max(statistic_list[l])) + "\n")


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
                plt.savefig(path + "statistic/"+ label + ".png")
                plt.clf()

            else:
                for fold in statistic_list_datafold:
                    plt.plot(statistic_list_datafold[fold][label],label=fold+"-"+label[:label.rfind("_list")])
                plt.legend()
                plt.savefig(path + "statistic/"+ label + ".png")
                plt.clf()



def separate_datafold_and_get_statistic_data(rootdir="../../benchmarks/LIA-lin/"):
    for root, subdirs, files in os.walk(rootdir):
        if os.path.isdir(root + "/extracted_data"):
            rmtree(root + "/extracted_data")

    total_graph=0
    for root, subdirs, files in os.walk(rootdir):
        if len(subdirs)==1 and subdirs[0]=="trainData":
            total_graph += len(files)
    print("total_graph",total_graph)


    for root, subdirs, files in os.walk(rootdir):
        print(root,subdirs,files)

        if len(subdirs)==1 and subdirs[0]=="trainData":

            copytree(root+"/trainData",root+"/extracted_data")

            number_of_graph=len(glob.glob(root+"/trainData/*.arguments"))
            print(root)
            print("number_of_graph",number_of_graph)
            if number_of_graph >= 3:
                separate_dataset_to_train_valid_test_files(root+"/extracted_data/", int(number_of_graph*0.6), int(number_of_graph*0.2),int(number_of_graph*0.2))
                get_statistic_data(root+"/extracted_data/")

def gather_all_train_data(rootdir="../../benchmarks/LIA-lin/"):

    for root, subdirs, files in os.walk(rootdir):
        if os.path.isdir(root + "/extracted_data"):
            rmtree(root + "/extracted_data")
    for root, subdirs, files in os.walk(rootdir):
        #print(root,subdirs,files)

        if len(subdirs)==1 and subdirs[0]=="trainData":
            srcname=root+"/trainData/"
            dstname="../../benchmarks/LIA-lin-traiData/"

            copy_tree(srcname,dstname)


def main():
    #separate_dataset_to_train_valid_test_files("../../benchmarks/trainData-chc-comp-templates/", 25, 5, 5)
    #get_statistic_data("../../benchmarks/trainData-chc-comp-templates/")

    #separate_datafold_and_get_statistic_data()
    #gather_all_train_data()

    separate_dataset_to_train_valid_test_files("../../benchmarks/LIA-lin-traiData/", int(414*0.6), int(414*0.2), int(414*0.2))
    #get_statistic_data("../../benchmarks/LIA-lin-traiData/")

main()