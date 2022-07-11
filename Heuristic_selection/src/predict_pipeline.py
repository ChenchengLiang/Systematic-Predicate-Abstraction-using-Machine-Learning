from utils_1 import generate_horn_graph,wrapped_generate_horn_graph,get_solvability_and_measurement_from_eldarica,read_solvability
from utils import mutual_differences,flattenList
from plot import get_recall_scatter,plot_scatter
import tensorflow as tf
import gc
from predict_functions import predict_label
from measurement_functions import read_measurement_from_JSON
def main():
    fold_number_list=["solvability"]#test
    for fold in fold_number_list:
        predict_pipeline(fold)

def predict_pipeline(fold_number=0):
    # description: parameter settings
    benchmark = "template_selection_train_non_linear"#sys.argv[1]

    #benchmark_fold = benchmark + "-" + "unsolvable"#sys.argv[2]

    benchmark_fold = benchmark + "-unsolvable-predicted-"+str(fold_number)#sys.argv[2]

    max_nodes_per_batch = 10000

    #/home/cheli243/PycharmProjects/HintsLearning/src/
    graph_type = "monoDirectionLayerGraph"  # "hyperEdgeGraph"
    graph_type_model_pairs={
                            "hyperEdgeGraph":"trained_model/GNN_Argument_selection__2022-07-08_15-09-31_best.pkl",
                            #"monoDirectionLayerGraph":"trained_model/GNN_Argument_selection__2022-07-06_04-59-34_best.pkl"
    }
    gathered_nodes_binary_classification_task = ["predicate_occurrence_in_SCG", "argument_lower_bound_existence",
                                                 "argument_upper_bound_existence", "argument_occurrence_binary",
                                                 "template_relevance", "clause_occurrence_in_counter_examples_binary",
                                                 "template_relevance_boolean_usefulness"]
    gathered_nodes_multi_classification_task = ["node_multiclass", "template_relevance_Eq_usefulness"]
    # binary classification and regression's num_node_target_labels is arbitrary
    label_to_num_node_target_labels = {"template_relevance_boolean_usefulness": 1,
                                       "template_relevance_Eq_usefulness": 4, "node_multiclass": 5}
    thread_number = 4
    continuous_extracting=True
    move_file = False
    out_of_test_set=True
    use_test_threshold=False
    separateByPredicates=""#-separateByPredicates
    generateSimplePredicates=""#-generateSimplePredicates
    generateTemplates="-generateTemplates"#-generateTemplates
    abstract = "-abstract:empty"#empty
    noIntervals=""
    splitClauses="-splitClauses:1"
    label="node_multiclass"
    num_node_target_labels=5
    verbose=True
    timeout = 60*60*3
    shell_timeout=60*60*4

    # description: generate both graphs
    wrapped_generate_horn_graph_params={"benchmark_fold":benchmark_fold,"max_nodes_per_batch":max_nodes_per_batch,"separateByPredicates":separateByPredicates,
                                        "abstract":abstract,"move_file":move_file,"thread_number":thread_number,"generateSimplePredicates":generateSimplePredicates,
                                        "generateTemplates":generateTemplates,"data_fold":["test_data"],"horn_graph_folder":"","noIntervals":noIntervals,
                                        "graph_type":graph_type,"splitClauses":splitClauses,"timeout":timeout}
    filtered_file_list, file_list_with_horn_graph, file_list = \
        wrapped_generate_horn_graph(wrapped_generate_horn_graph_params)

    #
    #description: prediction
    for gt in graph_type_model_pairs:
        predict_label_params={"benchmark":benchmark,"max_nodes_per_batch":max_nodes_per_batch,"benchmark_fold":benchmark_fold,
                              "file_list":filtered_file_list,"trained_model_path":graph_type_model_pairs[gt],"use_test_threshold":use_test_threshold,
                              "separateByPredicates":separateByPredicates,"label":label,"verbose":verbose,
                              "num_node_target_labels":label_to_num_node_target_labels[label],"GPU":False,"graph_type":gt,
                              "gathered_nodes_binary_classification_task":gathered_nodes_binary_classification_task,
                              "gathered_nodes_multi_classification_task":gathered_nodes_multi_classification_task}
        # # description: predict label one by one
        # for f in filtered_file_list:
        #     predict_label_params["file_list"]=[f]
        #     print("file_name:",f)
        #     predict_label(predict_label_params)#file_list
        #     gc.collect()
        #     tf.keras.backend.clear_session()

        # description: predict label together
        predict_label(predict_label_params)

    # description: get solvability and measurement info with different predicate setting for unseen data
    # get_solvability_and_measurement_from_eldarica_params={"filtered_file_list":filtered_file_list,"thread_number":thread_number,"continuous_extracting":continuous_extracting,
    #                                                       "move_file":move_file,"checkSolvability":"-checkSolvability","generateTemplates":generateTemplates,
    #                                                       "measurePredictedPredicates":"","onlyInitialPredicates":"","abstract":abstract,"noIntervals":noIntervals,
    #                                                       "separateByPredicates":separateByPredicates,"solvabilityTimeout":"300",
    #                                                       "timeout":timeout,"splitClauses":splitClauses,"getHornGraph":"-getHornGraph:"+graph_type,
    #                                                       "shell_timeout":shell_timeout}#"solvabilityTimeout":"3600","timeout":60*60*4
    # get_solvability_and_measurement_from_eldarica(get_solvability_and_measurement_from_eldarica_params)

    # description: read solvability results
    #read_solvability(filtered_file_list, benchmark_fold, splitClauses)



    # description: read measurement JSON file
    # param_get_solvability_and_measurement_from_eldarica={"filtered_file_list":filtered_file_list,"thread_number":thread_number,
    #                                                      "continuous_extracting":continuous_extracting,"move_file":move_file,
    #                                                      "checkSolvability":"-checkSolvability","onlyInitialPredicates":"",
    #                                                      "generateTemplates":generateTemplates,
    #                                                      "measurePredictedPredicates":"-measurePredictedPredicates",
    #                                                      "separateByPredicates":separateByPredicates,"abstract":abstract,
    #                                                      "noIntervals":noIntervals,"solvabilityTimeout":300,"timeout":timeout}
    # get_solvability_and_measurement_from_eldarica(param_get_solvability_and_measurement_from_eldarica)
    # scatter_plot_range=[0,120]
    # json_obj_list = read_measurement_from_JSON(filtered_file_list)
    # print("json_obj_list",json_obj_list)
    # get_analysis_for_predicted_labels(json_obj_list, out_of_test_set=out_of_test_set,time_unit=1000,scatter_plot_range=scatter_plot_range)
    # print("solvable file by predicted label:" + str(len(json_obj_list)) + "/" + str(len(filtered_file_list)))

    # description: print results
    # print("-"*10)
    # print(file_list_with_horn_graph)
    # print("max_nodes_per_batch", max_nodes_per_batch)
    # print("filtered_file_list by max_nodes_per_batch:" + str(len(filtered_file_list)) + "/" + str(len(file_list)))

    #description: statistic data
    #get_statistic_data(filtered_file_list,benchmark_fold)

    # description: how many predicates used in end
    #get_recall_scatter(solvability_name_fold, json_solvability_obj_list, filtered_file_list)





main()
