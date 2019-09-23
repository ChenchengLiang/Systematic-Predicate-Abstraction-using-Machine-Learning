import numpy as np
import os
import shutil,glob
from distutils.dir_util import copy_tree
def main():
    print("Start")

    for txt_file in glob.iglob("../trainData/*.initialHints"):
        shutil.copy2(txt_file, "../predictedHints/")
if __name__ == '__main__':
    main()