import networkx as nx
import matplotlib.pyplot as plt



def read_graph(graph_file_name):
    G = nx.DiGraph(nx.drawing.nx_pydot.read_dot(graph_file_name))
    print("nodes",G.nodes)
    print(G.nodes["+_25"])
    nx.draw_shell(G)
    plt.show()


def main():
    read_graph("../benchmarks/temp-multiclass-11-analysis/11.c_000.smt2.hyperEdgeHornGraph.gv")


main()