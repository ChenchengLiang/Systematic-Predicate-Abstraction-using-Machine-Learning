from typing import Dict,Any
import os
import tensorflow as tf
from numba import cuda
import tf2_gnn
from tf2_gnn.data import DataFold, HornGraphDataset
from tf2_gnn.cli_utils.training_utils import train, log_line, make_run_id
from tf2_gnn.models import  InvariantNodeIdentifyTask
from utils import plot_confusion_matrix,get_recall_and_precision,plot_ROC,assemble_name,my_round_fun
import numpy as np
import matplotlib.patches as mpatches
import matplotlib.pyplot as plt

""" debug for zigzag behaviour when doing approximation after unsorted_segment_sum()
This will read train, valid, and test data on tree leaf node identification task on one graph:
tokenized_node_label_ids = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
adjacency_lists = [np.array([[0, 1], [0, 2], [1, 3], [1, 4], [1, 5], [4, 7], [4, 8], [2, 6], [6, 9], [6, 10]])]
node_indices = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
learning_labels = [0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1]

This graph is directly constructed in tg2_gnn/data/horn_graph_dataset.__load_data(). You can customize the graph in __load_data() only.

After training you can find the train-valid-test loss chart in src/trained_model.

The zigzag behavior only occurs when num_layers>=4. Increase num_layers will get more intensive zigzag behavior

trauncating and rounding after unsorted_segment_sum can be found in tf2_gnn/layers/message_passing.py

"""


def main():
    GPU = True
    pickle = False
    gathered_nodes_binary_classification_task = ["predicate_occurrence_in_SCG", "argument_lower_bound_existence",
                                                 "argument_upper_bound_existence", "argument_occurrence_binary",
                                                 "template_relevance", "clause_occurrence_in_counter_examples_binary"]
    GPU_switch(GPU)
    nodeFeatureDim = 32
    num_layers=8
    max_epochs = 500
    patience = 500
    parameters = tf2_gnn.GNN.get_default_hyperparameters()
    parameters['hidden_dim'] = nodeFeatureDim
    parameters['num_layers'] = num_layers
    parameters['node_label_embedding_size'] = nodeFeatureDim
    parameters['max_nodes_per_batch'] = 10000
    parameters['regression_hidden_layer_size'] = [32]
    parameters["label_type"] = "template_relevance"
    parameters["gathered_nodes_binary_classification_task"] = gathered_nodes_binary_classification_task
    parameters["threshold"] = 0.5
    parameters["GPU"] = GPU
    parameters["pickle"] = pickle
    parameters["benchmark"]="tree-leaf-identification"
    parameters["graph_type"]="tree"

    these_hypers: Dict[str, Any] = {
        "optimizer": "Adam",  # One of "SGD", "RMSProp", "Adam"
        "learning_rate": 0.001,
        "learning_rate_decay": 0.98,
        "momentum": 0.85,
        "gradient_clip_value": 1,  # 1
        "use_intermediate_gnn_results": False,
    }
    parameters.update(these_hypers)
    # initiate dataset
    dataset = HornGraphDataset(parameters)
    if GPU==True:
        dataset._use_worker_threads=False #solve Failed setting context: CUDA_ERROR_NOT_INITIALIZED: initialization error
    dataset.load_data([DataFold.TRAIN, DataFold.VALIDATION, DataFold.TEST])
    parameters["node_vocab_size"] = dataset._node_vocab_size
    parameters["class_weight_fold"] = dataset._class_weight_fold
    def log(msg):
        log_line(log_file, msg)

    model = InvariantNodeIdentifyTask(parameters, dataset)
    quiet = False
    run_id = make_run_id("GNN", "leaf_identification")
    save_dir = os.path.abspath("trained_model")
    log_file = os.path.join(save_dir, f"{run_id}.log")

    trained_model_path, train_loss_list, valid_loss_list, best_valid_epoch, train_metric_list, valid_metric_list = train(
        model=model,
        dataset=dataset,
        log_fun=log,
        run_id=run_id,
        max_epochs=max_epochs,
        patience=patience,
        save_dir=save_dir,
        quiet=quiet,
        aml_run=None)

    test_data = dataset.get_tensorflow_dataset(DataFold.TEST)

    # use model in memory
    _, _, test_results = model.run_one_epoch(test_data, training=False, quiet=quiet)
    test_metric, test_metric_string = model.compute_epoch_metrics(test_results)
    predicted_Y_loaded_model_from_memory = model.predict(test_data)
    sigmoid_predicted_Y_loaded_model_from_memory=tf.math.sigmoid(predicted_Y_loaded_model_from_memory)
    rounded_predicted_Y_loaded_model_from_memory = my_round_fun(sigmoid_predicted_Y_loaded_model_from_memory,threshold=0.5)

    true_Y = []
    for data in iter(test_data):
        # print(data[0]) #input
        true_Y.extend(np.array(data[1]["node_labels"]))

    class_weight = parameters["class_weight_fold"] ["train"]

    error_memory_model = get_test_loss_with_class_weight(class_weight,predicted_Y_loaded_model_from_memory,true_Y,from_logits=True)
    mean_loss = get_test_loss_with_class_weight(class_weight, [np.mean(true_Y)] * len(true_Y), true_Y,from_logits=False)

    num_correct = tf.reduce_sum(tf.cast(tf.math.equal(true_Y, rounded_predicted_Y_loaded_model_from_memory), tf.int32))
    accuracy = num_correct / len(rounded_predicted_Y_loaded_model_from_memory)

    draw_training_results(train_loss_list, valid_loss_list,
                          mean_loss,
                          error_memory_model, true_Y, sigmoid_predicted_Y_loaded_model_from_memory, "template_relevance",
                          "tree-leaf-identification", "tree")



def draw_training_results(train_loss_list_average, valid_loss_list_average,
                          mean_loss_list_average,
                          mse_loaded_model_average, true_Y, predicted_Y_loaded_model, label,
                          benchmark_name, graph_type):
    # mse on train, validation,test,mean
    plt.plot(train_loss_list_average, color="blue")
    plt.plot(valid_loss_list_average, color="green")
    plt.plot([mean_loss_list_average] * len(train_loss_list_average), color="red")
    plt.plot([mse_loaded_model_average] * len(train_loss_list_average), color="black")
    y_range=[0,max(max(train_loss_list_average),max(valid_loss_list_average))]
    upper_bound=1#max(y_range)
    grid=upper_bound/10
    plt.ylim([min(y_range), upper_bound])
    plt.yticks(np.arange(min(y_range), upper_bound, grid))
    #plt.yscale('log')
    #plt.ylim(bottom=0, top=15)
    plt.ylabel('loss')
    plt.xlabel('epochs')
    train_loss_legend = mpatches.Patch(color='blue', label='train_loss')
    valid_loss_legend = mpatches.Patch(color='green', label='valid_loss')
    mean_loss_legend = mpatches.Patch(color='red', label='mean_loss')
    test_loss_legend = mpatches.Patch(color='black', label='test_loss')
    plt.legend(handles=[train_loss_legend, valid_loss_legend, mean_loss_legend, test_loss_legend])
    plot_name=assemble_name(label,graph_type,benchmark_name)
    plt.savefig("trained_model/" + plot_name + ".png")
    plt.clf()
    # plt.show()
    saving_path_confusion_matrix="trained_model/" + plot_name+ "-confusion_matrix.png"
    saving_path_roc = "trained_model/" + plot_name + "-ROC.png"
    recall,precision,f1_score,false_positive_rate=get_recall_and_precision(true_Y,my_round_fun(predicted_Y_loaded_model,threshold=0.5),verbose=True)
    plot_confusion_matrix(predicted_Y_loaded_model,true_Y,saving_path_confusion_matrix,recall=recall,precision=precision,f1_score=f1_score,threshold=0.5)
    plot_ROC(false_positive_rate,recall,saving_path_roc)

def GPU_switch(GPU):
    if GPU==False:
        os.environ["CUDA_VISIBLE_DEVICES"] = "-1"
        tf.keras.backend.clear_session()
    else:
        #watch nvidia-smi
        cuda.select_device(0)
        cuda.close()
        print('CUDA memory released: GPU0')
        gpus = tf.config.experimental.list_physical_devices('GPU')
        for gpu in gpus:
            tf.config.experimental.set_memory_growth(gpu, True)

def get_test_loss_with_class_weight(class_weight,task_output,labels,from_logits=True):
    predicted_y=[logit(x) for x in task_output]
    return tf.reduce_mean(tf.nn.weighted_cross_entropy_with_logits(labels,predicted_y,class_weight["weight_for_1"]))
def logit(p):
    return tf.cast(tf.math.log(p/(1-p)),tf.float32)
main()


