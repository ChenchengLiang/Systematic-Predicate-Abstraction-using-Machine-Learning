from horn_dataset import train_on_graphs
import os
import tensorflow as tf
from numba import cuda
import sys
"""
This will read train, valid, and test data from trainData, validData, and testData folders in /path/to/target/folder/debug_data_set/

.layerHornGraph.JSON or hyperEdgeHornGraph.JSON files contain all information of the graph for GNN inputs.
.layerHornGraph.gv or hyperEdgeHornGraph.gv files can be rend as .jpg file to visualize the graph

The training logs can be find in src/trained_model folder
"""
class parameters():
    def __init__(self,absolute_path,json_type,label):
        self.absolute_path=absolute_path
        self.json_type=json_type
        self.label=label

def main():
    force_read = True
    form_label = True
    from_json = True
    file_type = ".smt2"
    GPU = False
    pickle = True
    print("read from ",sys.argv[1])
    path=sys.argv[1]
    param = parameters(path,json_type=".hyperEdgeHornGraph.JSON", label="predicate_occurrence_in_SCG")

    if GPU == False:
        os.environ["CUDA_VISIBLE_DEVICES"] = "-1"
        tf.keras.backend.clear_session()
    else:
        # watch nvidia-smi
        cuda.select_device(0)
        cuda.close()
        print('CUDA memory released: GPU0')
        gpus = tf.config.experimental.list_physical_devices('GPU')
        for gpu in gpus:
            tf.config.experimental.set_memory_growth(gpu, True)


    train_on_graphs(
        benchmark_name=param.absolute_path[param.absolute_path.find("/benchmarks/") + len("/benchmarks/"):-1],
        label=param.label, force_read=force_read,
        train_n_times=1, path=param.absolute_path, file_type=file_type, form_label=form_label, from_json=from_json,
        json_type=param.json_type, GPU=GPU, pickle=pickle)


main()


