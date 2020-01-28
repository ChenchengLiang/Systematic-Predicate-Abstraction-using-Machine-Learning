extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testloop6.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop6.tmp.c"
# 30 "MAP/SAFE-exbench/TRACER-testloop6.tmp.c"
void main()
{
  int i,x,y,NONDET,z;

  x=0;
  z=1;

  __VERIFIER_assume( y>=0 );
  i = 0;
  while (i < 10) {
    if (NONDET > 0) {
      x = x;
    } else {
      x++;
    }

    __VERIFIER_assert(!( y < 0 ));
    i++;
  }
  __VERIFIER_assert(!( z<0 ));
}
