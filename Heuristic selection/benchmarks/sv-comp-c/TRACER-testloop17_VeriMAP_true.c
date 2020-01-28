extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testloop17.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop17.tmp.c"
# 23 "MAP/SAFE-exbench/TRACER-testloop17.tmp.c"
int main()
{
	int N;
  int i, j, k;

  i = 0;
  j = 0;
  k = 0;

  __VERIFIER_assume( N > 1 );

  while (i < N) {
    if (i<1)
      k = 1;
    else
      k = 0;
    j++;
    i++;
  }

  __VERIFIER_assert(!( k>0 ));

  return 0;
}
