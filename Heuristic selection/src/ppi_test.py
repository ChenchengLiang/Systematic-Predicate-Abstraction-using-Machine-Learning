import sys
import tensorflow as tf
import tf2_gnn

def main():
    # tf.config.list_physical_devices("GPU")
    #tf2_gnn.cli.train.run() #'RGCN','PPI','../../ppi'


    #Create some tensors
    a = tf.constant([[1.0, 2.0, 3.0], [4.0, 5.0, 6.0]])
    b = tf.constant([[1.0, 2.0], [3.0, 4.0], [5.0, 6.0]])
    c = tf.matmul(a, b)

    print(c)

    # from tensorflow.python.client import device_lib
    # print(device_lib.list_local_devices())
    # print("Num GPUs Available: ", len(tf.config.experimental.list_physical_devices('GPU')))


main()