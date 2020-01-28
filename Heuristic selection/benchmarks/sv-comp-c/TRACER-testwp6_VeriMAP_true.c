extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testwp6.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testwp6.tmp.c"
# 21 "MAP/SAFE-exbench/TRACER-testwp6.tmp.c"
void main(){
  int x,y;

  if (y>0)
    x=1;
  else
    x=47;

  if (x>0)
    x=x+3;
  else
    x=x+5;

  __VERIFIER_assert(!( x > 50 ));

}
