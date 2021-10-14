import sys
from utils_1 import get_solvability_and_measurement_from_eldarica,wrapped_generate_horn_graph,run_eldarica_with_shell_pool_with_file_list,run_eldarica_with_shell_get_measurement
import os

def measurement_control_by_python(benchmark_fold):
    thread_number = 4
    continuous_extracting = True
    move_file = False
    max_nodes_per_batch = 100000
    generateTemplates=""
    separateByPredicates=""#-separateByPredicates
    abstract=""
    generateSimplePredicates=""
    noIntervals=""
    out_of_test_set = True
    timeout= 900
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
                                                            "checkSolvability": "",
                                                            "generateTemplates": generateTemplates,
                                                            "measurePredictedPredicates": "",
                                                            "onlyInitialPredicates": "", "abstract": abstract,
                                                            "noIntervals": noIntervals,
                                                            "separateByPredicates": separateByPredicates,
                                                            "solvabilityTimeout": str(timeout), "timeout": timeout}

    check_solvability_parameter_list = params["checkSolvability"] + " " + params["separateByPredicates"] + " " + params[
        "measurePredictedPredicates"] \
                                       + " " + params["onlyInitialPredicates"] + " " + params[
                                           "generateTemplates"] + " " + params["abstract"] + " " + \
                                       params["noIntervals"] + " -solvabilityTimeout:" + params["solvabilityTimeout"]

    file_list_with_parameters = (lambda: [
        [file, check_solvability_parameter_list, params["timeout"], params["move_file"]] if not os.path.exists(
            file + ".measurement.JSON.zip") else [] for
        file in params["filtered_file_list"]] if params["continuous_extracting"] == True
    else [[file, check_solvability_parameter_list, params["timeout"], params["move_file"]] for
          file in params["filtered_file_list"]])()
    file_list_for_solvability_check = list(filter(lambda x: len(x) != 0, file_list_with_parameters))
    print("file_list_for_measurement", len(file_list_for_solvability_check))
    run_eldarica_with_shell_pool_with_file_list(params["thread_number"], run_eldarica_with_shell_get_measurement,
                                                file_list_for_solvability_check)

def main():
    #benchmark_fold = "temp-debug"  # sys.argv[1]
    benchmark_fold=["temp-debug-"+str(x)+"-fold" for x in range(5)]
    for fold in benchmark_fold:
        measurement_control_by_python(fold)

main()