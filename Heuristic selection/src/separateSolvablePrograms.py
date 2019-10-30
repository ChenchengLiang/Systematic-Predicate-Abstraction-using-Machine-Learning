import numpy as np
import os,gc
import shutil,glob
from distutils.dir_util import copy_tree
from extractDataFromEldarica import checkSolvability
import psutil
import logging
def separateSolvableAndUnsolvableGroup(benchamrk,absOption):
    count=1
    timeOut=60

    # logging.basicConfig(filename='log/memory-separating-solvability.log', filemode='w',
    #                     format='%(name)s - %(levelname)s - %(message)s', level=logging.INFO)
    for txt_file in glob.iglob(benchamrk):
        #logging.info(str(count)+":"+str(txt_file))
        process = psutil.Process(os.getpid())
        # print("Memory usage:", process.memory_info().rss / (1024 * 1024))  # in bytes/1024*1024=MB
        # logging.info("Memory usage:"+ str(process.memory_info().rss / (1024 * 1024))+" MB")
        #print(txt_file)
        abstractionOption="abstract:manual"
        run_normal = "../eldarica-graph-generation/./eld " \
                       +txt_file
        solvability=checkSolvability(timeOut,run_normal,absOption)
        sv_benchmark_c_solvable="../benchmarks/solvable/"
        sv_benchmark_c_unsolvable = "../benchmarks/unsolvable/"
        if(solvability==True):
            shutil.copy2(txt_file, sv_benchmark_c_solvable)
            print()
        else:
            shutil.copy2(txt_file, sv_benchmark_c_unsolvable)
            print()
        gc.collect()  # clear memory
        count=count+1



def main():
    print("Start")

    # for txt_file in glob.iglob("../trainData/*.initialHints"):
    #     shutil.copy2(txt_file, "../predictedHints/")
    #renameBenchmarkFiles()
    benchmark="locks"
    sv_benchmark_smt2=["../benchmarks/sv-comp-clauses/*/*/*.smt2","-abstract"]
    sv_benchmark_c=["../benchmarks/allInOneFile/*.annot.c","-abstract:manual"]
    chc_benchmark_smt2 = ["../benchmarks/chc-comp19-benchmarks-master/*/*.smt2","-abstract"]
    separateSolvableAndUnsolvableGroup(sv_benchmark_smt2[0],sv_benchmark_smt2[1])

    print("Finished")

if __name__ == '__main__':
    main()