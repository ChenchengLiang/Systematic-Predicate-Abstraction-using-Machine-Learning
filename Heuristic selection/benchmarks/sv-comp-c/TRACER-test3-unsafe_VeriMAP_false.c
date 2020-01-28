extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/UNSAFE-exbench/TRACER-test3-unsafe.tmp.c"
# 1 "<command-line>"
# 1 "MAP/UNSAFE-exbench/TRACER-test3-unsafe.tmp.c"
# 22 "MAP/UNSAFE-exbench/TRACER-test3-unsafe.tmp.c"
//extern int unknown();

void main(){
  int x=0;
  int y=0;

  if (unknown())
    x = 5;
  else
    y = 10;

  __VERIFIER_assert(!( x==5 || y==10 ));
  return;
}
