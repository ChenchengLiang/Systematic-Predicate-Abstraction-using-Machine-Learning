import os
import sys
import glob
from utils_1 import read_solvability,get_file_list
def main():
    benchmarks="100+benchmarks-linear-solvability-check-uppmax"#sys.argv[1]
    fold="raw"
    file_type="smt2"#"c"
    file_list= [f[:-len(".zip")] for f in get_file_list(benchmarks,fold,file_type)]
    read_solvability(file_list, "../benchmarks/"+benchmarks,fold)
main()