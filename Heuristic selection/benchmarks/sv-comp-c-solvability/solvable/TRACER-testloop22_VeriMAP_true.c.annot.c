# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern int __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn(){ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testloop22.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop22.tmp.c"
# 25 "MAP/SAFE-exbench/TRACER-testloop22.tmp.c"
void main(){

  int NONDET;
  int i,/*@  predicates{N>i} predicates_tpl{0==0} @*/ N;
  int a;
  int /*@  predicates{x==1,x==2,x>2} @*/ x;

  if(NONDET > 0)x=1; else x=2;

 LOOP:
  if(i<N){
    i=i+1;
    goto LOOP;
  }

  __VERIFIER_assert(!(x >2));
  return;
}