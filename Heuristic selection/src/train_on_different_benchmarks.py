from horn_dataset import train_on_graphs
import os
import tensorflow as tf
def main():
    benchmark_list = []
    #benchmark_list.append(["../benchmarks/single_example_test/"])
    #benchmark_list.append(["../benchmarks/small-dataset-trainData-datafold-hyperedge-graph/"])
    #benchmark_list.append(["../benchmarks/small-dataset-trainData-datafold-bi-direction-layer-graph/"])
    benchmark_list.append(["../benchmarks/LIA-lin-noInterval-trainData-datafold-bi-direction-layer-graph/"])
    force_read = True
    form_label = True
    from_json=True
    file_type = ".smt2"
    #label = "occurrence"
    #label = "rank"
    #label = "argument_identify"
    #label = "argument_identify_no_batchs"
    #label = "control_location_identify"
    #label = "predicate_occurrence_in_clauses"
    label = "predicate_occurrence_in_SCG"

    #json_type = ".hyperEdgeHornGraph.JSON"
    json_type = ".layerHornGraph.JSON"

    #param = parameters("../benchmarks/single_example_test/",json_type=".layerHornGraph.JSON", label="predicate_occurrence_in_SCG")
    #param= parameters("../benchmarks/small-dataset-trainData-datafold-hyperedge-graph/",json_type=".hyperEdgeHornGraph.JSON",label="predicate_occurrence_in_clauses")
    #param = parameters("../benchmarks/small-dataset-trainData-datafold-bi-direction-layer-graph/",json_type=".layerHornGraph.JSON", label="predicate_occurrence_in_clauses")
    #param = parameters("../benchmarks/small-dataset-trainData-datafold-bi-direction-layer-graph/",json_type=".layerHornGraph.JSON", label="predicate_occurrence_in_SCG")
    #param = parameters("../benchmarks/small-dataset-trainData-datafold-bi-direction-layer-graph/",json_type=".layerHornGraph.JSON", label="argument_identify")
    #param = parameters("../benchmarks/LIA-lin-noInterval-trainData-datafold-hyperedge-graph/",json_type=".hyperEdgeHornGraph.JSON", label="predicate_occurrence_in_clauses")
    #param = parameters("../benchmarks/LIA-lin-noInterval-trainData-datafold-bi-direction-layer-graph",json_type=".layerHornGraph.JSON", label="predicate_occurrence_in_clauses")
    # param = parameters("../benchmarks/LIA-lin-noInterval-trainData-datafold-bi-direction-layer-graph",json_type=".hyperEdgeHornGraph.JSON", label="predicate_occurrence_in_SCG")
    param = parameters("../benchmarks/LIA-lin-noInterval-trainData-datafold-bi-direction-layer-graph",json_type=".layerHornGraph.JSON", label="predicate_occurrence_in_SCG")
    os.environ["CUDA_VISIBLE_DEVICES"] = "-1"
    # gpus = tf.config.experimental.list_physical_devices('GPU')
    # for gpu in gpus:
    #     tf.config.experimental.set_memory_growth(gpu, True)


    train_on_graphs(benchmark_name=param.root_dir[len("../benchmarks/"):-1], label=param.label, force_read=force_read,
                    train_n_times=1,path=param.root_dir, file_type=file_type, form_label=form_label, from_json=from_json,
                    json_type=param.json_type)



class parameters():
    def __init__(self, root_dir,json_type,label):
        self.root_dir=root_dir
        self.json_type=json_type
        self.label=label
main()
