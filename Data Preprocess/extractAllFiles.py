import os
import glob
from extractHornClauses import extractHornClausesFromMultipleProgram
from extractRedundantHints import extractRedundantHintsFromMultipleProgram
from extractNegativeTrainData import extractNegativeTrainData

def deleteEmptyHintsFile(path, b):
    for file in sorted(glob.glob(path+'*.hints')):

        f=open(file,"r")
        content=f.read()
        if not content:
            fileName=file[:file.find('.hints')]
            print("delete",fileName,'.hints/horn.negativeHInts/redundantHints')
            os.remove(fileName+'.hints')
            os.remove(fileName + '.horn')
            os.remove(fileName + '.negativeHints')
            os.remove(fileName + '.redundantHints')


    #os.remove("ChangedFile.csv")

def main():
    print("Start")


    filePath = '/home/lcc/Desktop/benchmarks/'
    abstractionOption = 'abstract:manual'

    benchmarkList = list()
    #benchmarkList.append('dillig')
    #benchmarkList.append('svcomp16/locks')
    #benchmarkList.append('svcomp16/loop-acceleration')
    #     benchmarkList.append('svcomp16/loop-invgen')
    #benchmarkList.append('svcomp16/loop-lit')
    #benchmarkList.append('svcomp16/loop-new')
    #     benchmarkList.append('svcomp16/loops')
    benchmarkList.append('svcomp16/ntdrivers-simplified')
    #     benchmarkList.append('svcomp16/seq-mthreaded')
    #     benchmarkList.append('svcomp16/ssh-simplified')
    #     benchmarkList.append('svcomp16/systemc')
    #benchmarkList.append('VeriMAP_bench')
    #     benchmarkList.append('dillig')
    #benchmarkList.append('llreve')
    for b in benchmarkList:
        extractHornClausesFromMultipleProgram(filePath, b, abstractionOption)
        extractRedundantHintsFromMultipleProgram(filePath, b, abstractionOption)


    for b in benchmarkList:
        curpath = os.path.abspath(os.curdir)
        path = curpath + '/' + b + '/'
        print(path)
        extractNegativeTrainData(path, b)
        deleteEmptyHintsFile(path, b)



if __name__ == '__main__':
    main()