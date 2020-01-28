extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: assert(0); goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/UNSAFE-exbench/SVCOMP13-loops-sum01_bug02_sum01_bug02_basease_unsafe.c.tmp.c"
# 1 "<command-line>"
# 1 "MAP/UNSAFE-exbench/SVCOMP13-loops-sum01_bug02_sum01_bug02_basease_unsafe.c.tmp.c"
# 18 "MAP/UNSAFE-exbench/SVCOMP13-loops-sum01_bug02_sum01_bug02_basease_unsafe.c.tmp.c"
/*
void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: assert(0); goto ERROR;
  }
  return;
}

//extern unsigned int __VERIFIER_nondet_uint();
*/

int main() {
  int i, n=__VERIFIER_nondet_uint(), sn=0;
  for(i=1; i<=n; i++) {
    sn = sn + (2);
    if (i==4) sn=-10;
  }
  __VERIFIER_assert(sn==n*(2) || sn == 0);
}
