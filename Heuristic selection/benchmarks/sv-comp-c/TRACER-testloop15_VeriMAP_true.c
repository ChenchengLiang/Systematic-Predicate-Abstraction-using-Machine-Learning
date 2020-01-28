extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testloop15.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop15.tmp.c"
# 32 "MAP/SAFE-exbench/TRACER-testloop15.tmp.c"
int main()
{
  int i = 0;
  int N = 100;

  while (i<N) {
    i++;
  }

  __VERIFIER_assert(!( i>N ));

  return 0;
}
