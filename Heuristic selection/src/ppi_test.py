import sys
import tensorflow as tf
import tf2_gnn
import os
def main():
    #tf.config.list_physical_devices("GPU")
    os.environ["CUDA_VISIBLE_DEVICES"] = "-1"
    #--data-params-override '{"max_nodes_per_batch": 5000}'
    tf2_gnn.cli.train.run() #'RGCN','PPI','../../ppi'

main()