import numpy as np
import os
import shutil,glob
from distutils.dir_util import copy_tree
from Miscellaneous import renameBenchmarkFiles
from extractDataFromEldarica import checkSolvability



def main():
    print("Start")
    timeOut=60
    file="../eldarica-graph-generation/03.c.annot.c"
    abstractionOption="-abstract"
    checkSolvability(timeOut, file, abstractionOption)


    print("Finished")

if __name__ == '__main__':
    main()