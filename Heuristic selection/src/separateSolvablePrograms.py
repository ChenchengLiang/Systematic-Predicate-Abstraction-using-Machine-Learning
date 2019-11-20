import numpy as np
import os,gc
import shutil,glob
from distutils.dir_util import copy_tree
from extractDataFromEldarica import checkSolvability
import psutil
import logging
import sys
def separateSolvableAndUnsolvableGroup(benchamrk,absOption,benchmarkName,type):
    count=1
    timeOut=60
    benchmark_sat = "../benchmarks/" + benchmarkName + "-solvability/sat"
    benchmark_unsat = "../benchmarks/" + benchmarkName + "-solvability/unsat"
    benchmark_solvable = "../benchmarks/" + benchmarkName + "-solvability/solvable"
    benchmark_unsolvable = "../benchmarks/" + benchmarkName + "-solvability/unsolvable"
    benchmark_syntaxError = "../benchmarks/" + benchmarkName + "-solvability/syntaxError"
    benchmark_unknown = "../benchmarks/" + benchmarkName + "-solvability/unknown"
    # logging.basicConfig(filename='log/memory-separating-solvability.log', filemode='w',
    #                     format='%(name)s - %(levelname)s - %(message)s', level=logging.INFO)
    for txt_file in glob.iglob(benchamrk+"/*."+type):

        solvability,runtime,flag=checkSolvability(timeOut,txt_file,absOption)

        print("solvability",solvability)
        if(solvability==True):
            shutil.copy2(txt_file, benchmark_solvable)
            if (flag == "sat"):
                shutil.copy2(txt_file, benchmark_sat)
            if (flag == "SAFE"):
                shutil.copy2(txt_file, benchmark_sat)
            if (flag == "unsat" ):
                shutil.copy2(txt_file, benchmark_unsat)
            if (flag=="UNSAFE"):
                shutil.copy2(txt_file, benchmark_unsat)
        else:
            if(flag=="error"):
                shutil.copy2(txt_file, benchmark_syntaxError)
            if (flag == "unknown"):
                shutil.copy2(txt_file, benchmark_unknown)
            if (flag == "timeout"):
                shutil.copy2(txt_file, benchmark_unsolvable)

        gc.collect()  # clear memory
        count=count+1



def main():
    print("Start")
    try:
        # for txt_file in glob.iglob("../trainData/*.initialHints"):
        #     shutil.copy2(txt_file, "../predictedHints/")
        #renameBenchmarkFiles()
        benchamrk = sys.argv[1] #benchmarks
        dir=sys.argv[2] #fileList
    except:
        print("The first argument is benchmark name :sv-comp-clauses,sv-comp-c,or chc-comp")
        print("The second argument is path to files")
        return
    if(benchamrk=="sv-comp-clauses"):
        sv_benchmark_smt2 = [dir, "-abstract", "sv-comp-clauses","smt2"]
        separateSolvableAndUnsolvableGroup(sv_benchmark_smt2[0], sv_benchmark_smt2[1], sv_benchmark_smt2[2],sv_benchmark_smt2[3])
    if(benchamrk=="sv-comp-c"):
        sv_benchmark_c = [dir, "-abstract:manual", "sv-comp-c","annot.c"]
        separateSolvableAndUnsolvableGroup(sv_benchmark_c[0], sv_benchmark_c[1], sv_benchmark_c[2],sv_benchmark_c[3])
    if(benchamrk=="chc-comp"):
        chc_benchmark_smt2 = [dir, "-abstract", "chc-comp","smt2"]
        separateSolvableAndUnsolvableGroup(chc_benchmark_smt2[0], chc_benchmark_smt2[1], chc_benchmark_smt2[2],chc_benchmark_smt2[3])


    print("Finished")

if __name__ == '__main__':
    main()