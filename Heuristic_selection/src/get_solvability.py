import sys
from utils_1 import get_solvability_and_measurement_from_eldarica,wrapped_generate_horn_graph,run_eldarica_with_shell_pool_with_file_list,run_eldarica_with_shell_get_solvability
import os
def solvability_control_by_eldarica():
    benchmark_fold = sys.argv[1]
    thread_number = 4
    continuous_extracting = True
    move_file = True
    max_nodes_per_batch = 100000
    separateByPredicates = ""  # -separateByPredicates
    generateTemplates = "-generateTemplates"
    abstract = "-abstract:empty"
    generateSimplePredicates = ""
    noIntervals = ""
    out_of_test_set = True
    timeout = 300 * 30 if generateTemplates == "-generateTemplates" else 300 * 6
    wrapped_generate_horn_graph_params = {"benchmark_fold": benchmark_fold, "max_nodes_per_batch": max_nodes_per_batch,
                                          "separateByPredicates": separateByPredicates,
                                          "abstract": abstract, "move_file": move_file, "thread_number": thread_number,
                                          "generateSimplePredicates": generateSimplePredicates,
                                          "generateTemplates": generateTemplates, "data_fold": ["test_data"],
                                          "horn_graph_folder": "", "noIntervals": noIntervals}
    filtered_file_list, file_list_with_horn_graph, file_list = \
        wrapped_generate_horn_graph(wrapped_generate_horn_graph_params)  # "train_data","valid_data",
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
                                                            "solvabilityTimeout": "300", "timeout": timeout}
    get_solvability_and_measurement_from_eldarica(get_solvability_and_measurement_from_eldarica_params)

def solvability_control_by_python():
    benchmark_fold = sys.argv[1]
    thread_number = 4
    continuous_extracting = True
    move_file = True
    max_nodes_per_batch = 100000
    separateByPredicates=""#-separateByPredicates
    generateTemplates="-generateTemplates"
    abstract="-abstract:empty"
    generateSimplePredicates=""
    noIntervals=""
    out_of_test_set = True
    timeout= 900 if generateTemplates=="-generateTemplates" else 300*15
    wrapped_generate_horn_graph_params = {"benchmark_fold": benchmark_fold, "max_nodes_per_batch": max_nodes_per_batch,
                                          "separateByPredicates": separateByPredicates,
                                          "abstract": abstract, "move_file": move_file, "thread_number": thread_number,
                                          "generateSimplePredicates": generateSimplePredicates,
                                          "generateTemplates": generateTemplates, "data_fold": ["test_data"],
                                          "horn_graph_folder": "", "noIntervals": noIntervals}
    filtered_file_list, file_list_with_horn_graph, file_list = \
        wrapped_generate_horn_graph(wrapped_generate_horn_graph_params)#"train_data","valid_data",
    # description: get solvability and measurement info with different predicate setting for unseen data
    params = {"filtered_file_list": filtered_file_list,
                                                            "thread_number": thread_number,
                                                            "continuous_extracting": continuous_extracting,
                                                            "move_file": move_file,
                                                            "checkSolvability": "-checkSolvability",
                                                            "generateTemplates": generateTemplates,
                                                            "measurePredictedPredicates": "",
                                                            "onlyInitialPredicates": "", "abstract": abstract,
                                                            "noIntervals": noIntervals,
                                                            "separateByPredicates": separateByPredicates,
                                                            "solvabilityTimeout": "300", "timeout": timeout}

    check_solvability_parameter_list = params["checkSolvability"] + " " + params["separateByPredicates"] + " " + params[
        "measurePredictedPredicates"] \
                                       + " " + params["onlyInitialPredicates"] + " " + params[
                                           "generateTemplates"] + " " + params["abstract"] + " " + \
                                       params["noIntervals"] + " -solvabilityTimeout:" + params["solvabilityTimeout"]

    file_list_with_parameters = (lambda: [
        [file, check_solvability_parameter_list, params["timeout"], params["move_file"]] if not os.path.exists(
            file + ".solvability.JSON.zip") else [] for
        file in params["filtered_file_list"]] if params["continuous_extracting"] == True
    else [[file, check_solvability_parameter_list, params["timeout"], params["move_file"]] for
          file in params["filtered_file_list"]])()
    file_list_for_solvability_check = list(filter(lambda x: len(x) != 0, file_list_with_parameters))
    print("file_list_for_solvability_check", len(file_list_for_solvability_check))
    run_eldarica_with_shell_pool_with_file_list(params["thread_number"], run_eldarica_with_shell_get_solvability,
                                                file_list_for_solvability_check)

def main():
    solvability_control_by_python()

main()