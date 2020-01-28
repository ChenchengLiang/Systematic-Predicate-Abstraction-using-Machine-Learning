# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern int __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn(){ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testwp5.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testwp5.tmp.c"
# 21 "MAP/SAFE-exbench/TRACER-testwp5.tmp.c"
void main(){
  int /*@  predicates{x>50} predicates_tpl{0==0} @*/ x,y;

  x=0;

  if(y>0)
    x=x+1;
  else
    x=x+2;

  x++;
  x=x+2;
  x=x+3;


  __VERIFIER_assert(!(x > 50));

}
