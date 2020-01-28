extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: assert(0); goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/SVCOMP13-loops-while_infinite_loop_1_safe.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/SVCOMP13-loops-while_infinite_loop_1_safe.tmp.c"
# 18 "MAP/SAFE-exbench/SVCOMP13-loops-while_infinite_loop_1_safe.tmp.c"
/*
void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: assert(0); goto ERROR;
  }
  return;
}
*/

int main() {
  int x=0;

  while(1)
  {
    __VERIFIER_assert(x==0);
  }

  __VERIFIER_assert(x!=0);
}
