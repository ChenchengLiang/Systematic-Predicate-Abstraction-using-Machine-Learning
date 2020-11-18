#import pandas as pd
import numpy as np
#import matplotlib.pyplot as plt
#import pyltr
#import keras
import os
from keras.preprocessing.text import text_to_word_sequence
from keras.preprocessing.text import one_hot
from keras.preprocessing.text import hashing_trick
import glob
import subprocess
from os import popen
import time
from subprocess import Popen, PIPE


        
def check_verified_result(result):
    if(result==['SAFE\n'] ):
        print("SAFE")
    if(result==['UNSAFE\n']):
        print("UNSAFE")
    if(result==['timeout\n']):
        print("timeout")        

def verify_programs():
    command="/home/chencheng/Downloads/eldarica-bin-nightly/binary-dist/./eld -t:10"
    argument=" /home/chencheng/Desktop/benchmarks/dillig/13.c.annot.c"
    #result=subprocess.call(path,"cc.sh")
    #result=subprocess.check_output(command+argument)
    
    #result=os.system(command + argument)
    #print(result)
    '''
    #call ./eld once
    eld=popen(command + argument)
    result=eld.readlines()
    print(result)
    
    if(result==['SAFE\n'] or result==['UNSAFE\n'] ):
        print("True")
    '''   
    benchmark='dillig'
    benchmark='llreve'
    for file in glob.glob('/home/chencheng/Desktop/benchmarks/' + benchmark + '/*.annot.c'):
        print(file)
        start_time = time.time()
        eld=popen(command + ' ' + file)
        elapsed_time = time.time() - start_time
        print('Time consumed: ', elapsed_time)
        result=eld.readlines()
        print(result)
        check_verified_result(result)
        #f = open(file, "r")
        #text=f.read()
            
            
def verify_multiple_program():
    #benchmark='dillig'
    benchmark='llreve'
    
    program_count=0
    Timeout=10
    print("Timeout = ", Timeout)
    for file in glob.glob('/home/chencheng/Desktop/benchmarks/' + benchmark + '/*.annot.c'):
        #print(file)
        Time,abstract=verify_one_program_with_different_abstract(file, Timeout)
        verify_one_program_catch_hints(file,abstract,Timeout)
        print('----------------------------','Program count: ',program_count,'--------------------------')

        program_count=program_count+1
        
def verify_one_program_with_one_abstract(file_path,option,Timeout):
    
    command="/home/chencheng/Downloads/eldarica-bin-nightly/binary-dist/./eld -" + option + " -t:"+ str(Timeout)
    print(option)
    start_time = time.time()
    eld=popen(command + ' ' + file_path)
    result=eld.readlines()
    check_verified_result(result)
    elapsed_time = time.time() - start_time
    print('Time consumed: ', elapsed_time)  
    return elapsed_time  

def verify_one_program_with_different_abstract(file_path,Timeout):
    time=Timeout+10
    abstract=''
    time_list=np.array([])
    print(file_path)
    time_temp = verify_one_program_with_one_abstract(file_path,'abstract:off',Timeout)
    time_list=np.append(time_list,time_temp)
    if(time_temp<time):
        time=time_temp
        abstract='abstract:off'
    time_temp = verify_one_program_with_one_abstract(file_path,'abstract:relEqs',Timeout)
    time_list=np.append(time_list,time_temp)
    if(time_temp<time):
        time=time_temp
        abstract='abstract:relEqs'
    time_temp = verify_one_program_with_one_abstract(file_path,'abstract:term',Timeout)
    time_list=np.append(time_list,time_temp)
    if(time_temp<time):
        time=time_temp
        abstract='abstract:term'
    time_temp = verify_one_program_with_one_abstract(file_path,'abstract:oct',Timeout)
    time_list=np.append(time_list,time_temp)
    if(time_temp<time):
        time=time_temp
        abstract='abstract:oct'
    time_temp = verify_one_program_with_one_abstract(file_path,'abstract:relIneqs',Timeout)
    time_list=np.append(time_list,time_temp)
    if(time_temp<time):
        time=time_temp
        abstract='abstract:relIneqs'
    time_temp = verify_one_program_with_one_abstract(file_path,'abstract:manual',Timeout)
    time_list=np.append(time_list,time_temp)
    if(time_temp<time):
        time=time_temp
        abstract='abstract:manual'
    print('time_list: ',time_list) 
    normed_time_list = time_list / np.linalg.norm(time_list) 
    print('normed_time_list: ',normed_time_list) 
    score= 1 - normed_time_list
    print('score: ',score)
    print(abstract, 'with least time comsumption:', time)
    return time,abstract
    
def verify_one_program_catch_hints(file_path,option,Timeout):
    command="/home/chencheng/Downloads/eldarica-bin-nightly/binary-dist/./eld -p -" + option + " -t:"+ str(Timeout)
    print(file_path)
    print(option)
    start_time = time.time()
    #eld=subprocess.Popen('./cc.sh')
    eld=subprocess.Popen("binary-dist/./eld -p -" + option + " -t:"+str(Timeout)+" "+ file_path , shell=True,stdout=subprocess.PIPE)
    print('------')
    #stdout = eld.communicate()
    count=0
    flag_1=0
    flag_2=0
    while(True):
        line = eld.stdout.readline()
        line=line.decode("utf-8") .rstrip("\n")

        #print(line.find('simplification'))
        if(line.find('simplification')!=-1):
            flag_1=1
        
        if(flag_1==1 and line.find('Verification')!=-1):
            flag_2=1
        
        if(flag_1==1 and flag_2==1):
            print(line)
        
        count=count+1
        if(flag_1==1 and flag_2==1 and line==''):
            break

    
    #out = subprocess.check_output(["binary-dist/./eld -p -abstract:manual -t:10 /home/chencheng/Desktop/benchmarks/llreve/loop_merged_safe.c.annot.c"],shell=True)
    #print(out)
    
    #eld=popen(command + ' ' + argument)
    #result=eld.readlines()
    #check_verified_result(result)

    elapsed_time = time.time() - start_time
    print('Time consumed: ', elapsed_time)  
    
    #print(eld.readlines())
    
        

def main():
    print("Start")
    #path = '/root/eclipse-workspace/Ranking/src/'

    #read_program()
    #read_template()
    
    #verify_one_program('/home/chencheng/Desktop/benchmarks/llreve/break_merged_safe.c.annot.c')
    verify_multiple_program()
    #verify_one_program_catch_hints('/home/chencheng/Desktop/benchmarks/llreve/loop_merged_safe.c.annot.c','abstract:manual',10)




    

    

if __name__ == '__main__':
    main()