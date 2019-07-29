import os
import glob
from src.extractHornClauses import extractHornClausesFromMultipleProgram
from src.extractRedundantHints import extractRedundantHintsFromMultipleProgram
from src.extractNegativeTrainData import extractNegativeTrainData

def deleteEmptyHintsFile(path, b):
    for file in sorted(glob.glob(path+'*.hints')):
        fileName = file[:file.find('.hints')]
        hintPath = str(fileName + '.hints')
        parentDirectory=os.path.abspath(os.path.dirname(os.getcwd()))
        print("fileName:", file)
        #if the hint file is empty delete hint file and other files
        f=open(file,"r")
        content=f.read()
        if not content:

            print("delete",fileName+'.hints/horn.negativeHInts/redundantHints')
            os.remove(fileName+'.hints')
            if os.path.isfile(fileName + '.horn'):
                os.remove(fileName + '.horn')
            if os.path.isfile(fileName + '.negativeHints'):
                os.remove(fileName + '.negativeHints')
            if os.path.isfile(fileName + '.redundantHints'):
                os.remove(fileName + '.redundantHints')

        #if there is no hint file delete othr relevant files
        # exists = os.path.isfile(hintPath)
        # if not exists:
        #     os.remove(fileName+'.hints')
        #     os.remove(fileName + '.horn')
        #     os.remove(fileName + '.negativeHints')
        #     os.remove(fileName + '.redundantHints')
        #
        #


    #os.remove("ChangedFile.csv")

def main():
    print("Start")


    filePath = '/home/chencheng/Desktop/benchmarks/'
    abstractionOption = 'abstract:manual'

    benchmarkList = list()
    #benchmarkList.append('svcomp16/locks')
    #benchmarkList.append('svcomp16/loop-acceleration')
    #benchmarkList.append('svcomp16/loop-invgen')
    #benchmarkList.append('svcomp16/loop-lit')
    benchmarkList.append('svcomp16/loop-new')
    benchmarkList.append('svcomp16/loops')
    benchmarkList.append('svcomp16/ntdrivers-simplified')
    #benchmarkList.append('svcomp16/seq-mthreaded')
    #benchmarkList.append('svcomp16/ssh-simplified')
    #benchmarkList.append('svcomp16/systemc')
    #benchmarkList.append('VeriMAP_bench')
    #benchmarkList.append('dillig')
    #benchmarkList.append('llreve')
    for b in benchmarkList:
        extractHornClausesFromMultipleProgram(filePath, b, abstractionOption)
        extractRedundantHintsFromMultipleProgram(filePath, b, abstractionOption)
        print()

    print('------------------------')
    for b in benchmarkList:
        curpath = os.path.abspath(os.curdir)
        parenDir = os.path.abspath(os.path.pardir)
        path = parenDir + '/' + b + '/'
        print(path)
        extractNegativeTrainData(path, b)
        deleteEmptyHintsFile(path, b)

    print("Finished")

if __name__ == '__main__':
    main()