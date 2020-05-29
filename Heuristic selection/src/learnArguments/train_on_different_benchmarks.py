import glob
import random
from shutil import copyfile,copy,rmtree
import os
import numpy as np
from learnArguments.horn_dataset import train_on_graphs

def separate_dataset_to_train_valid_test_files(source,train=120,valid=11,test=30):

    temp_shuffle=[]
    for g,a,in zip(sorted(glob.glob(source + '*' + '.gv')),sorted(glob.glob(source + '*' + '.arguments'))):
        temp_shuffle.append([g,a])
    random.shuffle(temp_shuffle)
    gv_files=[]
    arguments_files=[]
    for t in temp_shuffle:
        gv_files.append(t[0])
        arguments_files.append(t[1])

    gv_fold = [gv_files[:train],gv_files[train:train+valid],gv_files[train+valid:]]
    argument_fold = [arguments_files[:train], arguments_files[train:train + valid], arguments_files[train + valid:]]

    for gvs,arguments,fold in zip(gv_fold,argument_fold,["train","valid","test"]):
        rmtree("../../"+fold+"Data")
        os.mkdir("../../"+fold+"Data")
        for gv,argument in zip(gvs,arguments):
            copy(gv, "../../"+fold+"Data/")
            copy(argument, "../../"+fold+"Data/")




def main():
    data_fold_list=[]
    data_fold_list.append(["../../trainData-chc-comp-predicates/", 120, 11, 30])
    data_fold_list.append(["../../trainData-chc-comp-templates/", 25, 5, 5])
    data_fold_list.append(["../../trainData-sv-comp-c-predicates/", 70, 10, 26])
    data_fold_list.append(["../../trainData-sv-comp-c-templates/", 25, 5, 8])
    data_fold_list.append(["../../trainData-sv-comp-smt-predicates/", 100, 20, 20])
    data_fold_list.append(["../../trainData-sv-comp-smt-templates/", 25, 5, 8])
    data_fold_list.append(["../../trainData-chc-comp-predicates+sv-comp-smt-predicates/", 220, 30, 51])
    data_fold_list.append(["../../trainData-chc-comp-predicates+sv-comp-smt-predicates+sv-comp-c-predicates/", 330, 30, 57])


    for data_fold in data_fold_list:
        separate_dataset_to_train_valid_test_files(source=data_fold[0],train=data_fold[1],valid=data_fold[2],test=data_fold[3])
        train_on_graphs(benchmark=data_fold[0][6:-1])

    #train_on_graphs()


main()