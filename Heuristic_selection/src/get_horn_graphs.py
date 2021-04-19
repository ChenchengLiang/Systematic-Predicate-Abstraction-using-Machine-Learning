import os
import sys
def main():
    from utils import wrapped_generate_horn_graph
    move_file = True
    max_nodes_per_batch=10000
    thread_number=4
    filtered_file_list, file_list_with_horn_graph, file_list = wrapped_generate_horn_graph(os.path.join("../benchmarks/",sys.argv[1]),
                                                                                           max_nodes_per_batch,
                                                                                           move_file=move_file,
                                                                                           thread_number=thread_number)
main()