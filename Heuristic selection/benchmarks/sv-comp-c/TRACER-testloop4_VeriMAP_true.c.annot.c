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
# 1 "MAP/SAFE-exbench/TRACER-testloop4.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop4.tmp.c"
# 20 "MAP/SAFE-exbench/TRACER-testloop4.tmp.c"
void main(){
  int /*@  predicates{x>=0} @*/ x,/*@  predicates{N!=x,N<=10,N==10,N>=x,N>x} predicates_tpl{0==0} @*/ N;
  int /*@  predicates{a==0,a>1} @*/ a;

  a=0;
  N =10;
  x = 0;
  do {
    x=x+1;
  } while(x != N);

  __VERIFIER_assert(!(a > 1));
}
