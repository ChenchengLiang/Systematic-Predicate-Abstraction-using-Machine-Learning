from horn_dataset import train_on_graphs
import os
from numba import cuda
import tensorflow as tf
import random
import numpy as np
from Miscellaneous import GPU_switch
def main():
    parameter_list = []
    label_list=[]
    #label = "occurrence"
    #label = "rank"
    #label = "argument_identify"
    #label = "argument_identify_no_batchs"
    #label = "control_location_identify"
    #label_list.append("predicate_occurrence_in_clauses")
    label_list.append("predicate_occurrence_in_SCG")
    # label="argument_bound"
    #label_list.append("argument_lower_bound_existence")
    # label_list.append("argument_upper_bound_existence")
    # label_list.append("argument_lower_bound")
    # label_list.append("argument_upper_bound")
    label_list.append("argument_occurrence_binary")
    label_list.append("template_relevance")
    #label = "clause_occurrence_in_counter_examples_binary"
    # json_type = ".hyperEdgeHornGraph.JSON"
    # json_type = ".layerHornGraph.JSON"
    force_read = True
    form_label = True
    from_json = True
    file_type = ".smt2"
    GPU=True
    pickle = True
    benchmark_name = "new-full-dataset-with-simple-generated-as-initlal-predicates/"

    # random.seed(0)
    # np.random.seed(0)
    # tf.random.set_seed(0)



    for label in label_list:
        parameter_list.append(
            parameters(relative_path="../benchmarks/"+benchmark_name,
                       absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/"+benchmark_name,
                       json_type=".hyperEdgeHornGraph.JSON", label=label))
        # parameter_list.append(
        #     parameters(relative_path="../benchmarks/" + benchmark_name,
        #                absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/" + benchmark_name,
        #                json_type=".equivalent-hyperedgeGraph.JSON", label=label))
        # parameter_list.append(
        #     parameters(relative_path="../benchmarks/" + benchmark_name,
        #                absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/" + benchmark_name,
        #                json_type=".concretized-hyperedgeGraph.JSON", label=label))
        # parameter_list.append(
        #     parameters(relative_path="../benchmarks/" + benchmark_name,
        #                absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/" + benchmark_name,
        #                json_type=".mono-layerHornGraph.JSON", label=label))
        # parameter_list.append(
        #     parameters(relative_path="../benchmarks/"+benchmark_name,
        #                absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/"+benchmark_name,
        #                json_type=".hybrid-layerHornGraph.JSON", label=label))
        # parameter_list.append(
        #     parameters(relative_path="../benchmarks/"+benchmark_name,
        #                absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/"+benchmark_name,
        #                json_type=".bi-layerHornGraph.JSON", label=label))
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
                            train_n_times=1,path=param.absolute_path, file_type=file_type, form_label=form_label, from_json=from_json,
                            json_type=param.json_type,GPU=GPU,pickle=pickle)
        else:
            train_on_graphs(benchmark_name=param.benchmark_name(),
                            label=param.label, force_read=force_read,
                            train_n_times=1, path=param.relative_path, file_type=file_type, form_label=form_label,from_json=from_json,
                            json_type=param.json_type, GPU=GPU, pickle=pickle)
        tf.keras.backend.clear_session()

class parameters():
    def __init__(self, relative_path,absolute_path,json_type,label):
        self.relative_path=relative_path
        self.absolute_path=absolute_path
        self.json_type=json_type
        self.label=label
    def benchmark_name(self):
        return self.absolute_path[self.absolute_path.find("/benchmarks/") + len("/benchmarks/"):-1]
main()
