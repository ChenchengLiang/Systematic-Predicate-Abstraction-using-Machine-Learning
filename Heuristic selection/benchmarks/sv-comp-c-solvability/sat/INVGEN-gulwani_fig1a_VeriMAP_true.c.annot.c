# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-gulwani_fig1a.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-gulwani_fig1a.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-gulwani_fig1a.tmp.c"
int __BLAST_NONDET;
void main(){
  int /*@  predicates{x<0} predicates_tpl{0==0} @*/ x,/*@  predicates{y<=x,y>0,y>=x} terms_tpl{y-x} @*/ y;

  x = -50;
  while(x < 0){
 x = x+y;
 y++;
  }
  assert(y>0);
}
