import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import pyltr

#dataset = pd.read_csv("/Users/nipun/Downloads/ml-100k/u.data",sep='\t',names="user_id,item_id,rating,timestamp".split(","))
#dataset.head()








def main():
    print("Start")
    #metric=pyltr.metrics.NDCG(k=10)
    
    
    with open('train.txt') as trainfile, \
        open('vali.txt') as valifile, \
        open('test.txt') as evalfile:
        TX, Ty, Tqids, _ = pyltr.data.letor.read_dataset(trainfile)
        VX, Vy, Vqids, _ = pyltr.data.letor.read_dataset(valifile)
        EX, Ey, Eqids, _ = pyltr.data.letor.read_dataset(evalfile)
        
        
    metric = pyltr.metrics.NDCG(k=10)

    # Perform validation (early stopping & trimming)
    monitor = pyltr.models.monitors.ValidationMonitor(
    VX, Vy, Vqids, metric=metric, stop_after=50)

    model = pyltr.models.LambdaMART(
    metric=metric,
    n_estimators=1000,
    learning_rate=0.02,
    max_features=0.5,
    query_subsample=0.5,
    max_leaf_nodes=10,
    min_samples_leaf=64,
    verbose=1,
)

    model.fit(TX, Ty, Tqids, monitor=monitor)
 

    Epred = model.predict(EX)
    print( 'Random ranking:', metric.calc_mean_random(Eqids, Ey))
    print ('Our model:', metric.calc_mean(Eqids, Ey, Epred))
    
    print(Epred)

    

if __name__ == '__main__':
    main()