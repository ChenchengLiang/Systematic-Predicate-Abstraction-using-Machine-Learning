
from graphviz import Source
import os
def readGraphFromGraphviz(vitualize=True):
    parentDirectory=os.path.abspath(os.path.dirname(os.getcwd()))
    hornGraph=Source.from_file('../graph/g.gv')
    if(vitualize==True):
        hornGraph.view()

    print(hornGraph.source)



def main():
    print("Start")
    readGraphFromGraphviz(True)

    print("finished")


if __name__ == '__main__':
    main()