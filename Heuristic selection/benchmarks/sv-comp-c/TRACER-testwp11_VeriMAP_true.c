extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testwp11.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testwp11.tmp.c"
# 20 "MAP/SAFE-exbench/TRACER-testwp11.tmp.c"
main(){
  int x,y,z;
  int NONDET1,NONDET2,NONDET3;

  if (NONDET2>0)
    y=2;
  else
    y=3;

  if (NONDET3>0)
    x=4;
  else
    x=5;

  if (NONDET1>0)
    z=5;
  else
    z=6;


  __VERIFIER_assert(!( x > 10 || y > 5 ));

}
