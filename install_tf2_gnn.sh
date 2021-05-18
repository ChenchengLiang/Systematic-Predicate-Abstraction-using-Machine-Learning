#!/bin/sh
git clone https://github.com/ChenchengLiang/tf2-gnn
cd tf2-gnn
git checkout horn_graph_with_hyperedge
pip3 install -e ./

pip3 install networkx
pip3 install graphviz
pip3 install gensim
pip3 install nltk
pip3 install matplotlib
pip3 install numba
pip3 install seaborn
pip3 install sklearn
pip3 install multiprocessing
pip3 install json
pip3 install subprocess
pip3 install numpy
pip3 install tensorflow

