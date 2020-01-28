extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testwp2.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testwp2.tmp.c"
# 23 "MAP/SAFE-exbench/TRACER-testwp2.tmp.c"
main()
{
  int x, y, z;
  if (z>0) {

    x = 1;
  } else {
    x = 2;
  }

  if (x<0) {

    y = -1;
  } else {

    y = 1;
  }

  __VERIFIER_assert(!( y<0 ));
}
