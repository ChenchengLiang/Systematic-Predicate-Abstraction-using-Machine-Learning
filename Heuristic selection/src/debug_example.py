from horn_dataset import train_on_graphs


def main():
    benchmark_list = []
    benchmark_list.append(["../benchmarks/debug-examples/", None, None, None])
    force_read = True
    file_type = ".smt2"
    #label = "occurrence"
    #label = "rank"
    label = "argument_identify"
    #label = "argument_identify_no_batchs"
    #label = "control_location_identify"

    for benchmark in benchmark_list:
        train_on_graphs(benchmark_name=benchmark[0][len("../benchmarks/"):-1], label=label, force_read=force_read, train_n_times=1,
                        path=benchmark[0], file_type=file_type)

main()
