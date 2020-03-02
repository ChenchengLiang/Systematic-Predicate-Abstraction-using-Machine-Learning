import networkx as nx
from graphviz import Source
import glob
from networkx.readwrite import json_graph
def main():
    path="../../trainData/"
    suffix = ".c"  # some file name include .horn
    print("graph file", len(sorted(glob.glob(path + '*'+suffix+'.gv'))))
    for fileGraph in sorted(glob.glob(path + '*' + suffix + '.gv')
                                                      ):
        fileName=fileGraph[:fileGraph.find(suffix+".gv")+len(suffix)]
        fileName=fileName[fileName.rindex("/")+1:]
        print(fileName)
        # read graph
        print(fileGraph)
        hornGraph = Source.from_file(fileGraph)
        G = nx.DiGraph(nx.drawing.nx_pydot.read_dot(fileGraph))

        f = open("../../trainData/"+fileName+".JSON", "w+")
        f.write("{"+"\n")
        f.write("\"node_labels\":[")
        for i, node in enumerate(G.nodes):
            if(G.nodes[node]['class']!="DataFlowHyperedge" and G.nodes[node]['class']!="controlFlowHyperEdge"):
                if i == len(G.nodes)-1:
                    f.write("\"" + node + "\"")
                else:
                    f.write("\"" + node + "\",")
        f.write("],\n")


        #direct edges
        f.write("\"edges\":{\n")
        f.write("\t\"edges_type_1\":{\n")
        f.write("\t\"edges_type_name\":{"+ "\"condition\"" +"}\n")
        f.write("\t\"edgeList\":[")
        eldgeList=[]
        for i, edge in enumerate(G.edges):
            if (G.get_edge_data(*edge)['label'] == "\"condition\""):
                eldgeList.append(edge)
        for i, edge in enumerate(eldgeList):
            #edge=tuple('inv_main8', 'ControlFowHyperEdge_0'),G.get_edge_data(*edge)={'label': '"data flow in"'}
            #print(edge, G.get_edge_data(*edge)['label'])

            #if(G.get_edge_data(*edge)['label']=="\"condition\""):
            print(edge, G.get_edge_data(*edge)['label'])
            if i == len(eldgeList)-1:
                f.write("\"" +"["+ edge[0]+","+edge[1] +"]"+ "\"")
            else:
                f.write("\"" +"["+ edge[0]+","+edge[1] +"]"+ "\",")
        f.write("]\n")


        f.write("},\n")
        f.write("},\n")
        #Hyperedges




        f.write("}")
        f.close()

        #print(json_graph.node_link_data(G))



main()