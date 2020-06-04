import random
import os
from shutil import copyfile,copy,rmtree
import glob
from learnArguments.dotToGraphInfo import DotToGraphInfo

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
        for data_fold in ["train","valid","test"]:

            out_file.write(str(data_fold)+":\n")
            out_file.write("total graph: "+str(len(glob.glob(path + data_fold+"Data/" + '*' + '.gv')))+"\n")
            argument_number_list=[]
            argument_total_occurance_list=[]
            argument_average_occurance_list = []
            positive_hint_number_list=[]
            node_number_list = []
            adjacency_list_number_list=[]
            binary_edge_sender_number_list=[]
            binary_edge_receiver_number_list = []
            hyperedge_sender_number_list=[]
            hyperedge_reiceiver_number_list = []
            control_flow_node_number_list=[]
            operator_node_number_list=[]
            constant_node_number_list=[]
            literal_node_number_list=[]
            true_node_number_list=[]
            bool_value_node_number_list=[]
            data_flow_hyperedge_number_list=[]
            control_flow_hyperedge_number_list=[]


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
                    argument_number_list.append(len(lines))
                    argument_total_occurance_list.append(total_occurance)
                    argument_average_occurance_list.append(average_occurance)
                with open(p, 'r') as file:
                    lines = file.readlines()
                    positive_hint_number_list.append(len(lines))
                node_number_list.append(graph_info.numberOfUniqueNodeID)
                adjacency_list_numbers={}
                for i,adj_list in enumerate(adjacency_list):
                    adjacency_list_numbers[edge_name_map[i]]=len(adj_list)
                adjacency_list_number_list.append(adjacency_list_numbers)
                binary_edge_sender_number_list.append(len(graph_info.edge_senders))
                binary_edge_receiver_number_list.append(len(graph_info.edge_receivers))
                hyperedge_sender_number_list.append(len(graph_info.hyperedge_senders))
                hyperedge_reiceiver_number_list.append(len(graph_info.hyperedge_receivers))

                control_flow_node_number_list.append(len(graph_info.controlFlowNodes))
                operator_node_number_list.append(len(graph_info.operatorNodes))
                constant_node_number_list.append(len(graph_info.constantNodes))
                literal_node_number_list.append(len(graph_info.literalNodes))
                true_node_number_list.append(len(graph_info.trueNodes))
                bool_value_node_number_list.append(len(graph_info.boolValueNode))
                data_flow_hyperedge_number_list.append(len(graph_info.dataFlowHyperedges))
                control_flow_hyperedge_number_list.append(len(graph_info.controlFlowHyperedges))


                # todo:parse dot file to get graph info
            out_file.write("argument_number_list:" + str(argument_number_list) + "\n")
            out_file.write("argument_total_occurance_list:" + str(argument_total_occurance_list) + "\n")
            out_file.write("argument_average_occurance_list:" + str(argument_average_occurance_list) + "\n")
            out_file.write("positive_hint_number_list:" + str(positive_hint_number_list) + "\n")
            out_file.write("node_number_list:"+str(node_number_list)+"\n")
            out_file.write("adjacency_list_number_list"+str(adjacency_list_number_list)+"\n")
            out_file.write("binary_edge_sender_number_list"+str(binary_edge_sender_number_list)+"\n")
            out_file.write("binary_edge_receiver_number_list" + str(binary_edge_receiver_number_list) + "\n")
            out_file.write("hyperedge_sender_number_list" + str(hyperedge_sender_number_list) + "\n")
            out_file.write("hyperedge_reiceiver_number_list" + str(hyperedge_reiceiver_number_list) + "\n")

            out_file.write("control_flow_node_number_list" + str(control_flow_node_number_list) + "\n")
            out_file.write("operator_node_number_list" + str(operator_node_number_list) + "\n")
            out_file.write("constant_node_number_list" + str(constant_node_number_list) + "\n")
            out_file.write("literal_node_number_list" + str(literal_node_number_list) + "\n")
            out_file.write("true_node_number_list" + str(true_node_number_list) + "\n")
            out_file.write("bool_value_node_number_list" + str(bool_value_node_number_list) + "\n")
            out_file.write("data_flow_hyperedge_number_list" + str(data_flow_hyperedge_number_list) + "\n")
            out_file.write("control_flow_hyperedge_number_list" + str(control_flow_hyperedge_number_list) + "\n")
            out_file.write("\n")









def main():
    #separate_dataset_to_train_valid_test_files("../../benchmarks/trainData-chc-comp-templates/", 25, 5, 5)
    get_statistic_data("../../benchmarks/trainData-chc-comp-templates/")

main()