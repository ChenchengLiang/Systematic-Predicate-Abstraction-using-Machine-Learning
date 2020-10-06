
from horn_dataset import train_on_graphs
import os
import tensorflow as tf
def main():
    benchmark_list = []
    benchmark_list.append(["../benchmarks/temp-extract-trainData-datafold/"])
    #benchmark_list.append(["../benchmarks/single_example_test/"])
    #benchmark_list.append(["../benchmarks/LIA-lin-noInterval-trainData-datafold-temp/"])

    force_read = False
    form_label = False
    from_json=True
    file_type = ".smt2"
    #label = "occurrence"
    #label = "rank"
    label = "argument_identify"
    #label = "argument_identify_no_batchs"
    #label = "control_location_identify"

    os.environ["CUDA_VISIBLE_DEVICES"] = "-1"
    # gpus = tf.config.experimental.list_physical_devices('GPU')
    # for gpu in gpus:
    #     tf.config.experimental.set_memory_growth(gpu, True)

    for benchmark in benchmark_list:
        train_on_graphs(benchmark_name=benchmark[0][len("../benchmarks/"):-1], label=label, force_read=force_read, train_n_times=1,
                        path=benchmark[0], file_type=file_type,form_label=form_label,from_json=from_json,json_type=".layerHornGraph.JSON")

main()
