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
# 1 "MAP/SAFE-exbench/TRACER-testabs1.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testabs1.tmp.c"
# 22 "MAP/SAFE-exbench/TRACER-testabs1.tmp.c"


void main(){
  int /*@  predicates{x<=0,x==100,x==4} predicates_tpl{0==0} @*/ x,/*@  predicates{y==1,y==2} @*/ y,z;


  if(z>0){
    x=4;
    y=1;
  }
  else{
    x=100;
    y=2;
  }


  __VERIFIER_assert(!(x<=0));

}
