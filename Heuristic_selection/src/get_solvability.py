import os
import sys
import glob
from utils_1 import read_solvability
def main():
    benchmarks="Template-selection-non-Liner-dateset-debug-1"
    fold="train_data"
    benchmark_fold="../benchmarks/"+benchmarks+"/"+fold
    file_list=[]
    for f in glob.glob(benchmark_fold+"/*.smt2.zip"):
        if "normalized" not in f and "simplified" not in f:
            file_list.append(f[:-len(".zip")])
    splitClauses = "-splitClauses:1"
    read_solvability(file_list, "../benchmarks/"+benchmarks, splitClauses)
main()