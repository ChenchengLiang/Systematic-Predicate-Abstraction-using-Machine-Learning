extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testloop29.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop29.tmp.c"
# 22 "MAP/SAFE-exbench/TRACER-testloop29.tmp.c"
main() {
  int x = 0;
  while(x < 100) {
    x++;
    if(x == 50)
      break;
  }
  __VERIFIER_assert(!( x != 50 ));
}
