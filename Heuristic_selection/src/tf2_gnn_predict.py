import tf2_gnn
from horn_dataset import HornGraphDataset
from tf2_gnn.data import DataFold
from horn_dataset import write_graph_to_pickle,form_GNN_inputs_and_labels
from Miscellaneous import clear_file,add_JSON_field
import os
import numpy as np
import tensorflow as tf


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
        #     json.dump(json_obj, f)
def write_predicted_label_to_JSON_file(dataset,predicted_Y_loaded_model,graph_type):
    current_positon=0
    for g,file_name in zip(dataset._loaded_data[DataFold.TEST],dataset._file_list["test"]):
        predicted_label=predicted_Y_loaded_model[current_positon:current_positon+len(g._node_label)]
        current_positon=current_positon+len(g._node_label)
        print("file_name",file_name)
        print("g.node_indices", len(g._node_indices),g._node_indices)
        print("g.node_label",len(g._node_label), g._node_label)
        print("predicted_label",predicted_label)
        #todo: decide threshold later
        threshold=0.5
        transfomed_predicted_label=[(lambda l : 1 if l>threshold else 0) (l) for l in predicted_label]
        print("transfomed_predicted_label",transfomed_predicted_label)

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


def my_round_fun(num_list,threshold):
    return  [float(1) if num>threshold else float(0) for num in num_list]

def set_threshold_by_roundings(true_Y,predicted_Y_loaded_model):
    #tf.math.round()
    #by value

    threshold_list=[0.00001,0.00005,0.0001,0.0005,0.001,0.01,0.05,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,0.95,0.99,0.999,0.9999,0.99999]
    for i in threshold_list:
        num_correct = tf.reduce_sum(tf.cast(tf.math.equal(true_Y, my_round_fun(predicted_Y_loaded_model,i)), tf.int32))
        accuracy = num_correct / len(predicted_Y_loaded_model)
        print("threshold", i,"accuracy",float(accuracy))
        # print(true_Y)
        # print(list(my_round_fun(predicted_Y_loaded_model,i)))
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

    all_one_label=0
    one_one_label=0
    other_distribution=0
    for y, y_hat, file_name in zip(true_Y_by_file, predicted_Y_separated_by_file, true_Y_file_list):
        # print("file_name", file_name)
        # print("true y", len(y), y)
        # print("predicted y", len(y_hat), y_hat)
        top_k_value=sorted(y_hat)[int(len(y_hat)*top_percentage)]
        rounded_by_top_rank.extend([ 1 if v>=top_k_value else 0 for v in y_hat ])
        #statistics
        # if len(y)==sum(y):
        #     all_one_label=all_one_label+1
        # elif sum(y)==1:
        #     one_one_label=one_one_label+1
        # else:
        #     other_distribution=other_distribution+1

    num_correct = tf.reduce_sum(tf.cast(tf.math.equal(true_Y, rounded_by_top_rank), tf.int32))
    accuracy = num_correct / len(predicted_Y_loaded_model)
    print("top_percentage",top_percentage,"accuracy",float(accuracy))


    # print("total files", len(true_Y_by_file))
    # print("all_one_label", all_one_label,"percentage",all_one_label/len(true_Y_by_file))
    # print("one_one_label", one_one_label,"percentage",one_one_label/len(true_Y_by_file))
    # print("other_distribution", other_distribution,"percentage",other_distribution/len(true_Y_by_file))


def main():
    path="../benchmarks/new-full-dataset-with-and-test/"
    trained_model_path="/home/cheli243/PycharmProjects/HintsLearning/src/trained_model/GNN_Argument_selection__2021-01-24_20-20-15_best.pkl"
    json_type=".hyperEdgeHornGraph.JSON"
    graph_type = json_type[1:json_type.find(".JSON")]
    gathered_nodes_binary_classification_task = ["predicate_occurrence_in_SCG", "argument_lower_bound_existence",
                                                 "argument_upper_bound_existence", "argument_occurrence_binary",
                                                 "template_relevance", "clause_occurrence_in_counter_examples_binary"]

    benchmark_name = path[len("../benchmarks/"):-1]
    force_read=True
    form_label=True
    #label = "occurrence"
    # label = "rank"
    # label = "argument_identify"
    # label = "argument_identify_no_batchs"
    # label = "control_location_identify"
    #label = "predicate_occurrence_in_SCG"
    #label = "argument_occurrence_binary"
    label = "template_relevance"

    parameters = tf2_gnn.GNN.get_default_hyperparameters()
    parameters["benchmark"] = benchmark_name
    parameters["label_type"] = label
    parameters["graph_type"] = graph_type
    parameters['max_nodes_per_batch'] = 10000
    parameters["gathered_nodes_binary_classification_task"] = gathered_nodes_binary_classification_task

    if force_read==True:
        write_graph_to_pickle(benchmark_name,  data_fold=["test"], label=label,path=path,from_json=True,file_type="smt2",json_type=json_type,graph_type=graph_type,max_nodes_per_batch=parameters['max_nodes_per_batch'])
    else:
        print("Use pickle data for training")
    #if form_label == True and not os.path.isfile("../pickleData/" + label + "-" + benchmark_name + "-gnnInput_train_data.txt"):
    if form_label == True:
        form_GNN_inputs_and_labels(label=label, datafold=["test"], benchmark=benchmark_name,graph_type=graph_type,gathered_nodes_binary_classification_task=gathered_nodes_binary_classification_task)

    quiet=False

    dataset = HornGraphDataset(parameters)
    dataset.load_data([DataFold.TEST])
    test_data = dataset.get_tensorflow_dataset(DataFold.TEST)
    loaded_model = tf2_gnn.cli_utils.model_utils.load_model_for_prediction(trained_model_path, dataset)
    _, _, test_results = loaded_model.run_one_epoch(test_data, training=False, quiet=quiet)
    test_metric, test_metric_string = loaded_model.compute_epoch_metrics(test_results)
    predicted_Y_loaded_model = loaded_model.predict(test_data)


    print("test_metric_string",test_metric_string)
    print("test_metric",test_metric)

    #write_predicted_label_to_JSON_file(dataset, predicted_Y_loaded_model,json_type)


    #test measurement
    true_Y = []
    true_Y_by_file = []
    true_Y_file_list=[]
    for data in iter(test_data):
        true_Y.extend(np.array(data[1]["node_labels"]))
    for data in dataset._label_list["test"]:
        true_Y_by_file.append(np.array(data))
    for file_name in dataset._file_list["test"]:
        true_Y_file_list.append(file_name)


    mse_loaded_model = tf.keras.losses.MSE(true_Y, predicted_Y_loaded_model)
    print("\n mse_loaded_model_predicted_Y_and_True_Y", mse_loaded_model)

    print("true_Y", true_Y)
    print("predicted_Y_loaded_model", predicted_Y_loaded_model)

    mse_mean = tf.keras.losses.MSE([np.mean(true_Y)] * len(true_Y), true_Y)
    print("\n mse_mean_Y_and_True_Y", mse_mean)
    mean_loss_list = mse_mean
    # todo: threshold by rounding values [0,1]
    set_threshold_by_roundings(true_Y,predicted_Y_loaded_model)
    #todo: by rank
    rank_percentage_list=np.arange(0.0, 1.0, 0.05)
    for rank_percentage in rank_percentage_list:
        set_threshold_by_ranks(true_Y,true_Y_by_file, predicted_Y_loaded_model, true_Y_file_list,rank_percentage)


    positive_label_number = sum(true_Y)
    negative_label_number = len(true_Y) - positive_label_number

    print("positive_label_percentage",positive_label_number/len(true_Y))
    print("negative_label_number", negative_label_number / len(true_Y))



main()