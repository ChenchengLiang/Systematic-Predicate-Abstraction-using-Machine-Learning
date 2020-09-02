import os
from datetime import datetime
import numpy as np
import random
from multiprocessing import Pool
import subprocess
from subprocess import check_output
import time
import itertools
import scipy.stats as ss
import signal
import matplotlib.pyplot as plt
import tensorflow as tf
import re
import glob
def sleep(seconds=1):
    time.sleep(seconds)
    print("wait for",seconds)

def pairwise_ranking_label_example(x=[0,1,4,5,2,7],n=2):
    c_list=list(itertools.combinations(enumerate(x), 2))
    c_list=list(set(c_list))
    print(len(c_list))
    #print(c_list)
    c_label=[]
    pairs=[]
    rank_info=[]
    for pair in c_list:
        pairs.append((pair[0][1],pair[1][1]))
        if pair[0][1]<pair[1][1]:
            c_label.append(1)
            rank_info.append("A"+ str(pair[0][0]) +"<"+"A"+ str(pair[1][0]))
        else:
            c_label.append(0)
            rank_info.append("A" + str(pair[1][0]) + "<" + "A" + str(pair[0][0]))
    print("occurrence",x)
    print("derived pairs", pairs)
    print("derived labels",c_label)
    print("derived relations",rank_info)

def occurance_to_rank_examples(x=[0,1,1,1,1,0,5]):
    print("occurence",x)
    print("dense rank",ss.rankdata(x,method="dense")) #'average', 'min', 'max', 'dense', 'ordinal'
    print("average rank",ss.rankdata(x, method="average"))  # 'average', 'min', 'max', 'dense', 'ordinal'
    print("min rank",ss.rankdata(x, method="min"))  # 'average', 'min', 'max', 'dense', 'ordinal'
    print("max rank",ss.rankdata(x, method="max"))  # 'average', 'min', 'max', 'dense', 'ordinal'
    print("ordinal rank",ss.rankdata(x, method="ordinal"))  # 'average', 'min', 'max', 'dense', 'ordinal'

def pool_kill_popen_test(to):
    try:
        x = subprocess.Popen(["../venv/bin/python3", "archived/sleep.py"])
        x.wait(timeout=to)
        print(x.pid)
    except:
        print(x.pid)
        os.kill(x.pid, signal.SIGKILL)


def main():
    #pairwise_ranking_label_example(x,2)

    #occurance_to_rank_examples()

    # parameterList=[10,15,20]
    # pool = Pool(processes=8)
    # pool.map(pool_kill_popen_test, parameterList)
    # x=[]
    # np.min(x)
    # x=tf.math.equal([1,1], tf.math.round([0.3,0.7]))
    # x=np.array(x)
    #
    # x = [int(val) for val in x]
    # print(x)
    # x=[0,1]
    # print(np.concatenate(x))
    # first_layer_name= re.sub(r'(?<!^)(?=[A-Z])', '_', "InvariantNodeIdentifyTask").lower()
    # print(first_layer_name)
    #filePath="../benchmarks/LIA-lin/hopv/lia/termination/Ackermann00_000.smt2"
    # filePath="../benchmarks/sv-comp-c/05.c-1.smt2"
    # eld = subprocess.Popen(["../eldarica-graph-generation/eld", \
    #                         filePath, "-getHornGraph"], stdout=subprocess.DEVNULL, shell=False)
    # eld.wait(timeout=60)

    # x=sorted(glob.glob("../benchmarks/LIA-lin-extracted-intervals/hopv/lia/mochi/trainData/" + '*' + '.smt2'))
    # print(x)

    json_file="xadasd.smt2.JSON"
    smt2_file=json_file[:json_file.find(".JSON")]
    print(smt2_file)


if __name__ == '__main__':
    main()