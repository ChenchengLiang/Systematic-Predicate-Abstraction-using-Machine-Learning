import os,sys
from utils import run_eldarica_with_shell_pool,run_eldarica_with_shell


def main():
    benchmark_name = os.path.join("../benchmarks/" ,"regression-test")
    thread_number =4  # 16
    timeout =4000
    # -onlyInitialPredicates -noIntervals -moveFile --separateByPredicates
    eldarica_parameters = "-generateSimplePredicates -separateByPredicates -onlyInitialPredicates -extractPredicates " \
                          "-noIntervals -labelSimpleGeneratedPredicates -getHornGraph:hyperEdgeGraph  -abstract:off -solvabilityTimeout:3600 -mainTimeout:3600 -t:4000"
    # eldarica_parameters = " -generateSimplePredicates -noIntervals -onlyInitialPredicates" \
    #                       " -getHornGraph:hyperEdgeGraph" \
    #                       "  -abstract:off -separateByPredicates -solvabilityTimeout:300 -mainTimeout:1200 -t:1200"
    file_list=run_eldarica_with_shell_pool(benchmark_name, run_eldarica_with_shell, eldarica_parameters
                                 ,timeout=timeout ,thread=thread_number,countinous_extract=False)

    #draw
    # file_list=[f[0] for f in file_list]
    # for f in file_list:
    #     print(f)
    #     commmand="dot -Tpng " + f + ".hyperEdgeHornGraph.gv -o "+ f+".png"
    #     os.system(commmand)


main()