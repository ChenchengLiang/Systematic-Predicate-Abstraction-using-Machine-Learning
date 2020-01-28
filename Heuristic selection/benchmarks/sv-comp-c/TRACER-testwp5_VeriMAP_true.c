extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testwp5.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testwp5.tmp.c"
# 21 "MAP/SAFE-exbench/TRACER-testwp5.tmp.c"
void main(){
  int x,y;

  x=0;

  if (y>0)
    x=x+1;
  else
    x=x+2;

  x++;
  x=x+2;
  x=x+3;


  __VERIFIER_assert(!( x > 50 ));

}
