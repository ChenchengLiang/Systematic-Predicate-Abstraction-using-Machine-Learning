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
# 1 "MAP/SAFE-exbench/TRACER-testabs12.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testabs12.tmp.c"
# 18 "MAP/SAFE-exbench/TRACER-testabs12.tmp.c"
main(){
  int /*@  predicates{i<100,i<=100,i>100,i>=0} @*/ i,/*@  predicates{count<0,count<=i,count>=0,count>=i} predicates_tpl{0==0} terms_tpl{count-i} @*/ count,n;

assume(count >= 0);
  i=0;


  while(i < 100){
      count++;
      i++;
  }

  __VERIFIER_assert(!((i > 100)|| count < 0));
}
