from predict_functions import wrapped_prediction
from Miscellaneous import GPU_switch
def main():
    benchmark="new-labelSimpleGeneratedPredicates"
    benchmark_fold_list=[]
    benchmark_fold_list.append(benchmark+"-"+"valid")
    benchmark_fold_list.append(benchmark + "-" + "test")
    #benchmark_fold_list.append(benchmark + "-" + "test-simple-generator")
    trained_model_path_list=[]
    #trained_model_path_list.append("/home/cheli243/PycharmProjects/HintsLearning/src/trained_model/GNN_Argument_selection__2021-02-04_16-58-14_best.pkl")
    #trained_model_path_list.append("/home/cheli243/PycharmProjects/HintsLearning/src/trained_model/GNN_Argument_selection__2021-02-05_15-47-16_best.pkl")
    trained_model_path_list.append("/home/cheli243/PycharmProjects/HintsLearning/src/trained_model/GNN_Argument_selection__2021-02-05_23-05-19_best.pkl")
    json_type=".hyperEdgeHornGraph.JSON"
    graph_type = json_type[1:json_type.find(".JSON")]
    gathered_nodes_binary_classification_task = ["predicate_occurrence_in_SCG", "argument_lower_bound_existence",
                                                 "argument_upper_bound_existence", "argument_occurrence_binary",
                                                 "template_relevance", "clause_occurrence_in_counter_examples_binary"]
    force_read=True
    form_label=True
    GPU_switch(True)
    label_list=[]
    #label = "occurrence"
    # label = "rank"
    # label = "argument_identify"
    # label = "argument_identify_no_batchs"
    # label = "control_location_identify"
    #label_list.append("predicate_occurrence_in_SCG")
    #label_list.append("argument_occurrence_binary")
    label_list.append("template_relevance")


    for label,trained_model_path in zip(label_list,trained_model_path_list):
        for benchmark_fold in benchmark_fold_list:
            wrapped_prediction(trained_model_path,benchmark,benchmark_fold,label,force_read,form_label,json_type,graph_type,gathered_nodes_binary_classification_task)




main()