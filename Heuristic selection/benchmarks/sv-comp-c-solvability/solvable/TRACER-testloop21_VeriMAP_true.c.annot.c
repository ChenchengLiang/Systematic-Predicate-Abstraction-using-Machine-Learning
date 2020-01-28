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
# 1 "MAP/SAFE-exbench/TRACER-testloop21.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop21.tmp.c"
# 25 "MAP/SAFE-exbench/TRACER-testloop21.tmp.c"
void main(){

  int NONDET;
  int i,/*@  predicates{N>i} predicates_tpl{0==0} @*/ N;
  int /*@  predicates{a==1,a==2} @*/ a;
  int /*@  predicates{x==0,x>0} @*/ x;


  x=0;
  i=0;


  if(NONDET > 0)a=1; else a=2;

 LOOP:
  if(i<N){
    i=i+1;
    goto LOOP;
  }

  __VERIFIER_assert(!(x >0));
  return;
}
