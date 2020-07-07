from horn_dataset import train_on_graphs

"""
This will read train, valid, and test data from trainData, validData, and testData files in ../benchmarks/debug-examples/

In every data folder such as trainData, you can find two types of files i.e. file_name.gv and file_name.arguments.
A pair of them is one graph input. You can manually copy other .gv and .arguments file pairs from other folder in benchmarks to form different dataset.

For a simplest test, you can use one pair of files for three datafolds. 

"""

def main():
    benchmark_list = []
    benchmark_list.append(["../benchmarks/debug-examples/", None, None, None])
    force_read = True
    file_type = ".smt2"
    #label = "occurrence"
    label = "rank"
    #label = "argument_identify"
    #label = "argument_identify_no_batchs"
    #label = "control_location_identify"

    for benchmark in benchmark_list:
        train_on_graphs(benchmark_name=benchmark[0][len("../benchmarks/"):-1], label=label, force_read=force_read, train_n_times=1,
                        path=benchmark[0], file_type=file_type)

main()
