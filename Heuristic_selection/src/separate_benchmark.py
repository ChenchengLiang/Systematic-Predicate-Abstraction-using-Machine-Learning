import os
from utils import run_eldarica_with_shell,run_eldarica_with_shell_pool
import sys
import json
import collections
def main():
    command_input=sys.argv[1]
    if command_input =="merge":
        #merge threads
        benchmark_folds,_=get_exceptions_folder_names()
        benchmark_folds=benchmark_folds+["solvable-file"]
        new_dict={}
        for t in range(0,int(sys.argv[2])+1):
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
        for t in range(0,int(sys.argv[2])+1):
            json_file='../benchmarks/exceptions/benchmark_info_' + "thread_"+str(t) + '.JSON'
            os.remove(json_file)


    else:
        benchmark_name = os.path.join("../benchmarks/", command_input)
        thread_number = 4  # 16
        timeout = 300
        eldarica_parameters = " -moveFile -abstract -noIntervals -generateSimplePredicates"#-onlyInitialPredicates
        # todo: use generateSimplePredicates =  full label
        #todo: not use generateSimplePredicates =  empty label
        #todo: with or without -abstract
        data_fold=["train_data","valid_data","test_data"]
        for fold in data_fold:
            run_eldarica_with_shell_pool(os.path.join(benchmark_name, fold), run_eldarica_with_shell,
                                         eldarica_parameters, timeout=timeout, thread=thread_number)

        # get sovability file logs
        solvability_dict={}
        benchmark_name=os.path.join("../benchmarks/",  command_input)
        file_list = []
        for root, subdirs, files in os.walk(benchmark_name):
            if len(subdirs) == 0:
                file_list.append(files)
        solvable_file_list= [item for files in file_list for item in files]
        solvability_dict["solvable-file"]=solvable_file_list
        folder_name_list,file_list=get_exceptions_folder_names()
        for folder_name,files in zip(folder_name_list,file_list):
            solvability_dict[folder_name]=files

        solvability_dict_with_number={ "number-of-"+k:len(solvability_dict[k]) for k in solvability_dict}
        solvability_dict_with_number.update(solvability_dict)
        with open('../benchmarks/exceptions/benchmark_info_'+command_input+'.JSON', 'w') as f:
            json.dump(solvability_dict_with_number,f,indent=4)



def get_exceptions_folder_names():
    folder_name_list=[]
    file_list=[]
    benchmark_name_excepiton = os.path.join("../benchmarks/", "exceptions")
    for root, subdirs, files in os.walk(benchmark_name_excepiton):
        if len(subdirs) == 0:
            folder_name_list.append(root[root.rfind("/") + 1:])
            file_list.append(files)
    return folder_name_list,file_list



main()


