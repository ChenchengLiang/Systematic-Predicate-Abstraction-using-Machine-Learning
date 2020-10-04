from horn_dataset import train_on_graphs
import os
"""
This will read train, valid, and test data from trainData, validData, and testData files in ../temp-extract-trainData-datafold/

.layerHornGraph.JSON files contain all information of the graph.
.layerHornGraph.gv files can be rend as .jpg file to visualize the graph

For a simplest test, you can use one file for three datafolds. 
To reproduce memory out problem, you can replicate similar graphs for many times.

The training logs can be find in src/trained_model folder

"""

def main():
    benchmark_list = []
    #benchmark_list.append(["../benchmarks/temp-extract-trainData-datafold/"])
    benchmark_list.append(["../benchmarks/temp-extract-trainData-datafold/"])
    force_read = True
    from_json=True
    form_label=True
    json_type=".layerHornGraph.JSON"
    file_type = ".smt2"
    label = "occurrence"
    #label = "rank"
    #label = "argument_identify"
    #label = "argument_identify_no_batchs"
    #label = "control_location_identify"

    os.environ["CUDA_VISIBLE_DEVICES"] = "-1"

    for benchmark in benchmark_list:
        train_on_graphs(benchmark_name=benchmark[0][len("../benchmarks/"):-1], label=label, force_read=force_read,
                        train_n_times=1,
                        path=benchmark[0], file_type=file_type, form_label=form_label, from_json=from_json,
                        json_type=json_type)

main()
