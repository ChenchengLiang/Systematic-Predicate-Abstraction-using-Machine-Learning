# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-up-nested.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-up-nested.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-up-nested.tmp.c"
int NONDET;

void main(){
  int n,/*@  predicates{j<=n} @*/ j,/*@  predicates{i==0,i>=0} predicates_tpl{0==0} @*/ i,/*@  predicates{k==0} @*/ k;

  ;
  i = 0;
  k = 0;

assume(j<=n);
  while(j <= n){



assume(i >= 0);
# 43 "MAP/SAFE-exbench/INVGEN-up-nested.tmp.c"
    j++;
  }
  assert(i>= 0);
# 55 "MAP/SAFE-exbench/INVGEN-up-nested.tmp.c"
}
