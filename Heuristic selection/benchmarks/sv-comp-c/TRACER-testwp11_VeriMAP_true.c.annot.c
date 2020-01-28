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
# 1 "MAP/SAFE-exbench/TRACER-testwp11.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testwp11.tmp.c"
# 20 "MAP/SAFE-exbench/TRACER-testwp11.tmp.c"
main(){
  int /*@  predicates{x==4,x==5,x>10} predicates_tpl{0==0} @*/ x,/*@  predicates{y==2,y==3,y>5} @*/ y,/*@  predicates{z==5,z==6} @*/ z;
  int NONDET1,NONDET2,NONDET3;

  if(NONDET2>0)
    y=2;
  else
    y=3;

  if(NONDET3>0)
    x=4;
  else
    x=5;

  if(NONDET1>0)
    z=5;
  else
    z=6;


  __VERIFIER_assert(!(x > 10 || y > 5));

}
