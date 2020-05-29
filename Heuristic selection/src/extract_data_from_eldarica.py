import shutil
import glob
from multiprocessing import Pool
from extractDataFromEldarica import checkSolvability
import glob
import os
from multiprocessing import Pool
from functools import partial

def check_solvability(timeOut,abstractionOption,benchmark_solvability_folders,file):

    solvability, runtime, flag = checkSolvability(timeOut, file, abstractionOption)
    print("solvability", solvability)

    if (solvability == True):
        shutil.copy2(file, benchmark_solvability_folders["solvable"])
        if (flag == "sat"):
            shutil.copy2(file, benchmark_solvability_folders["sat"])
        if (flag == "SAFE"):
            shutil.copy2(file, benchmark_solvability_folders["sat"])
        if (flag == "unsat"):
            shutil.copy2(file, benchmark_solvability_folders["unsat"])
        if (flag == "UNSAFE"):
            shutil.copy2(file, benchmark_solvability_folders["unsat"])
    else:
        if (flag == "error"):
            shutil.copy2(file, benchmark_solvability_folders["syntaxError"])
        if (flag == "unknown"):
            shutil.copy2(file, benchmark_solvability_folders["unknown"])
        if (flag == "timeout"):
            shutil.copy2(file, benchmark_solvability_folders["unsolvable"])

def check_solvability_pool(rootdir="../benchmarks/LIA-lin/"):
    timeOut, abstractionOption = 60,"-abstract"
    for root, subdirs, files in os.walk(rootdir):
        if os.path.exists(root + "/solvability"):
            shutil.rmtree(root + "/solvability")
    for root, subdirs, files in os.walk(rootdir):
        print(root,subdirs,files)
        if len(subdirs)==0:
            file_list=[]
            for file in files:
                file_list.append(root+"/"+file)

            benchmark_solvability_folders={"sat":root + "/solvability/sat","unsat":root + "/solvability/unsat",
                                           "solvable":root + "/solvability/solvable","unsolvable":root + "/solvability/unsolvable",
                                           "syntaxError":root + "/solvability/syntaxError","unknown":root + "/solvability/unknown"}

            if not os.path.exists(root+"/solvability"):
                for fol in benchmark_solvability_folders:
                    if not os.path.exists(benchmark_solvability_folders[fol]):
                        os.makedirs(benchmark_solvability_folders[fol])


            partialExtractTemplatesFromOneProgram = partial(check_solvability,
                                                            timeOut,abstractionOption,benchmark_solvability_folders)
            pool = Pool(processes=8)
            pool.map(partialExtractTemplatesFromOneProgram, file_list)

def extrac_data():
    pass

def main():
    check_solvability_pool()


main()
