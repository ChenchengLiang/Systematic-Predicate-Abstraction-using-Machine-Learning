import os
import glob
import subprocess
from os import popen
import time
from subprocess import Popen, PIPE
from subprocess import STDOUT, check_output
from threading import Timer
import threading
import signal
import time


# from code import args

def check_verified_result(result):
    if (result == ['SAFE\n']):
        print("SAFE")
    if (result == ['UNSAFE\n']):
        print("UNSAFE")
    if (result == ['timeout\n']):
        print("timeout")


def verify_multiple_program_catch_hints(filePath, benchmark, abstractionOption, Timeout, log=' -log:1 '):
    programCount = 0

    for file in glob.glob('/home/chencheng/Desktop/benchmarks/' + benchmark + '/*.annot.c'):
        # print(file)
        fileName = file[file.find(benchmark) + len(benchmark) + 1:]
        verify_one_program_catch_hints(filePath, benchmark, fileName, abstractionOption, Timeout, log)
        print('----------------------------', 'Program count: ', programCount, '--------------------------')

        programCount = programCount + 1
    print()


class ThreadWithReturnValue(threading.Thread):
    # Thread return value control
    def __init__(self, group=None, target=None, name=None,
                 args=(), kwargs={}, Verbose=None):
        threading.Thread.__init__(self, group, target, name, args, kwargs)
        self._return = None

    def run(self):
        print(type(self._target))
        if self._target is not None:
            self._return = self._target(*self._args,
                                        **self._kwargs)

    def join(self, *args):
        threading.Thread.join(self, *args)
        return self._return


def absOff(filePath, benchmark, fileName, log=' -log:1 '):
    # abstract:off thread
    commandOff = "/home/chencheng/Downloads/eldarica-master-unmodified/./eld" + " -abstract:off " + log
    run = commandOff + filePath + benchmark + '/' + fileName
    print("command:", run)

    ping = Popen(
        run, stdout=subprocess.PIPE, shell=True)

    out = ping.communicate()
    print(out[0])

    flag_off = 1

    return flag_off


def absManual(filePath, benchmark, fileName, log=' -log:1 '):
    # abstract:off thread
    commandOff = "/home/chencheng/Downloads/eldarica-master-unmodified/./eld" + " -abstract:manual " + log
    run = commandOff + filePath + benchmark + '/' + fileName
    print("command:", run)

    ping = Popen(run, stdout=PIPE, shell=True)

    out = ping.communicate()
    print(out[0])

    flag_manual = 1

    return flag_manual


def run_with_timeout(command, timeout):
    import time
    import subprocess

    p = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

    while timeout > 0:
        if p.poll() is not None:
            return 1
        time.sleep(0.1)
        timeout -= 0.1
    else:
        try:
            p.kill()
            return 0
        except OSError as e:
            if e.errno != 3:
                raise
    return 1

def timeout_handler(num, stack):
    print("Received SIGALRM")
    print("timeout")
    raise Exception()


def verify_one_program_catch_hints(filePath, benchmark, fileName, abstractionOption, absTimeout, log=' -log:1 '):
    curpath = os.path.abspath(os.curdir)
    filename = curpath + '/' + benchmark + '/' + fileName + ".hints"
    '''
    # Try abstract:off first to see if it needs hints
    print("Try abstract:off. Timeout 60 seconds")
    tOff = ThreadWithReturnValue(target=absOff, args=(filePath, benchmark, fileName, log))
    tOff.start()
    flag_off = tOff.join(60)
    print("flag_off=", flag_off)
    # tOff.kill=True
    # print(tOff.is_alive())

    if (flag_off != 1):
        print("abstract:off timeout")
        f = open(filename, "w+")
        f.write("abstract:off timeout\n")
        f.close()
    else:
        print("abstract:off not timeout, no need for hints")
        f = open(filename, "w+")
        f.write("abstract:off not timeout, no need for hints\n")
        f.close()

    print('------')
    flag_manual = 0
    if (flag_off != 1):
        print("Try abstract:manual. Timeout 60 seconds")
        tManual = ThreadWithReturnValue(target=absManual, args=(filePath, benchmark, fileName, log))
        tManual.start()
        flag_manual = tManual.join(60)
        print("flag_manual=", flag_manual)
        # tManual.kill=True
        # print(tManual.is_alive())
        
        if (flag_manual != 1 and flag_off != 1):
            f = open(filename, "a+")
            f.write("abstract:manual timeout")
            f.close()

    print('------')
    '''


    #try abstract:off
    abstractOffTimeOut=60
    commandManual= "/home/chencheng/Downloads/eldarica-master-unmodified/./eld" + " -abstract:off " + log
    run = commandManual + filePath + benchmark + '/' + fileName
    # flag_manual=run_with_timeout(run,60) #timeout 60 seconds
    # print("flag_manual",flag_manual)
    flag_off=1
    signal.signal(signal.SIGALRM, timeout_handler)
    signal.alarm(abstractOffTimeOut)

    try:
        print("Command:",run)
        start = time.time()
        p = subprocess.Popen(run, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        p.communicate()
        end = time.time()
        print('Time consume:',end - start)
        p.kill()
    except Exception as ex:
        end = time.time()
        print("Cannot be solved within 60 seconds (abstract:off)")
        p.kill()
        flag_off=0
    finally:
        signal.alarm(0)
    abstractOffTimeConsumed=end - start

    #try abstract:manual
    commandManual= "/home/chencheng/Downloads/eldarica-master-unmodified/./eld" + " -abstract:manual " + log
    run = commandManual + filePath + benchmark + '/' + fileName
    # flag_manual=run_with_timeout(run,60) #timeout 60 seconds
    # print("flag_manual",flag_manual)
    flag_manual=0
    signal.signal(signal.SIGALRM, timeout_handler)
    signal.alarm(60)

    try:
        print("Command:",run)
        start = time.time()
        p = subprocess.Popen(run, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        p.communicate()
        end = time.time()
        print('Time consume:', end - start)
        flag_manual=1
        p.kill()
    except Exception as ex:
        end = time.time()
        print("Cannot be solved within 60 seconds (abstract:manual)")
        p.kill()
    finally:
        signal.alarm(0)
    abstractManualTimeConsumed = end - start


    #flag_manual=1
    #flag_off=0
    # run select hints
    if (abstractManualTimeConsumed<abstractOffTimeConsumed and flag_manual==1):
        print("Abstract:off timeout and abstract:manual not timeout or abstractManualTimeConsumed<abstractOffTimeConsumed. \n Try to find optimized hints:")
        command = "/home/chencheng/Desktop/eldarica-master/./eld -" + abstractionOption + " -absTimeout:" + str(
            abstractManualTimeConsumed+1) + log
        # print(filePath)
        # print(abstractionOption, " Timeout",Timeout)

        run = command + filePath + benchmark + '/' + fileName
        print("command:", run)
        eld = subprocess.Popen(run, shell=True, stdout=subprocess.PIPE)
        # stdout = eld.communicate()
        # exit_code = eld.wait()
        # print(stdout)

        flag_1 = 0
        # start_time = time.time()
        # absManualTimeout=60
        f = open(filename, "w+")
        while (True):
            line = eld.stdout.readline()
            line = line.decode("utf-8").rstrip("\n")

            if (flag_1 == 1 and line.find('@@@@!') != -1):
                print("Write to", filename)
                break
            if (flag_1 == 1):
                print(line)
                f.write(line + "\n")

            if (line.find('!@@@@') != -1):
                flag_1 = 1
        #             elapsed_time = time.time() - start_time
        #             if(elapsed_time==absManualTimeout):
        #                 f.write("abstract:manual timeout")
        #                 break
        f.close()
    else:
        f = open(filename, "w+")
        print("Write empty to", filename)
        f.close()


def main():
    print("Start")

    # benchmark='VeriMAP_bench'
    # benchmark='dillig'
    # benchmark='llreve'
    filePath = '/home/chencheng/Desktop/benchmarks/'
    abstractionOption = 'abstract:manual'
    timeout = 10

    # verify_multiple_program_catch_hints(filePath,benchmark,abstractionOption,timeout,log='-log:1')

    benchmarkList = list()
    #benchmarkList.append('dillig') #extract finished
    #benchmarkList.append('svcomp16/locks') #extract finished
    #benchmarkList.append('svcomp16/loop-acceleration') #extract finished
    #benchmarkList.append('svcomp16/loop-invgen') #extract finished with exception
    #benchmarkList.append('svcomp16/loop-lit')
    #benchmarkList.append('svcomp16/loop-new')
    #benchmarkList.append('svcomp16/loops')
    #benchmarkList.append('svcomp16/ntdrivers-simplified')
    #benchmarkList.append('svcomp16/seq-mthreaded')
    #benchmarkList.append('svcomp16/ssh-simplified')
    benchmarkList.append('svcomp16/systemc')
    #benchmarkList.append('VeriMAP_bench') #extract finished
    #     benchmarkList.append('dillig')
    #benchmarkList.append('llreve') #extract finished
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