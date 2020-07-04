import glob
import random
from shutil import copyfile, copy, rmtree
import os
import numpy as np
from horn_dataset import train_on_graphs


def separate_dataset_to_train_valid_test_files(source, train=120, valid=11, test=30):
    temp_shuffle = []
    for g, a, i, p, n in zip(sorted(glob.glob(source + '*' + '.gv')), sorted(glob.glob(source + '*' + '.arguments')),
                             sorted(glob.glob(source + '*' + '.initialHints')),
                             sorted(glob.glob(source + '*' + '.positiveHints')),
                             sorted(glob.glob(source + '*' + '.negativeHints'))):
        temp_shuffle.append([g, a, i, p, n])
    random.shuffle(temp_shuffle)
    gv_files = []
    arguments_files = []
    initial_hints_files = []
    positive_hints_files = []
    negative_hints_files = []
    for t in temp_shuffle:
        gv_files.append(t[0])
        arguments_files.append(t[1])
        initial_hints_files.append(t[2])
        positive_hints_files.append(t[3])
        negative_hints_files.append(t[4])

    gv_fold = [gv_files[:train], gv_files[train:train + valid], gv_files[train + valid:]]
    argument_fold = [arguments_files[:train], arguments_files[train:train + valid], arguments_files[train + valid:]]
    initial_hints_fold = [initial_hints_files[:train], initial_hints_files[train:train + valid],
                          initial_hints_files[train + valid:]]
    positive_fold = [positive_hints_files[:train], positive_hints_files[train:train + valid],
                     positive_hints_files[train + valid:]]
    negative_fold = [negative_hints_files[:train], negative_hints_files[train:train + valid],
                     negative_hints_files[train + valid:]]
    for gvs, arguments, initial_hints, positive_hints, negative_hints, fold in zip(gv_fold, argument_fold,
                                                                                   initial_hints_fold, positive_fold,
                                                                                   negative_fold,
                                                                                   ["train", "valid", "test"]):
        try:
            rmtree(source + fold + "Data")
            os.mkdir(source + fold + "Data")
        except:
            os.mkdir(source + fold + "Data")
        for gv, argument, initial_hint, positive_hint, negative_hint in zip(gvs, arguments, initial_hints,
                                                                            positive_hints, negative_hints):
            copy(gv, source + fold + "Data/")
            copy(argument, source + fold + "Data/")
            copy(initial_hint, source + fold + "Data/")
            copy(positive_hint, source + fold + "Data/")
            copy(negative_hint, source + fold + "Data/")


def main():
    benchmark_list = []
    #benchmark_list.append(["../benchmarks/trainData-chc-comp-predicates/", 120, 11, 30])
    # benchmark_list.append(["../benchmarks/trainData-sv-comp-c-predicates/", 70, 10, 26])
    #benchmark_list.append(["../benchmarks/trainData-sv-comp-smt-predicates/", 100, 20, 20])
    # benchmark_list.append(["../benchmarks/trainData-chc-comp-predicates+sv-comp-smt-predicates/", 220, 30, 51])
    # benchmark_list.append(["../benchmarks/trainData-chc-comp-predicates+sv-comp-smt-predicates+sv-comp-c-predicates/", 330, 30, 57])
    # benchmark_list.append(["../benchmarks/trainData-sv-comp-smt-templates/", 25, 8, 5])
    # benchmark_list.append(["../benchmarks/trainData-sv-comp-c-templates/", 25, 5, 8])
    # benchmark_list.append(["../benchmarks/trainData-chc-comp-templates/", 25, 5, 5])
    benchmark_list.append(["../benchmarks/LIA-lin-trainData/", int(413*0.6), int(413*0.2), int(413*0.2)])
    #benchmark_list.append(["../benchmarks/LIA-nonlin-trainData/", int(413 * 0.6), int(413 * 0.2), int(413 * 0.2)])
    #benchmark_list.append(["../benchmarks/LIA-lin-trainData-temp/", int(413 * 0.6), int(413 * 0.2), int(413 * 0.2)])
    # benchmark_list.append(["../benchmarks/one_graph_debug/", int(1), int(1), int(1)])

    force_read = False
    split_flag = True
    form_label = True
    file_type = ".smt2"
    buckets = 20
    #label = "occurrence"
    #label = "rank"
    label = "argument_identify"
    #label = "argument_identify_no_batchs"
    #label = "control_location_identify"

    for benchmark in benchmark_list:
        train_on_graphs(benchmark_name=benchmark[0][len("../benchmarks/"):-1], label=label, force_read=force_read, train_n_times=1,
                        path=benchmark[0], file_type=file_type, split_flag=split_flag, buckets=buckets,form_label=form_label)
        # train_on_graphs(benchmark_name=benchmark[0][17:-1], label=label, force_read=force_read, train_n_times=1,path=benchmark[0],file_type=file_type,split_flag=split_flag)

    # train_on_graphs()


main()
