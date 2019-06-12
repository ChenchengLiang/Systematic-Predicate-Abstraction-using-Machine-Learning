import os
from extractNegativeTrainData import getRedundantHints
import numpy as np
def main():
    print("Start")
    # curpath = os.path.abspath(os.curdir)
    # path = curpath + '/' + 'VeriMAP_bench' + '/'
    # fileHints=path+'WHALE-ddd3err_VeriMAP_false.c.annot.c.hints'
    # print(fileHints)
    # fileRedundantHints=path+'WHALE-ddd3err_VeriMAP_false.c.annot.c.redundantHints'
    # print(fileRedundantHints)
    #
    # f = open(fileHints, "r")
    # hintsText = f.read()
    # f.close()
    # hintsText = hintsText.replace('inv_', '')
    # print(hintsText)
    #
    # f = open(fileRedundantHints, "r")
    # redundantHintsText = f.read()
    # f.close()
    #
    # print(redundantHintsText)
    # redundantHintsText = getRedundantHints(hintsText, redundantHintsText)
    # #fileName = fileHints[fileHints.find(benchmark) + len(benchmark) + 1:]
    # print(redundantHintsText)

    # path='/home/lcc/Desktop/benchmarks/dillig/'
    # file='02.c.annot.c'
    # command='/home/lcc/Downloads/eldarica-master-unmodified/ ./eld '+path+file+' -abstract:manual -log:1'
    # process = os.popen(command)
    # out = process.read()
    #
    # print(out)


    a=[[1],[2]]
    print(np.array(a).shape)
    print(a)

if __name__ == '__main__':
    main()