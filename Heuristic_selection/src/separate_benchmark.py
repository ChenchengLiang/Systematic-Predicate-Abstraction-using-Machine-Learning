import os
from utils_1 import run_eldarica_with_shell,run_eldarica_with_shell_pool,get_exceptions_folder_names,get_solvability_log
import sys
import json
import glob
def main():
    command_input=sys.argv[1]
    if command_input =="merge":
        #merge threads
        command_input2 = sys.argv[2]
        benchmark_folds,_=get_exceptions_folder_names()
        benchmark_folds=benchmark_folds+["solvable-file"]
        new_dict={}
        for t in range(0,int(command_input2)+1):
            json_file='../benchmarks/exceptions/benchmark_info_' + "thread_"+str(t) + '.JSON'
            print(json_file)
            with open(json_file) as f:
                loaded_content=json.load(f)
                for fold in benchmark_folds:
                    new_dict[fold]= (lambda : new_dict[fold]+loaded_content[fold] if new_dict.get(fold)!=None else loaded_content[fold])()
                    new_dict[fold]=list(set(new_dict[fold]))

        sorted_dict={}
        for fold in benchmark_folds:
            sorted_dict["number-of-"+fold]=len(new_dict[fold])
        sorted_dict.update(new_dict)
        with open('../benchmarks/exceptions/benchmark_info_merged.JSON', 'w') as f:
            json.dump(sorted_dict,f,indent=4)
        for t in range(0,int(command_input2)+1):
            json_file='../benchmarks/exceptions/benchmark_info_' + "thread_"+str(t) + '.JSON'
            os.remove(json_file)
        #compress files in exceptions
        compress_files_in_exceptions()
    elif command_input=="compress":
        compress_files_in_exceptions()
    else:
        benchmark_name = os.path.join("../benchmarks/", command_input)
        thread_number = 4  # 16
        timeout = 900
        runtime=1
        #eldarica_parameters = " -moveFile -abstract:off -noIntervals -generateSimplePredicates"#-onlyInitialPredicates -generateSimplePredicates
        #eldarica_parameters = " -moveFile -abstract:empty -generateTemplates -readTemplates" #-generateTemplates  -rdm
        #relEqs
        eldarica_parameters = " -moveFile -abstract:relEqs "  # -abstract:term -generateTemplates  -rdm
        data_fold=["train_data","valid_data","test_data"]
        for fold in data_fold:
            run_eldarica_with_shell_pool(os.path.join(benchmark_name, fold), run_eldarica_with_shell, eldarica_parameters,
                                         timeout=timeout, thread=thread_number,runtime=runtime)

        # get sovability file logs
        get_solvability_log(data_fold,command_input)

def compress_files_in_exceptions():
    print("compressing ...")
    folder = ["exceed-max-node", "lia-lin-multiple-predicates-in-body", "no-initial-predicates",
              "no-predicates-selected", "no-simplified-clauses", "other-error", "out-of-memory",
              "shell-timeout", "solvability-timeout", "stack-overflow", "test-timeout", "time-out-exception",
              "unsat","loop-head-empty"]
    benckmarks = ["../benchmarks/exceptions/" + f for f in folder]
    for benchmark in benckmarks:
        from utils import file_compress
        for f in glob.glob("../benchmarks/" + benchmark + "/*"):
            file_compress([f], f + ".zip")
            os.remove(f)



main()


