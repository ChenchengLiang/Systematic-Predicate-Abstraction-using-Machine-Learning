# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-simple_nest.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-simple_nest.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-simple_nest.tmp.c"
void main(){
  int n,/*@  predicates{m<=10,m>0,m>=0} predicates_tpl{0==0} @*/ m;
  int /*@  predicates{i<n,i>0} @*/ i = 1;


  m = 10;
  while(i < n){
    while(m > 0){
      m--;
      i = 2*i;
    }
  }
  assert(i > 0);
}
