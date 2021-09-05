import sys
from utils import get_solvability_and_measurement_from_eldarica,wrapped_generate_horn_graph
def main():

    benchmark_fold = sys.argv[1]
    thread_number = 4
    continuous_extracting = True
    move_file = True
    max_nodes_per_batch = 10000
    separateByPredicates=""#-separateByPredicates
    generateTemplates="-generateTemplates"
    abstract="-abstract:empty"
    generateSimplePredicates=""
    noIntervals=""
    out_of_test_set = True
    wrapped_generate_horn_graph_params = {"benchmark_fold": benchmark_fold, "max_nodes_per_batch": max_nodes_per_batch,
                                          "separateByPredicates": separateByPredicates,
                                          "abstract": abstract, "move_file": move_file, "thread_number": thread_number,
                                          "generateSimplePredicates": generateSimplePredicates,
                                          "generateTemplates": generateTemplates, "data_fold": ["test_data"],
                                          "horn_graph_folder": "", "noIntervals": noIntervals}
    filtered_file_list, file_list_with_horn_graph, file_list = \
        wrapped_generate_horn_graph(wrapped_generate_horn_graph_params)#"train_data","valid_data",
    # description: get solvability and measurement info with different predicate setting for unseen data
    get_solvability_and_measurement_from_eldarica_params = {"filtered_file_list": filtered_file_list,
                                                            "thread_number": thread_number,
                                                            "continuous_extracting": continuous_extracting,
                                                            "move_file": move_file,
                                                            "checkSolvability": "-checkSolvability",
                                                            "generateTemplates": generateTemplates,
                                                            "measurePredictedPredicates": "",
                                                            "onlyInitialPredicates": "", "abstract": abstract,
                                                            "noIntervals": noIntervals,
                                                            "separateByPredicates": separateByPredicates,
                                                            "solvabilityTimeout": "300", "timeout": 300* 6}
    get_solvability_and_measurement_from_eldarica(get_solvability_and_measurement_from_eldarica_params)

main()