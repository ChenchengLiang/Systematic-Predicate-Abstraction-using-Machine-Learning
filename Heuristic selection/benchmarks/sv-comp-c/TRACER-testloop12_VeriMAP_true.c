extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testloop12.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop12.tmp.c"
# 25 "MAP/SAFE-exbench/TRACER-testloop12.tmp.c"
int x;

int sel(int z)
{
  int y;

  if (z>=0) {
    y = 1;
    __VERIFIER_assert(!( x<0 ));
  } else {
    y = 2;
    x = 1;
  }
  return y;
}

void main()
{
  int i, y;

  x = 0;
  i = 0;
  while (i < 10) {

    sel(y);

    i++;
  }

  return;
}
