extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: assert(0); goto ERROR;}
extern int __VERIFIER_nondet_int();
extern _Bool __VERIFIER_nondet_bool();
# 1 "MAP/SAFE-exbench/SVCOMP13-loops-terminator_02_safe.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/SVCOMP13-loops-terminator_02_safe.tmp.c"
# 18 "MAP/SAFE-exbench/SVCOMP13-loops-terminator_02_safe.tmp.c"
/*
//extern void __VERIFIER_assume(int);
void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: assert(0); goto ERROR;
  }
  return;
}
int __VERIFIER_nondet_int();
_Bool __VERIFIER_nondet_bool();
*/

main()
{
  int x=__VERIFIER_nondet_int();
  int y=__VERIFIER_nondet_int();
  int z=__VERIFIER_nondet_int();
  __VERIFIER_assume(x<100);
  __VERIFIER_assume(z<100);
  while(x<100 && 100<z)
  {
    _Bool tmp=__VERIFIER_nondet_bool();
    if (tmp)
   {
     x++;
   }
   else
   {
     x--;
     z--;
   }
  }

  __VERIFIER_assert(x>=100 || z<=100);
}
