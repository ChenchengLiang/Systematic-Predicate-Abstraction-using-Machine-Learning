import os
import shutil,glob
from distutils.dir_util import copy_tree
from Miscellaneous import renameBenchmarkFiles
from extractDataFromEldarica import checkSolvability
from loadData import readHornClausesAndHints_resplitTrainAndVerifyData
from datetime import datetime
import numpy as np
import random



def main():
    np.random.seed(1)
    test_list=[1,2,3,4]
    np.random.shuffle(test_list)
    print(test_list)

if __name__ == '__main__':
    main()