
import tensorflow as tf
from learnArguments.dotToGraphInfo import GraphInfo,ArgumentInfo,DotToGraphInfo
from Miscellaneous import pickleWrite,pickleRead
import scipy.stats as ss
from tf2_gnn import GraphSample
import numpy as np
from typing import List
import sys
import subprocess
import os
import signal
class HornGraphSample(GraphSample):
    """Data structure holding a single horn graph."""
    def __init__(
        self,
        adjacency_lists: List[np.ndarray],
        node_features: np.ndarray,
        node_label: np.ndarray,
        node_argument: np.ndarray,
    ):
        super().__init__(adjacency_lists, node_features)
        self._node_label = node_label
        self._node_argument=node_argument

    @property
    def node_label(self) -> np.ndarray:
        """Node labels to predict as ndarray of shape [V, C]"""
        return self._node_label
class raw_graph_inputs():
    def __init__(self,num_edge_types,total_number_of_nodes):
        self._num_edge_types=num_edge_types
        self._total_number_of_nodes=total_number_of_nodes
        self._node_number_per_edge_type=[]
        self.final_graphs=None
        self.argument_scores=[]
        self.ranked_argument_scores=[]

class HornGraphSample(GraphSample):
    """Data structure holding a single horn graph."""
    def __init__(
        self,
        adjacency_lists: List[np.ndarray],
        node_features: np.ndarray,
        node_label: np.ndarray,
        node_argument: np.ndarray,
    ):
        super().__init__(adjacency_lists, node_features)
        self._node_label = node_label
        self._node_argument=node_argument

    @property
    def node_label(self) -> np.ndarray:
        """Node labels to predict as ndarray of shape [V, C]"""
        return self._node_label
def read_graph_from_pickle_file(benchmark,  data_fold=["train", "valid", "test"], label="rank",
                                path="../../", curssor=0):
    benchmark_name = benchmark.replace("/", "-")


    for df in data_fold:
        print("write data_fold to pickle data:", df)
        final_graphs_v1 = []
        graphs_node_label_ids=[]
        graphs_argument_indices=[]
        graphs_adjacency_lists=[]
        graphs_argument_scores=[]
        total_number_of_node=0
        file_type=".smt2"
        for i in range(1,10):
            p = subprocess.Popen(["../../venv/bin/python3", "split_read_graphs.py", path,df,str(i),file_type,label])
            p.wait()
            # os.kill(p.pid,signal.SIGKILL)
            print("curssor=",i)

        for i in range(1,10):
            graphs_node_label_ids.extend(pickleRead(label+"-graphs_node_label_ids-"+str(i),path="../"))
            graphs_argument_indices.extend(pickleRead(label+"-graphs_argument_indices-"+str(i),path="../"))
            graphs_adjacency_lists.extend(pickleRead(label+"-graphs_adjacency_lists-" + str(i), path="../"))
            graphs_argument_scores.extend(pickleRead(label+"-graphs_argument_scores-" + str(i), path="../"))
            total_number_of_node+=pickleRead(label+"-total_number_of_node-" + str(i), path="../")


        raw_data_graph = raw_graph_inputs(len(graphs_adjacency_lists[0]), total_number_of_node)
        for edge_type in graphs_adjacency_lists[0]:
            raw_data_graph._node_number_per_edge_type.append(len(edge_type[0]))

        # loop per graph
        for node_label_ids, argument_indices, adjacency_lists, argument_scores in zip(graphs_node_label_ids,
                                                                                      graphs_argument_indices,
                                                                                      graphs_adjacency_lists,
                                                                                      graphs_argument_scores):
            # convert to rank
            ranked_argument_scores = ss.rankdata(argument_scores, method="dense")
            raw_data_graph.ranked_argument_scores.append(ranked_argument_scores)
            raw_data_graph.argument_scores.append(argument_scores)

            if label == "rank":
                final_graphs_v1.append(
                    HornGraphSample(
                        adjacency_lists=tuple(adjacency_lists),
                        node_features=tf.constant(node_label_ids),
                        node_label=tf.constant(ranked_argument_scores),
                        # node_label=tf.constant(argument_scores),
                        node_argument=tf.constant(argument_indices),
                    )
                )
            else:
                final_graphs_v1.append(
                    HornGraphSample(
                        adjacency_lists=tuple(adjacency_lists),
                        node_features=tf.constant(node_label_ids),
                        # node_label=tf.constant(ranked_argument_scores),
                        node_label=tf.constant(argument_scores),
                        node_argument=tf.constant(argument_indices),
                    )
                )

            # print("node_label_ids",node_label_ids)
            # print("adjacency_lists",adjacency_lists)
            # print("argument_scores",argument_scores)
            # print("argument_indices", argument_indices)
        raw_data_graph.final_graphs = final_graphs_v1.copy()
        pickleWrite(raw_data_graph, label + "-" + benchmark + "-gnnInput_" + df + "_data", "../")

def main():
    benchmark="../../benchmarks/LIA-lin-traiData/"
    benchmark_name=benchmark[0][17:-1]
    read_graph_from_pickle_file(benchmark_name,  data_fold=["test"], label="rank",
                                path=benchmark)
    #read_graph_from_pickle_file(benchmark_name, data_fold=["train", "valid", "test"], label="occurance",path=benchmark)

main()