extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testfunc1.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testfunc1.tmp.c"
# 20 "MAP/SAFE-exbench/TRACER-testfunc1.tmp.c"
int f1(int w)
{
    int z;
    z = w + 3;
    return z;
}

int f2(int w1)
{
  int z1;
  z1 = w1 + 5;
  return z1;
}

void main()
{
  int x,a,b,arbit;

  if (arbit) {
    a = f1(x);
    b = a - x - 3;
  }
  else {
    a = f2(x);
    b = a - x - 5;
  }
  __VERIFIER_assert(!( b != 0 ));
  return;
}
