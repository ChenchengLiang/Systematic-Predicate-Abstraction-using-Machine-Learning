import numpy as np
import tensorflow as tf


def get_classification_accuracy(true_Y,rounded_predicted_Y_loaded_model,label,predicted_Y_loaded_model_from_memory,predicted_Y_loaded_model):
    if label=="node_multiclass":
        true_Y=np.argmax(true_Y, axis=1)
        rounded_predicted_Y_loaded_model = np.argmax(rounded_predicted_Y_loaded_model, axis=1)
    if len(true_Y)<100:
        print("true_Y", true_Y)
        print("rounded_predicted_Y_loaded_model", rounded_predicted_Y_loaded_model)
        # print("predicted_Y_loaded_model_from_memory",predicted_Y_loaded_model_from_memory)
        # print("predicted_Y_loaded_model",predicted_Y_loaded_model)
    else:
        print("true_Y[:20]", true_Y[:20])
        print("rounded_predicted_Y_loaded_model[:20]", rounded_predicted_Y_loaded_model[:20])
    num_correct = tf.reduce_sum(tf.cast(tf.math.equal(true_Y, rounded_predicted_Y_loaded_model), tf.float32))
    accuracy = num_correct / len(rounded_predicted_Y_loaded_model)
    print("accuracy", accuracy)
    return accuracy