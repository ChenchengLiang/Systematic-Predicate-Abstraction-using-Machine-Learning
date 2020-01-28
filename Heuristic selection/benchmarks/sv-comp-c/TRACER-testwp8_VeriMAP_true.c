extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testwp8.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testwp8.tmp.c"
# 20 "MAP/SAFE-exbench/TRACER-testwp8.tmp.c"
main(){
  int x,y,z;
  int TRACER_NONDET;

  x = 0;

  if (y>0)
    y=2;
  else
    y=5;

  if(TRACER_NONDET>0)
    x=x+1;
  else
    x=x+4;

  __VERIFIER_assert(!( x + y > 50 ));

}
