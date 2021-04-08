import numpy as np
import tensorflow as tf
import tf2_gnn
from tf2_gnn.data import DataFold
from utils import call_eldarica
from Miscellaneous import add_JSON_field
from Miscellaneous import pickleRead,pickleWrite
from horn_dataset import HornGraphDataset
from horn_dataset import write_graph_to_pickle, form_GNN_inputs_and_labels


def write_predicted_argument_score_to_json_file(dataset,predicted_argument_score_list,graph_type=".layerHornGraph.JSON"):
    # write predicted_argument_score to JSON file
    old_field = ["nodeIds", "nodeSymbolList","falseIndices", "argumentIndices", "controlLocationIndices",
                     "binaryAdjacentList", "ternaryAdjacencyList","unknownEdges","argumentIDList", "argumentNameList",
                     "argumentEdges","guardASTEdges","dataFlowASTEdges","controlFlowHyperEdges","dataFlowHyperEdges",
                     "argumentOccurrence","predicateIndices","predicateOccurrenceInClause","predicateStrongConnectedComponent",
                 "argumentBoundList","argumentBinaryOccurrenceList","templateIndices","templateRelevanceLabel","clauseIndices",
                 "clauseBinaryOccurrenceInCounterExampleList","templateASTEdges","templateEdges","dummyFiled"]
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
def write_predicted_label_to_JSON_file(dataset,predicted_Y_loaded_model,graph_type,threshold):
    current_positon=0
    for g,file_name in zip(dataset._loaded_data[DataFold.TEST],dataset._file_list["test"]):
        predicted_label=predicted_Y_loaded_model[current_positon:current_positon+len(g._node_label)]
        current_positon=current_positon+len(g._node_label)
        print("file_name",file_name)
        #print("g.node_indices", len(g._node_indices),g._node_indices)
        print("g.node_label",len(g._node_label), g._node_label)
        print("predicted_label",predicted_label)
        print("threshold",threshold)

        transfomed_predicted_label = [(lambda l : 1 if l>threshold else 0) (l) for l in predicted_label]

        corrected_label = 0
        for true_Y, predicted_Y in zip(g._node_label, transfomed_predicted_label):
            if true_Y == predicted_Y:
                corrected_label = corrected_label + 1
        print("corrected label:" + str(corrected_label) + "/" + str(len(g._node_label)))

        old_field = ["nodeIds", "nodeSymbolList", "falseIndices", "argumentIndices", "controlLocationIndices",
                     "binaryAdjacentList", "ternaryAdjacencyList", "unknownEdges", "argumentIDList", "argumentNameList",
                     "argumentEdges", "guardASTEdges", "dataFlowASTEdges", "controlFlowHyperEdges",
                     "dataFlowHyperEdges",
                     "argumentOccurrence", "predicateIndices", "predicateOccurrenceInClause",
                     "predicateStrongConnectedComponent",
                     "argumentBoundList", "argumentBinaryOccurrenceList", "templateIndices", "templateRelevanceLabel",
                     "clauseIndices",
                     "clauseBinaryOccurrenceInCounterExampleList", "templateASTEdges", "templateEdges", "dummyFiled"]
        new_field = ["predictedLabel"]
        new_filed_content=[transfomed_predicted_label]
        add_JSON_field(file_name,graph_type,old_field,new_field,new_filed_content)
        old_field=old_field+["predictedLabel"]
        new_field = ["predictedLabelLogit"]
        new_filed_content = [[str(np.round(l,2)) for l in predicted_label]]
        add_JSON_field(file_name, graph_type, old_field, new_field, new_filed_content)


def my_round_fun(num_list,threshold):
    return  [float(1) if num>threshold else float(0) for num in num_list]

def set_threshold_by_roundings(true_Y,predicted_Y_loaded_model):
    threshold_list=np.arange(0,1,0.05)
    #threshold_list=[1e-13,1e-12,1e-11,1e-10,1e-9,1e-8,1e-7,1e-6,1e-5,0.00005,1e-4,0.0005,1e-3,1e-2,0.05,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,0.95,0.99,0.999,0.9999,0.99999]
    best_set={"threshold":0,"accuracy":0,"num_correct":0}
    for i in threshold_list:
        num_correct = tf.reduce_sum(tf.cast(tf.math.equal(true_Y, my_round_fun(predicted_Y_loaded_model,i)), tf.int32))
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

def write_best_threshod_to_pickle(parameters,true_Y, predicted_Y_loaded_model,label,benchmark):
    best_set_threshold=set_threshold_by_roundings(true_Y, predicted_Y_loaded_model)
    parameters["best_threshold_set"]=best_set_threshold
    pickleWrite(parameters, benchmark+"-"+label+"-parameters","../src/trained_model/")
    return best_set_threshold

def wrapped_prediction(trained_model_path,benchmark,benchmark_fold,label="template_relevance",force_read=True,form_label=True,
                       json_type=".hyperEdgeHornGraph.JSON",graph_type="hyperEdgeHornGraph",
                       gathered_nodes_binary_classification_task=["template_relevance"],hyper_parameter={},set_max_nodes_per_batch=False,file_list=[]):

    path = "../benchmarks/" + benchmark_fold + "/"
    benchmark_name = path[len("../benchmarks/"):-1]
    parameters = pickleRead(benchmark + "-" + label + "-parameters", "../src/trained_model/")
    parameters["benchmark"] = benchmark_name
    print("vocabulary size:", parameters["node_vocab_size"])
    if set_max_nodes_per_batch==True:
        parameters['max_nodes_per_batch']=hyper_parameter["max_nodes_per_batch"]


    if force_read == True:
        write_graph_to_pickle(benchmark_name, data_fold=["test"], label=label, path=path,
                              file_type=".smt2",  graph_type=graph_type,
                              max_nodes_per_batch=parameters['max_nodes_per_batch'], vocabulary_name=benchmark,file_list=file_list)
    else:
        print("Use pickle data for training")
    # if form_label == True and not os.path.isfile("../pickleData/" + label + "-" + benchmark_name + "-gnnInput_train_data.txt"):
    if form_label == True:
        form_GNN_inputs_and_labels(label=label, datafold=["test"], benchmark=benchmark_name, graph_type=graph_type,
                                   gathered_nodes_binary_classification_task=gathered_nodes_binary_classification_task)

    quiet = False
    dataset = HornGraphDataset(parameters)
    dataset.load_data([DataFold.TEST])
    test_data = dataset.get_tensorflow_dataset(DataFold.TEST)
    loaded_model = tf2_gnn.cli_utils.model_utils.load_model_for_prediction(trained_model_path, dataset)
    _, _, test_results = loaded_model.run_one_epoch(test_data, training=False, quiet=quiet)
    test_metric, test_metric_string = loaded_model.compute_epoch_metrics(test_results)
    predicted_Y_loaded_model = loaded_model.predict(test_data)

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

    mse_loaded_model = tf.keras.losses.MSE(true_Y, predicted_Y_loaded_model)
    print("\n mse_loaded_model_predicted_Y_and_True_Y", mse_loaded_model)


    mse_mean = tf.keras.losses.MSE([np.mean(true_Y)] * len(true_Y), true_Y)
    print("\n mse_mean_Y_and_True_Y", mse_mean)
    best_set_threshold = (lambda : hyper_parameter["best_threshold_set"] if hyper_parameter["read_best_threshold"] else write_best_threshod_to_pickle(parameters,true_Y, predicted_Y_loaded_model,label,benchmark))()
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
            "negative_label_number":negative_label_number / len(true_Y),"dataset":dataset,"predicted_Y_loaded_model":predicted_Y_loaded_model,"best_threshold":best_set_threshold["threshold"]}




