# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-simple_if.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-simple_if.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-simple_if.tmp.c"
void main(){
  int n,/*@  predicates{m>0} predicates_tpl{0==0} @*/ m;
  int /*@  predicates{i<n,i>0} @*/ i = 1;
   ;


  while(i < n){
    if(m > 0){
      i = 2*i;
    } else {
      i = 3*i;
    }

  }
  assert(i > 0);
}
