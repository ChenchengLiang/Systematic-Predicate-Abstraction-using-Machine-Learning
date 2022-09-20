import os
import matplotlib.pyplot as plt
from utils import  read_minimizedPredicateFromCegar
plt.style.use("ggplot")
import numpy as np
def plotHistory(history,fileName,show=True):
    parenDir = os.path.abspath(os.path.pardir)
    print(history.history.keys())
    # summarize history for accuracy
    #plt.figure(1)
    plt.plot(history.history['acc'], '-b')
    plt.plot(history.history['val_acc'], '-g')
    plt.title('keras model accuracy')
    plt.ylabel('accuracy')
    plt.xlabel('epoch')
    plt.legend(['train', 'test'], loc='upper left')
    plt.savefig(parenDir + '/pickleData/'+fileName+'-accuracy')
    if (show == True):
        plt.show()
    plt.close()
    # summarize history for loss
    #plt.figure(2)
    plt.plot(history.history['loss'], '-b')
    plt.plot(history.history['val_loss'], '-g')
    plt.title('keras model loss')
    plt.ylabel('loss')
    plt.xlabel('epoch')
    plt.legend(['train', 'test'], loc='upper left')
    plt.savefig(parenDir + '/pickleData/'+fileName+'-loss')

    if(show==True):
        plt.show()
    plt.close()

def get_recall_scatter(solvability_name_fold,json_solvability_obj_list,filtered_file_list):
    # description: how many predicates used in end
    print("----- out of test set recall info -----")
    minimizedPredicateFromCegar_name_list = ["minimizedPredicateFromCegar" + name + "InitialPredicates" for name in
                                             solvability_name_fold]

    minimizedPredicateFromCegar_list = {name: read_minimizedPredicateFromCegar(name, json_solvability_obj_list) for name
                                        in minimizedPredicateFromCegar_name_list}
    initialPredicatesUsedInMinimizedPredicateFromCegar_list = {
        name: read_minimizedPredicateFromCegar("initialPredicatesUsedInM" + name[1:], json_solvability_obj_list) for
        name in minimizedPredicateFromCegar_name_list}
    for name in minimizedPredicateFromCegar_name_list:
        print("number of initial predicates in minimized predicates/minimized predicates," + name[len(
            "minimizedPredicateFromCegar"):] + ":" + str(
            sum(initialPredicatesUsedInMinimizedPredicateFromCegar_list[name])) + "/" + str(
            sum(minimizedPredicateFromCegar_list[name])))
        print(str(initialPredicatesUsedInMinimizedPredicateFromCegar_list[name]))
        print(str(minimizedPredicateFromCegar_list[name]))
    scatter_plot_range = [0, 0]
    for name in minimizedPredicateFromCegar_name_list:
        fold_name = name[len("minimizedPredicateFromCegar"):]
        plot_scatter(minimizedPredicateFromCegar_list[name],
                     initialPredicatesUsedInMinimizedPredicateFromCegar_list[name],
                     name=fold_name + "_used_in_the_end", range=scatter_plot_range,
                     x_label="minimized_useful_predicate_number", y_label=fold_name + "_predicates")
        print("initialPredicatesUsedInMinimizedPredicate > minimizedPredicateFromCegar", name)
        f_number=0
        for i, (x, y) in enumerate(zip(minimizedPredicateFromCegar_list[name],
                                       initialPredicatesUsedInMinimizedPredicateFromCegar_list[name])):
            if x < y:
                f_number=f_number+1
                #print(filtered_file_list[i])
        print(f_number)


def plot_scatter(true_Y,predicted_Y,name="",range=[0,0],x_label="True Values",y_label="Predictions"):
    #a = plt.axes(aspect='equal')
    upperBound=np.max([np.max(true_Y), np.max(predicted_Y)])
    plt.scatter(true_Y, predicted_Y,marker="x",s=10)#s=10,marker="x"
    plt.xlabel(x_label)
    plt.ylabel(y_label)
    plt.xscale('log')
    plt.yscale('log')
    plt.grid(linewidth = 0.5)
    plt.plot([0, upperBound], [0, upperBound],color="black", linewidth=0.5)
    plt.xlim([0,upperBound])
    plt.ylim([0,upperBound])
    # small_lims = range
    # lims = np.logspace(0, np.max([np.max(true_Y), np.max(predicted_Y)]), num=10)
    # #lims = [0, np.max([np.max(true_Y), np.max(predicted_Y)])]
    # lims = (lambda : small_lims if range!=[0,0] else lims)()
    # plt.xlim(lims)
    # plt.ylim(lims)
    # _ = plt.plot(lims, lims)
    plt.savefig("trained_model/" + name+ "-scatter.png")
    plt.clf()

def plot_scatter_statistics(X,Y,x_label,y_label,saving_file_name,scale="linear"):
    lowerBound = 1 if scale=="log" else 0
    upperBound = max(X+Y)
    plt.scatter(X, Y, marker="x", s=20)  # s=10,marker="x"
    plt.xlabel(x_label)
    plt.ylabel(y_label)
    plt.xscale(scale) #"linear", "log", "symlog", "logit"
    plt.yscale(scale)
    plt.grid(linewidth=0.5)
    plt.plot([0, upperBound], [0, upperBound], color="black", linewidth=0.5)
    plt.xlim([lowerBound, upperBound])
    plt.ylim([lowerBound, upperBound])
    plt.savefig(saving_file_name)
    plt.clf()

def drawLabelPieChart(learning_label,label,graph_type,benchmark_name,df,multi_label=2):
    label_list=[x for x in range(multi_label)]
    flat_list = [item for sublist in learning_label for item in sublist]
    if multi_label==2:
        positive_label_number =flat_list.count(1)
        negative_label_number=flat_list.count(0)
        sizes = [positive_label_number, negative_label_number]
        labels = '1', "0"
        explode = (0, 0)  # only "explode" the 2nd slice (i.e. 'Hogs')
    else:
        labels = [str(i) for i in range(0,multi_label)]
        sizes = [flat_list.count(i) for i in label_list]
        explode = [0 for i in range(0,multi_label)]
    fig1, ax1 = plt.subplots()
    ax1.pie(sizes, explode=explode, labels=labels, autopct='%1.1f%%',
            shadow=True, startangle=90)
    ax1.axis('equal')  # Equal aspect ratio ensures that pie is drawn as a circle.
    plt.title("Label distribution")
    plt.savefig("trained_model/" + label + "-" + graph_type +"-" + df + "-" + benchmark_name + "pie_chart.png")
    plt.clf()


