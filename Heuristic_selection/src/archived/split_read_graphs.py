import sys
from archived.dotToGraphInfo import DotToGraphInfo
from Miscellaneous import pickleWrite
import time
def main():
    path=sys.argv[1]
    df=sys.argv[2]
    curssor = int(sys.argv[3])
    file_type=sys.argv[4]
    label=sys.argv[5]
    buckets = sys.argv[6]
    reading_type=sys.argv[7]
    graphInfoList = DotToGraphInfo(df + "_data", path)
    graphInfoList._split_flag = curssor
    graphInfoList._file_type=file_type
    graphInfoList._buckets=int(buckets)
    start=time.time()
    if reading_type == "gnn_inputs":
        print("reading_type",reading_type)
        graphs_node_label_ids, graphs_argument_indices, graphs_adjacency_lists, graphs_argument_scores, total_number_of_node,total_control_flow_node_list,graph_info_list = graphInfoList.getHornGraphSample_no_offset()
        pickleWrite(graphs_node_label_ids, df + "-graphs_node_label_ids-" + str(curssor))
        pickleWrite(graphs_argument_indices, df + "-graphs_argument_indices-" + str(curssor))
        pickleWrite(graphs_adjacency_lists, df + "-graphs_adjacency_lists-" + str(curssor) )
        pickleWrite(graphs_argument_scores, df + "-graphs_argument_scores-" + str(curssor))
        pickleWrite(total_number_of_node, df + "-total_number_of_node-" + str(curssor))
        pickleWrite(total_control_flow_node_list, df + "-total_control_flow_node_list-" + str(curssor))
        pickleWrite(graph_info_list, df + "-graphs_graph_info_list-" + str(curssor))
    else:
        graphs_node_label_ids, graphs_argument_indices, graphs_adjacency_lists, graphs_argument_scores, total_number_of_node, graph_info_list = graphInfoList.getHornGraphSample_analysis()
        pickleWrite(graphs_node_label_ids, label + "-graphs_node_label_ids-" + str(curssor))
        pickleWrite(graphs_argument_indices, label + "-graphs_argument_indices-" + str(curssor))
        pickleWrite(graphs_adjacency_lists, label + "-graphs_adjacency_lists-" + str(curssor))
        pickleWrite(graphs_argument_scores, label + "-graphs_argument_scores-" + str(curssor))
        pickleWrite(total_number_of_node, label + "-total_number_of_node-" + str(curssor))
        pickleWrite(graph_info_list, label + "-graphs_graph_info_list-" + str(curssor))
    print("--time for transform dot to GNN input",time.time()-start,"--")
    #graph_info_list=graphInfoList.finalGraphInfoList


main()