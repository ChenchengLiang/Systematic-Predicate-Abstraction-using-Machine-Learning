import os
import matplotlib.pyplot as plt
plt.style.use("ggplot")
def plotHistory(history,fileName,show=True):
    parenDir = os.path.abspath(os.path.pardir)
    print(history.history.keys())
    # summarize history for accuracy
    plt.figure(1)
    plt.plot(history.history['acc'], '-b')
    plt.plot(history.history['val_acc'], '-g')
    plt.title('keras model accuracy')
    plt.ylabel('accuracy')
    plt.xlabel('epoch')
    plt.legend(['train', 'test'], loc='upper left')
    plt.savefig(parenDir + '/pickleData/'+fileName+'-accuracy')
    # summarize history for loss
    plt.figure(2)
    plt.plot(history.history['loss'], '-b')
    plt.plot(history.history['val_loss'], '-g')
    plt.title('keras model loss')
    plt.ylabel('loss')
    plt.xlabel('epoch')
    plt.legend(['train', 'test'], loc='upper left')
    plt.savefig(parenDir + '/pickleData/'+fileName+'-loss')
    plt.close()
    if(show==True):
        plt.show()


