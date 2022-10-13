import os
import sys
import glob
import pandas as pd
from utils_1 import get_file_list
from plot import plot_cactus,plot_scatter_statistics
from utils_1 import make_dirct
from measurement_functions import read_measurement_from_JSON
from statistics import mean
def main():
    benchmarks="100+benchmarks-linear-solvability-check-uppmax"#sys.argv[1]
    fold="raw"
    file_type="smt2"#"c"
    file_list= [f[:-len(".zip")] for f in get_file_list(benchmarks,fold,file_type)]
    read_solvability(file_list, "../benchmarks/"+benchmarks,fold)




def read_solvability(filtered_file_list, benchmark_fold, folder):
    manual_heuristic_option = ["Term", "Octagon", "RelationalEqs", "RelationalIneqs"]
    non_predicted_abstract_option = manual_heuristic_option + ["Empty", "Random", "Unlabeled"]
    predicted_abstract_option = ["PredictedCG", "PredictedCDHG"]
    other_option=["Labeled", "Mined"]
    graph_type_map = {"PredictedCDHG": "hyperEdgeGraph", "PredictedCG": "monoDirectionLayerGraph"}
    combination_option = ["union", "random"]
    exploration_rate = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]
    abstract_option = manual_heuristic_option + non_predicted_abstract_option + predicted_abstract_option + other_option
    splitClauses_name = ["_splitClauses_1"]  # "_splitClauses_0"
    cost_option = ["_cost_shape", "_cost_logit", "_cost_same"]
    json_solvability_obj_list = read_measurement_from_JSON(filtered_file_list, ".solvability.JSON")

    # solvability_summary = {
    #     op: {"solvable_number": 0, "solvable_list": [], "solving_time_list": [], "unique_solvable_number": 0, "unique_solvable_list": []} for op
    #     in abstract_option}
    solvability_summary = {}
    solvability_summary_value_dict={"solvable_number": 0, "solvable_list": [],"solving_time_list": [],
                                                           "unique_solvable_number": 0, "unique_solvable_list": []}
    for op in non_predicted_abstract_option:  # collect results for non-predicted templates
        for sn in splitClauses_name:
            solvability_summary[op + sn + "_cost_same"] = {"solvable_number": 0, "solvable_list": [],"solving_time_list": [],
                                                           "unique_solvable_number": 0, "unique_solvable_list": []}
    for op in predicted_abstract_option:  # collect cost option results for predicted templates
        for sn in splitClauses_name:
            for co in cost_option:
                solvability_summary[op + sn + co] = {"solvable_number": 0, "solvable_list": [],"solving_time_list": [],
                                                           "unique_solvable_number": 0, "unique_solvable_list": []}
    for op in manual_heuristic_option:  # collect union option results for predicted templates
        for gt in predicted_abstract_option:
            for sn in splitClauses_name:
                for co in cost_option:
                    solvability_summary[op + "_" + graph_type_map[gt] + "_" + "union_0.0" + sn + co] = {"solvable_number": 0, "solvable_list": [],"solving_time_list": [],
                                                           "unique_solvable_number": 0, "unique_solvable_list": []}
    for op in manual_heuristic_option:  # collect random option results for predicted templates
        for gt in predicted_abstract_option:
            for sn in splitClauses_name:
                for co in cost_option:
                    solvability_summary[op + "_" + graph_type_map[gt] + "_" + "random_0.5" + sn + co] = {"solvable_number": 0, "solvable_list": [],"solving_time_list": [],
                                                           "unique_solvable_number": 0, "unique_solvable_list": []}

    # print("json_solvability_obj_list", json_solvability_obj_list)

    for f in json_solvability_obj_list:
        for op in non_predicted_abstract_option:
            for sn in splitClauses_name:
                filed_name = op + sn + "_cost_same"
                solving_time=list(f["solvingTime_" + filed_name])[0]
                if solving_time != "10800000":
                    solvability_summary[filed_name]["solvable_number"] = solvability_summary[filed_name][
                                                                             "solvable_number"] + 1
                    solvability_summary[filed_name]["solvable_list"].append(
                        f["file_name"][f["file_name"].rfind("/") + 1:-len(".solvability.JSON")])
                    solvability_summary[filed_name]["solving_time_list"].append(int(solving_time))
    for f in json_solvability_obj_list:
        for op in predicted_abstract_option:
            for sn in splitClauses_name:
                for co in cost_option:
                    filed_name = op + sn + co
                    solving_time = list(f["solvingTime_" + filed_name])[0]
                    if solving_time != "10800000":
                        solvability_summary[filed_name]["solvable_number"] = solvability_summary[filed_name][
                                                                                 "solvable_number"] + 1
                        solvability_summary[filed_name]["solvable_list"].append(
                            f["file_name"][f["file_name"].rfind("/") + 1:-len(".solvability.JSON")])
                        solvability_summary[filed_name]["solving_time_list"].append(int(solving_time))

    for f in json_solvability_obj_list:
        for op in manual_heuristic_option:
            for gt in predicted_abstract_option:
                for sn in splitClauses_name:
                    for co in cost_option:
                        filed_name = op + "_" + graph_type_map[gt] + "_" + "union_0.0" + sn + co
                        solving_time = list(f["solvingTime_" + filed_name])[0]
                        if solving_time != "10800000":
                            solvability_summary[filed_name]["solvable_number"] = solvability_summary[filed_name][
                                                                                     "solvable_number"] + 1
                            solvability_summary[filed_name]["solvable_list"].append(
                                f["file_name"][f["file_name"].rfind("/") + 1:-len(".solvability.JSON")])
                            solvability_summary[filed_name]["solving_time_list"].append(int(solving_time))
    for f in json_solvability_obj_list:
        for op in manual_heuristic_option:
            for gt in predicted_abstract_option:
                for sn in splitClauses_name:
                    for co in cost_option:
                        filed_name = op + "_" + graph_type_map[gt] + "_" + "random_0.5" + sn + co
                        solving_time = list(f["solvingTime_" + filed_name])[0]
                        if solving_time != "10800000":
                            solvability_summary[filed_name]["solvable_number"] = solvability_summary[filed_name][
                                                                                     "solvable_number"] + 1
                            solvability_summary[filed_name]["solvable_list"].append(
                                f["file_name"][f["file_name"].rfind("/") + 1:-len(".solvability.JSON")])
                            solvability_summary[filed_name]["solving_time_list"].append(int(solving_time))

    # get unique solved list by differernt abstract option
    for i in solvability_summary:
        solvable_set_from_other_option = []
        for j in solvability_summary:
            if j != i:
                solvable_set_from_other_option = solvable_set_from_other_option + solvability_summary[j][
                    "solvable_list"]
        solvable_set_from_other_option = list(set(solvable_set_from_other_option))
        unique_solved_list = set(solvability_summary[i]["solvable_list"]).difference(
            set(solvable_set_from_other_option))
        if len(unique_solved_list) != 0:
            solvability_summary[i]["unique_solvable_number"] = len(unique_solved_list)
            solvability_summary[i]["unique_solvable_list"] = list(unique_solved_list)

    # write solvalbility summary to json file
    # print("solvability_summary",solvability_summary)
    summary_folder = "../benchmarks/" + benchmark_fold + "/" + folder + "_summary"
    make_dirct(summary_folder)
    summary_json_file_name = summary_folder + "/solvability_summary.JSON"
    import json
    with open(summary_json_file_name, 'w') as f:
        json.dump(solvability_summary, f, indent=4, sort_keys=True)

    write_solvability_to_latex_and_spreadsheet(summary_folder,solvability_summary)

    plot_cactus(summary_folder, solvability_summary)

    # abstract_option_fields_dict=write_statistic_info_to_spreadsheet(summary_folder, abstract_option, splitClauses_name, cost_option,
    #                                  json_solvability_obj_list)
    # plot_solvability_to_scatter(summary_folder, cost_option, abstract_option_fields_dict, splitClauses_name,
    #                             non_predicted_abstract_option)



def plot_solvability_to_scatter(summary_folder,cost_option,abstract_option_fields_dict,splitClauses_name,non_predicted_abstract_option):
    # description: draw scatters
    scatter_fileds = ["solvingTime", "cegarIterationNumber", "generatedPredicateNumber", "averagePredicateSize",
                      "predicateGeneratorTime"]
    # set existed options' cost function value to be the same
    for k in abstract_option_fields_dict:
        for sn in splitClauses_name:
            for nop in non_predicted_abstract_option:
                if nop in k:
                    for sf in scatter_fileds:
                        abstract_option_fields_dict[nop + sn + "_cost_shape"][sf] = \
                        abstract_option_fields_dict[nop + sn + "_cost_same"][sf]
                        abstract_option_fields_dict[nop + sn + "_cost_logit"][sf] = \
                            abstract_option_fields_dict[nop + sn + "_cost_same"][sf]

    print("abstract_option_fields_dict", abstract_option_fields_dict)
    compare_to_option = "PredictedCDHG"
    for field in scatter_fileds:
        current_folder = summary_folder + "/" + field + "-scatter"
        make_dirct(current_folder)
        for sn in splitClauses_name:
            for co in cost_option:
                for k in abstract_option_fields_dict:
                    if compare_to_option not in k and sn in k and co in k:
                        X = abstract_option_fields_dict[compare_to_option + sn + co][field]
                        Y = abstract_option_fields_dict[k][field]
                        x_label = compare_to_option + sn + co + " " + field
                        y_label = k + " " + field
                        for scale in ["linear", "log"]:
                            saving_file_name = current_folder + "/" + k + "-" + compare_to_option + sn + co + "-" + field + "-" + scale
                            plot_scatter_statistics(X, Y, x_label, y_label, saving_file_name + ".png", scale=scale)
                            # print("saving_file_name",saving_file_name)
                            # print("X",X)
                            # print("Y",Y)


def write_statistic_info_to_spreadsheet(summary_folder,abstract_option,splitClauses_name,cost_option,json_solvability_obj_list):
    # description: write to spreadsheet
    abstract_option_fields_dict = {}
    measurement_fields = ["solvingTime", "cegarIterationNumber", "generatedPredicateNumber", "averagePredicateSize",
                          "predicateGeneratorTime", "satisfiability"]
    fixed_fileds = ["clauseNumberBeforeSimplification", "clauseNumberAfterSimplification", "smt2FileSizeByte",
                    "relationSymbolNumberBeforeSimplification", "relationSymbolNumberAfterSimplification",
                    "minedSingleVariableTemplatesNumber", "minedBinaryVariableTemplatesNumber", "minedTemplateNumber",
                    "minedTemplateRelationSymbolNumber",
                    "labeledSingleVariableTemplatesNumber", "labeledBinaryVariableTemplatesNumber",
                    "labeledTemplateNumber", "labeledTemplateRelationSymbolNumber",
                    "unlabeledSingleVariableTemplatesNumber", "unlabeledBinaryVariableTemplatesNumber",
                    "unlabeledTemplateNumber", "unlabeledTemplateRelationSymbolNumber"]
    fields = measurement_fields + fixed_fileds
    with pd.ExcelWriter(summary_folder + "/solvability_statistics.xlsx") as writer:
        for op in abstract_option:
            for sn in splitClauses_name:
                for co in cost_option:
                    name_list = []
                    field_dict = {field: [] for field in fields}
                    for f in json_solvability_obj_list:
                        name_list.append(f["file_name"][f["file_name"].rfind("/") + 1:][:-len(".solvability.JSON")])
                    for f in json_solvability_obj_list:
                        for k in field_dict:
                            if k in fixed_fileds:
                                field_dict[k].append(int(list(f[k])[0]))
                            else:
                                field_dict[k].append(int(list(f[k + "_" + op + sn + co])[0]))

                    final_dict = {**{"name_list": name_list}, **field_dict}
                    abstract_option_fields_dict[op + sn + co] = final_dict
                    data = pd.DataFrame(final_dict)
                    data.to_excel(writer, sheet_name=op + "_sc_" + sn[-1] + co)

    return abstract_option_fields_dict



def write_solvability_to_latex_and_spreadsheet(summary_folder,solvability_summary):
    import pandas as pd
    # solvability_summary = {
    #     op: {"solvable_number": 0, "solvable_list": [],"solving_time_list": [], "unique_solvable_number": 0, "unique_solvable_list": []} for op
    #     in abstract_option}

    options=[]#column
    solvable_number=[] #column
    average_solving_time=[] #column
    unique_solvable_number=[] #column
    unique_solvable_list=[] #column
    total_solvable_set=set()
    for op in solvability_summary:
        options.append(op)
        solvable_number.append(solvability_summary[op]["solvable_number"])
        unique_solvable_number.append(solvability_summary[op]["unique_solvable_number"])
        unique_solvable_list.append(solvability_summary[op]["unique_solvable_list"])
        total_solvable_set.update(solvability_summary[op]["solvable_list"])
        average_solving_time.append(mean(solvability_summary[op]["solving_time_list"]))


    print("total_solvable_set",len(total_solvable_set))
    df=pd.DataFrame(dict(Options=options,Solvable_number=solvable_number,Average_solving_time_ms=average_solving_time,Unique_solved_number=unique_solvable_number,unique_solvable_list=unique_solvable_list))
    #print(df.to_latex(index=False,label="result-table",caption="100+ benchmark solvability "))
    df.to_excel(summary_folder + "/solvability_summary.xlsx")

main()