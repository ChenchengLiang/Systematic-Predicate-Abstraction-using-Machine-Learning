import numpy as np
import tensorflow as tf
import matplotlib.pyplot as plt
import seaborn
from sklearn.metrics import confusion_matrix,multilabel_confusion_matrix
import glob
import json
from utils import flattenList,get_recall_and_precision
def get_classification_accuracy(true_Y,rounded_predicted_Y_loaded_model,label,predicted_Y_loaded_model_from_memory,predicted_Y_loaded_model,gathered_nodes_multi_classification_task):
    if label in gathered_nodes_multi_classification_task:
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

def my_round_fun(num_list,threshold=0.5,label="template_relevance",gathered_nodes_multi_classification_task=[]):
    if label in gathered_nodes_multi_classification_task:
        num_list=np.array(num_list[0])
        return [np.where(r==max(r),1,0)for r in num_list]
    elif label=="predicate_occurrence_in_clauses":
        return num_list
    else:
        #return list(np.where(num_list > threshold, 1, 0))
        return tf.math.round(num_list)


def plot_confusion_matrix(predicted_Y_loaded_model,true_Y,saving_path,recall=0,precision=0,f1_score=0,threshold=0.5,
                          label="template_relevance",accuracy=0,gathered_nodes_multi_classification_task=[]):
    predicted_Y_loaded_model = my_round_fun(np.array(predicted_Y_loaded_model),label=label,gathered_nodes_multi_classification_task=gathered_nodes_multi_classification_task)
    #predicted_Y_loaded_model =  list(map(my_round_fun,np.array(predicted_Y_loaded_model)))#tf.math.round(predicted_Y_loaded_model)
    if label in gathered_nodes_multi_classification_task:
        predicted_Y_loaded_model=[np.argmax(x) for x in predicted_Y_loaded_model]
        true_Y = [np.argmax(x) for x in true_Y]
        cm = confusion_matrix(true_Y, predicted_Y_loaded_model)
    else:
        cm = confusion_matrix(true_Y, predicted_Y_loaded_model)
    plt.figure(figsize=(5, 5))
    seaborn.heatmap(cm, annot=True, fmt="d")
    plt.title("recall:"+str(recall)+", precision:"+str(precision)+",f1_score:"+str(f1_score))
    plt.ylabel('Actual label')
    plt.xlabel('Predicted label' + ",acc:"+str(accuracy))
    plt.savefig(saving_path)
    plt.clf()
    seaborn.reset_defaults()
def plot_ROC(FP_rate,TP_rate,saving_path):
    plt.clf()
    plt.xlabel('FP rate')
    plt.ylabel('TP rate')
    plt.xlim([0,1])
    plt.ylim([0,1])
    plt.plot(FP_rate,TP_rate, label="ROC")
    plt.scatter(FP_rate, TP_rate)
    plt.legend()
    plt.savefig(saving_path)
    plt.clf()


def get_statistic_data(file_list,benchmark_fold="",separateByPredicates="",max_nodes_per_batch=10000,graph_type="hyperEdgeGraph",gathered_nodes_multi_classification_task=[]):
    true_label = []
    predicted_label = []
    predicted_label_logit=[]
    file_list=glob.glob("../benchmarks/"+benchmark_fold+"/test_data/*."+graph_type+".JSON")
    for file in file_list:
        with open(file) as f:
            loaded_graph = json.load(f)
            if len(loaded_graph["nodeIds"])< max_nodes_per_batch:
                predicted_label.append(loaded_graph["predictedLabel"])
                true_label.append(loaded_graph["templateRelevanceLabel"])
                predicted_label_logit.append(loaded_graph["predictedLabelLogit"])
    true_label = flattenList(true_label)
    predicted_label = flattenList(predicted_label)
    predicted_label_logit = flattenList(predicted_label_logit)
    predicted_label_logit=[float(l) for l in predicted_label_logit]

    recall,precision,f1_score,false_positive_rate=get_recall_and_precision(true_label, predicted_label,verbose=True)

    #saving_path_confusion_matrix="../benchmarks/"+benchmark_fold+"/confusion-matrix.png"
    #saving_path_roc = "../benchmarks/" + benchmark_fold + "/ROC.png"
    saving_path_confusion_matrix="trained_model/"+benchmark_fold+"-confusion-matrix.png"
    saving_path_roc="trained_model/"+benchmark_fold+"-ROC.png"
    plot_confusion_matrix(predicted_label,true_label,saving_path_confusion_matrix,recall,precision,f1_score,gathered_nodes_multi_classification_task=gathered_nodes_multi_classification_task)
    #ROC
    false_positive_rate_list=[]
    recall_list=[]
    step=0.05
    for t in np.arange(0,1+step,step):
        predicted_label_with_threshold=[1 if l>=t else 0 for l in predicted_label_logit]
        recall, precision, f1_score, false_positive_rate = get_recall_and_precision(true_label, predicted_label_with_threshold)
        recall_list.append(recall)
        false_positive_rate_list.append(false_positive_rate)
    recall_list.append(0)
    false_positive_rate_list.append(0)
    plot_ROC(false_positive_rate_list,recall_list,saving_path_roc)

