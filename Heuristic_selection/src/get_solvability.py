import sys
from utils import get_solvability_and_measurement_from_eldarica,wrapped_generate_horn_graph
def main():

    benchmark_fold = sys.argv[1]
    thread_number = 4
    continuous_extracting = True
    move_file = True
    max_nodes_per_batch = 10000
    filtered_file_list, file_list_with_horn_graph, file_list = wrapped_generate_horn_graph(benchmark_fold,
                                                                                           max_nodes_per_batch,
                                                                                           move_file=move_file,
                                                                                           thread_number=thread_number,
                                                                                           data_fold=["test_data"],
                                                                                           horn_graph_folder="")
    # description: get solvability and measurement info with different predicate setting for unseen data
    get_solvability_and_measurement_from_eldarica(filtered_file_list, thread_number,
                                                  continuous_extracting=continuous_extracting, move_file=move_file,
                                                  checkSolvability="-checkSolvability", measurePredictedPredicates=" ",
                                                  onlyInitialPredicates="")




main()