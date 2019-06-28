
import matplotlib.pyplot as plt
plt.style.use("ggplot")
def plotHistory(history):
    print(history.history.keys())
    # summarize history for accuracy
    plt.figure(1)
    plt.plot(history.history['acc'], '-b')
    plt.plot(history.history['val_acc'], '-g')
    plt.title('keras model accuracy')
    plt.ylabel('accuracy')
    plt.xlabel('epoch')
    plt.legend(['train', 'test'], loc='upper left')
    # summarize history for loss
    plt.figure(2)
    plt.plot(history.history['loss'], '-b')
    plt.plot(history.history['val_loss'], '-g')
    plt.title('keras model loss')
    plt.ylabel('loss')
    plt.xlabel('epoch')
    plt.legend(['train', 'test'], loc='upper left')
    plt.show()