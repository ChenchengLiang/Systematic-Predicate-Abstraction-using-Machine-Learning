extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: assert(0); goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/UNSAFE-exbench/SVCOMP13-loops-sum03_unsafe.tmp.c"
# 1 "<command-line>"
# 1 "MAP/UNSAFE-exbench/SVCOMP13-loops-sum03_unsafe.tmp.c"
# 18 "MAP/UNSAFE-exbench/SVCOMP13-loops-sum03_unsafe.tmp.c"
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
  int sn=0;
  unsigned int loop1=__VERIFIER_nondet_uint(), n1=__VERIFIER_nondet_uint();
  unsigned int x=0;

  while(1){
    if (x<10)
      sn = sn + (2);
    x++;
    __VERIFIER_assert(sn==x*(2) || sn == 0);
  }
}