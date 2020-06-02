import os
import shutil,glob
from distutils.dir_util import copy_tree
from Miscellaneous import renameBenchmarkFiles
from extractDataFromEldarica import checkSolvability
from loadData import readHornClausesAndHints_resplitTrainAndVerifyData
from datetime import datetime
import numpy as np
import random
from multiprocessing import Pool
import subprocess
from subprocess import check_output
import time


def sleep(seconds=1):
    time.sleep(seconds)
    print("wait for",seconds)

def main():

    #subprocess.call(sleep(5),timeout=3)
    check_output(sleep(5),timeout=3)
if __name__ == '__main__':
    main()