extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testfunc11.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testfunc11.tmp.c"
# 23 "MAP/SAFE-exbench/TRACER-testfunc11.tmp.c"
int bar(){ return 1;}
int foo(){ return bar();}







main(){
  int x;
  x = foo();
  __VERIFIER_assert(!( x !=1 ));
}
