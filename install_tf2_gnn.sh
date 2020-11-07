#!/bin/sh
git clone https://github.com/ChenchengLiang/tf2-gnn
cd tf2-gnn
git checkout horn_graph_with_hyperedge
p install -e ./

pip install networkx
pip install graphviz
pip install gensim
pip install nltk
pip install matplotlib
pip install numba

