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
# 1 "MAP/SAFE-exbench/TRACER-testwp16.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testwp16.tmp.c"
# 21 "MAP/SAFE-exbench/TRACER-testwp16.tmp.c"
main(){

  int /*@  predicates{t>1000} predicates_tpl{0==0} @*/ t,/*@  predicates{x2==0,x2==3} @*/ x2,/*@  predicates{x3==0,x3==3} @*/ x3,/*@  predicates{temp==0,temp==3} @*/ temp;


  t = 1;
  x2 = temp;
  x3 = temp;



  if(x2 == 0){

    if(x3 == 3)
      t++;
  }


  t++;

  __VERIFIER_assert(!(t>1000));

}
