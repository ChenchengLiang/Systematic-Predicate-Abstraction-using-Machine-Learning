import sys
from learnArguments.dotToGraphInfo import GraphInfo,ArgumentInfo,DotToGraphInfo
from Miscellaneous import pickleWrite,pickleRead
def main():
    path=sys.argv[1]
    df=sys.argv[2]
    curssor = int(sys.argv[3])
    file_type=sys.argv[4]
    label=sys.argv[5]
    graphInfoList = DotToGraphInfo(df + "Data", path)
    graphInfoList._split_flag = curssor
    graphInfoList._file_type=file_type
    graphs_node_label_ids, graphs_argument_indices, graphs_adjacency_lists, graphs_argument_scores, total_number_of_node = graphInfoList.getHornGraphSample_no_offset()
    pickleWrite(graphs_node_label_ids,label+"-graphs_node_label_ids-"+str(curssor),"../")
    pickleWrite(graphs_argument_indices, label+"-graphs_argument_indices-" + str(curssor), "../")
    pickleWrite(graphs_adjacency_lists, label+"-graphs_adjacency_lists-" + str(curssor), "../")
    pickleWrite(graphs_argument_scores, label+"-graphs_argument_scores-" + str(curssor), "../")
    pickleWrite(total_number_of_node, label+"-total_number_of_node-" + str(curssor), "../")

main()