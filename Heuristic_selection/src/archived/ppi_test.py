import sys
import tensorflow as tf
import tf2_gnn
from tf2_gnn.cli_utils import get_train_cli_arg_parser
from tf2_gnn.cli_utils.training_utils import run_train_from_args
from dpu_utils.utils import run_and_debug
import os
'''
Enlarge swap memory space will help relieve OOM problem
# Turn swap off
# This moves stuff in swap to the main memory and might take several minutes
sudo swapoff -a

# Create an empty swapfile
# Note that "1G" is basically just the unit and count is an integer.
# Together, they define the size. In this case 8GB.
sudo dd if=/dev/zero of=/swapfile bs=1G count=8

sudo mkswap /swapfile  # Set up a Linux swap area
sudo swapon /swapfile  # Turn the swap on
'''
def main():
    #tf.config.list_physical_devices("GPU")
    os.environ["CUDA_VISIBLE_DEVICES"] = "-1"
    #--data-params-override '{"max_nodes_per_batch": 5000}'

    parser = get_train_cli_arg_parser()
    args, potential_hyperdrive_args = parser.parse_known_args()

    # os.environ["CUDA_VISIBLE_DEVICES"] = "-1"
    hyperdrive_hyperparameter_overrides = None
    if args.hyperdrive_arg_parse and len(potential_hyperdrive_args) % 2 == 0:
        # Allow parsing params specified as "--key value" as well as "key value"
        hyperdrive_hyperparameter_overrides = {
            param.replace("--", ""): value
            for param, value in zip(potential_hyperdrive_args[::2], potential_hyperdrive_args[1::2])
        }
    elif len(potential_hyperdrive_args) > 0:
        # Reparse to throw standard error message:
        args = parser.parse_args()

    # Make TF less noisy:
    os.environ["TF_CPP_MIN_LOG_LEVEL"] = "1"
    tf.get_logger().setLevel("ERROR")

    run_and_debug(
        lambda: run_train_from_args(args, hyperdrive_hyperparameter_overrides), args.debug
    )

main()