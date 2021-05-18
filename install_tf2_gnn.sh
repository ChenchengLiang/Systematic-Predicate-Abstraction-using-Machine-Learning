#!/bin/sh
git clone https://github.com/ChenchengLiang/tf2-gnn
cd tf2-gnn
git checkout horn_graph_with_hyperedge
python3 -m pip install -e ./

python3 -m pip install networkx
python3 -m pip install graphviz
python3 -m pip install gensim
python3 -m pip install nltk
python3 -m pip install matplotlib
python3 -m pip install llvmpy
python3 -m pip install cython
python3 -m pip install numba
python3 -m pip install seaborn
python3 -m pip install sklearn
python3 -m pip install multiprocessing
python3 -m pip install json
python3 -m pip install subprocess
python3 -m pip install numpy
python3 -m pip install tensorflow

