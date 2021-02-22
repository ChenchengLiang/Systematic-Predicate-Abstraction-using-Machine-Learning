from predict_functions import wrapped_prediction
from Miscellaneous import GPU_switch
from predict_functions import write_predicted_label_to_JSON_file
def main():
    benchmark="mixed-three-fold"
    benchmark_fold_list=[]
    #benchmark_fold_list.append(benchmark+"-"+"valid")
    #benchmark_fold_list.append(benchmark + "-" + "test")
    #benchmark_fold_list.append(benchmark + "-" + "test-simple-generator")
    benchmark_fold_list.append(benchmark + "-" + "predict")
    #benchmark_fold_list.append(benchmark + "-" + "small-test-predict")
    hyper_parameter={"max_nodes_per_batch":1000}
    trained_model_path_list=[]
    #trained_model_path_list.append("/home/cheli243/PycharmProjects/HintsLearning/src/trained_model/GNN_Argument_selection__2021-02-04_16-58-14_best.pkl")
    #trained_model_path_list.append("/home/cheli243/PycharmProjects/HintsLearning/src/trained_model/GNN_Argument_selection__2021-02-05_15-47-16_best.pkl")
    trained_model_path_list.append("/home/cheli243/PycharmProjects/HintsLearning/src/trained_model/GNN_Argument_selection__2021-02-14_22-37-39_best.pkl")
    json_type=".hyperEdgeHornGraph.JSON"
    graph_type = json_type[1:json_type.find(".JSON")]
    gathered_nodes_binary_classification_task = ["predicate_occurrence_in_SCG", "argument_lower_bound_existence",
                                                 "argument_upper_bound_existence", "argument_occurrence_binary",
                                                 "template_relevance", "clause_occurrence_in_counter_examples_binary"]
    force_read=True
    form_label=True
    GPU_switch(False)
    label_list=[]
    #label = "occurrence"
    # label = "rank"
    # label = "argument_identify"
    # label = "argument_identify_no_batchs"
    # label = "control_location_identify"
    #label_list.append("predicate_occurrence_in_SCG")
    #label_list.append("argument_occurrence_binary")
    label_list.append("template_relevance")

    result_dir=None
    for label,trained_model_path in zip(label_list,trained_model_path_list):
        for benchmark_fold in benchmark_fold_list:
            result_dir=wrapped_prediction(trained_model_path,benchmark,benchmark_fold,label,force_read,form_label,
                                          json_type,graph_type,gathered_nodes_binary_classification_task,hyper_parameter,True)

            write_predicted_label_to_JSON_file(result_dir["dataset"], result_dir["predicted_Y_loaded_model"],json_type,result_dir["best_threshold"])

main()