from Miscellaneous import pickleRead,pickleWrite



def embedding():
    print()

def main():

    train_X=pickleRead( "argumentTrainData_X", path="../")
    #train_X[0]=graph,[1]=head,[2]=argument,[3]=hornText,[4]=programName,[5]=argumentID
    train_Y=pickleRead( "argumentTrainData_Y", path="../")

main()