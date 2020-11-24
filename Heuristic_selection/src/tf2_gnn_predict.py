import tf2_gnn
from horn_dataset import HornGraphDataset
from tf2_gnn.data import DataFold
from horn_dataset import write_graph_to_pickle,form_GNN_inputs_and_labels,get_predicted_argument_list_divided_by_file
from Miscellaneous import clear_file,add_JSON_field
from archived.dotToGraphInfo import parseArguments


def write_predicted_argument_score_to_file(dataset,predicted_Y_loaded_model):
    #write predicted results to .predicted_argument file
    predicted_argument_score_list = get_predicted_argument_list_divided_by_file(dataset, predicted_Y_loaded_model)
    for file,predicted_argument_score in zip(dataset._file_list["test"],predicted_argument_score_list):
        argument_file=file+".arguments"
        print("read argument from", argument_file)
        with open(argument_file) as f:
            parsed_arguments = parseArguments(f.read())
            clear_file(file + ".predicted_argument")
            with open(file + ".predicted_argument", 'w') as out_file:
                for argument,score in zip(parsed_arguments,predicted_argument_score):
                    out_file.write(argument.ID+":"+argument.head+":"+argument.arg+":"+str(float(score))+"\n")

def write_predicted_argument_score_to_json_file(dataset,predicted_argument_score_list,graph_type=".layerHornGraph.JSON"):
    # write predicted_argument_score to JSON file
    old_field = ["nodeIds", "nodeSymbolList", "argumentIndices", "argumentIDList", "argumentNameList",
                 "argumentOccurrence", "binaryAdjacentList", "predicateArgumentEdges",
                 "predicateInstanceEdges", "argumentInstanceEdges","controlHeadEdges", "controlBodyEdges", "controlArgumentEdges",
                 "guardEdges", "dataEdges"]
    new_field = ["predictedArgumentScores"]
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


def main():
    path="../benchmarks/temp-test-1/"
    trained_model_path="/home/cheli243/PycharmProjects/HintsLearning/src/trained_model/GNN_Argument_selection__2020-09-26_16-53-17_best.pkl"
    json_type=".layerHornGraph.JSON"

    benchmark_name = path[len("../benchmarks/"):-1]
    force_read=True
    form_label=True
    #label = "occurrence"
    # label = "rank"
    # label = "argument_identify"
    # label = "argument_identify_no_batchs"
    # label = "control_location_identify"
    label = "predicate_occurrence_in_SCG"

    if force_read==True:
        write_graph_to_pickle(benchmark_name,  data_fold=["test"], label=label,path=path,from_json=True,file_type="smt2",json_type=json_type)
    else:
        print("Use pickle data for training")
    #if form_label == True and not os.path.isfile("../pickleData/" + label + "-" + benchmark_name + "-gnnInput_train_data.txt"):
    if form_label == True:
        form_GNN_inputs_and_labels(label=label, datafold=["test"], benchmark=benchmark_name)


    quiet=False


    parameters = tf2_gnn.GNN.get_default_hyperparameters()
    parameters["benchmark"] = benchmark_name
    parameters["label_type"] = label
    parameters['max_nodes_per_batch'] = 10000
    dataset = HornGraphDataset(parameters)
    dataset.load_data([DataFold.TEST])
    test_data = dataset.get_tensorflow_dataset(DataFold.TEST)
    loaded_model = tf2_gnn.cli_utils.model_utils.load_model_for_prediction(trained_model_path, dataset)
    _, _, test_results = loaded_model.run_one_epoch(test_data, training=False, quiet=quiet)
    test_metric, test_metric_string = loaded_model.compute_epoch_metrics(test_results)
    predicted_Y_loaded_model = loaded_model.predict(test_data)

    print("test_metric_string",test_metric_string)
    print("test_metric",test_metric)



    predicted_argument_score_list = get_predicted_argument_list_divided_by_file(dataset, predicted_Y_loaded_model)

    # write predicted results to .predicted_argument file
    write_predicted_argument_score_to_file(dataset, predicted_Y_loaded_model)
    #write predicted_argument_score to JSON file
    write_predicted_argument_score_to_json_file(dataset,predicted_argument_score_list)


main()