import os
import sys
from utils_1 import run_eldarica_with_shell,run_eldarica_with_shell_pool,get_exceptions_folder_names,get_solvability_log,get_file_list
import glob

def extract_data_by_shell():
    '''
        "-varyGeneratedPredicates","-labelSimpleGeneratedPredicates","-extractPredicates","-solvabilityTimeout:120","-mainTimeout:1200","t:1200"
        "-noIntervals","-absTimeout:120","getLabelFromCE","-getHornGraph","-getHornGraph:biDirectionLayerGraph",
        "-getHornGraph:hyperEdgeGraph","-getHornGraph:monoDirectionLayerGraph","-getHornGraph:hybridDirectionLayerGraph",
        "fineGrainedEdgeTypeLayerGraph"
        '''
    # extract data by shell
    data_fold = ["train_data", "test_data", "valid_data"]
    benchmark_name = sys.argv[1]  # "temp-debug"
    thread_number = 1
    shell_timeout = 60*60*2
    eldarica_timeout= 60*60*1
    parameters_solvability_1 = "-moveFile -splitClauses:0 -abstract:oct -t:"+str(eldarica_timeout)
    parameters_solvability_2 = "-moveFile -splitClauses:0 -abstract:term -t:" + str(eldarica_timeout)
    parameters_solvability_3 = "-moveFile -splitClauses:0 -abstract:relEqs -t:" + str(eldarica_timeout)
    parameters_solvability_4 = "-moveFile -splitClauses:0 -abstract:relIneqs -t:" + str(eldarica_timeout)
    parameters_solvability_5 = "-moveFile -splitClauses:1 -abstract:oct -t:" + str(eldarica_timeout)
    parameters_solvability_6 = "-moveFile -splitClauses:1 -abstract:term -t:" + str(eldarica_timeout)
    parameters_solvability_7 = "-moveFile -splitClauses:1 -abstract:relEqs -t:" + str(eldarica_timeout)
    parameters_solvability_8 = "-moveFile -splitClauses:1 -abstract:relIneqs -t:" + str(eldarica_timeout)
    parameters_generate_unlabeled_templates= "-moveFile -extractTemplates -generateTemplates -getHornGraph:monoDirectionLayerGraph -t:" + str(eldarica_timeout)
    parameters_extract_train_data_for_template_selection_without_graph="-moveFile -extractTemplates -t:" + str(eldarica_timeout)

    parameters_get_smt2="-getSMT2 -abstract:off"
    parameters_abstract_off="-moveFile -abstract:off -splitClauses:1 -t:180 "
    parameters_draw_CG_using_labeled_templates="-moveFile -getHornGraph:monoDirectionLayerGraph -maxNode:10000"
    parameters_draw_CDHG_using_labeled_templates = "-moveFile -getHornGraph:hyperEdgeGraph -maxNode:10000"
    parameters_generate_horn_graph_for_unsolvable_data_template_selection = "-moveFile -abstract:empty -getHornGraph:hyperEdgeGraph -generateTemplates -t:"+str(eldarica_timeout)+" -maxNode:10000"
    parameters_extract_train_data_for_first_three_graph_hyperedge = "-moveFile -abstract:empty -getHornGraph:hyperEdgeGraph -t:" + str(
        eldarica_timeout) + " -maxNode:10000"
    parameters_extract_train_data_for_counter_example_graph_hyperedge = "-moveFile -abstract:empty -getLabelFromCounterExample -t:"+str(60*20)+" -maxNode:10000"
    parameters_extract_train_data_for_counter_example_graph_hyperedge_union = "-moveFile -abstract:empty -getLabelFromCounterExample:union -t:"+str(60*20)+" -maxNode:10000"
    parameters_extract_train_data_for_counter_example_graph_layer = "-moveFile -abstract:empty -getLabelFromCounterExample -getHornGraph:monoDirectionLayerGraph -t:"+str(60*20)+" -maxNode:10000"
    parameters_extract_train_data_for_counter_example_graph_layer_union = "-moveFile -abstract:empty -getLabelFromCounterExample:union -getHornGraph:monoDirectionLayerGraph -t:"+str(60*20)+" -maxNode:10000"
    parameters_extract_train_data_for_first_three_graph_mono_layer = "-moveFile -abstract:empty -getHornGraph:monoDirectionLayerGraph -t:1800 -maxNode:10000"
    parameters_extract_train_data_for_first_three_graph_bi_layer = "-moveFile -abstract:empty -getHornGraph:biDirectionLayerGraph -t:1800 -maxNode:10000"
    parameters_extract_train_data_for_argument_bound_graph_hyperedge = "-moveFile -abstract:empty -getHornGraph:hyperEdgeGraph -argumentBoundLabel -boundsAnalysis -t:" + str(
        60*60*3) + " -boundsAnalysisTO:3 -maxNode:10000"
    parameters_extract_train_data_for_argument_bound_graph_layer = "-moveFile -abstract:empty -getHornGraph:monoDirectionLayerGraph -argumentBoundLabel -boundsAnalysis -t:" + str(
        60*60*3) + " -boundsAnalysisTO:3 -maxNode:10000"

    parameters_pipeline=[]
    #description: get solving time
    #parameters_pipeline.append(parameters_abstract_off)
    # parameters_pipeline = ["-splitClauses:0 -abstract:oct -getSolvingTime -t:"+str(eldarica_timeout),
    #                                "-splitClauses:0 -abstract:term -getSolvingTime -t:"+str(eldarica_timeout),
    #                                "-splitClauses:0 -abstract:relEqs -getSolvingTime -t:"+str(eldarica_timeout),
    #                                "-splitClauses:0 -abstract:relIneqs -getSolvingTime -t:"+str(eldarica_timeout),
    #                                "-splitClauses:1 -abstract:oct -getSolvingTime -t:"+str(eldarica_timeout),
    #                                "-splitClauses:1 -abstract:term -getSolvingTime -t:"+str(eldarica_timeout),
    #                                "-splitClauses:1 -abstract:relEqs -getSolvingTime -t:"+str(eldarica_timeout),
    #                                "-splitClauses:1 -abstract:relIneqs -getSolvingTime -t:"+str(eldarica_timeout),
    #                       ]
    #description: mine templates
    #parameters_pipeline.append(parameters_extract_train_data_for_template_selection_without_graph) #label templates and generate simplified smt2
    #description: draw two graphs
    parameters_pipeline.append(parameters_draw_CG_using_labeled_templates) #draw constraint graph
    parameters_pipeline.append(parameters_draw_CDHG_using_labeled_templates) # draw hyperedge graph
    # description: get smt2 file
    parameters_pipeline.append(parameters_get_smt2)#generate normalized smt2


    #description:get horn graph for unsolvable problems
    # parameters_pipeline.append("-getHornGraph:monoDirectionLayerGraph -extractTemplates -generateTemplates -maxNode:10000 -abstract:empty " ) #get unlabeled.tpl
    # parameters_pipeline.append("-getHornGraph:monoDirectionLayerGraph -maxNode:10000 -abstract:empty ")
    # parameters_pipeline.append("-getHornGraph:hyperEdgeGraph -maxNode:10000  -abstract:empty ")
    #parameters_pipeline.append("-getSMT2 -abstract:empty ")

    #description: get solvability
    #parameters_pipeline.append("-checkSolvability  -abstract:empty -t:" + str(eldarica_timeout) )
    # parameters_pipeline.append("-checkSolvability  -abstract:unlabeled -t:" + str(eldarica_timeout) )
    # parameters_pipeline.append("-checkSolvability  -abstract:labeled -t:" + str(eldarica_timeout) )
    # parameters_pipeline.append("-checkSolvability  -abstract:predictedCG -t:" + str(eldarica_timeout) )
    # parameters_pipeline.append("-checkSolvability  -abstract:predictedCDHG -t:" + str(eldarica_timeout) )
    # parameters_pipeline.append( "-checkSolvability  -abstract:random -t:" + str(eldarica_timeout) )
    # parameters_pipeline.append("-checkSolvability  -abstract:term -t:" + str(eldarica_timeout) )
    # parameters_pipeline.append("-checkSolvability  -abstract:oct -t:" + str(eldarica_timeout) )
    # parameters_pipeline.append("-checkSolvability  -abstract:relEqs -t:" + str(eldarica_timeout) )
    # parameters_pipeline.append( "-checkSolvability  -abstract:relIneqs -t:" + str(eldarica_timeout) )
    #parameters_pipeline.append("-checkSolvability  -abstract:mined -t:" + str(eldarica_timeout) )



    #no multi-threads
    file_type = "smt2"
    # file_type =  "c"
    for eldarica_parameters in parameters_pipeline:
        runtime=1
        move_file=False if "getSolvingTime" in eldarica_parameters else True
        split_clause_option="splitClauses_1" #todo: try splitClause1 to see if all no-minded predicates
        fold="train_data"
        file_list=get_file_list(benchmark_name,fold,file_type)

        for file in file_list:
            file=file[:-len(".zip")]
            file_and_param=[file,eldarica_parameters,shell_timeout,move_file,runtime,split_clause_option]
            run_eldarica_with_shell(file_and_param)


    get_solvability_log(data_fold, benchmark_name,file_type)


#draw highlighted predicted graph in a folder
def draw_graph_in_folder(folder_name,eldarica_params="-getLabelFromCounterExample "):
    import subprocess
    import glob
    from utils_1 import unzip_file
    timeout=3600
    thread_number=1
    eldarica_parameters=eldarica_params+" -gp"
    run_eldarica_with_shell_pool(folder_name, run_eldarica_with_shell, eldarica_parameters,
                                 timeout=timeout, thread=thread_number)
    for file in glob.glob(folder_name + "/*.hyperEdgeGraph.gv.zip"):
        unzip_file(file)
        unzipped_file=file[:-len(".zip")]
        supplementary_command = "dot -Tpng "+unzipped_file+ " -o \"" + unzipped_file +".png\""
        print(supplementary_command)
        eld = subprocess.Popen(supplementary_command, stdout=subprocess.DEVNULL, shell=True)
        eld.wait()
        #file_compress([file], file + ".zip")
        os.remove(unzipped_file)


def main():
    # #-visualizeLowerBound
    # eldarica_params_argument_bound="-getHornGraph:hyperEdgeGraph -argumentBoundLabel -boundsAnalysis -boundsAnalysisTO:3"
    # eldarica_params_counter_example_union="-getHornGraph:hyperEdgeGraph -getLabelFromCounterExample:union"
    # folder="Linear-dataset-4-tasks-dataset-predict"
    # draw_graph_in_folder(folder_name="../benchmarks/"+folder+"/draw_some_examples",
    #                      eldarica_params=eldarica_params_argument_bound)

    extract_data_by_shell()

main()


