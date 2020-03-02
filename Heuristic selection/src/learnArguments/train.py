from keras.layers import Conv1D, Dense,Input,concatenate, Flatten
from keras.models import Model
from keras.layers import Dense
import keras as k
import os
from Miscellaneous import pickleWrite,pickleRead
from plot import plotHistory
def getRegressionModel(embeddedHornGraph,embeddedArgument):
    # create model
    inputA = Input(shape=(embeddedHornGraph.shape[1], 1))
    inputB = Input(shape=(embeddedArgument.shape[1], 1))

    # the first branch operates on the first input
    # x = Dense(8, activation="relu")(inputA)
    x = Conv1D(filters=50, kernel_size=5, activation="relu")(inputA)
    x = Conv1D(filters=25, kernel_size=5, activation="relu")(x)
    x = Conv1D(filters=10, kernel_size=5, activation="relu")(x)
    x = Flatten()(x)
    # x = Dense(10, activation="relu")(x)
    x = Model(inputs=inputA, outputs=x)

    # the second branch opreates on the second input
    # y = Dense(64, activation="relu")(inputB)
    y = Conv1D(filters=20, kernel_size=5, activation="relu")(inputB)
    y = Conv1D(filters=15, kernel_size=5, activation="relu")(y)
    y = Conv1D(filters=10, kernel_size=5, activation="relu")(y)
    # y = Dense(32, activation="relu")(y)
    y = Flatten()(y)
    # y = Dense(10, activation="relu")(y)
    y = Model(inputs=inputB, outputs=y)

    # combine the output of the two branches
    combined = concatenate([x.output, y.output])

    # apply a FC layer and then a regression prediction on the
    # combined outputs
    z = Dense(64, activation="relu", \
              # activity_regularizer=k.regularizers.l1(0.01),\
              # kernel_regularizer=k.regularizers.l2(0.01)\
              )(combined)
    z = Dense(32, activation="relu")(z)
    z = Dense(16, activation="relu")(z)

    '''
    z = Dense(2, activation="softmax",\
              #activity_regularizer=k.regularizers.l1(0.0001)\
              )(z)
    '''

    z = Dense(1, activation="sigmoid", \
              # activity_regularizer=k.regularizers.l1(0.0001)\
              )(z)

    # our model will accept the inputs of the two branches and
    # then output a single value
    model = Model(inputs=[x.input, y.input], outputs=z)
    # Compile model
    model.compile(loss='mean_squared_error', optimizer='adam')
    model.summary()
    return model


def train(embeddedHornGraphp_train,embeddedArgument_train,Y_train,embeddedHornGraphp_verify,embeddedArgument_verify,Y_verify,batch_size,epochs):
    model = getRegressionModel(embeddedHornGraphp_train, embeddedArgument_train)
    earlyStop = k.callbacks.EarlyStopping(monitor='val_acc', min_delta=0.005, patience=5)
    history = model.fit([embeddedHornGraphp_train, embeddedArgument_train], Y_train,
                        batch_size=batch_size, epochs=epochs,
                        # callbacks=[earlyStop],
                        # callbacks=callbacks,
                        validation_data=([embeddedHornGraphp_verify, embeddedArgument_verify], Y_verify),
                        verbose=1)
    pickleWrite(history, 'history')
    parenDir = os.path.abspath(os.path.pardir)
    model.save(parenDir + '/models/my_model.h5')
    plotHistory(history, fileName="text", show=False)





def main():
    print("start")
    embeddedHornGraphp_train=[]
    embeddedArgument_train=[]
    Y_train=[]
    embeddedHornGraphp_verify=[]
    embeddedArgument_verify=[]
    Y_verify=[]
    batch_size=10
    epochs=1000
    train(embeddedHornGraphp_train,embeddedArgument_train,Y_train,embeddedHornGraphp_verify,embeddedArgument_verify,Y_verify,batch_size,epochs)
main()