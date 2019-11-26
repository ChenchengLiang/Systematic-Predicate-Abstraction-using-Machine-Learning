import numpy as np
import os
import shutil,glob
from distutils.dir_util import copy_tree
from Miscellaneous import renameBenchmarkFiles
from extractDataFromEldarica import checkSolvability
from loadData import readHornClausesAndHints_resplitTrainAndVerifyData



def main():
    print("Start")
    path="../trainData/"
    readHornClausesAndHints_resplitTrainAndVerifyData(path, \
                                                      dataset='train', discardNegativeData=False, smallTrain=False,
                                                      smallTrainSize=50, \
                                                      trainDataSplitRate=0.8)

    print("Finished")

if __name__ == '__main__':
    main()