import os
import shutil,glob
import sys




def main():
    print("Start")
    try:
        if(sys.argv[1]=="trainFiles"):
            copyToOneFile(10)
            splitToNDirectory(10,"sv-comp-clauses",".smt2")
            splitToNDirectory(10,"chc-comp",".smt2")
            splitToNDirectory(10, "sv-comp-c",".annot.c")
            shutil.rmtree("../benchmarks/sv-comp-clauses/allInOneFile")
            shutil.rmtree("../benchmarks/chc-comp/allInOneFile")
            shutil.rmtree("../benchmarks/sv-comp-c/allInOneFile")

        if(sys.argv[1]=="satFiles"):
            splitSatFiles(10,"sv-comp-c")
            splitSatFiles(10, "sv-comp-clauses")
            splitSatFiles(10, "chc-comp")

    except:
        print("First augment: trainFiles or satFiles")



    print("Finished")

def splitToNDirectory(N,benchmark,type):
    for dirNum in range(N+1):
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
        else:
            shutil.copy2(file, "../benchmarks/"+benchmark+"/" + "fileList_" + str(cursor))
            cursor=cursor+1
        filecount = filecount + 1
    #print(os.path.exists("../benchmarks/"+benchmark+"/fileList_11"))
    if(os.path.exists("../benchmarks/"+benchmark+"/fileList_11")):
        for x in glob.glob("../benchmarks/"+benchmark+"/fileList_11/*"):
            shutil.move(x,"../benchmarks/"+benchmark+"/fileList_10/")
        os.rmdir("../benchmarks/"+benchmark+"/fileList_11")


def copyToOneFile(N):
    benchmark="sv-comp-clauses/*/*"
    for i in range(N+1):
        if(os.path.exists("../benchmarks/sv-comp-clauses/"+"fileList_"+str(i+1))):
            shutil.rmtree("../benchmarks/sv-comp-clauses/"+"fileList_"+str(i+1))
    if (os.path.exists("../benchmarks/sv-comp-clauses/allInOneFile")):
        shutil.rmtree("../benchmarks/sv-comp-clauses/allInOneFile")
    os.mkdir("../benchmarks/sv-comp-clauses/allInOneFile")
    for file in sorted(glob.glob('../benchmarks/' + benchmark + '/*.smt2')):
        #print(file)
        shutil.copy2(file, "../benchmarks/sv-comp-clauses/allInOneFile")

    benchmark="chc-comp/*"
    for i in range(N+1):
        if (os.path.exists("../benchmarks/chc-comp/" + "fileList_" + str(i + 1))):
            shutil.rmtree("../benchmarks/chc-comp/"+"fileList_"+str(i+1))
    if (os.path.exists("../benchmarks/chc-comp/allInOneFile")):
        shutil.rmtree("../benchmarks/chc-comp/allInOneFile")
    os.mkdir("../benchmarks/chc-comp/allInOneFile")
    for file in sorted(glob.glob('../benchmarks/' + benchmark + '/*.smt2')):
        #print(file)
        shutil.copy2(file, "../benchmarks/chc-comp/allInOneFile")

    benchmark="sv-comp-c/*"
    for i in range(N+1):
        if (os.path.exists("../benchmarks/sv-comp-c/" + "fileList_" + str(i + 1))):
            shutil.rmtree("../benchmarks/sv-comp-c/"+"fileList_"+str(i+1))
    if (os.path.exists("../benchmarks/sv-comp-c/allInOneFile")):
        shutil.rmtree("../benchmarks/sv-comp-c/allInOneFile")
    os.mkdir("../benchmarks/sv-comp-c/allInOneFile")
    for file in sorted(glob.glob('../benchmarks/' + benchmark + '/*.annot.c')):
        #print(file)
        shutil.copy2(file, "../benchmarks/sv-comp-c/allInOneFile")

def splitSatFiles(N,benchmark):
    #delete existed directory

    length=0
    for file in sorted(glob.glob("../benchmarks/"+benchmark+"-solvability/sat/*")):
        length=length+1
    print("Total File:",length)

    for i in range(N+1):
        if(os.path.exists("../benchmarks/"+benchmark+"-solvability/fileList_sat_"+str(i+1))):
            shutil.rmtree("../benchmarks/"+benchmark+"-solvability/fileList_sat_"+str(i+1))
    #create directories
    for dirNum in range(N+1):
        os.mkdir(str("../benchmarks/"+benchmark+"-solvability/fileList_sat_"+str(dirNum+1)))

    batchsize =int(length/N)
    cursor=1
    filecount=0
    for file in sorted(glob.glob("../benchmarks/"+benchmark+"-solvability/sat/*")):
        if(filecount<cursor*batchsize):
            shutil.copy2(file, "../benchmarks/"+benchmark+"-solvability/fileList_sat_"+str(cursor))
        else:
            shutil.copy2(file, "../benchmarks/"+benchmark+"-solvability/fileList_sat_"+str(cursor))
            cursor=cursor+1
        filecount = filecount + 1
    #print(os.path.exists("../benchmarks/"+benchmark+"/fileList_11"))
    if(os.path.exists("../benchmarks/"+benchmark+"-solvability/fileList_sat_"+str(N+1))):
        for x in glob.glob("../benchmarks/"+benchmark+"-solvability/fileList_sat_"+str(N+1)+"/*"):
            shutil.move(x,"../benchmarks/"+benchmark+"-solvability/fileList_sat_"+str(N))
        os.rmdir("../benchmarks/"+benchmark+"-solvability/fileList_sat_"+str(N+1))



if __name__ == '__main__':
    main()