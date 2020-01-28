extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testwp14.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testwp14.tmp.c"
# 20 "MAP/SAFE-exbench/TRACER-testwp14.tmp.c"
main(){

  int x,y,z;

  if (x>4)
    z=4;
  else
    x=5;

  __VERIFIER_assume( x>0 );

  y=x;

  __VERIFIER_assert(!( !(y > 4) ));

}
