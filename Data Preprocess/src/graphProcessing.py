import networkx as nx
from graphviz import Source
import os
def readGraphFromGraphviz(fileName,vitualize=True):
    path='../graph/'
    parentDirectory=os.path.abspath(os.path.dirname(os.getcwd()))
    hornGraph=Source.from_file(path+fileName)
    #read gv to networkx
    G=nx.DiGraph(nx.drawing.nx_pydot.read_dot(path+fileName))
    #view by graphviz
    if(vitualize==True):
        hornGraph.view()

    print(hornGraph.source)

    edges=G.edges
    nodes=G.nodes
    print("edges:",edges)
    print("nodes:",nodes)
    for node,content in nodes.items():
        print("-----------")
        print(node,content['label'])
        print("Neighbors:")
        for neighbor in G.neighbors(node):
            print(neighbor,nodes[neighbor]['label'])
        print("Predecessors:")
        for predecessor in G.predecessors(node):
            print(predecessor,nodes[predecessor]['label'])
        print("Successors:")
        for successor in G.successors(node):
            print(successor, nodes[successor]['label'])





def main():
    print("Start")
    readGraphFromGraphviz(fileName='g.gv',vitualize=True)

    print("finished")


if __name__ == '__main__':
    main()