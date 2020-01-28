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
# 1 "MAP/SAFE-exbench/TRACER-testloop28.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop28.tmp.c"
# 20 "MAP/SAFE-exbench/TRACER-testloop28.tmp.c"

main(){
  int /*@  predicates{i>=0} predicates_tpl{0==0} @*/ i,/*@  predicates{n>=i,n>i} @*/ n,/*@  predicates{x==0,x==1,x>0} @*/ x, NONDET;

  x=0;
  i=0;
  while(i<n){
    if(unknown()>0){
      __VERIFIER_assert(!(x>0));
    }
    else{
      x = 1;
    }
    i++;
  }
}
