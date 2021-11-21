import glob
import json
import os
from typing import Any, Dict
import matplotlib.patches as mpatches
import matplotlib.pyplot as plt
import numpy as np
import scipy.stats as ss
import seaborn
import tensorflow as tf
import tf2_gnn
from tf2_gnn.cli_utils.training_utils import train, log_line, make_run_id
from tf2_gnn.data import DataFold, HornGraphSample, HornGraphDataset
from tf2_gnn.models import InvariantArgumentSelectionTask, InvariantNodeIdentifyTask,InvariantNodeMultiClassTask
from Miscellaneous import pickleWrite, pickleRead, drawLabelPieChart
from archived.dotToGraphInfo import parseArgumentsFromJson
from utils import plot_confusion_matrix,get_recall_and_precision,plot_ROC,assemble_name,my_round_fun,unzip_file


def train_on_graphs(benchmark_name="unknown",label="rank",force_read=False,train_n_times=1,path="../",file_type=".smt2",
                    json_type=".JSON",form_label=False,GPU=False,pickle=True,use_class_weight=False,label_field="templateRelevanceLabel",verbose=False,
                    hyper_parameters={}):
    gathered_nodes_binary_classification_task = ["predicate_occurrence_in_SCG", "argument_lower_bound_existence",
                                                 "argument_upper_bound_existence", "argument_occurrence_binary",
                                                 "template_relevance", "clause_occurrence_in_counter_examples_binary"]

    graph_type=json_type[1:json_type.find(".JSON")]
    print("graph_type",graph_type)
    nodeFeatureDim = hyper_parameters["nodeFeatureDim"] #64
    parameters = tf2_gnn.GNN.get_default_hyperparameters()
    parameters['graph_type'] = graph_type  # hyperEdgeHornGraph or layerHornGraph
    #parameters["message_calculation_class"]="rgcn"#rgcn,ggnn,rgat
    #parameters['num_heads'] = 2
    # parameters["global_exchange_dropout_rate"]=0
    # parameters["layer_input_dropout_rate"]=0
    # parameters["gnn_layer_input_dropout_rate"]=0
    # parameters["graph_aggregation_dropout_rate"]=0
    # parameters["regression_mlp_dropout"]=0
    # parameters["scoring_mlp_dropout_rate"]=0
    #parameters["residual_every_num_layers"]=10000000
    parameters['hidden_dim'] = nodeFeatureDim #64
    #parameters["num_edge_MLP_hidden_layers"]

    parameters["use_inter_layer_layernorm"]=True
    # parameters["dense_every_num_layers"] = 32
    # parameters["residual_every_num_layers"] = 32
    # parameters["global_exchange_every_num_layers"] = 32

    parameters['num_layers'] = hyper_parameters["num_layers"]
    parameters['node_label_embedding_size'] = nodeFeatureDim
    parameters['max_nodes_per_batch']=hyper_parameters["max_nodes_per_batch"] #todo: _batch_would_be_too_full(), need to extend _finalise_batch() to deal with hyper-edge
    parameters['regression_hidden_layer_size'] = hyper_parameters["regression_hidden_layer_size"]
    parameters["benchmark"]=benchmark_name
    parameters["label_type"]=label
    parameters ["gathered_nodes_binary_classification_task"]=gathered_nodes_binary_classification_task
    parameters["threshold"]=hyper_parameters["threshold"]
    parameters["GPU"]=GPU
    parameters["pickle"]=pickle
    parameters["num_node_target_labels"]=hyper_parameters["num_node_target_labels"]
    max_epochs = hyper_parameters["max_epochs"]
    patience = hyper_parameters["patience"]
    # parameters["add_self_loop_edges"]=False
    # parameters["tie_fwd_bkwd_edges"]=True
    parameters["label_field"]=label_field

    these_hypers: Dict[str, Any] = {
        "optimizer": "Adam",  # One of "SGD", "RMSProp", "Adam"
        "learning_rate": 0.001,
        "learning_rate_decay": 0.98,
        "momentum": 0.85,
        "gradient_clip_value": 1, #1
        "use_intermediate_gnn_results": False,
    }
    parameters.update(these_hypers)
    #get dataset
    dataset=HornGraphDataset(parameters)
    #dataset._read_from_pickle = pickle
    if pickle==True:
        if force_read==True:
            params_for_write_graph_to_pickle={"benchmark":benchmark_name,"data_fold":["train", "valid", "test"],"label":label,"path":path,
                                              "file_type":file_type,"max_nodes_per_batch":parameters['max_nodes_per_batch'],
                                              "graph_type":graph_type,"file_list":[],"vocabulary_name":"","label_field":label_field}
            write_graph_to_pickle(params_for_write_graph_to_pickle)
        else:
            print("Use pickle data for training")
        #if form_label == True and not os.path.isfile("../pickleData/" + label + "-" + benchmark_name + "-gnnInput_train_data.txt"):
        if form_label == True:
            params_form_GNN_inputs_and_labels={"label":label,"datafold":["train", "valid", "test"],"benchmark":benchmark_name,"graph_type":graph_type,
                                               "gathered_nodes_binary_classification_task":gathered_nodes_binary_classification_task,"use_class_weight":use_class_weight,
                                               "num_node_target_labels":hyper_parameters["num_node_target_labels"]}
            form_GNN_inputs_and_labels(params_form_GNN_inputs_and_labels)
        else:
            print("Use label in pickle data for training")
    elif pickle==False:
        dataset._path=path
        dataset._json_type=json_type
    if GPU==True:
        dataset._use_worker_threads=False #solve Failed setting context: CUDA_ERROR_NOT_INITIALIZED: initialization error
    dataset.load_data([DataFold.TRAIN,DataFold.VALIDATION,DataFold.TEST])
    parameters["node_vocab_size"]=dataset._node_vocab_size
    parameters["class_weight_fold"] = dataset._class_weight_fold["train"]
    # def log(msg):
    #     log_line(log_file, msg)

    train_loss_list_average = []
    valid_loss_list_average = []
    test_loss_list_average = []
    mean_loss_list_average = []
    error_loaded_model_average = []
    error_memory_model_average=[]
    train_loss_average = []
    valid_loss_average = []
    test_loss_average = []
    best_valid_epoch_average = []
    accuracy_average=[]
    trained_model_path=None

    for n in range(train_n_times): # train n time to get average performance, default is one
        # initial different models by different training task
        if label in gathered_nodes_binary_classification_task+["argument_identify","control_location_identify","argument_identify_no_batchs"]:
            model = InvariantNodeIdentifyTask(parameters, dataset)
        elif label=="node_multiclass":
            model = InvariantNodeMultiClassTask(parameters, dataset)
        elif label in ["predicate_occurrence_in_clauses","argument_lower_bound","argument_upper_bound","argument_bound"]:
            model = InvariantArgumentSelectionTask(parameters, dataset)

        #train
        quiet=False
        model_name="GNN"
        task_name="Argument_selection"
        run_id = make_run_id(model_name, task_name)
        save_dir=os.path.abspath("trained_model")
        log_file = os.path.join(save_dir, f"{run_id}.log")

        def log(msg):
            log_line(log_file, msg)
        # import multiprocessing
        # process_train = multiprocessing.Process(train, args=(model,dataset,log,run_id,200,20,save_dir,quiet,None))
        # process_train.start()
        # process_train.join()
        trained_model_path,train_loss_list,valid_loss_list,best_valid_epoch,train_metric_list,valid_metric_list = train(
            model=model,
            dataset=dataset,
            log_fun=log,
            run_id=run_id,
            max_epochs=max_epochs,
            patience=patience,
            save_dir=save_dir,
            quiet=quiet,
            aml_run=None)


        #predict
        print("trained_model_path", trained_model_path)
        test_data = dataset.get_tensorflow_dataset(DataFold.TEST)

        # use model in memory
        _, _, test_results = model.run_one_epoch(test_data, training=False, quiet=quiet)
        test_metric, test_metric_string = model.compute_epoch_metrics(test_results)
        print("test_metric_string model from memory", test_metric_string)
        print("test_metric model from memory", test_metric)

        raw_predicted_Y_loaded_model_from_memory = model.predict(test_data)
        predicted_Y_loaded_model_from_memory = raw_predicted_Y_loaded_model_from_memory if label in [
            "predicate_occurrence_in_clauses"] else tf.math.sigmoid(raw_predicted_Y_loaded_model_from_memory)
        rounded_predicted_Y_loaded_model_from_memory=my_round_fun(predicted_Y_loaded_model_from_memory,threshold=hyper_parameters["threshold"],label=label)

        #load model from files
        loaded_model = tf2_gnn.cli_utils.model_utils.load_model_for_prediction(trained_model_path, dataset)
        _, _, test_results = loaded_model.run_one_epoch(test_data, training=False, quiet=quiet)
        test_metric, test_metric_string = loaded_model.compute_epoch_metrics(test_results)

        raw_predicted_Y_loaded_model = loaded_model.predict(test_data)
        predicted_Y_loaded_model=raw_predicted_Y_loaded_model if label in ["predicate_occurrence_in_clauses"] else tf.math.sigmoid(raw_predicted_Y_loaded_model)
        rounded_predicted_Y_loaded_model=my_round_fun(predicted_Y_loaded_model,threshold=hyper_parameters["threshold"],label=label)

        print("predicted_Y_loaded_model",predicted_Y_loaded_model)
        if verbose==True:
            print("rounded_predicted_Y_loaded_model",len(rounded_predicted_Y_loaded_model),rounded_predicted_Y_loaded_model)

        print("test_metric_string",test_metric_string)
        print("test_metric",test_metric)

        true_Y=[]
        for data in iter(test_data):
            #print(data[0]) #input
            true_Y.extend(np.array(data[1]["node_labels"]))

        class_weight={"weight_for_1":parameters["class_weight_fold"]["weight_for_1"]/parameters["class_weight_fold"]["weight_for_0"],"weight_for_0":1}
        from_logits=True

        error_loaded_model = compute_loss(label, true_Y, predicted_Y_loaded_model, class_weight, from_logits,gathered_nodes_binary_classification_task)
        print("\n error of loaded_model", error_loaded_model)
        error_memory_model = compute_loss(label, true_Y, predicted_Y_loaded_model, class_weight, from_logits,gathered_nodes_binary_classification_task)
        print("\n error of error_memory_model", error_memory_model)
        mean_label=np.full(np.array(predicted_Y_loaded_model_from_memory).shape,np.mean(true_Y))
        mean_loss = compute_loss(label, true_Y, mean_label, class_weight, from_logits,gathered_nodes_binary_classification_task)
        print("\n mean_loss_Y_and_True_Y", mean_loss)
        mean_loss_list=mean_loss
        accuracy=get_classification_accuracy(true_Y,rounded_predicted_Y_loaded_model,label)
        accuracy_average.append(accuracy)

        #test_loss_list_average.append(predicted_Y_loaded_model)
        mean_loss_list_average.append(mean_loss_list)
        error_loaded_model_average.append(error_loaded_model)
        error_memory_model_average.append(error_memory_model)
        #test_loss_average.append(predicted_Y_loaded_model[-1])

        train_loss_list_average.append(train_loss_list)
        valid_loss_list_average.append(valid_loss_list)
        train_loss_average.append(train_loss_list[-1])
        valid_loss_average.append(valid_loss_list[-1])
        best_valid_epoch_average.append(best_valid_epoch)

    # get aberage training performance
    train_loss_list_average = np.mean(train_loss_list_average, axis=0)
    valid_loss_list_average = np.mean(valid_loss_list_average, axis=0)
    #test_loss_list_average = np.mean(test_loss_list_average, axis=0)
    mean_loss_list_average = np.mean(mean_loss_list)
    error_loaded_model_average = np.mean(error_loaded_model_average)
    error_memory_model_average = np.mean(error_memory_model_average)
    train_loss_average = np.mean(train_loss_average)
    valid_loss_average = np.mean(valid_loss_average)
    best_valid_epoch_average = np.mean(best_valid_epoch_average)
    mean_accuracy = np.mean(accuracy_average)
    write_accuracy_to_log(label, benchmark_name, accuracy_average, best_valid_epoch_average, graph_type)
    # visualize results
    draw_training_results(train_loss_list_average, valid_loss_list_average,
                          mean_loss_list_average,
                          error_loaded_model_average, true_Y, predicted_Y_loaded_model, label,
                          benchmark_name, graph_type,gathered_nodes_binary_classification_task,hyper_parameters)
    write_train_results_to_log(dataset, predicted_Y_loaded_model, train_loss_average,
                               valid_loss_average, error_memory_model, mean_loss_list, accuracy_average,
                               best_valid_epoch_average,hyper_parameters,
                               benchmark=benchmark_name, label=label, graph_type=graph_type)

    pickleWrite(parameters, benchmark_name+"-"+label+"-parameters","../src/trained_model/")

    return trained_model_path

def get_classification_accuracy(true_Y,rounded_predicted_Y_loaded_model,label):
    if label=="node_multiclass":
        true_Y=np.argmax(true_Y, axis=1)
        rounded_predicted_Y_loaded_model = np.argmax(rounded_predicted_Y_loaded_model, axis=1)
    if len(true_Y)<100:
        print("true_Y", true_Y)
        print("rounded_predicted_Y_loaded_model", rounded_predicted_Y_loaded_model)
    else:
        print("true_Y[100]", true_Y[100])
        print("rounded_predicted_Y_loaded_model[100]", rounded_predicted_Y_loaded_model[100])
    num_correct = tf.reduce_sum(tf.cast(tf.math.equal(true_Y, rounded_predicted_Y_loaded_model), tf.int32))
    accuracy = num_correct / len(rounded_predicted_Y_loaded_model)
    print("accuracy", accuracy)
    return accuracy

def write_accuracy_to_log(label, benchmark, accuracy_list, best_valid_epoch_list, graph_type):
    mean_accuracy = np.mean(accuracy_list)
    best_valid_epoch_average = np.mean(best_valid_epoch_list)
    with open("trained_model/" + label + "-" + graph_type + "-" + benchmark + ".log", 'w') as out_file:
        out_file.write("accuracy_list:" + str(accuracy_list) + "\n")
        out_file.write("accuracy mean:" + str(mean_accuracy) + "\n")
        out_file.write("best_valid_epoch_list:" + str(best_valid_epoch_list) + "\n")
        out_file.write("best_valid_epoch_average:" + str(best_valid_epoch_average) + "\n")


def draw_training_results(train_loss_list_average, valid_loss_list_average,
                          mean_loss_list_average,
                          mse_loaded_model_average, true_Y, predicted_Y_loaded_model, label,
                          benchmark_name, graph_type,gathered_nodes_binary_classification_task,hyper_parameters,mean_loss_line="False"):
    # mse on train, validation,test,mean
    plt.plot(train_loss_list_average,color="blue")
    plt.plot(valid_loss_list_average, color="green")
    plt.plot([mse_loaded_model_average] * len(train_loss_list_average), color="black")
    #plt.plot([mse_loaded_model_average] * len(train_loss_list_average), "o",color="black")
    y_range=[0,max(max(max(train_loss_list_average),max(valid_loss_list_average)),mse_loaded_model_average)]
    if hyper_parameters["fix_y_axis"]==True:
        upper_bound=2
    else:
        upper_bound=max(y_range)
    grid=upper_bound/10
    plt.ylim([min(y_range), upper_bound])
    plt.yticks(np.arange(min(y_range), upper_bound, grid))
    #plt.yscale('log')
    #plt.ylim(bottom=0, top=15)
    plt.ylabel('loss')
    plt.xlabel('epochs')
    train_loss_legend = mpatches.Patch(color='blue', label='train_loss')
    valid_loss_legend = mpatches.Patch(color='green', label='valid_loss')
    test_loss_legend = mpatches.Patch(color='black', label='test_loss')
    if mean_loss_line==True:
        plt.plot([mean_loss_list_average] * len(train_loss_list_average), color="red")
        mean_loss_legend = mpatches.Patch(color='red', label='mean_loss')
        plt.legend(handles=[train_loss_legend, valid_loss_legend, mean_loss_legend, test_loss_legend])

    plt.legend(handles=[train_loss_legend, valid_loss_legend, test_loss_legend])
    regression_hidden_layer_size_name=str(len(hyper_parameters["regression_hidden_layer_size"]))+"x" +str(hyper_parameters["regression_hidden_layer_size"][0])
    plot_name=assemble_name(label,graph_type,benchmark_name,"nodeFeatureDim",str(hyper_parameters["nodeFeatureDim"]),"num_layers",str(hyper_parameters["num_layers"]),"regression_hidden_layer_size",regression_hidden_layer_size_name,"threshold",str(hyper_parameters["threshold"]))
    plt.savefig("trained_model/" + plot_name + ".png")
    plt.clf()
    # plt.show()

    if label in gathered_nodes_binary_classification_task+["argument_identify"]: # confusion matrix on true y and predicted y
        saving_path_confusion_matrix="trained_model/" + plot_name+ "-confusion_matrix.png"
        saving_path_roc = "trained_model/" + plot_name + "-ROC.png"
        recall,precision,f1_score,false_positive_rate=get_recall_and_precision(true_Y,my_round_fun(predicted_Y_loaded_model,threshold=hyper_parameters["threshold"],label=label),verbose=True)
        plot_confusion_matrix(predicted_Y_loaded_model,true_Y,saving_path_confusion_matrix,recall=recall,precision=precision,f1_score=f1_score)
        plot_ROC(false_positive_rate,recall,saving_path_roc)
    elif label=="node_multiclass":
        saving_path_confusion_matrix = "trained_model/" + plot_name + "-confusion_matrix.png"
        plot_confusion_matrix(predicted_Y_loaded_model, true_Y, saving_path_confusion_matrix, recall="-",
                              precision="-", f1_score="-",label="node_multiclass")
    else:
        # scatter on true y and predicted y
        a = plt.axes(aspect='equal')
        plt.scatter(true_Y, predicted_Y_loaded_model)
        plt.xlabel('True Values')
        plt.ylabel('Predictions')
        lims = [0, np.max([np.max(true_Y), np.max(predicted_Y_loaded_model)])]
        plt.xlim(lims)
        plt.ylim(lims)
        _ = plt.plot(lims, lims)
        plt.savefig("trained_model/" + plot_name + "-scatter.png")
        plt.clf()

    # # error distribution on true y and predicted y
    # if np.min(predicted_Y_loaded_model) == float("-inf") or np.max(predicted_Y_loaded_model) == float("inf") or np.min(
    #         true_Y) == float("-inf") or np.max(true_Y) == float("inf"):
    #     pass
    # else:
    #     error = np.array(predicted_Y_loaded_model) - np.array(true_Y)
    #     plt.hist(error, bins=25)
    #     plt.xlabel("Prediction Error [occurence]")
    #     _ = plt.ylabel("Count")
    #     plt.savefig("trained_model/" + plot_name+ "-error-distribution.png")
    #     plt.clf()

def write_train_results_to_log(dataset, predicted_Y_loaded_model, train_loss, valid_loss, mse_loaded_model_list,
                               mean_loss_list, accuracy_list,best_valid_epoch, hyper_parameters,benchmark="unknown", label="rank", graph_type="hyperEdgeHornGraph",verbose=False):
    mean_loss_list_average = np.mean(mean_loss_list)
    mse_loaded_model_average = np.mean(mse_loaded_model_list)
    mean_accuracy = np.mean(accuracy_list)
    regression_hidden_layer_size_name=str(len(hyper_parameters["regression_hidden_layer_size"]))+"x"+str(hyper_parameters["regression_hidden_layer_size"][0])
    log_name = assemble_name(label, graph_type, benchmark, "nodeFeatureDim",
                              str(hyper_parameters["nodeFeatureDim"]), "num_layers",
                              str(hyper_parameters["num_layers"]), "regression_hidden_layer_size",
                              regression_hidden_layer_size_name)
    with open("trained_model/" + log_name+ ".log", 'a') as out_file:
        out_file.write("best_valid_epoch:" + str(best_valid_epoch) + "\n")
        out_file.write("train loss:" + str(train_loss) + "\n")
        out_file.write("valid loss:" + str(valid_loss) + "\n")
        out_file.write("test loss list:" + str(mse_loaded_model_list) + "\n")
        out_file.write("mean test loss:" + str(mse_loaded_model_average) + "\n")

        out_file.write("mean loss list:" + str(mean_loss_list) + "\n")
        out_file.write("mean mean loss:" + str(mean_loss_list_average) + "\n")

        out_file.write("accuracy list:" + str(accuracy_list) + "\n")
        out_file.write("mean accuracy:" + str(mean_accuracy) + "\n")

        if label=="node_multiclass":
            predicted_Y_loaded_model=predicted_Y_loaded_model[0]
        predicted_label_lists = get_predicted_label_list_divided_by_file(dataset, predicted_Y_loaded_model)
        true_label_list= dataset._label_list["test"]

        mse_list = []
        for predicted_label, true_label, file_name in zip(predicted_label_lists, true_label_list,
                                                         dataset._file_list["test"]):
            if label=="node_multiclass":
                predicted_label=[predicted_label]
            # print("file_name", file_name)
            # print("true_label", true_label)
            # print("predicted_label", predicted_label)

            out_file.write("-------" + "\n")
            out_file.write(file_name + "\n")
            out_file.write("true label:" + str(true_label) + "\n")
            out_file.write("true label rank:" + str(ss.rankdata(true_label, method="dense")) + "\n")
            out_file.write("predicted label:" + str(predicted_label) + "\n")
            out_file.write("rounded label:" + str(my_round_fun(predicted_label,threshold=0.5,label=label)) + "\n")
            out_file.write(
                "predicted label rank:" + str(ss.rankdata(tf.math.round(predicted_label), method="dense")) + "\n")
            mse = tf.keras.losses.MSE(true_label, predicted_label) if not label=="node_multiclass" else 0
            out_file.write("mse:" + str(mse) + "\n")
            mse_list.append(mse)

        out_file.write("-------" + "\n")
        out_file.write("mean(mse_list):" + str(np.mean(mse_list)) + "\n")
        plt.xlabel('graph number')
        plt.ylabel('mse of predicted label')
        plt.plot(mse_list, label="predicted_data_mse")
        plt.plot([mean_loss_list_average] * len(mse_list), label="mean_mse")
        plt.legend()
        plt.savefig("trained_model/" + log_name+ "-test-mse.png")
        plt.clf()




class raw_graph_inputs():
    def __init__(self,num_edge_types,total_number_of_nodes):
        self._num_edge_types=num_edge_types
        self._total_number_of_nodes=total_number_of_nodes
        self._node_number_per_edge_type=[]
        self.final_graphs=None
        self.argument_scores=[]
        self.labels=[]
        self.ranked_argument_scores=[]
        self.file_names=[]
        self.argument_identify=[]
        self.control_location_identify=[]
        self.label_size=0
        self.vocabulary_set=set()
        self.token_map={}
        self.class_weight={}

class parsed_graph_data:
    def __init__(self,graphs_node_label_ids,graphs_argument_indices,graphs_adjacency_lists,
                 graphs_argument_scores,total_number_of_node,graph_control_location_indices,file_name_list,skipped_file_list,parsed_arguments,
                 graphs_node_symbols,graphs_label_indices,graphs_learning_labels,vocabulary_set, token_map):
        self.graphs_node_label_ids=graphs_node_label_ids
        self.graphs_argument_indices=graphs_argument_indices
        self.graphs_adjacency_lists=graphs_adjacency_lists
        self.graphs_argument_scores=graphs_argument_scores
        self.total_number_of_node=total_number_of_node
        self.graphs_control_location_indices=graph_control_location_indices
        self.file_name_list=file_name_list
        self.parsed_arguments=parsed_arguments
        self.graphs_node_symbols=graphs_node_symbols
        self.vocabulary_set=vocabulary_set
        self.token_map=token_map
        self.graphs_label_indices=graphs_label_indices
        self.graphs_learning_labels=graphs_learning_labels
        self.skipped_file_list=skipped_file_list

def write_graph_to_pickle(params):
    '''
    params["benchmark"]
    params["data_fold"]=["train", "valid", "test"]
    params["label"]="rank"
    params["path"]="../"
    params["max_nodes_per_batch"]=10000
    params["graph_type"]="hyperEdgeHornGraph"
    params["vocabulary_name"]=""
    params["file_list"]=[]
    params["label_field"]="templateRelevanceLabel"
    '''
    json_type="."+params["graph_type"]+".JSON"
    if len(params["data_fold"])==1:
        voc=pickleRead(params["vocabulary_name"] + "-" + params["label"] + "-vocabulary","../src/trained_model/")
        vocabulary_set, token_map = voc[0],voc[1]
    else:
        vocabulary_set, token_map = build_vocabulary(datafold=["train", "valid", "test"], path=params["path"],json_type=json_type,
                                                     max_nodes_per_batch=params["max_nodes_per_batch"])
        pickleWrite([vocabulary_set, token_map], params["benchmark"] + "-" + params["label"] + "-vocabulary", "../src/trained_model/")
    benchmark_name = params["benchmark"].replace("/", "-")
    for df in params["data_fold"]:
        print("write data_fold to pickle data:", df)
        graphs_node_label_ids = []
        graphs_node_symbols = []
        graphs_argument_indices = []
        graphs_adjacency_lists = []
        graphs_argument_scores = []
        parsed_arguments = []
        graphs_control_location_indices = []
        graphs_label_indices = []
        graphs_learning_labels = []
        total_number_of_node = 0
        file_name_list = []
        skipped_file_list=[]
        files_from_benchmark=glob.glob(params["path"] +df+"_data/"+ '*'  + json_type)
        if len(files_from_benchmark)==0:
            zipped_files = set(sorted(glob.glob(params["path"] + df + "_data/" + '*' + json_type + ".zip")))
            for zf in zipped_files:
                unzip_file(zf)
            files_from_benchmark = glob.glob(params["path"] + df + "_data/" + '*' + json_type)

        file_set=(lambda : [f+json_type for f in params["file_list"]] if len(params["file_list"])>0 else files_from_benchmark)()
        for fileGraph in file_set:
            fileName = fileGraph[:fileGraph.find( json_type)]
            fileName = fileName[fileName.rindex("/") + 1:]
            # read graph
            if os.path.exists(fileGraph+".zip"):
                unzip_file(fileGraph+".zip")
            with open(fileGraph) as f:
                loaded_graph = json.load(f)
                #debug check all field if equal to empty
                if len(loaded_graph["nodeIds"]) == 0:
                    print("nodeIds==0"," skip ",fileName)
                    skipped_file_list.append(fileName)
                    # for f in glob.glob(path+df+"_data/"+fileName + "*"):
                    #     shutil.copy(f, "../benchmarks/problem_cases/")
                    #     os.remove(f)
                elif len(loaded_graph["nodeIds"]) >= params["max_nodes_per_batch"]: #
                    print("more than " + str(params["max_nodes_per_batch"]) + " nodes","skip",fileName)
                    skipped_file_list.append(fileName)
                # if len(loaded_graph["argumentEdges"]) == 0:
                #     print("argumentEdges==0",fileName)
                # if len(loaded_graph["guardASTEdges"]) == 0:
                #     print("guardASTEdges==0",fileName)
                # if len(loaded_graph["dataFlowASTEdges"]) == 0:
                #     print("dataFlowASTEdges==0",fileName)
                # if len(loaded_graph["binaryAdjacentList"]) == 0:
                #     print("binaryAdjacentList==0",fileName)
                # if len(loaded_graph["ternaryAdjacencyList"]) == 0:
                #     print("ternaryAdjacencyList==0",fileName)
                # if len(loaded_graph["controlFlowHyperEdges"]) == 0:
                #     print("controlFlowHyperEdges==0",fileName)
                # if len(loaded_graph["dataFlowHyperEdges"]) == 0:
                #     print("dataFlowHyperEdges==0",fileName)
                else:
                    file_name_list.append(fileGraph[:fileGraph.find(json_type)])
                    graphs_node_label_ids.append(loaded_graph["nodeIds"])
                    graphs_node_symbols.append(loaded_graph["nodeSymbolList"])
                    #read label
                    if params["label"]=="predicate_occurrence_in_clauses":
                        graphs_label_indices.append(loaded_graph["predicateIndices"])
                        graphs_learning_labels.append(loaded_graph["predicateOccurrenceInClause"])
                    elif params["label"]=="predicate_occurrence_in_SCG":
                        graphs_label_indices.append(loaded_graph["predicateIndices"])
                        graphs_learning_labels.append(loaded_graph["predicateStrongConnectedComponent"])
                    elif params["label"] in ["argument_bound","argument_lower_bound_existence","argument_upper_bound_existence","argument_lower_bound","argument_upper_bound"]:
                        graphs_label_indices.append(loaded_graph["argumentIndices"])
                        graphs_argument_indices.append(loaded_graph["argumentIndices"])
                        graphs_learning_labels.append(loaded_graph["argumentBoundList"])
                    elif params["label"]=="control_location_identify":
                        graphs_control_location_indices.append(loaded_graph["controlLocationIndices"])
                    elif params["label"]=="argument_occurrence_binary":
                        graphs_argument_indices.append(loaded_graph["argumentIndices"])
                        graphs_learning_labels.append(loaded_graph["argumentBinaryOccurrenceList"])
                    elif params["label"]=="template_relevance":
                        graphs_label_indices.append(loaded_graph["templateIndices"])
                        graphs_learning_labels.append(loaded_graph["templateRelevanceLabel"])
                    elif params["label"]=="node_multiclass":
                        graphs_label_indices.append(loaded_graph["templateIndices"])
                        graphs_learning_labels.append(loaded_graph[params["label_field"]])
                    elif params["label"]=="clause_occurrence_in_counter_examples_binary":
                        graphs_label_indices.append(loaded_graph["clauseIndices"])
                        graphs_learning_labels.append(loaded_graph["clauseBinaryOccurrenceInCounterExampleList"])
                    elif params["label"]=="argument_identify":
                        graphs_label_indices.append(loaded_graph["argumentIndices"])
                        graphs_learning_labels.append(loaded_graph["nodeIds"])
                    else:
                        graphs_argument_indices.append(loaded_graph["argumentIndices"])
                        # read argument from JSON file
                        parsed_arguments = parseArgumentsFromJson(loaded_graph["argumentIDList"],
                                                                  loaded_graph["argumentNameList"],
                                                                  loaded_graph["argumentOccurrence"])
                        graphs_argument_scores.append([int(argument.score) for argument in parsed_arguments])
                        graphs_control_location_indices.append(loaded_graph["controlLocationIndices"])

                    if json_type==".hyperEdgeHornGraph.JSON" or json_type==".equivalent-hyperedgeGraph.JSON" \
                            or json_type==".concretized-hyperedgeGraph.JSON": #read adjacency_lists
                        #for hyperedge horn graph
                        if params["label"] in ["node_multiclass","node_multiclass"]:
                            graphs_adjacency_lists.append([
                                np.array(loaded_graph["argumentEdges"]),
                                np.array(loaded_graph["guardASTEdges"]),
                                #np.array(loaded_graph["dataFlowASTEdges"]),
                                #np.array(loaded_graph["ASTEdges"]),
                                np.array(loaded_graph["AST_1Edges"]),
                                np.array(loaded_graph["AST_2Edges"]),
                                #np.array(loaded_graph["verifHintTplPredEdges"]),
                                # np.array(loaded_graph["verifHintTplPredPosNegEdges"]),
                                # np.array(loaded_graph["verifHintTplEqTermEdges"]),
                                # np.array(loaded_graph["verifHintTplInEqTermEdges"]),
                                #np.array(loaded_graph["verifHintTplInEqTermPosNegEdges"]),
                                np.array(loaded_graph["templateEdges"]),
                                np.array(loaded_graph["binaryAdjacentList"]),
                                np.array(loaded_graph["controlFlowHyperEdges"]),
                                np.array(loaded_graph["dataFlowHyperEdges"]),
                                np.array(loaded_graph["ternaryAdjacencyList"])
                            ])
                        else:
                            graphs_adjacency_lists.append([
                                np.array(loaded_graph["argumentEdges"]),
                                np.array(loaded_graph["guardASTEdges"]),
                                np.array(loaded_graph["AST_1Edges"]),
                                np.array(loaded_graph["AST_2Edges"]),
                                np.array(loaded_graph["binaryAdjacentList"]),
                                np.array(loaded_graph["controlFlowHyperEdges"]),
                                np.array(loaded_graph["dataFlowHyperEdges"]),
                                np.array(loaded_graph["ternaryAdjacencyList"])
                            ])
                    else:
                        #for layer horn graph
                        graphs_adjacency_lists.append([
                            np.array(loaded_graph["predicateArgumentEdges"]),
                            np.array(loaded_graph["predicateInstanceEdges"]),
                            np.array(loaded_graph["argumentInstanceEdges"]),
                            np.array(loaded_graph["controlHeadEdges"]),
                            np.array(loaded_graph["controlBodyEdges"]),
                            # np.array(loaded_graph["controlEdges"]),
                            np.array(loaded_graph["controlArgumentEdges"]),
                            np.array(loaded_graph["subTermEdges"]),
                            np.array(loaded_graph["guardEdges"]),
                            np.array(loaded_graph["dataEdges"]),
                            # np.array(loaded_graph["predicateInstanceHeadEdges"]),
                            # np.array(loaded_graph["predicateInstanceBodyEdges"]),
                            # np.array(loaded_graph["controlArgumentHeadEdges"]),
                            # np.array(loaded_graph["controlArgumentBodyEdges"]),
                            # np.array(loaded_graph["guardConstantEdges"]),
                            # np.array(loaded_graph["guardOperatorEdges"]),
                            # np.array(loaded_graph["guardScEdges"]),
                            # np.array(loaded_graph["dataConstantEdges"]),
                            # np.array(loaded_graph["dataOperatorEdges"]),
                            # np.array(loaded_graph["dataScEdges"]),
                            # np.array(loaded_graph["subTermConstantOperatorEdges"]),
                            # np.array(loaded_graph["subTermOperatorOperatorEdges"]),
                            # np.array(loaded_graph["subTermScOperatorEdges"]),
                            np.array(loaded_graph["binaryAdjacentList"]),
                            #np.array(loaded_graph["unknownEdges"])
                        ])
                    total_number_of_node += len(loaded_graph["nodeIds"])
            if os.path.exists(fileGraph + ".zip"):
                os.remove(fileGraph)
        pickle_data=parsed_graph_data(graphs_node_label_ids,graphs_argument_indices,graphs_adjacency_lists,
                                      graphs_argument_scores,total_number_of_node,graphs_control_location_indices,file_name_list,
                                      skipped_file_list,parsed_arguments,graphs_node_symbols,graphs_label_indices,
                                      graphs_learning_labels,vocabulary_set, token_map)
        pickleWrite(pickle_data, "train-" +params["label"]+"-"+ params["graph_type"] +"-"+benchmark_name + "-gnnInput_" + df + "_data")


def form_GNN_inputs_and_labels(params):
    '''
    params["label"]="occurrence"
    params["datafold"]=["train", "valid", "test"]
    params["benchmark"]=""
    params["graph_type"]="hyperEdgeHornGraph"
    params["gathered_nodes_binary_classification_task"]=[]
    params["use_class_weight"]=True
    params["num_node_target_labels"]=2
    '''
    print("form labels")
    benchmark_name = params["benchmark"].replace("/", "-")
    for df in params["datafold"]:
        parsed_dot_file = pickleRead(
            "train-" + params["label"] + "-" + params["graph_type"] + "-" + benchmark_name + "-gnnInput_" + df + "_data")
        if params["label"] in params["gathered_nodes_binary_classification_task"] + ["predicate_occurrence_in_clauses","argument_lower_bound","argument_upper_bound","node_multiclass","argument_identify"]:
            params_form_predicate_occurrence_related_label_graph_sample = {
                "graphs_node_label_ids": parsed_dot_file.graphs_node_label_ids,
                "graphs_node_symbols": parsed_dot_file.graphs_node_symbols,
                "graphs_adjacency_lists": parsed_dot_file.graphs_adjacency_lists,
                "total_number_of_node": parsed_dot_file.total_number_of_node,
                "vocabulary_set": parsed_dot_file.vocabulary_set,
                "token_map": parsed_dot_file.token_map, "file_name_list": parsed_dot_file.file_name_list,
                "skipped_file_list": parsed_dot_file.skipped_file_list, "benchmark": params["benchmark"],
                "df": df, "graphs_argument_indices": parsed_dot_file.graphs_argument_indices,
                "graphs_label_indices": parsed_dot_file.graphs_label_indices,
                "graphs_learning_labels": parsed_dot_file.graphs_learning_labels,
                "label": params["label"], "graph_type": params["graph_type"],
                "gathered_nodes_binary_classification_task": params["gathered_nodes_binary_classification_task"],
                "use_class_weight": params["use_class_weight"], "num_node_target_labels": params["num_node_target_labels"]}
            form_predicate_occurrence_related_label_graph_sample(params_form_predicate_occurrence_related_label_graph_sample)

        else:
            form_horn_graph_samples(parsed_dot_file.graphs_node_label_ids, parsed_dot_file.graphs_node_symbols,
                                    parsed_dot_file.graphs_argument_indices, parsed_dot_file.graphs_adjacency_lists,
                                    parsed_dot_file.graphs_argument_scores, parsed_dot_file.total_number_of_node,
                                    parsed_dot_file.graphs_control_location_indices, parsed_dot_file.file_name_list,
                                    parsed_dot_file.skipped_file_list,
                                    parsed_dot_file.graphs_label_indices, parsed_dot_file.graphs_learning_labels,
                                    params["label"], parsed_dot_file.vocabulary_set, parsed_dot_file.token_map, params["benchmark"], df,
                                    params["graph_type"])
def get_batch_graph_sample_info(graphs_adjacency_lists,total_number_of_node,vocabulary_set,token_map):
    num_edge_types_list=[]
    for graph_edges in graphs_adjacency_lists:
        number_of_edge_type = 0
        for edge in graph_edges:
            if len(edge)!=0:
                number_of_edge_type+=1
        num_edge_types_list.append(number_of_edge_type)
    raw_data_graph = raw_graph_inputs(max(num_edge_types_list),
                                      total_number_of_node)  # graphs_adjacency_lists[0] means the first graph's adjacency_list
    temp_graph_index = 0
    for i, graphs_adjacency in enumerate(graphs_adjacency_lists):
        temp_count = 0
        for edge_type in graphs_adjacency:
            if len(edge_type) != 0:
                temp_count = temp_count + 1
        if temp_count == raw_data_graph._num_edge_types:#len(graphs_adjacency):
            temp_graph_index = i

    for edge_type in graphs_adjacency_lists[temp_graph_index]:
        if len(edge_type)!=0:
            raw_data_graph._node_number_per_edge_type.append(len(edge_type[0]))

    raw_data_graph.vocabulary_set = vocabulary_set
    raw_data_graph.token_map = token_map
    return raw_data_graph

def form_predicate_occurrence_related_label_graph_sample(params):
    '''
    params["graphs_node_label_ids"]
    params["graphs_node_symbols"]
    params["graphs_adjacency_lists"]
    params["total_number_of_node"]
    params["vocabulary_set"]
    params["token_map"]
    params["file_name_list"]
    params["skipped_file_list"]
    params["benchmark"]
    params["df"]
    params["graphs_argument_indices"]
    params["graphs_label_indices"]
    params["graphs_learning_labels"]
    params["label"]
    params["graph_type"]
    params["gathered_nodes_binary_classification_task"]
    params["use_class_weight"]=True
    params["num_node_target_labels"]=2
    '''
    final_graphs=[]
    graphs_node_indices = params["graphs_label_indices"]
    raw_data_graph=get_batch_graph_sample_info(params["graphs_adjacency_lists"],params["total_number_of_node"],
                                               params["vocabulary_set"],params["token_map"])

    if params["label"] == "node_multiclass":
        drawLabelPieChart(params["graphs_learning_labels"], params["label"], params["graph_type"], params["benchmark"],
                          params["df"],multi_label=params["num_node_target_labels"])
    if params["label"]=="node_multiclass":
        graphs_learning_labels_temp = []
        for one_graph_learning_labels in params["graphs_learning_labels"]:
            one_graph_learning_labels=np.array(one_graph_learning_labels)
            # one_graph_learning_labels = np.where(one_graph_learning_labels == 3, 0, one_graph_learning_labels)
            # one_graph_learning_labels = np.where(one_graph_learning_labels == 7, 1, one_graph_learning_labels)
            # one_graph_learning_labels = np.where(one_graph_learning_labels == 20, 2, one_graph_learning_labels)
            # one_graph_learning_labels = np.where(one_graph_learning_labels == 100, 3, one_graph_learning_labels)
            indices = one_graph_learning_labels
            depth = params["num_node_target_labels"]
            # print("indices",indices,"depth",depth)
            # print("one-hot",tf.one_hot(indices, depth))
            graphs_learning_labels_temp.append(tf.one_hot(indices, depth))
        params["graphs_learning_labels"]=graphs_learning_labels_temp

    elif params["label"]=="argument_identify":
        graphs_learning_labels_temp = []
        for one_graph_learning_labels,indices in zip(params["graphs_learning_labels"],params["graphs_label_indices"]):
            temp_graph_label = []
            for learning_labels in one_graph_learning_labels:
                if learning_labels in indices:
                    temp_graph_label.append(1)
                else:
                    temp_graph_label.append(0)
            graphs_learning_labels_temp.append(temp_graph_label)
        params["graphs_learning_labels"] = graphs_learning_labels_temp

    elif params["label"]=="argument_bound":
        for one_graph_learning_labels in params["graphs_learning_labels"]: #transform "None" to infinity
            for learning_labels in one_graph_learning_labels:
                if isinstance(learning_labels[0],str):
                    learning_labels[0]=(float("-inf"))
                elif isinstance(learning_labels[1],str):
                    learning_labels[1] = (float("inf"))
    elif params["label"]=="argument_lower_bound_existence":
        graphs_learning_labels_temp=[]
        for one_graph_learning_labels in params["graphs_learning_labels"]:
            temp_graph_label=[]
            for learning_labels in one_graph_learning_labels:
                if isinstance(learning_labels[0],str):
                    learning_labels[0]=0
                else:
                    learning_labels[0] = 1
                temp_graph_label.append(learning_labels[0])
            graphs_learning_labels_temp.append(temp_graph_label)
        params["graphs_learning_labels"]=graphs_learning_labels_temp
    elif params["label"]=="argument_upper_bound_existence":
        graphs_learning_labels_temp = []
        for one_graph_learning_labels in params["graphs_learning_labels"]:
            temp_graph_label=[]
            for learning_labels in one_graph_learning_labels:
                if isinstance(learning_labels[1],str):
                    learning_labels[1]=0
                else:
                    learning_labels[1] = 1
                temp_graph_label.append(learning_labels[1])
            graphs_learning_labels_temp.append(temp_graph_label)
        params["graphs_learning_labels"] = graphs_learning_labels_temp
    elif params["label"]=="argument_lower_bound":
        (graphs_node_indices, params["graphs_learning_labels"], params["graphs_node_label_ids"],
        params["graphs_node_symbols"],params["graphs_adjacency_lists"], params["file_name_list"]) = form_argument_bound_label(params["graphs_argument_indices"],
                                                                           params["graphs_learning_labels"],
                                                                           params["graphs_node_label_ids"],
                                                                           params["graphs_node_symbols"],
                                                                           params["graphs_adjacency_lists"],params["file_name_list"],params["label"])

    elif params["label"]=="argument_upper_bound":
        (graphs_node_indices, params["graphs_learning_labels"], params["graphs_node_label_ids"],
        params["graphs_node_symbols"], params["graphs_adjacency_lists"], params["file_name_list"]) = form_argument_bound_label(params["graphs_argument_indices"],
                                                                                                params["graphs_learning_labels"],
                                                                                                params["graphs_node_label_ids"],
                                                                                                params["graphs_node_symbols"],
                                                                                                params["graphs_adjacency_lists"],
                                                                                                params["file_name_list"], params["label"])


    if params["label"] in params["gathered_nodes_binary_classification_task"] + ["argument_identify"]:
        drawLabelPieChart(params["graphs_learning_labels"], params["label"], params["graph_type"], params["benchmark"],params["df"])

    all_one_label=0
    one_one_label=0
    other_distribution=0
    total_files=len(params["graphs_node_label_ids"])
    for node_label_ids, node_symbols, adjacency_lists,file_name,node_indices,learning_labels in zip(params["graphs_node_label_ids"],
                                                                                                    params["graphs_node_symbols"],
                                                                                                         params["graphs_adjacency_lists"],
                                                                                                         params["file_name_list"],
                                                                                                         graphs_node_indices,
                                                                                                         params["graphs_learning_labels"]):
        raw_data_graph.file_names.append(file_name)
        # node tokenization
        tokenized_node_label_ids=tokenize_symbols(params["token_map"],node_symbols)
        # todo: try simple example
        # tokenized_node_label_ids=[0,0,0,0,0,0,0,0,0,0,0]
        # adjacency_lists=[np.array([[0,1],[0,2],[1,3],[1,4],[1,5],[4,7],[4,8],[2,6],[6,9],[6,10]])]
        # node_indices=[0,1,2,3,4,5,6,7,8,9,10]
        # learning_labels=[0,0,0,1,0,1,0,1,1,1,1]
        # graphs_learning_labels = [learning_labels]

        # node_indices=[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
        # learning_labels = [0,0,1,0,0,0,0,0,0,0,0,0,0,0]
        # graphs_learning_labels=[learning_labels]
        # print("node_label_ids",len(node_label_ids),node_label_ids)
        # print("tokenized_node_label_ids",len(tokenized_node_label_ids),tokenized_node_label_ids)
        # print("node_indices",len(node_indices),node_indices)
        # print("learning_labels",len(learning_labels),learning_labels)



        raw_data_graph.labels.append(learning_labels)

        if params["label"] in params["gathered_nodes_binary_classification_task"]:
            #catch binary label distribution
            if len(learning_labels) == sum(learning_labels):
                all_one_label = all_one_label + 1
            elif sum(learning_labels) == 1:
                one_one_label = one_one_label + 1
            else:
                other_distribution = other_distribution + 1

        # if(len(tokenized_node_label_ids)>130000):
        #     print("------debug------")
        #     print("file_name",file_name)
        #     print("number of node", len(tokenized_node_label_ids))
        #     print("number of edges per edge type")
        #     for edge_type in adjacency_lists:
        #         print(len(edge_type),end=" ")
        #     print("\n node_indices ", len(node_indices))
        #     print("learning_labels", len(learning_labels))

        # temp_count=0
        # for edge_type in adjacency_lists:
        #     if len(edge_type)==0 :#and len(tokenized_node_label_ids)<50
        #         temp_count+=1
        #
        # if temp_count==2:
        #     print("------debug------")
        #     print("file_name", file_name)
        #     print("number of node", len(tokenized_node_label_ids))
        #     print("number of edges per edge type")
        #     for edge_type in adjacency_lists:
        #         print(len(edge_type), end=" ")
        #     print("\n node_indices ", len(node_indices))
        #     print("learning_labels", len(learning_labels))


        #print("token_map",params["token_map"])
        final_graphs.append(
            HornGraphSample(
                adjacency_lists=adjacency_lists,
                node_features=np.array(tokenized_node_label_ids), #node_label_ids,tokenized_node_label_ids
                node_indices=np.array(node_indices),
                node_label=np.array(learning_labels)
            )
        )
        raw_data_graph.label_size += len(learning_labels)
    raw_data_graph.final_graphs = final_graphs.copy()

    #print label distribution
    print("-----------label distribution --------- datafold: ",params["df"])
    all_label=[item for sublist in params["graphs_learning_labels"] for item in sublist]
    print("total files", str(total_files)+"/"+str(len(params["skipped_file_list"])+total_files))
    print("total label size", raw_data_graph.label_size)
    # print("positive label",sum(all_label)/len(all_label))
    # print("negative label",1-(sum(all_label)/len(all_label)))
    # print("all_one_label", all_one_label, "percentage", all_one_label / total_files)
    # print("one_one_label", one_one_label, "percentage", one_one_label / total_files)
    # print("other_distribution", other_distribution, "percentage", other_distribution / total_files)
    weight_for_0, weight_for_1 = 1,1
    if params["df"]=="train" and params["use_class_weight"]==True:
        weight_for_0,weight_for_1=get_class_weight(sum(all_label),len(all_label)-sum(all_label),len(all_label))
    print("weight_for_0",weight_for_0)
    print("weight_for_1",weight_for_1)
    raw_data_graph.class_weight[params["df"]]={"weight_for_0":weight_for_0,"weight_for_1":weight_for_1}

    pickleWrite(raw_data_graph, params["label"] +"-"+params["graph_type"]+ "-" + params["benchmark"] + "-gnnInput_" + params["df"] + "_data")
    return raw_data_graph


def form_argument_bound_label(graphs_argument_indices, graphs_learning_labels, graphs_node_label_ids, graphs_node_symbols,
            graphs_adjacency_lists, file_name_list,label):
    bound_index=0
    if label=="argument_lower_bound":
        bound_index=0
    elif label=="argument_upper_bound":
        bound_index=1
    graphs_node_indices_temp = []
    graphs_learning_labels_temp = []
    node_label_ids_temp = []
    node_symbols_temp = []
    adjacency_lists_temp = []
    file_name_list_temp = []
    for one_graph_indices, one_graph_learning_labels, one_graphs_node_label_ids, one_graphs_node_symbols, one_graphs_adjacency_lists, one_file_name_list in zip(
            graphs_argument_indices, graphs_learning_labels, graphs_node_label_ids, graphs_node_symbols,
            graphs_adjacency_lists, file_name_list):
        temp_indces = []
        temp_labels = []
        for index, learning_label in zip(one_graph_indices, one_graph_learning_labels):
            if not isinstance(learning_label[bound_index], str):
                temp_indces.append(index)
                temp_labels.append(learning_label[bound_index])

        if len(temp_labels) != 0:  # delete this graph
            graphs_node_indices_temp.append(temp_indces)
            graphs_learning_labels_temp.append(temp_labels)
            node_label_ids_temp.append(one_graphs_node_label_ids)
            node_symbols_temp.append(one_graphs_node_symbols)
            adjacency_lists_temp.append(one_graphs_adjacency_lists)
            file_name_list_temp.append(one_file_name_list)
            # print("one_graph_learning_labels", one_graph_learning_labels)
            # print("temp_labels", temp_labels)
            # print("temp_indces", temp_indces)
    # if len(graphs_learning_labels_temp)==0:
    return graphs_node_indices_temp,graphs_learning_labels_temp,node_label_ids_temp,node_symbols_temp,adjacency_lists_temp,file_name_list_temp


def form_horn_graph_samples(graphs_node_label_ids,graphs_node_symbols, graphs_argument_indices, graphs_adjacency_lists,
                            graphs_argument_scores, total_number_of_node,graphs_control_location_indices, file_name_list,skipped_file_list,
                            graphs_label_indices,graphs_learning_labels,
                            label,vocabulary_set,token_map,benchmark, df,graph_type,pickle=True,):
    final_graphs_v1 = []
    raw_data_graph = get_batch_graph_sample_info(graphs_adjacency_lists,total_number_of_node,vocabulary_set,token_map)

    total_label=0
    total_nodes=0

    if len(graphs_control_location_indices)==0:
        graphs_control_location_indices=graphs_argument_indices
    # directory_wrong_extracted_cases=file_name_list[0][:file_name_list[0].rfind("/")+1]+"wrong_extracted_cases"
    # if not os.path.exists(directory_wrong_extracted_cases):
    #     os.makedirs(directory_wrong_extracted_cases)
    for node_label_ids, node_symbols, argument_indices, adjacency_lists, argument_scores,control_location_indices,\
        file_name in zip(graphs_node_label_ids,graphs_node_symbols,graphs_argument_indices,graphs_adjacency_lists,
                         graphs_argument_scores,graphs_control_location_indices,file_name_list):
        # convert to rank
        ranked_argument_scores = ss.rankdata(argument_scores, method="dense")
        argument_identify = np.array([0] * len(node_label_ids))
        argument_identify[argument_indices] = 1
        total_nodes+=len(node_label_ids)
        control_location_identify = np.array([0] * len(node_label_ids))
        control_location_identify[control_location_indices]=1

        #If .argument file has different number of argument with JSON file. copy that file to wrong_extracted_cases. and do not append this file
        if len(argument_indices)!=len(argument_scores):
            print("------------------argument_scores != argument_indices-------------------------")
            print("argument_scores", len(argument_scores))
            print("argument_indices", len(argument_indices))
            print(file_name)
            # shutil.copy(file_name, directory_wrong_extracted_cases)
            # from Miscellaneous import remove_list_of_file
            # remove_list_of_file(file_name)
        else:
            raw_data_graph.argument_identify.append(argument_identify)
            raw_data_graph.control_location_identify.append(control_location_identify)
            raw_data_graph.ranked_argument_scores.append(ranked_argument_scores)
            raw_data_graph.argument_scores.append(argument_scores)
            raw_data_graph.file_names.append(file_name)

            #node tokenization
            tokenized_node_label_ids=tokenize_symbols(token_map,node_symbols)

            if label == "rank":
                raw_data_graph.labels.append(argument_scores)
                total_label += len(ranked_argument_scores)
                final_graphs_v1.append(
                    HornGraphSample(
                        adjacency_lists=adjacency_lists,
                        node_features=np.array(tokenized_node_label_ids),
                        node_label=np.array(ranked_argument_scores),
                        node_indices=np.array(argument_indices),
                    )
                )
                raw_data_graph.label_size+=len(ranked_argument_scores)
            elif label == "occurrence":
                raw_data_graph.labels.append(argument_scores)
                total_label += len(argument_scores)
                final_graphs_v1.append(
                    HornGraphSample(
                        adjacency_lists=adjacency_lists,
                        node_features=np.array(tokenized_node_label_ids),
                        node_label=np.array(argument_scores),  # argument_scores
                        node_indices=np.array(argument_indices),
                    )
                )
                raw_data_graph.label_size += len(argument_scores)
            elif label == "argument_identify":
                raw_data_graph.labels.append(argument_identify)
                total_label += len(argument_identify)
                final_graphs_v1.append(
                    HornGraphSample(
                        adjacency_lists=adjacency_lists,
                        node_features=np.array(tokenized_node_label_ids),
                        #node_features=tf.constant(node_label_ids),
                        # node_label=tf.constant(ranked_argument_scores),
                        node_indices=np.array(argument_indices),
                        node_label=np.array(argument_identify)
                        #current_node_index=tf.constant([]),
                        #node_control_location=tf.constant(control_location_indices)
                    )
                )
                raw_data_graph.label_size += len(argument_identify)
            elif label == "control_location_identify":
                raw_data_graph.labels.append(control_location_identify)
                total_label += len(control_location_identify)
                final_graphs_v1.append(
                    HornGraphSample(
                        adjacency_lists=adjacency_lists,
                        node_features=np.array(tokenized_node_label_ids),
                        node_label=np.array(control_location_identify),
                        node_indices=np.array(argument_indices),
                    )
                )
                raw_data_graph.label_size += len(control_location_identify)
            elif label == "argument_identify_no_batchs":
                total_label += len([1])
                raw_data_graph.label_size += len(node_label_ids)
                for i in node_label_ids:
                    if i in argument_indices:
                        final_graphs_v1.append(
                            HornGraphSample(
                                adjacency_lists=adjacency_lists,
                                node_features=np.array(tokenized_node_label_ids),
                                node_label=np.array([1]),
                                node_argument=np.array(argument_indices),
                                current_node_index=np.array([i]),
                                node_control_location=np.array(control_location_indices)
                            )
                        )

                    else:
                        total_label += len([0])
                        final_graphs_v1.append(
                            HornGraphSample(
                                adjacency_lists=tuple(adjacency_lists),
                                node_features=tf.constant(tokenized_node_label_ids),
                                node_label=tf.constant([0]),
                                node_argument=tf.constant(argument_indices),
                                current_node_index=tf.constant([i]),
                                node_control_location=tf.constant(control_location_indices)
                            )
                        )
            else:
                pass
    raw_data_graph.final_graphs = final_graphs_v1.copy()
    if pickle == True:
        pickleWrite(raw_data_graph, label +"-" +graph_type+"-" + benchmark + "-gnnInput_" + df + "_data")
    print("total_label",total_label)
    print("total_nodes",total_nodes)
    return raw_data_graph



def get_predicted_label_list_divided_by_file(dataset,predicted_Y_loaded_model):
    label_number_lists = []
    for labels in dataset._label_list["test"]:
        label_number_lists.append(len(labels))
    predicted_label_lists = []
    for i, n in enumerate(label_number_lists):
        predicted_label_lists.append(
            predicted_Y_loaded_model[sum(label_number_lists[:i]):sum(label_number_lists[:i]) + n])
    return predicted_label_lists

def build_vocabulary(datafold=["train", "valid", "test"], path="",json_type=".layerHornGraph.JSON",max_nodes_per_batch=10000):
    vocabulary_set=set(["unknown_node","unknown_predicate","unknown_symbolic_constant","unknown_predicate_argument",
                        "unknown_operator","unknown_constant","unknown_guard","unknown_template","unknown_predicateName","unknown_clause","unknown_clauseHead","unknown_clauseBody","unknown_clauseArgument"])
    for fold in datafold:
        for json_file in glob.glob(path+fold+"_data/*"+json_type+".zip"):
            if os.path.exists(json_file):
                unzip_file(json_file)
            with open(json_file[:-len(".zip")]) as f:
                loaded_graph = json.load(f)
                load_ids=loaded_graph["nodeIds"]
                if len(load_ids) == 0 or len(load_ids) >= max_nodes_per_batch:
                    pass
                else:
                    vocabulary_set.update(loaded_graph["nodeSymbolList"])
            if os.path.exists(json_file):
                os.remove(json_file[:-len(".zip")])
    token_map={}
    token_id=0
    vocabulary_set=set([convert_constant_to_category(w) for w in vocabulary_set])
    for word in sorted(vocabulary_set):
        token_map[word]=token_id
        token_id=token_id+1
    #print("vocabulary_set",vocabulary_set)
    #print("token_map",token_map)
    return vocabulary_set,token_map

def tokenize_symbols(token_map,node_symbols):
    unknown_node_map = {"CONTROL": "unknown_predicate", "guard": "unknown_guard",
                        "predicateArgument": "unknown_predicate_argument", "template": "unknown_template",
                        "symbolicConstant": "unknown_symbolic_constant", "predicateName": "unknown_predicateName",
                        "clause": "unknown_clause",
                        "clauseHead": "unknown_clauseHead", "clauseBody": "unknown_clauseBody",
                        "clauseArgument": "unknown_clauseArgument"}
    converted_node_symbols=[ convert_constant_to_category(word) for word in node_symbols]
    # node tokenization
    full_operator_list = ["+", "-", "*", "/", ">", ">=", "=", "<", "<=", "==", "===", "!", "+++", "++", "**", "***",
                          "--", "---", "=/=","&","|","EX","and","or"]
    tokenized_node_label_ids = []
    #print("converted_node_symbols",converted_node_symbols)
    for symbol in converted_node_symbols:
        if symbol in token_map:
            tokenized_node_label_ids.append(token_map[symbol])
        # elif "CONTROL" in symbol:
        #     tokenized_node_label_ids.append(token_map["unknown_predicate"])
        elif symbol.isnumeric() or symbol[1:].isnumeric():
            tokenized_node_label_ids.append(token_map["unknown_constant"])
        elif symbol in full_operator_list:
            tokenized_node_label_ids.append(token_map["unknown_operator"])
        else:
            for k in unknown_node_map:
                if k in symbol:
                    tokenized_node_label_ids.append(token_map[unknown_node_map[k]])
            tokenized_node_label_ids.append(token_map["unknown_node"])
    return tokenized_node_label_ids

def convert_constant_to_category(constant_string):
    converted_string=constant_string
    if constant_string.isdigit() and int(constant_string)>1:
        converted_string="positive_constant"
    elif converted_string[1:].isdigit() and int(constant_string)<-1:
        converted_string="negative_constant"
    return converted_string

def count_paramsters(model):
    from keras import backend as K
    trainable_count = int(
        np.sum([K.count_params(p) for p in set(model.trainable_weights)]))
    non_trainable_count = int(
        np.sum([K.count_params(p) for p in set(model.non_trainable_weights)]))

    print('Total params: {:,}'.format(trainable_count + non_trainable_count))
    print('Trainable params: {:,}'.format(trainable_count))
    print('Non-trainable params: {:,}'.format(non_trainable_count))


def get_class_weight(pos, neg, total):
    weight_for_0 = (1 / neg) * (total) / 2
    weight_for_1 = (1 / pos) * (total) / 2
    return weight_for_0,weight_for_1

def get_test_loss_with_class_weight(class_weight,task_output,labels,from_logits=True):
    #predicted_y = (lambda: task_output if from_logits == False else [logit(x) for x in task_output])()
    #predicted_y=task_output
    predicted_y= task_output#tf.math.sigmoid(task_output)
    # description: implemented by exaggerating inputs
    # weighted_prediction = [y_hat * class_weight["weight_for_1"] if y == 1 else y_hat for y, y_hat in zip(labels, predicted_y)]
    # return tf.reduce_mean(tf.keras.losses.binary_crossentropy(labels,weighted_prediction,from_logits=from_logits))
    # description: implemented by weighted_cross_entropy_with_logits
    #print("class_weight",class_weight["weight_for_1"],class_weight["weight_for_0"])
    #return (lambda : tf.reduce_mean(tf.losses.binary_crossentropy(labels,task_output,from_logits))if class_weight["weight_for_1"]==1 else tf.reduce_mean(tf.nn.weighted_cross_entropy_with_logits(labels,predicted_y,class_weight["weight_for_1"])))()
    return tf.reduce_mean(tf.nn.weighted_cross_entropy_with_logits(labels,predicted_y,class_weight["weight_for_1"]))
    # description: implemented by conditions
    # ce = []
    # for y, y_hat in zip(labels, predicted_y):
    #     if y == 1:
    #         ce.append(tf.keras.losses.binary_crossentropy([y], [y_hat], from_logits=from_logits) * class_weight[
    #             "weight_for_1"])
    #     elif y == 0:
    #         ce.append(tf.keras.losses.binary_crossentropy([y], [y_hat], from_logits=from_logits))
    # return tf.reduce_mean(ce)
def logit(p):
    return tf.cast(tf.math.log(p/(1-p)),tf.float32)


def compute_loss(label, true_Y, predicted_Y_loaded_model, class_weight, from_logits,gathered_nodes_binary_classification_task):
    if label in gathered_nodes_binary_classification_task:
        return get_test_loss_with_class_weight(class_weight,predicted_Y_loaded_model,true_Y,from_logits=from_logits)
    elif label == "node_multiclass":
        predicted_Y_loaded_model=np.array(predicted_Y_loaded_model[0])
        per_node_losses= tf.nn.sigmoid_cross_entropy_with_logits(logits=predicted_Y_loaded_model, labels=true_Y)
        loss = tf.reduce_mean(tf.reduce_sum(per_node_losses, axis=-1))  # Compute mean loss _per node_
        return loss
    else:
        return tf.keras.losses.MSE(true_Y, predicted_Y_loaded_model)
class parameters():
    def __init__(self, relative_path,absolute_path,json_type,label,label_field):
        self.relative_path=relative_path
        self.absolute_path=absolute_path
        self.json_type=json_type
        self.label=label
        self.label_field=label_field
    def benchmark_name(self):
        return self.absolute_path[self.absolute_path.find("/benchmarks/") + len("/benchmarks/"):-1]