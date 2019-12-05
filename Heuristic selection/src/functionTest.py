import os
import shutil,glob
from distutils.dir_util import copy_tree
from Miscellaneous import renameBenchmarkFiles
from extractDataFromEldarica import checkSolvability
from loadData import readHornClausesAndHints_resplitTrainAndVerifyData



def main():
    print("Start")
    print("hint files ",len(glob.glob("../trainData/*/*")))
    templatesCounter=0
    positiveTemplatesCounter = 0
    negativeTemplatesCounter = 0
    # for fileInitialHInts,filePositiveHInts,fileNegativeHInts in \
    #         zip(sorted(glob.glob("../trainData/*.initialHints")),\
    #             sorted(glob.glob("../trainData/*.positiveHints")),\
    #             sorted(glob.glob("../trainData/*.negativeHInts"))):

    for fileInitialHInts, filePositiveHInts, fileNegativeHInts in zip(sorted(glob.glob('../trainData/*.initialHints')),\
                                                                             sorted(glob.glob('../trainData/*.positiveHints')),\
                                                                             sorted(glob.glob('../trainData/*.negativeHints'))):
        f = open(fileInitialHInts, "r")
        InitialHintsText = f.read()
        for line in InitialHintsText.splitlines():
            templatesCounter=templatesCounter+1
        #=templatesCounter+len(InitialHintsText.splitlines())
        f.close()

        f = open(filePositiveHInts, "r")
        positiveHintsText = f.read()
        for line in positiveHintsText.splitlines():
            positiveTemplatesCounter=positiveTemplatesCounter+1
        f.close()

        f = open(fileNegativeHInts, "r")
        negativeHintsText = f.read()
        for line in negativeHintsText.splitlines():
            negativeTemplatesCounter=negativeTemplatesCounter+1
        f.close()

        if(negativeTemplatesCounter+positiveTemplatesCounter>templatesCounter):
            print("negativeTemplatesCounter+positiveTemplatesCounter>templatesCounter")
            print("templatesCounter",templatesCounter)
            print("positiveTemplatesCounter",positiveTemplatesCounter)
            print("negativeTemplatesCounter",negativeTemplatesCounter)
            print(fileInitialHInts)
        if (negativeTemplatesCounter + positiveTemplatesCounter < templatesCounter):
            print("negativeTemplatesCounter + positiveTemplatesCounter < templatesCounter")
            print("templatesCounter",templatesCounter)
            print("positiveTemplatesCounter",positiveTemplatesCounter)
            print("negativeTemplatesCounter",negativeTemplatesCounter)
            print(fileInitialHInts)



    print("Initial templates",templatesCounter)
    print("Positive file", len(glob.glob("../trainData/*.positiveHints")))
    print("Positive templates",positiveTemplatesCounter)
    print("Negative files", len(glob.glob("../trainData/*.negativeHints")))
    print("Negative templates", negativeTemplatesCounter)

    print("Positive templates +Negative templates",positiveTemplatesCounter+negativeTemplatesCounter)
    path="../trainData/"
    readHornClausesAndHints_resplitTrainAndVerifyData(path, \
                                                      dataset='train', discardNegativeData=False, smallTrain=False,
                                                      smallTrainSize=50, \
                                                      trainDataSplitRate=0.8)



    print("Finished")

if __name__ == '__main__':
    main()