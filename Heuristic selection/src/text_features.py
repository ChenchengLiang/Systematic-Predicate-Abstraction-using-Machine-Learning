import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import pyltr
import keras
import os
from keras.preprocessing.text import text_to_word_sequence
from keras.preprocessing.text import one_hot
from keras.preprocessing.text import hashing_trick
import glob
import subprocess
from os import popen
import time
from subprocess import Popen, PIPE




def read_program():
    vocab=list()
    vocab_one_hot=list()
    vocab_hash=list()
    filter='\n'
    for file in glob.glob('/root/eclipse-workspace/Ranking/src/C/*.c'):
        print(file)
        f = open(file, "r")
        text=f.read()
        
        print(text)
        
        vocab.append(text_to_word_sequence(text,filters=filter,split=' '))
        print(vocab[-1])
        
        
        words = set(vocab[-1])
        vocab_size = len(words)
        print("vocab_size = ",vocab_size)
        
        #One hot encoding
        print('One-hot encoding:')
        vocab_one_hot.append(one_hot(text,round(vocab_size*1.3),filters=filter))
        print(vocab_one_hot[-1])
        
        #Hash encoding
        print('Hash encoding:')
        vocab_hash.append(hashing_trick(text, round(vocab_size*1.3), hash_function='md5',filters=filter))
        print(vocab_hash[-1])
        
        
        print('--------------------------')



def read_template():


    for file in glob.glob('/root/eclipse-workspace/Ranking/src/annot.c/*.annot.c'):
        print(file)
        f = open(file, "r")
        text=f.read()
        
        #str=" int /*@  predicates{i==1} predicates_tpl{0==0} @*/ i = 1; int /*@  predicates{j==0} @*/ j = 0;"
        template_list=list()
        while(text.find('/*@')!=-1):
            template_list.append(text[text.find('/*@')+5:text.find(' @*/')])
            #print(str[:str.find('@*/')+3])
            temp_end=text.find('@*/')+3
            text = text[:temp_end].replace('/*@','/@@') + text[temp_end:]
            text = text[:temp_end].replace('@*/','@@/') + text[temp_end:]
            #print(str)
            #print ('read template: ',template_list[-1])
        print('template_list: ',template_list)
        
        
        

def main():
    print("Start")
    #path = '/root/eclipse-workspace/Ranking/src/'

    read_program()
    read_template()
    





    

    

if __name__ == '__main__':
    main()