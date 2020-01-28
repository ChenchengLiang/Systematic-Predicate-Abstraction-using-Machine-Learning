extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: assert(0); goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/UNSAFE-exbench/SVCOMP13-loops-for_bounded_loop1_unsafe.tmp.c"
# 1 "<command-line>"
# 1 "MAP/UNSAFE-exbench/SVCOMP13-loops-for_bounded_loop1_unsafe.tmp.c"
# 18 "MAP/UNSAFE-exbench/SVCOMP13-loops-for_bounded_loop1_unsafe.tmp.c"
/*
//extern void __VERIFIER_assume(int);
void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: assert(0); goto ERROR;
  }
  return;
}

int __VERIFIER_nondet_int();
*/

int main() {
  int i=0, x=0, y=0;
  int n=__VERIFIER_nondet_int();
  __VERIFIER_assume(n>0);
  for(i=0; i<n; i++)
  {
    x = x-y;
    __VERIFIER_assert(x==0);
    y = __VERIFIER_nondet_int();
    __VERIFIER_assume(y!=0);
    x = x+y;
    __VERIFIER_assert(x!=0);
  }
  __VERIFIER_assert(x==0);
}
