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

    # logging.basicConfig(filename='log/memory-separating-solvability.log', filemode='w',
    #                     format='%(name)s - %(levelname)s - %(message)s', level=logging.INFO)
    for txt_file in glob.iglob(benchamrk+"/*."+type):
        #logging.info(str(count)+":"+str(txt_file))
        process = psutil.Process(os.getpid())
        # print("Memory usage:", process.memory_info().rss / (1024 * 1024))  # in bytes/1024*1024=MB
        # logging.info("Memory usage:"+ str(process.memory_info().rss / (1024 * 1024))+" MB")
        #print(txt_file)
        abstractionOption="abstract:manual"
        run_normal = "../eldarica-graph-generation/./eld " \
                       +txt_file
        solvability,runtime=checkSolvability(timeOut,txt_file,absOption)
        benchmark_solvable="../benchmarks/"+benchmarkName+"-solvability/solvable"
        benchmark_unsolvable = "../benchmarks/"+benchmarkName+"-solvability/unsolvable"
        print("solvability",solvability)
        if(solvability==True):
            shutil.copy2(txt_file, benchmark_solvable)
            print()
        else:
            shutil.copy2(txt_file, benchmark_unsolvable)
            print()
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
        print("The first argument is benchmark name")
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