# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-simple.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-simple.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-simple.tmp.c"
void main(){
  int /*@  predicates{x>=0} predicates_tpl{0==0} @*/ x=0;
  int /*@  predicates{n>0,n>=x,n>x} @*/ n;

assume(n > 0);
  while(x < n){
    x++;
  }
  assert(x<=n);
}
