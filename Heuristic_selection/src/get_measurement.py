import sys
from utils_1 import measurement_control_by_python
import os

def main():
    #benchmark_fold = "temp-debug"  # sys.argv[1]
    benchmark_fold=["temp-debug-"+str(x)+"-fold" for x in range(5)]
    for fold in benchmark_fold:
        measurement_control_by_python(fold)

main()