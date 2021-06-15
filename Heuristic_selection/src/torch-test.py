import torch
import numpy as np

def main():
    # Get cpu or gpu device for training.
    device = "cuda" if torch.cuda.is_available() else "cpu"
    print("Using {} device".format(device))
    x=np.array([1,2,3])
    y=x
    x=x+1
    print(x)
    print(y)

main()