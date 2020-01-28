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
# 1 "MAP/SAFE-exbench/TRACER-testwp12.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testwp12.tmp.c"
# 23 "MAP/SAFE-exbench/TRACER-testwp12.tmp.c"
void main(){
  int y1,/*@  predicates{y2<0,y2==3} predicates_tpl{0==0} @*/ y2,/*@  predicates{y3<0,y3==3} @*/ y3;
  int /*@  predicates{x>6} @*/ x = 0;
  int p,/*@  predicates{z==2,z==3} @*/ z;



  if(y2>0)x=x+2;
  else y2=3;
  if(p>0)z=3;
  else z=2;
  if(y3>0)x=x+4;
  else y3=3;

  __VERIFIER_assert(!(x>6 &&(y2<0 || y3<0)));
  return;
}
