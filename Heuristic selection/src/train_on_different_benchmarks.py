from horn_dataset import train_on_graphs
import os
from numba import cuda
import tensorflow as tf
def main():
    benchmark_list = []
    #label = "occurrence"
    #label = "rank"
    #label = "argument_identify"
    #label = "argument_identify_no_batchs"
    #label = "control_location_identify"
    #label = "predicate_occurrence_in_clauses"
    label = "predicate_occurrence_in_SCG"
    force_read = True
    form_label = True
    from_json = True
    file_type = ".smt2"
    GPU=False
    pickle = False
    #json_type = ".hyperEdgeHornGraph.JSON"
    json_type = ".layerHornGraph.JSON"

    #param = parameters("../benchmarks/single_example_test/",json_type=".layerHornGraph.JSON", label="predicate_occurrence_in_SCG")
    #param= parameters("../benchmarks/small-dataset-trainData-datafold-hyperedge-graph/","/home/cheli243/PycharmProjects/HintsLearning/benchmarks/small-dataset-trainData-datafold-hyperedge-graph/",json_type=".hyperEdgeHornGraph.JSON",label="predicate_occurrence_in_clauses")
    param = parameters("../benchmarks/small-dataset-trainData-datafold-hyperedge-graph/","/home/cheli243/PycharmProjects/HintsLearning/benchmarks/small-dataset-trainData-datafold-hyperedge-graph/",json_type=".hyperEdgeHornGraph.JSON", label="predicate_occurrence_in_SCG")
    #param = parameters("../benchmarks/small-dataset-trainData-datafold-bi-direction-layer-graph/","/home/cheli243/PycharmProjects/HintsLearning/benchmarks/small-dataset-trainData-datafold-bi-direction-layer-graph/",json_type=".layerHornGraph.JSON", label="predicate_occurrence_in_clauses")
    #param = parameters("../benchmarks/small-dataset-trainData-datafold-bi-direction-layer-graph/","/home/cheli243/PycharmProjects/HintsLearning/benchmarks/small-dataset-trainData-datafold-bi-direction-layer-graph/",json_type=".layerHornGraph.JSON", label="predicate_occurrence_in_SCG")
    #param = parameters("../benchmarks/small-dataset-trainData-datafold-bi-direction-layer-graph/",json_type=".layerHornGraph.JSON", label="argument_identify")
    #param = parameters("../benchmarks/LIA-lin-noInterval-trainData-datafold-hyperedge-graph/",json_type=".hyperEdgeHornGraph.JSON", label="predicate_occurrence_in_clauses")
    #param = parameters("../benchmarks/LIA-lin-noInterval-trainData-datafold-bi-direction-layer-graph/","/home/cheli243/PycharmProjects/HintsLearning/benchmarks/LIA-lin-noInterval-trainData-datafold-bi-direction-layer-graph/",json_type=".layerHornGraph.JSON", label="predicate_occurrence_in_clauses")
    #param = parameters("../benchmarks/LIA-lin-noInterval-trainData-datafold-hyperedge-graph/","/home/cheli243/PycharmProjects/HintsLearning/benchmarks/LIA-lin-noInterval-trainData-datafold-hyperedge-graph/",json_type=".hyperEdgeHornGraph.JSON", label="predicate_occurrence_in_SCG")
    #param = parameters("../benchmarks/LIA-lin-noInterval-trainData-datafold-bi-direction-layer-graph/","/home/cheli243/PycharmProjects/HintsLearning/benchmarks/LIA-lin-noInterval-trainData-datafold-bi-direction-layer-graph/",json_type=".layerHornGraph.JSON", label="predicate_occurrence_in_SCG")
    #param = parameters("../benchmarks/LIA-lin-noInterval-trainData-datafold-hyperedge-graph/","/home/cheli243/PycharmProjects/HintsLearning/benchmarks/LIA-lin-noInterval-trainData-datafold-hyperedge-graph/",json_type=".hyperEdgeHornGraph.JSON", label="occurrence")
    #param = parameters("../benchmarks/LIA-lin-noInterval-trainData-datafold-hyperedge-graph/","/home/cheli243/PycharmProjects/HintsLearning/benchmarks/LIA-lin-noInterval-trainData-datafold-hyperedge-graph/",json_type=".hyperEdgeHornGraph.JSON", label="argument_identify")
    #param = parameters("../benchmarks/LIA-lin-noInterval-trainData-datafold-bi-direction-layer-graph/","/home/cheli243/PycharmProjects/HintsLearning/benchmarks/LIA-lin-noInterval-trainData-datafold-bi-direction-layer-graph/",json_type=".layerHornGraph.JSON", label="argument_identify")
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




    if pickle==False:
        train_on_graphs(benchmark_name=param.absolute_path[param.absolute_path.find("/benchmarks/")+len("/benchmarks/"):-1], label=param.label, force_read=force_read,
                        train_n_times=1,path=param.absolute_path, file_type=file_type, form_label=form_label, from_json=from_json,
                        json_type=param.json_type,GPU=GPU,pickle=pickle)
    else:
        train_on_graphs(benchmark_name=param.absolute_path[param.absolute_path.find("/benchmarks/")+len("/benchmarks/"):-1],
                        label=param.label, force_read=force_read,
                        train_n_times=1, path=param.relative_path, file_type=file_type, form_label=form_label,from_json=from_json,
                        json_type=param.json_type, GPU=GPU, pickle=pickle)





class parameters():
    def __init__(self, relative_path,absolute_path,json_type,label):
        self.relative_path=relative_path
        self.absolute_path=absolute_path
        self.json_type=json_type
        self.label=label
main()
