extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: assert(0); goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/UNSAFE-exbench/SVCOMP13-loops-trex03_unsafe.tmp.c"
# 1 "<command-line>"
# 1 "MAP/UNSAFE-exbench/SVCOMP13-loops-trex03_unsafe.tmp.c"
# 18 "MAP/UNSAFE-exbench/SVCOMP13-loops-trex03_unsafe.tmp.c"

/*
void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: assert(0); goto ERROR;
  }
  return;
}


//extern unsigned int __VERIFIER_nondet_uint();
//extern _Bool __VERIFIER_nondet_bool();
*/

int main()
{
  unsigned int x1=__VERIFIER_nondet_uint(), x2=__VERIFIER_nondet_uint(), x3=__VERIFIER_nondet_uint();
  unsigned int d1=1, d2=1, d3=1;
  int c1=__VERIFIER_nondet_bool(), c2=__VERIFIER_nondet_bool();

  while(x1>0 && x2>0 && x3>0)
  {
    if (c1) x1=x1-d1;
    else if (c2) x2=x2-d2;
    else x3=x3-d3;
    c1=__VERIFIER_nondet_bool();
    c2=__VERIFIER_nondet_bool();
  }

  __VERIFIER_assert(x1==0 && x2==0 && x3==0);
  return 0;
}