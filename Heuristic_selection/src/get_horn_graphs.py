import os
import sys
def main():
    from utils import wrapped_generate_horn_graph
    move_file = True
    max_nodes_per_batch=10000
    thread_number=2
    generateSimplePredicates=""
    separateByPredicates=""
    generateTemplates="-generateTemplates"
    noIntervals=""
    abstract="-abstract:empty"
    benchmark=os.path.join("../benchmarks/",sys.argv[1])#sys.argv[1]

    wrapped_generate_horn_graph_params = {"benchmark_fold": benchmark, "max_nodes_per_batch": max_nodes_per_batch,
                                          "separateByPredicates": separateByPredicates,
                                          "abstract": abstract, "move_file": move_file, "thread_number": thread_number,
                                          "generateSimplePredicates": generateSimplePredicates,
                                          "generateTemplates": generateTemplates, "data_fold": ["test_data"],
                                          "horn_graph_folder": "", "noIntervals": noIntervals}
    filtered_file_list, file_list_with_horn_graph, file_list = wrapped_generate_horn_graph(wrapped_generate_horn_graph_params)
main()