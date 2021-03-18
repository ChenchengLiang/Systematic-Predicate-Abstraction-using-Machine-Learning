from horn_dataset import train_on_graphs
from predict_functions import wrapped_prediction
import tensorflow as tf
from Miscellaneous import GPU_switch

def main():
    parameter_list = []
    label_list=[]
    label_list.append("template_relevance")
    force_read = True
    form_label = True
    from_json = True
    file_type = ".smt2"
    GPU=True
    pickle = True
    benchmark = "mixed-three-fold-intervals"
    benchmark_name = benchmark+"/"
    hyper_parameters_list = []
    #hyper_parameters_list.append({"nodeFeatureDim": 8, "num_layers": 2, "regression_hidden_layer_size": [8, 8, 8]})
    # hyper_parameters_list.append({"nodeFeatureDim": 8, "num_layers": 4, "regression_hidden_layer_size": [8, 8, 8]})
    # hyper_parameters_list.append({"nodeFeatureDim": 8, "num_layers": 6, "regression_hidden_layer_size": [8, 8, 8]})
    # hyper_parameters_list.append({"nodeFeatureDim": 8, "num_layers": 8, "regression_hidden_layer_size": [8, 8, 8]})
    # hyper_parameters_list.append({"nodeFeatureDim": 16, "num_layers": 2, "regression_hidden_layer_size": [16, 16, 16]})
    # hyper_parameters_list.append({"nodeFeatureDim": 16, "num_layers": 4, "regression_hidden_layer_size": [16, 16, 16]})
    # hyper_parameters_list.append({"nodeFeatureDim": 16, "num_layers": 6, "regression_hidden_layer_size": [16, 16, 16]})
    # hyper_parameters_list.append({"nodeFeatureDim": 16, "num_layers": 8, "regression_hidden_layer_size": [16, 16, 16]})
    hyper_parameters_list.append({"nodeFeatureDim": 32, "num_layers": 2, "regression_hidden_layer_size": [32, 32, 32]})
    hyper_parameters_list.append({"nodeFeatureDim": 32, "num_layers": 4, "regression_hidden_layer_size": [32, 32, 32]})
    hyper_parameters_list.append({"nodeFeatureDim": 32, "num_layers": 6, "regression_hidden_layer_size": [32, 32, 32]})
    hyper_parameters_list.append({"nodeFeatureDim": 32, "num_layers": 8, "regression_hidden_layer_size": [32, 32, 32]})
    hyper_parameters_list.append({"nodeFeatureDim": 64, "num_layers": 2, "regression_hidden_layer_size": [64, 64, 64]})
    hyper_parameters_list.append({"nodeFeatureDim": 64, "num_layers": 4, "regression_hidden_layer_size": [64, 64, 64]})
    hyper_parameters_list.append({"nodeFeatureDim": 64, "num_layers": 6, "regression_hidden_layer_size": [64, 64, 64]})
    hyper_parameters_list.append({"nodeFeatureDim": 64, "num_layers": 8, "regression_hidden_layer_size": [64, 64, 64]})
    hyper_parameters_list.append({"nodeFeatureDim": 64, "num_layers": 12, "regression_hidden_layer_size": [64, 64, 64]})
    hyper_parameters_list.append({"nodeFeatureDim": 128, "num_layers": 2, "regression_hidden_layer_size": [128, 128, 128]})
    hyper_parameters_list.append({"nodeFeatureDim": 128, "num_layers": 4, "regression_hidden_layer_size": [128, 128, 128]})
    hyper_parameters_list.append({"nodeFeatureDim": 128, "num_layers": 8, "regression_hidden_layer_size": [128, 128, 128]})
    #hyper_parameters_list.append({"nodeFeatureDim": 256, "num_layers": 2, "regression_hidden_layer_size": [256, 256, 256]})
    #hyper_parameters_list.append({"nodeFeatureDim": 256, "num_layers": 4, "regression_hidden_layer_size": [256, 256, 256]})
    for label in label_list:
        parameter_list.append(
            parameters(relative_path="../benchmarks/"+benchmark_name,
                       absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/"+benchmark_name,
                       json_type=".hyperEdgeHornGraph.JSON", label=label))
    GPU_switch(GPU)
    #train
    trained_model_path_list = []
    for hyper_parameters in hyper_parameters_list:
        for param in parameter_list:
            trained_model_path=None
            if pickle==False:
                trained_model_path=train_on_graphs(benchmark_name=param.absolute_path[param.absolute_path.find("/benchmarks/")+len("/benchmarks/"):-1], label=param.label, force_read=force_read,
                                train_n_times=1,path=param.absolute_path, file_type=file_type, form_label=form_label, from_json=from_json,
                                json_type=param.json_type,GPU=GPU,pickle=pickle,hyper_parameters=hyper_parameters)
            else:
                trained_model_path=train_on_graphs(benchmark_name=param.benchmark_name(),
                                label=param.label, force_read=force_read,
                                train_n_times=1, path=param.relative_path, file_type=file_type, form_label=form_label,from_json=from_json,
                                json_type=param.json_type, GPU=GPU, pickle=pickle,hyper_parameters=hyper_parameters)
            trained_model_path_list.append(trained_model_path)
            tf.keras.backend.clear_session()

    #predict
    benchmark_fold_list = []
    benchmark_fold_list.append(benchmark + "-" + "valid")
    benchmark_fold_list.append(benchmark + "-" + "test")
    benchmark_fold_list.append(benchmark + "-" + "test-simple-generator")
    json_type = ".hyperEdgeHornGraph.JSON"
    graph_type = json_type[1:json_type.find(".JSON")]
    gathered_nodes_binary_classification_task = ["predicate_occurrence_in_SCG", "argument_lower_bound_existence",
                                                 "argument_upper_bound_existence", "argument_occurrence_binary",
                                                 "template_relevance", "clause_occurrence_in_counter_examples_binary"]
    predict_results=[]
    for trained_model_path,hyper_parameters in zip(trained_model_path_list,hyper_parameters_list):
        hyper_parameters["read_best_threshold"]=False
        for label in label_list:
            for benchmark_fold in benchmark_fold_list:
                retult=wrapped_prediction(trained_model_path,benchmark,benchmark_fold,label,force_read,form_label,
                                          json_type,graph_type,gathered_nodes_binary_classification_task,hyper_parameters)
                predict_results.append(retult)

    #print results
    print("--------------------")
    with open("trained_model/" +"grid_search"+"-"+ label + "-" + graph_type + "-" + benchmark + ".log", 'w') as out_file:
        for result in predict_results:
            out_file.write("----------"+ str(result["benchmark_fold"])+ "-----"+ str(result["label"])+ "----------" + "\n")
            out_file.write(str(result["hyper_parameter"])+"\n")
            out_file.write(result["trained_model_path"] + "\n")
            #print("positive_label_percentage", result["positive_label_percentage"])
            #print("negative_label_number", result["negative_label_number"])
            random_guess_accuracy = max(result["positive_label_percentage"], result["negative_label_number"])
            out_file.write("{0:.2%}".format(max(result["best_set_threshold"], result["best_set_ranks"]) - random_guess_accuracy)+
                  "better than random guess"+"\n")

class parameters():
    def __init__(self, relative_path,absolute_path,json_type,label):
        self.relative_path=relative_path
        self.absolute_path=absolute_path
        self.json_type=json_type
        self.label=label
    def benchmark_name(self):
        return self.absolute_path[self.absolute_path.find("/benchmarks/") + len("/benchmarks/"):-1]
main()
