import os
import sys
import glob
from utils_1 import read_solvability,get_file_list
def main():
    benchmarks="Template-selection-non-Liner-dateset-change-name"#sys.argv[1]
    fold="train_data"
    file_type="smt2"#"c"
    file_list= [f[:-len(".zip")] for f in get_file_list(benchmarks,fold,file_type)]
    splitClauses = "-splitClauses:1"
    read_solvability(file_list, "../benchmarks/"+benchmarks, splitClauses)
main()