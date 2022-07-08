import os.path

import tensorflow as tf
from horn_dataset import parameters
from Miscellaneous import GPU_switch
from horn_dataset import train_on_graphs


def main():
    label_pairs={"argument_identify":"argumentIndices",
                 "predicate_occurrence_in_clauses":"predicateOccurrenceInClause",
                 "predicate_occurrence_in_SCG":"predicateStrongConnectedComponent",
                 "scc_test": "predicateStrongConnectedComponent",
                 "argument_lower_bound_existence":"argumentBoundList",
                 "argument_upper_bound_existence":"argumentBoundList",
                 "clause_occurrence_in_counter_examples_binary":"clauseBinaryOccurrenceInCounterExampleList",
                 "node_multiclass":"templateRelevanceLabel",
                 "template_relevance_boolean_usefulness":"templateRelevanceLabel",
                 "template_relevance_Eq_usefulness":"templateRelevanceLabel"}
    #binary classification and regression's num_node_target_labels is arbitrary
    label_to_num_node_target_labels={"template_relevance_boolean_usefulness":1,
                                     "template_relevance_Eq_usefulness":4,"node_multiclass":5}

    parameter_list = []
    label_list=[]
    #label = "occurrence"
    #label = "rank"
    #label = "argument_identify_no_batchs"
    #label = "control_location_identify"
    #label_list.append("argument_identify")
    #label_list.append("predicate_occurrence_in_clauses")
    #label_list.append("predicate_occurrence_in_SCG")
    #label_list.append("scc_test")
    #label_list.append("argument_lower_bound_existence")
    #label_list.append("argument_upper_bound_existence")
    #label_list.append("clause_occurrence_in_counter_examples_binary")
    # label="argument_bound"
    #label_list.append("argument_lower_bound")
    # label_list.append("argument_upper_bound")
    #label_list.append("argument_occurrence_binary")
    #label_list.append("template_relevance")
    #label_list.append("template_relevance_boolean_usefulness")
    #label_list.append("template_relevance_Eq_usefulness")
    label_list.append("node_multiclass")

    # json_type = ".hyperEdgeGraph.JSON"
    # json_type = ".monoDirectionLayerGraph.JSON"
    force_read = True
    form_label = True
    file_type = ".smt2"
    GPU=False
    use_class_weight=False
    pickle = True
    benchmark_name = "template_selection_train_non_linear/" #"template_selection_train/"

    # random.seed(0)
    # np.random.seed(0)
    # tf.random.set_seed(0)

    num_layers_list=[8]

    for num_layers in num_layers_list:

        relative_path = os.path.join("../benchmarks/", benchmark_name)
        absolute_path = os.path.join("/home/cheli243/PycharmProjects/HintsLearning/benchmarks/", benchmark_name)
        for label in label_list:
            hyper_parameters = {"nodeFeatureDim": 64, "num_layers": num_layers,
                                "regression_hidden_layer_size": [64, 64],
                                "threshold": 0.5, "max_nodes_per_batch": 10000,
                                "max_epochs": 100, "patience": 10, "num_node_target_labels": label_to_num_node_target_labels[label],
                                "fix_y_axis": False}
            parameter_list.append(parameters(relative_path=relative_path,
                          absolute_path=absolute_path,
                          json_type=".hyperEdgeGraph.JSON", label=label,label_field=label_pairs[label]))#templateRelevanceLabel,templateCostLabel,argumentIndices
            # parameter_list.append(
            #     parameters(relative_path=relative_path,
            #                absolute_path=absolute_path,
            #                json_type=".equivalentHyperedgeGraph.JSON", label=label))
            # parameter_list.append(
            #     parameters(relative_path=relative_path,
            #                absolute_path=absolute_path,
            #                json_type=".concretizedHyperedgeGraph.JSON", label=label))
            # parameter_list.append(parameters(relative_path=relative_path,
            #                absolute_path=absolute_path,
            #                json_type=".monoDirectionLayerGraph.JSON", label=label,label_field=label_pairs[label]))
            # parameter_list.append(
            #     parameters(relative_path=relative_path,
            #                absolute_path=absolute_path,
            #                json_type=".hybridDirectionLayerGraph.JSON", label=label))
            # parameter_list.append(
            #     parameters(relative_path=relative_path,
            #                absolute_path=absolute_path,
            #                json_type=".biDirectionLayerGraph.JSON", label=label,label_field=label_pairs[label]))
            # parameter_list.append(
            #     parameters(relative_path=relative_path,
            #                absolute_path=absolute_path,
            #                json_type=".clauseRelatedTaskLayerGraph.JSON", label=label))
            # parameter_list.append(
            #     parameters(relative_path=relative_path,
            #                absolute_path=absolute_path,
            #                json_type=".fineGrainedEdgeTypeLayerGraph.JSON", label=label))

        GPU_switch(GPU)


        for param in parameter_list:
            tf.keras.backend.clear_session()
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


        parameter_list=[]

main()
