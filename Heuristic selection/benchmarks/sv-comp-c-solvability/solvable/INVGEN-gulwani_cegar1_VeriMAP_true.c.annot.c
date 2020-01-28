# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-gulwani_cegar1.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-gulwani_cegar1.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-gulwani_cegar1.tmp.c"
int /*@  predicates{__BLAST_NONDET!=0,__BLAST_NONDET==0} predicates_tpl{0==0} @*/ __BLAST_NONDET;
void main(){
  int /*@  predicates{x<4,x<=2,x>=0} @*/ x,/*@  predicates{y<=2,y<=x,y>=0,y>=x} terms_tpl{2*y-2*x} @*/ y;

assume(0 <= x); __VERIFIER_assume(x <= 2);
assume(0 <= y); __VERIFIER_assume(y <= 2);
  while(__BLAST_NONDET){
 x+=2;
 y+=2;
  }
  if(y >= 0)
    if(y <= 0)
      if(4 <= x)
 assert(x < 4);
}
