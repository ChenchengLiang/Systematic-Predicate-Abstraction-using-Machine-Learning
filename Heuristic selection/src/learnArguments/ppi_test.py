import sys
import tensorflow as tf
import tf2_gnn

def main():
    print()
    tf2_gnn.cli.train.run() #'RGCN','PPI','../../ppi'


main()