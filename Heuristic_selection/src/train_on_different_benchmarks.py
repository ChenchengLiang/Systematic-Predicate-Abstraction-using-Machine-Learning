import tensorflow as tf
from horn_dataset import parameters
from Miscellaneous import GPU_switch
from horn_dataset import train_on_graphs


def main():
    label_pairs={"argument_identify":"argumentIndices",
                 "predicate_occurrence_in_clauses":"predicateOccurrenceInClause",
                 "predicate_occurrence_in_SCG":"predicateStrongConnectedComponent",
                 "argument_lower_bound_existence":"argumentBoundList",
                 "argument_upper_bound_existence":"argumentBoundList",
                 "clause_occurrence_in_counter_examples_binary":"clauseBinaryOccurrenceInCounterExampleList",
                 "node_multiclass":"templateRelevanceLabel"}

    parameter_list = []
    label_list=[]
    #label = "occurrence"
    #label = "rank"
    #label = "argument_identify_no_batchs"
    #label = "control_location_identify"
    label_list.append("argument_identify")
    #label_list.append("predicate_occurrence_in_clauses")
    #label_list.append("predicate_occurrence_in_SCG")
    # label_list.append("argument_lower_bound_existence")
    # label_list.append("argument_upper_bound_existence")
    # label_list.append("clause_occurrence_in_counter_examples_binary")
    # label="argument_bound"
    # label_list.append("argument_lower_bound")
    # label_list.append("argument_upper_bound")
    #label_list.append("argument_occurrence_binary")
    #label_list.append("template_relevance")
    #label_list.append("node_multiclass")

    # json_type = ".hyperEdgeHornGraph.JSON"
    # json_type = ".layerHornGraph.JSON"
    force_read = True
    form_label = True
    file_type = ".smt2"
    GPU=False
    use_class_weight=False
    pickle = True
    benchmark_name = "lienar-10-percent-first-three-tasks-bi-direction-layer-graph/"
    num_node_target_labels=5

    # random.seed(0)
    # np.random.seed(0)
    # tf.random.set_seed(0)


    hyper_parameters={"nodeFeatureDim":64,"num_layers":2,"regression_hidden_layer_size":[64,64],"threshold":0.5,"max_nodes_per_batch":10000,
                      "max_epochs":500,"patience":50,"num_node_target_labels":num_node_target_labels,"fix_y_axis":False}

    for label in label_list:
        # parameter_list.append(parameters(relative_path="../benchmarks/"+benchmark_name,
        #                absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/"+benchmark_name,
        #                json_type=".hyperEdgeHornGraph.JSON", label=label,label_field=label_pairs[label]))#templateRelevanceLabel,templateCostLabel,argumentIndices
        # parameter_list.append(
        #     parameters(relative_path="../benchmarks/" + benchmark_name,
        #                absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/" + benchmark_name,
        #                json_type=".equivalent-hyperedgeGraph.JSON", label=label))
        # parameter_list.append(
        #     parameters(relative_path="../benchmarks/" + benchmark_name,
        #                absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/" + benchmark_name,
        #                json_type=".concretized-hyperedgeGraph.JSON", label=label))
        # parameter_list.append(parameters(relative_path="../benchmarks/" + benchmark_name,
        #                absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/" + benchmark_name,
        #                json_type=".mono-layerHornGraph.JSON", label=label,label_field=label_pairs[label]))
        # parameter_list.append(
        #     parameters(relative_path="../benchmarks/"+benchmark_name,
        #                absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/"+benchmark_name,
        #                json_type=".hybrid-layerHornGraph.JSON", label=label))
        parameter_list.append(
            parameters(relative_path="../benchmarks/"+benchmark_name,
                       absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/"+benchmark_name,
                       json_type=".bi-layerHornGraph.JSON", label=label,label_field=label_pairs[label]))
        # parameter_list.append(
        #     parameters(relative_path="../benchmarks/" + benchmark_name,
        #                absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/" + benchmark_name,
        #                json_type=".clause-related-task-layerHornGraph.JSON", label=label))
        # parameter_list.append(
        #     parameters(relative_path="../benchmarks/" + benchmark_name,
        #                absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/" + benchmark_name,
        #                json_type=".fine-grained-edge-type-layerHornGraph.JSON", label=label))

    GPU_switch(GPU)


    for param in parameter_list:
        if pickle==False:
            train_on_graphs(benchmark_name=param.absolute_path[param.absolute_path.find("/benchmarks/")+len("/benchmarks/"):-1], label=param.label, force_read=force_read,
                            train_n_times=1,path=param.absolute_path, file_type=file_type, form_label=form_label,
                            json_type=param.json_type,GPU=GPU,pickle=pickle,use_class_weight=use_class_weight,label_field=param.label_field,
                            hyper_parameters=hyper_parameters)
        else:
            train_on_graphs(benchmark_name=param.benchmark_name(),
                            label=param.label, force_read=force_read,
                            train_n_times=1, path=param.relative_path, file_type=file_type, form_label=form_label,
                            json_type=param.json_type, GPU=GPU, pickle=pickle,use_class_weight=use_class_weight,label_field=param.label_field,
                            hyper_parameters=hyper_parameters)
        tf.keras.backend.clear_session()

main()
