extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testloop10.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop10.tmp.c"
# 20 "MAP/SAFE-exbench/TRACER-testloop10.tmp.c"
//extern int unknown();

void main()
{
  int lock, old, new;

  lock=0;
  new=old+1;

  while (new != old) {
    lock = 1;
    old = new;
    if (unknown()) {
      lock = 0;
      new++;
    }
  }

  __VERIFIER_assert(!( lock==0 ));
  return;
}