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
# 1 "MAP/SAFE-exbench/TRACER-testfunc3.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testfunc3.tmp.c"
# 20 "MAP/SAFE-exbench/TRACER-testfunc3.tmp.c"
int foo(int a){

  int b;
  b = a+1;
  return b;
}

void main(){

  int /*@  predicates{init==8} predicates_tpl{0==0} @*/ init,x,y,/*@  predicates{z!=17} @*/ z;

  init=8;
  x= foo(init+1);
  y= foo(x+2);
  z= foo(y+3);

  __VERIFIER_assert(!(z != 17));
}
