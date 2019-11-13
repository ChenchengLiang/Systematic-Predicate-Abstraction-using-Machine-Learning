import os
import shutil,glob





def main():
    print("Start")
    copyToOneFile(10)
    splitToNDirectory(10,"sv-comp-clauses",".smt2")
    splitToNDirectory(10,"chc-comp",".smt2")
    splitToNDirectory(10, "sv-comp-c",".annot.c")
    shutil.rmtree("../benchmarks/sv-comp-clauses/allInOneFile")
    shutil.rmtree("../benchmarks/chc-comp/allInOneFile")
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
    #print(os.path.exists("../benchmarks/"+benchmark+"/fileList_11"))
    if(os.path.exists("../benchmarks/"+benchmark+"/fileList_11")):
        shutil.move("../benchmarks/"+benchmark+"/fileList_11","../benchmarks/"+benchmark+"/fileList_10/")


def copyToOneFile(N):
    benchmark="sv-comp-clauses/*/*"
    for i in range(N):
        if(os.path.exists("../benchmarks/sv-comp-clauses/"+"fileList_"+str(i+1))):
            shutil.rmtree("../benchmarks/sv-comp-clauses/"+"fileList_"+str(i+1))
    if (os.path.exists("../benchmarks/sv-comp-clauses/allInOneFile")):
        shutil.rmtree("../benchmarks/sv-comp-clauses/allInOneFile")
    os.mkdir("../benchmarks/sv-comp-clauses/allInOneFile")
    for file in sorted(glob.glob('../benchmarks/' + benchmark + '/*.smt2')):
        #print(file)
        shutil.copy2(file, "../benchmarks/sv-comp-clauses/allInOneFile")

    benchmark="chc-comp/*"
    for i in range(N):
        if (os.path.exists("../benchmarks/chc-comp/" + "fileList_" + str(i + 1))):
            shutil.rmtree("../benchmarks/chc-comp/"+"fileList_"+str(i+1))
    if (os.path.exists("../benchmarks/chc-comp/allInOneFile")):
        shutil.rmtree("../benchmarks/chc-comp/allInOneFile")
    os.mkdir("../benchmarks/chc-comp/allInOneFile")
    for file in sorted(glob.glob('../benchmarks/' + benchmark + '/*.smt2')):
        #print(file)
        shutil.copy2(file, "../benchmarks/chc-comp/allInOneFile")

    benchmark="sv-comp-c/*"
    for i in range(N):
        if (os.path.exists("../benchmarks/sv-comp-c/" + "fileList_" + str(i + 1))):
            shutil.rmtree("../benchmarks/sv-comp-c/"+"fileList_"+str(i+1))
    if (os.path.exists("../benchmarks/sv-comp-c/allInOneFile")):
        shutil.rmtree("../benchmarks/sv-comp-c/allInOneFile")
    os.mkdir("../benchmarks/sv-comp-c/allInOneFile")
    for file in sorted(glob.glob('../benchmarks/' + benchmark + '/*.annot.c')):
        #print(file)
        shutil.copy2(file, "../benchmarks/sv-comp-c/allInOneFile")

if __name__ == '__main__':
    main()