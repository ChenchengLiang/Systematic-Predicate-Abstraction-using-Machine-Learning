
from horn_dataset import train_on_graphs


def main():
    benchmark_list = []
    benchmark_list.append(["../benchmarks/trainData-chc-comp-predicates/", 120, 11, 30])
    # benchmark_list.append(["../benchmarks/trainData-sv-comp-c-predicates/", 70, 10, 26])
    #benchmark_list.append(["../benchmarks/trainData-sv-comp-smt-predicates/", 100, 20, 20])
    # benchmark_list.append(["../benchmarks/trainData-chc-comp-predicates+sv-comp-smt-predicates/", 220, 30, 51])
    # benchmark_list.append(["../benchmarks/trainData-chc-comp-predicates+sv-comp-smt-predicates+sv-comp-c-predicates/", 330, 30, 57])
    # benchmark_list.append(["../benchmarks/trainData-sv-comp-smt-templates/", 25, 8, 5])
    # benchmark_list.append(["../benchmarks/trainData-sv-comp-c-templates/", 25, 5, 8])
    # benchmark_list.append(["../benchmarks/trainData-chc-comp-templates/", 25, 5, 5])
    #benchmark_list.append(["../benchmarks/temp/", int(413*0.6), int(413*0.2), int(413*0.2)])
    #benchmark_list.append(["../benchmarks/LIA-lin-trainData-intervals-datafold/", int(413 * 0.6), int(413 * 0.2), int(413 * 0.2)])
    #benchmark_list.append(["../benchmarks/LIA-nonlin-trainData-noIntevals-datafold/", int(413 * 0.6), int(413 * 0.2), int(413 * 0.2)])
    #benchmark_list.append(["../benchmarks/temp/", 0.6, 0.2, 0.2])
    # benchmark_list.append(["../benchmarks/one_graph_debug/", int(1), int(1), int(1)])

    force_read = False
    split_flag = True
    form_label = True
    file_type = ".smt2"
    buckets = 2
    #label = "occurrence"
    #label = "rank"
    label = "argument_identify"
    #label = "argument_identify_no_batchs"
    #label = "control_location_identify"

    for benchmark in benchmark_list:
        train_on_graphs(benchmark_name=benchmark[0][len("../benchmarks/"):-1], label=label, force_read=force_read, train_n_times=1,
                        path=benchmark[0], file_type=file_type, split_flag=split_flag, buckets=buckets,
                        form_label=form_label)
    # train_on_graphs()


main()
