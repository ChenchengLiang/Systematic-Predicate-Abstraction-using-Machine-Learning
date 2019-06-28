
from graphviz import Source

def readGraphFromGraphviz(vitualize=True):
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