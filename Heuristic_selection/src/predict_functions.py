import os
import numpy as np
import tensorflow as tf
import tf2_gnn
from tf2_gnn.data import DataFold
from utils import call_eldarica
from Miscellaneous import add_JSON_field, GPU_switch, pickleRead, pickleWrite,clear_file
from horn_dataset import write_graph_to_pickle, form_GNN_inputs_and_labels, get_test_loss_with_class_weight, \
    compute_loss, HornGraphDataset
from plot import plot_scatter
from utils import file_compress, unzip_file,get_recall_and_precision
from utils_tf import get_classification_accuracy,my_round_fun,plot_confusion_matrix,plot_ROC
import json

def write_predicted_argument_score_to_json_file(dataset,predicted_argument_score_list,graph_type=".layerHornGraph.JSON"):
    # write predicted_argument_score to JSON file
    old_field = ["nodeIds", "nodeSymbolList","falseIndices", "argumentIndices", "controlLocationIndices","guardIndices",
                     "binaryAdjacentList", "ternaryAdjacencyList","unknownEdges","argumentIDList", "argumentNameList",
                     "argumentEdges","guardASTEdges","dataFlowASTEdges","controlFlowHyperEdges","dataFlowHyperEdges",
                     "argumentOccurrence","predicateIndices","predicateOccurrenceInClause","predicateStrongConnectedComponent",
                 "argumentBoundList","argumentBinaryOccurrenceList","templateIndices","templateRelevanceLabel","clauseIndices", #"templateCostLabel",
                 "clauseBinaryOccurrenceInCounterExampleList","templateASTEdges","templateEdges","controlLocationEdgeForSCC","dummyFiled"]
    new_field = ["predictedLabel"]
    for file, predicted_argument_score in zip(dataset._file_list["test"], predicted_argument_score_list):
        # # read argument id and name from .argument file
        # argument_file = file + ".arguments"
        # argument_ID_list=[]
        # argument_name_list=[] #head:arg
        # with open(argument_file) as f:
        #     parsed_arguments = parseArguments(f.read())
        #     for argument in parsed_arguments:
        #         argument_ID_list.append(int(argument.ID))
        #         argument_name_list.append(argument.head+":"+argument.arg)

        new_filed_content=[]
        new_filed_content.append(list(predicted_argument_score.numpy().astype(float)))
        add_JSON_field(file,graph_type,old_field,new_field,new_filed_content)
        #
        # json_file = file + graph_type
        # json_obj = {}
        # # read JSON file and add predicted_argument_score to json object
        # with open(json_file) as f:
        #     loaded_graph = json.load(f)
        #     json_obj["nodeIds"] = loaded_graph["nodeIds"]
        #     json_obj["nodeSymbolList"] = loaded_graph["nodeSymbolList"]
        #
        #     json_obj["binaryAdjacentList"] = loaded_graph["binaryAdjacentList"]
        #     json_obj["predicateArgumentEdges"] = loaded_graph["predicateArgumentEdges"]
        #     json_obj["predicateInstanceEdges"] = loaded_graph["predicateInstanceEdges"]
        #     json_obj["argumentInstanceEdges"] = loaded_graph["argumentInstanceEdges"]
        #     json_obj["controlHeadEdges"] = loaded_graph["controlHeadEdges"]
        #     json_obj["controlBodyEdges"]= loaded_graph["controlBodyEdges"]
        #     json_obj["controlArgumentEdges"] = loaded_graph["controlArgumentEdges"]
        #     json_obj["guardEdges"] = loaded_graph["guardEdges"]
        #     json_obj["dataEdges"] = loaded_graph["dataEdges"]
        #
        #
        #     json_obj["predictedArgumentScores"] = list(predicted_argument_score.numpy().astype(float))
        #
        #
        # # write json object to JSON file
        # clear_file(json_file)
        # with open(json_file, 'w') as f:
        #     json.dump(json_obj, f,indent=4)


def merge_predicted_label(params):
    for fileName in params["file_list"]:
        json_file = fileName +"."+params["graph_type"]+".JSON"
        print("json_file", json_file)
        if os.path.exists(json_file + ".zip"):
            unzip_file(json_file + ".zip")
            os.remove(json_file + ".zip")

            with open(json_file) as f:
                json_obj = json.load(f)

            temp_predictedLabel=[]
            boolean_counter=0
            non_boolean_counter=0
            for b in json_obj["templateRelevanceBooleanTypeList"]:
                if b==0:# non-boolean tempaltes
                    temp_predictedLabel.append(json_obj["predictedLabel_template_relevance_Eq_usefulness"][non_boolean_counter])
                    non_boolean_counter=non_boolean_counter+1
                else:#boolean tempaltes
                    l=json_obj["predictedLabel_template_relevance_boolean_usefulness"][boolean_counter]
                    if l==1: #map back to 0 and 4
                        temp_predictedLabel.append(4)
                    else:
                        temp_predictedLabel.append(0)
                    boolean_counter=boolean_counter+1

            json_obj["predictedLabel"] = temp_predictedLabel
            print(os.path.basename(fileName),"temp_predictedLabel",temp_predictedLabel)


            clear_file(json_file)
            with open(json_file, 'w') as f:
                json.dump(json_obj, f, sort_keys=True)

            file_compress([json_file], json_file + ".zip")
            os.remove(json_file)


def write_predicted_label_to_JSON_file(dataset,predicted_Y_loaded_model,graph_type,threshold,verbose=True,label="",gathered_nodes_multi_classification_task=[]):
    current_positon=0
    for g,file_name in zip(dataset._loaded_data[DataFold.TEST],dataset._file_list["test"]):
        predicted_label=predicted_Y_loaded_model[current_positon:current_positon+len(g._node_label)]
        current_positon=current_positon+len(g._node_label)
        corrected_label = 0
        true_Y_list=np.array(g._node_label)
        transfored_predicted_Y_loaded_model=predicted_label

        if label in gathered_nodes_multi_classification_task:
            true_Y_list=[np.argmax(y) for y in true_Y_list]
            transfored_predicted_Y_loaded_model=[np.argmax(y) for y in transfored_predicted_Y_loaded_model]
        for y, predicted_Y in zip(true_Y_list, transfored_predicted_Y_loaded_model):
            if y == predicted_Y:
                corrected_label = corrected_label + 1

        if verbose==True:
            print("file_name", file_name)
            # print("g.node_indices", len(g._node_indices),g._node_indices)
            # print("g.node_label", len(true_Y_list), true_Y_list)
            # print("predicted_label", np.array(transfored_predicted_Y_loaded_model))
            print("threshold", threshold)
            print("true_Y_list", true_Y_list)
            print("transfored_predicted_Y_loaded_model", np.array(transfored_predicted_Y_loaded_model))
            print("corrected label:" + str(corrected_label) + "/" + str(len(g._node_label)))
            if corrected_label<len(g._node_label):
                from analysis_extracted_data import copy_relative_files
                benchmark_folder=os.path.dirname(os.path.dirname(file_name))
                final_target_folder=os.path.join(benchmark_folder,"wrong_predicted")
                try:
                    os.mkdir(final_target_folder)
                except:
                    pass
                print("not 100% accuracy:",corrected_label/len(g._node_label))
                copy_relative_files(file_name, final_target_folder)

        old_field = ["nodeIds", "nodeSymbolList", "falseIndices", "argumentIndices", "controlLocationIndices","guardIndices",
                     "unknownEdges", "argumentIDList", "argumentNameList",
                     "argumentOccurrence", "predicateIndices", "predicateOccurrenceInClause",
                     "predicateStrongConnectedComponent",
                     "argumentBoundList", "argumentBinaryOccurrenceList", "templateIndices", "templateRelevanceLabel","templateRelevanceBooleanTypeList", "templateCostLabel",
                     "verifHintTplPredEdges", "verifHintTplPredPosNegEdges", "verifHintTplEqTermEdges",
                     "verifHintTplInEqTermEdges", "verifHintTplInEqTermPosNegEdges", "templateEdges",
                     "clauseIndices","clauseBinaryOccurrenceInCounterExampleList",
                     "binaryAdjacentList",
                     "ternaryAdjacencyList",
                     "dummyFiled"]


        if graph_type[1:-len(".JSON")]=="hyperEdgeGraph":
            old_field=old_field+["argumentEdges","guardASTEdges","dataFlowASTEdges","templateASTEdges","controlFlowHyperEdges","dataFlowHyperEdges",
                                 "ASTEdges","AST_1Edges","AST_2Edges", "templateEdges","verifHintTplEqTermEdges","verifHintTplInEqTermEdges","verifHintTplPredPosNegEdges",
                                 "controlLocationEdgeForSCC","predicateTransitiveEdges"]
        else:
            old_field=old_field+["predicateArgumentEdges","predicateInstanceEdges","argumentInstanceEdges","controlHeadEdges","controlBodyEdges","controlArgumentEdges",
                                 "subTermEdges","guardEdges","dataEdges"]
        json_file_name=file_name+graph_type
        if os.path.exists(json_file_name + ".zip"):
            unzip_file(json_file_name + ".zip")
            os.remove(json_file_name + ".zip")


        if label=="template_relevance_boolean_usefulness":
            predicted_label_suffix = "_template_relevance_boolean_usefulness"
        elif label =="template_relevance_Eq_usefulness":
            predicted_label_suffix = "_template_relevance_Eq_usefulness"
        else:
            predicted_label_suffix=""

        new_field = ["predictedLabel"+predicted_label_suffix,"predictedLabelLogit"+predicted_label_suffix]
        new_filed_content=[[int(x) for x in transfored_predicted_Y_loaded_model],[str(np.round(l,2)) for l in predicted_label]]
        add_JSON_field(file_name,graph_type,old_field,new_field,new_filed_content)

        file_compress([json_file_name],json_file_name+".zip")
        os.remove(json_file_name)


def set_threshold_by_roundings(true_Y,predicted_Y_loaded_model,label,gathered_nodes_multi_classification_task):
    threshold_list=np.arange(0,1,0.1)
    #threshold_list=[1e-13,1e-12,1e-11,1e-10,1e-9,1e-8,1e-7,1e-6,1e-5,0.00005,1e-4,0.0005,1e-3,1e-2,0.05,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,0.95,0.99,0.999,0.9999,0.99999]
    best_set={"threshold":0,"accuracy":0,"num_correct":0}
    for i in threshold_list:
        num_correct = tf.reduce_sum(tf.cast(tf.math.equal(true_Y, my_round_fun(predicted_Y_loaded_model,i,label,gathered_nodes_multi_classification_task=gathered_nodes_multi_classification_task)), tf.int32))
        accuracy = num_correct / len(predicted_Y_loaded_model)
        #print("threshold", i,"accuracy",float(accuracy))
        if num_correct>best_set["num_correct"]:
            best_set["num_correct"] = num_correct
            best_set["accuracy"]=float(accuracy)
            best_set["threshold"]=float(i)
        # print(true_Y)
        # print(list(my_round_fun(predicted_Y_loaded_model,i)))
    return best_set
def wrapped_set_threshold_by_ranks(true_Y,true_Y_by_file,predicted_Y_loaded_model,true_Y_file_list):
    rank_percentage_list = np.arange(0.0, 1.0, 0.05)
    best_set={"top_percentage":0,"accuracy":0}
    for rank_percentage in rank_percentage_list:
        current_set=set_threshold_by_ranks(true_Y, true_Y_by_file, predicted_Y_loaded_model, true_Y_file_list, rank_percentage)
        if current_set["accuracy"]>best_set["accuracy"]:
            best_set["accuracy"]=current_set["accuracy"]
            best_set["top_percentage"] = current_set["top_percentage"]
        #print("rank_percentage", rank_percentage,"accuracy",current_set["accuracy"])
    return best_set

def set_threshold_by_ranks(true_Y,true_Y_by_file,predicted_Y_loaded_model,true_Y_file_list,top_percentage=0.8):
    rounded_by_top_rank = []
    top_percentage=top_percentage
    #top_k = 5
    predicted_Y_separated_by_file = []
    last = 0
    for y in true_Y_by_file:
        # print("y",len(y))
        predicted_Y_separated_by_file.append(predicted_Y_loaded_model[last:last + len(y)])
        last = last + len(y)

    for y, y_hat, file_name in zip(true_Y_by_file, predicted_Y_separated_by_file, true_Y_file_list):
        top_k_value=sorted(y_hat)[int(len(y_hat)*top_percentage)]
        rounded_by_top_rank.extend([ 1 if v>=top_k_value else 0 for v in y_hat ])


    num_correct = tf.reduce_sum(tf.cast(tf.math.equal(true_Y, rounded_by_top_rank), tf.int32))
    accuracy = num_correct / len(predicted_Y_loaded_model)
    #print("top_percentage",top_percentage,"accuracy",float(accuracy))
    return {"top_percentage":top_percentage,"accuracy":float(accuracy)}

def write_best_threshod_to_pickle(parameters,true_Y, predicted_Y_loaded_model,label,benchmark,gathered_nodes_multi_classification_task):
    best_set_threshold=set_threshold_by_roundings(true_Y, predicted_Y_loaded_model,label,gathered_nodes_multi_classification_task=gathered_nodes_multi_classification_task)
    parameters["best_threshold_set"]=best_set_threshold
    pickleWrite(parameters, benchmark+"-"+label+"-parameters","../src/trained_model/")
    return best_set_threshold

def wrapped_prediction(trained_model_path="",benchmark="",benchmark_fold="",label="template_relevance",force_read=True,form_label=True,
                       json_type=".hyperEdgeGraph.JSON",graph_type="hyperEdgeGraph",verbose=True,
                       gathered_nodes_binary_classification_task=["template_relevance"],hyper_parameter={},
                       set_max_nodes_per_batch=False,file_list=[],num_node_target_labels=2,gathered_nodes_multi_classification_task=[]):

    path = "../benchmarks/" + benchmark_fold + "/"
    benchmark_name = path[len("../benchmarks/"):-1]
    parameters = pickleRead(benchmark + "-" +graph_type+"-"+ label + "-parameters", "../src/trained_model/")
    parameters["benchmark"] = benchmark_name
    parameters["gathered_nodes_multi_classification_task"]=gathered_nodes_multi_classification_task
    print("vocabulary size:", parameters["node_vocab_size"])

    if set_max_nodes_per_batch==True:
        parameters['max_nodes_per_batch']=hyper_parameter["max_nodes_per_batch"]

    if force_read == True:
        params_write_graph_to_pickle={"benchmark":benchmark_name,"data_fold":["test"],"label":label,"path":path,"graph_type":graph_type,
                                      "max_nodes_per_batch":hyper_parameter["max_nodes_per_batch"],"vocabulary_name":benchmark,
                                      "file_list":file_list,"file_type":".smt2","label_field":hyper_parameter["label_field"]}
        write_graph_to_pickle(params_write_graph_to_pickle)
    else:
        print("Use pickle data for training")
    # if form_label == True and not os.path.isfile("../pickleData/" + label + "-" + benchmark_name + "-gnnInput_train_data.txt"):
    if form_label == True:
        params_form_GNN_inputs_and_labels={"label":label,"datafold":["test"],"benchmark":benchmark_name,"graph_type":graph_type,
                                           "gathered_nodes_binary_classification_task":gathered_nodes_binary_classification_task,
                                           "use_class_weight":False,"num_node_target_labels":num_node_target_labels,"gathered_nodes_multi_classification_task":gathered_nodes_multi_classification_task}
        form_GNN_inputs_and_labels(params_form_GNN_inputs_and_labels)



    quiet = False
    dataset = HornGraphDataset(parameters)
    dataset.load_data([DataFold.TEST])

    test_data = dataset.get_tensorflow_dataset(DataFold.TEST)
    loaded_model = tf2_gnn.cli_utils.model_utils.load_model_for_prediction(trained_model_path, dataset)
    _, _, test_results = loaded_model.run_one_epoch(test_data, training=False, quiet=quiet)
    test_metric, test_metric_string = loaded_model.compute_epoch_metrics(test_results)
    predicted_Y_loaded_model = loaded_model.predict(test_data)

    sigmoid_predicted_Y_loaded_model = tf.math.sigmoid(predicted_Y_loaded_model)
    rounded_predicted_Y_loaded_model = my_round_fun(sigmoid_predicted_Y_loaded_model,threshold=0.5, label=label,gathered_nodes_multi_classification_task=gathered_nodes_multi_classification_task)
    print("label",label)
    if verbose==True:
        print("predicted_Y_loaded_model",predicted_Y_loaded_model)
        print("rounded_predicted_Y_loaded_model",rounded_predicted_Y_loaded_model)
        print("dataset._label_list",dataset._label_list)

    print("test_metric_string", test_metric_string)
    print("test_metric", test_metric)


    # test measurement
    true_Y = []
    true_Y_by_file = []
    true_Y_file_list = []
    for data in iter(test_data):
        true_Y.extend(np.array(data[1]["node_labels"]))
    for data in dataset._label_list["test"]:
        true_Y_by_file.append(np.array(data))
    for file_name in dataset._file_list["test"]:
        true_Y_file_list.append(file_name)

    class_weight=parameters["class_weight_fold"]
    from_logits=True


    error_loaded_model = compute_loss(label, true_Y, predicted_Y_loaded_model, class_weight, from_logits,
                                      gathered_nodes_binary_classification_task,gathered_nodes_multi_classification_task)
    print("error_loaded_model",error_loaded_model)
    if label in gathered_nodes_binary_classification_task:
        best_set_threshold = (lambda : hyper_parameter["best_threshold_set"] if hyper_parameter["read_best_threshold"] else write_best_threshod_to_pickle(parameters,true_Y, predicted_Y_loaded_model,label,benchmark,gathered_nodes_multi_classification_task))()
        best_set_ranks = (lambda : {"top_percentage":0,"accuracy":0} if hyper_parameter["read_best_threshold"] else wrapped_set_threshold_by_ranks(true_Y, true_Y_by_file, predicted_Y_loaded_model, true_Y_file_list))()
        print("----------", benchmark_fold, "-----", label, "----------")
        print(hyper_parameter)
        positive_label_number = sum(true_Y)
        negative_label_number = len(true_Y) - positive_label_number

        print("best_set_threshold",best_set_threshold)
        print("positive_label_percentage", positive_label_number / len(true_Y))
        print("negative_label_number", negative_label_number / len(true_Y))
        print("best_set_threshold", "threshold value:", best_set_threshold["threshold"], "accuracy:",
              best_set_threshold["accuracy"])
        print("best_set_ranks", "top_percentage:", best_set_ranks["top_percentage"], "accuracy:",
              best_set_ranks["accuracy"])
        random_guess_accuracy = max(positive_label_number / len(true_Y), negative_label_number / len(true_Y))
        print("{0:.2%}".format(max(best_set_threshold["accuracy"], best_set_ranks["accuracy"]) - random_guess_accuracy),
              "better than random guess")

        return {"trained_model_path":trained_model_path,"best_set_threshold":best_set_threshold["accuracy"],"best_set_ranks":best_set_ranks["accuracy"],
                "benchmark_fold":benchmark_fold,"label":label,"hyper_parameter":hyper_parameter,"positive_label_percentage":positive_label_number / len(true_Y),
                "true_Y":true_Y,"negative_label_number":negative_label_number / len(true_Y),"dataset":dataset,"predicted_Y_loaded_model":predicted_Y_loaded_model,
                "best_threshold":best_set_threshold["threshold"],"rounded_predicted_Y_loaded_model":rounded_predicted_Y_loaded_model}
    else:
        return {"trained_model_path": trained_model_path,"dataset":dataset,"true_Y":true_Y,
                "benchmark_fold": benchmark_fold, "label": label, "hyper_parameter": hyper_parameter,
                "rounded_predicted_Y_loaded_model":rounded_predicted_Y_loaded_model,"predicted_Y_loaded_model": predicted_Y_loaded_model,"best_threshold":0.5}



def predict_label(params):
    '''
    params["benchmark"]
    params["max_nodes_per_batch"]
    params["benchmark_fold"]
    params["file_list"]
    params["trained_model_path"]
    params["use_test_threshold"]
    params["label"]
    params["separateByPredicates"]
    params["verbose"]
    params["num_node_target_labels"]
    params["GPU"]
    params["graph_type"]
    params["gathered_nodes_binary_classification_task"]
    params["gathered_nodes_multi_classification_task"]
    '''
    if params["separateByPredicates"]:
        params["file_list"]=[]
    # read best threshold from pickle
    parameters = pickleRead(params["benchmark"] + "-"+ params["graph_type"] + "-" + params["label"] + "-parameters", "../src/trained_model/")
    print("parameters",parameters)
    hyper_parameter = {"max_nodes_per_batch": params["max_nodes_per_batch"],
                       "best_threshold_set": (lambda : parameters["best_threshold_set"] if params["use_test_threshold"]== True else {"threshold":0.5,"accuracy":0})(),
                       "read_best_threshold": True,"label_field":parameters["label_field"]}
    json_type = "."+params["graph_type"]+".JSON"
    #graph_type = json_type[1:json_type.find(".JSON")]

    force_read = True
    form_label = True
    GPU_switch(params["GPU"])
    result_dir = wrapped_prediction(trained_model_path=params["trained_model_path"], benchmark=params["benchmark"],
                                    benchmark_fold=params["benchmark_fold"], force_read=force_read, form_label=form_label,
                                    json_type=json_type, graph_type=params["graph_type"],
                                    gathered_nodes_binary_classification_task=params["gathered_nodes_binary_classification_task"],
                                    hyper_parameter=hyper_parameter,label=params["label"],
                                    set_max_nodes_per_batch=True,file_list=params["file_list"],
                                    num_node_target_labels=params["num_node_target_labels"],gathered_nodes_multi_classification_task=params["gathered_nodes_multi_classification_task"])
    write_predicted_label_to_JSON_file(result_dir["dataset"], result_dir["rounded_predicted_Y_loaded_model"], json_type,
                                       result_dir["best_threshold"],verbose=params["verbose"],label=params["label"],gathered_nodes_multi_classification_task=params["gathered_nodes_multi_classification_task"])

    plot_name="predicted"
    if params["label"] in params["gathered_nodes_binary_classification_task"]+["argument_identify","scc_test"]: # confusion matrix on true y and predicted y
        accuracy = get_classification_accuracy(result_dir["true_Y"], my_round_fun(result_dir["predicted_Y_loaded_model"],threshold=0.5,
                                                                                  label=params["label"]), params["label"],result_dir["predicted_Y_loaded_model"], result_dir["predicted_Y_loaded_model"],gathered_nodes_multi_classification_task=params["gathered_nodes_multi_classification_task"])
        saving_path_confusion_matrix="trained_model/" + plot_name+ "-confusion_matrix.png"
        saving_path_roc = "trained_model/" + plot_name + "-ROC.png"
        recall,precision,f1_score,false_positive_rate=get_recall_and_precision(result_dir["true_Y"],
                                                                               my_round_fun(result_dir["predicted_Y_loaded_model"],
                                                                                            threshold=0.5,label=params["label"],gathered_nodes_multi_classification_task=params["gathered_nodes_multi_classification_task"]),verbose=True)
        plot_confusion_matrix(result_dir["predicted_Y_loaded_model"],result_dir["true_Y"],saving_path_confusion_matrix,
                              recall=recall,precision=precision,f1_score=f1_score,accuracy=accuracy,gathered_nodes_multi_classification_task=params["gathered_nodes_multi_classification_task"])
        plot_ROC(false_positive_rate,recall,saving_path_roc)
    elif params["label"] in params["gathered_nodes_multi_classification_task"]:
        saving_path_confusion_matrix = "trained_model/" + plot_name + "-confusion_matrix.png"
        plot_confusion_matrix(result_dir["predicted_Y_loaded_model"], result_dir["true_Y"], saving_path_confusion_matrix, recall="-",
                              precision="-", f1_score="-",label=params["label"],gathered_nodes_multi_classification_task=params["gathered_nodes_multi_classification_task"])
    else:
        plot_scatter(result_dir["true_Y"], result_dir["predicted_Y_loaded_model"], name="", range=[0, 0], x_label="True Values", y_label="Predictions")

    # if label=="predicate_occurrence_in_clauses":
    #     plot_scatter(result_dir["true_Y"], result_dir["predicted_Y_loaded_model"], name=label+"-"+graph_type, range=[0, 0], x_label="True Values", y_label="Predictions")

    return result_dir["predicted_Y_loaded_model"]


