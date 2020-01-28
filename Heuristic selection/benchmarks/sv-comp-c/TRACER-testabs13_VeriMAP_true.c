extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testabs13.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testabs13.tmp.c"
# 28 "MAP/SAFE-exbench/TRACER-testabs13.tmp.c"
main(int n){
  int i;

  i=0; n=10;

  while (i < n){ i++; }

  __VERIFIER_assert(!( i>10 ));

}
