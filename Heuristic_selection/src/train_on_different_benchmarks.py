from horn_dataset import train_on_graphs
import os
from numba import cuda
import tensorflow as tf
def main():
    parameter_list = []
    #label = "occurrence"
    #label = "rank"
    #label = "argument_identify"
    #label = "argument_identify_no_batchs"
    #label = "control_location_identify"
    #label = "predicate_occurrence_in_clauses"
    label = "predicate_occurrence_in_SCG"
    # label="argument_bound"
    # label = "argument_lower_bound_existence"
    # label = "argument_upper_bound_existence"
    # label = "argument_lower_bound"
    # label = "argument_upper_bound"
    #label = "argument_occurrence_binary"
    #label = "template_relevance"
    #label = "clause_occurrence_in_counter_examples_binary"
    # json_type = ".hyperEdgeHornGraph.JSON"
    # json_type = ".layerHornGraph.JSON"
    force_read = False
    form_label = False
    from_json = True
    file_type = ".smt2"
    GPU=True
    pickle = True
    benchmark_name="LIA-lin-noInterval-trainData-datafold-graphs/"

    parameter_list.append(
        parameters(relative_path="../benchmarks/"+benchmark_name,
                   absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/"+benchmark_name,
                   json_type=".hyperEdgeHornGraph.JSON", label=label))
    # parameter_list.append(
    #     parameters(relative_path="../benchmarks/" + benchmark_name,
    #                absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/" + benchmark_name,
    #                json_type=".mono-layerHornGraph.JSON", label=label))
    # parameter_list.append(
    #     parameters(relative_path="../benchmarks/"+benchmark_name,
    #                absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/"+benchmark_name,
    #                json_type=".hybrid-layerHornGraph.JSON", label=label))
    parameter_list.append(
        parameters(relative_path="../benchmarks/"+benchmark_name,
                   absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/"+benchmark_name,
                   json_type=".bi-layerHornGraph.JSON", label=label))

    parameter_list.append(
        parameters(relative_path="../benchmarks/" + benchmark_name,
                   absolute_path="/home/cheli243/PycharmProjects/HintsLearning/benchmarks/" + benchmark_name,
                   json_type=".clause-related-task-layerHornGraph.JSON", label=label))



    if GPU==False:
        os.environ["CUDA_VISIBLE_DEVICES"] = "-1"
        tf.keras.backend.clear_session()
    else:
        #watch nvidia-smi
        cuda.select_device(0)
        cuda.close()
        print('CUDA memory released: GPU0')
        gpus = tf.config.experimental.list_physical_devices('GPU')
        for gpu in gpus:
            tf.config.experimental.set_memory_growth(gpu, True)


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
