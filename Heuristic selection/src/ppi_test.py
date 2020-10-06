import sys
import tensorflow as tf
import tf2_gnn
import os
def main():
    #tf.config.list_physical_devices("GPU")
    #os.environ["CUDA_VISIBLE_DEVICES"] = "-1"
    tf2_gnn.cli.train.run() #'RGCN','PPI','../../ppi'

main()