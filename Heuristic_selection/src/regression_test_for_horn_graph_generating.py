
import os,sys
from utils import run_eldarica_with_shell_pool,run_eldarica_with_shell





def main():
    benchmark_name = os.path.join("../benchmarks/" ,"regression-test")
    thread_number =4  # 16
    timeout =1200
    # -onlyInitialPredicates -noIntervals -moveFile
    eldarica_parameters = " -generateSimplePredicates -extractPredicates -noIntervals -labelSimpleGeneratedPredicates -getHornGraph:hyperEdgeGraph  -abstract -solvabilityTimeout:300 -mainTimeout:1200 -t:1200"
    file_list=run_eldarica_with_shell_pool(benchmark_name, run_eldarica_with_shell, eldarica_parameters
                                 ,timeout=timeout ,thread=thread_number,countinous_extract=False)
    file_list=[f[0] for f in file_list]
    for f in file_list:
        print(f)
        commmand="dot -Tpng " + f + ".hyperEdgeHornGraph.gv -o "+ f+".png"
        os.system(commmand)


main()