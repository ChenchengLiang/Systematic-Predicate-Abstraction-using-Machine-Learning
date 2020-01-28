extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testloop1.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop1.tmp.c"
# 23 "MAP/SAFE-exbench/TRACER-testloop1.tmp.c"
void main(){

  int NONDET;
  int i,N;
  int a;
  int x;


  x=0;
  i=0;


  if (NONDET > 0) a=1; else a=2;

  while (i<N){
    i=i+1;
  }

  __VERIFIER_assert(!( x >0 ));
  return;
}
