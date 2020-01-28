extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testloop8.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop8.tmp.c"
# 20 "MAP/SAFE-exbench/TRACER-testloop8.tmp.c"
//extern int unknown();

void main () {
  int x, y;

  x = 0;
  y = 0;
  while (unknown()) {
    x ++ ;
    y ++ ;
  }
  while (x > 0) {
    x -- ;
    y -- ;
  }
  __VERIFIER_assert(!( y == 0 ));
}
