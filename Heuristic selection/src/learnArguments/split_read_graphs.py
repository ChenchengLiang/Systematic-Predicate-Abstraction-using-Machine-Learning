import sys
from learnArguments.dotToGraphInfo import GraphInfo,ArgumentInfo,DotToGraphInfo
from Miscellaneous import pickleWrite,pickleRead
import time
def main():
    path=sys.argv[1]
    df=sys.argv[2]
    curssor = int(sys.argv[3])
    file_type=sys.argv[4]
    label=sys.argv[5]
    buckets = sys.argv[6]
    reading_type=sys.argv[7]
    graphInfoList = DotToGraphInfo(df + "Data", path)
    graphInfoList._split_flag = curssor
    graphInfoList._file_type=file_type
    graphInfoList._buckets=int(buckets)
    start=time.time()
    if reading_type == "gnn_inputs":
        print("reading_type",reading_type)
        graphs_node_label_ids, graphs_argument_indices, graphs_adjacency_lists, graphs_argument_scores, total_number_of_node,graph_info_list = graphInfoList.getHornGraphSample_no_offset()
    else:
        graphs_node_label_ids, graphs_argument_indices, graphs_adjacency_lists, graphs_argument_scores, total_number_of_node, graph_info_list = graphInfoList.getHornGraphSample_analysis()
    print("--time for transform dot to GNN input",time.time()-start,"--")
    #graph_info_list=graphInfoList.finalGraphInfoList
    pickleWrite(graphs_node_label_ids,label+"-graphs_node_label_ids-"+str(curssor),"../")
    pickleWrite(graphs_argument_indices, label+"-graphs_argument_indices-" + str(curssor), "../")
    pickleWrite(graphs_adjacency_lists, label+"-graphs_adjacency_lists-" + str(curssor), "../")
    pickleWrite(graphs_argument_scores, label+"-graphs_argument_scores-" + str(curssor), "../")
    pickleWrite(total_number_of_node, label+"-total_number_of_node-" + str(curssor), "../")
    pickleWrite(graph_info_list, label + "-graphs_graph_info_list-" + str(curssor), "../")

main()