import os
import glob
from subprocess import Popen, PIPE
import subprocess

def verify_multiple_program_catch_hints(filePath, benchmark, abstractionOption, Timeout, log=' -log:1 '):
    programCount = 0
    emptyHintsList=list()
    nonEmptyHintsList = list()
    for file in glob.glob(filePath + benchmark + '/*.annot.c.hints'):
        print(file)
        fileName = file[file.find(benchmark) + len(benchmark) + 1:]
        fileName = fileName[:fileName.find('.hints')]
        f=open(file)
        line=f.read()
        if(not line):
            commandOff = "/home/lcc/Downloads/eldarica-master-unmodified/./eld" + " -abstract:off " + log
            run = commandOff + '/home/lcc/Desktop/benchmarks/'+ benchmark + '/' + fileName
            print("command:", run)

            ping = Popen(
                run, stdout=subprocess.PIPE, shell=True)

            out = ping.communicate()
            print(out[0])
            emptyHintsList.append(fileName)
        else:
            nonEmptyHintsList.append(fileName)


        print('----------------------------', 'Program count: ', programCount, '--------------------------')

        programCount = programCount + 1
    print("emptyHintsList:",emptyHintsList)
    print(len(emptyHintsList),"prgrams do not need hints")
    print("nonEmptyHintsList:", nonEmptyHintsList)
    print(len(nonEmptyHintsList), "prgrams need hints")
    return emptyHintsList

def main():
    print("Start")

    # benchmark='VeriMAP_bench'
    # benchmark='dillig'
    # benchmark='llreve'
    curpath = os.path.abspath(os.curdir)
    filePath = curpath + '/'
    abstractionOption = 'abstract:manual'
    timeout = 10

    # verify_multiple_program_catch_hints(filePath,benchmark,abstractionOption,timeout,log='-log:1')

    benchmarkList = list()
    #benchmarkList.append('dillig')
    #benchmarkList.append('svcomp16/locks')
    #benchmarkList.append('svcomp16/loop-acceleration')
    #     benchmarkList.append('svcomp16/loop-invgen')
    #     benchmarkList.append('svcomp16/loop-lit')
    #     benchmarkList.append('svcomp16/loop-new')
    #     benchmarkList.append('svcomp16/loops')
    #     benchmarkList.append('svcomp16/ntdrivers-simplified')
    #     benchmarkList.append('svcomp16/seq-mthreaded')
    #     benchmarkList.append('svcomp16/ssh-simplified')
    #     benchmarkList.append('svcomp16/systemc')
    #     benchmarkList.append('VeriMAP_bench')
    #     benchmarkList.append('dillig')
    benchmarkList.append('llreve')
    for b in benchmarkList:
        verify_multiple_program_catch_hints(filePath, b, abstractionOption, timeout, log=' ')

    # benchmark='svcomp16/locks'
    # benchmark='svcomp16/locks'
    # benchmark='svcomp16/loop-acceleration'
    # benchmark='svcomp16/loop-invgen'
    # benchmark='svcomp16/loop-lit'
    # benchmark='svcomp16/loop-new'
    # benchmark='svcomp16/loops'
    # benchmark='svcomp16/ntdrivers-simplified'
    # benchmark='svcomp16/seq-mthreaded'
    # benchmark='svcomp16/ssh-simplified'
    # benchmark='svcomp16/systemc'

    # fileName='02.c.annot.c'
    # verify_one_program_catch_hints(filePath,benchmark,fileName,'abstract:manual',timeout)


if __name__ == '__main__':
    main()