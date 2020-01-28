# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-gulwani_cegar2.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-gulwani_cegar2.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-gulwani_cegar2.tmp.c"
int /*@  predicates{__BLAST_NONDET==0} predicates_tpl{0==0} @*/ __BLAST_NONDET;
void main(){
  int /*@  predicates{x>=0} @*/ x,/*@  predicates{m>=0} @*/ m,/*@  predicates{n>=x,n>m,n>x} @*/ n;

  x = 0;
  m = 0;
  while(x < n){
    if(__BLAST_NONDET)
 m = x;
 x++;
  }
  if(n > 0)
    {
      assert(0<=m);
      assert(m<n);
    }
}
