extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testloop7.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop7.tmp.c"
# 26 "MAP/SAFE-exbench/TRACER-testloop7.tmp.c"
//extern int unknown();

void main()
{
  int x, y;

  y = 0;
  x = 1;
  while ( unknown() < 10) {
    if (x<2) {
      x=2;
    } else {
      x=1;
    }
    if (y<1) {
      y=0;
    }
  }
  __VERIFIER_assert(!( x > 2 ));
  return;
}
