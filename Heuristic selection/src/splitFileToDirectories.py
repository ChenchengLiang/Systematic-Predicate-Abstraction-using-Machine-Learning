import os
import shutil,glob





def main():
    print("Start")
    copyToOneFile()
    splitToNDirectory(2,"sv-comp-clauses",".smt2")
    splitToNDirectory(2,"chc-comp19-benchmarks-master",".smt2")
    splitToNDirectory(2, "sv-comp-c",".annot.c")
    shutil.rmtree("../benchmarks/sv-comp-clauses/allInOneFile")
    shutil.rmtree("../benchmarks/chc-comp19-benchmarks-master/allInOneFile")
    shutil.rmtree("../benchmarks/sv-comp-c/allInOneFile")



    print("Finished")

def splitToNDirectory(N,benchmark,type):
    for dirNum in range(N):
        os.mkdir(str("../benchmarks/"+benchmark+"/fileList_"+str(dirNum+1)))
    length=0
    for file in sorted(glob.glob("../benchmarks/"+benchmark+"/allInOneFile"+ '/*'+type)):
        length=length+1
    print("Total File:",length)
    batchsize =int(length/N)
    cursor=1
    filecount=0
    for file in sorted(glob.glob("../benchmarks/"+benchmark+"/allInOneFile"+ '/*'+type)):
        if(filecount<cursor*batchsize):
            shutil.copy2(file, "../benchmarks/"+benchmark+"/"+"fileList_"+str(cursor))
            filecount=filecount+1
        else:
            shutil.copy2(file, "../benchmarks/"+benchmark+"/" + "fileList_" + str(cursor))
            cursor=cursor+1
            filecount=filecount+1


def copyToOneFile():
    benchmark="sv-comp-clauses/*/*"
    os.mkdir("../benchmarks/sv-comp-clauses/allInOneFile")
    for file in sorted(glob.glob('../benchmarks/' + benchmark + '/*.smt2')):
        #print(file)
        shutil.copy2(file, "../benchmarks/sv-comp-clauses/allInOneFile")

    benchmark="chc-comp19-benchmarks-master/*"
    os.mkdir("../benchmarks/chc-comp19-benchmarks-master/allInOneFile")
    for file in sorted(glob.glob('../benchmarks/' + benchmark + '/*.smt2')):
        #print(file)
        shutil.copy2(file, "../benchmarks/chc-comp19-benchmarks-master/allInOneFile")

    benchmark="sv-comp-c/*"
    os.mkdir("../benchmarks/sv-comp-c/allInOneFile")
    for file in sorted(glob.glob('../benchmarks/' + benchmark + '/*.annot.c')):
        #print(file)
        shutil.copy2(file, "../benchmarks/sv-comp-c/allInOneFile")

if __name__ == '__main__':
    main()