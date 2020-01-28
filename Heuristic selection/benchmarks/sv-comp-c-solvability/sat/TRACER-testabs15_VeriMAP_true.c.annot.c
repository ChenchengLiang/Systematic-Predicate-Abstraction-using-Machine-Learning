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
# 1 "MAP/SAFE-exbench/TRACER-testabs15.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testabs15.tmp.c"
# 28 "MAP/SAFE-exbench/TRACER-testabs15.tmp.c"
main(int n){
  int /*@  predicates{i<=n,i<n,i>=0} @*/ i, /*@  predicates{a<=i,a>=i} predicates_tpl{0==0} terms_tpl{a-2*i,a-i} @*/ a, /*@  predicates{((a+b)!=(3*n)),b<=a,b<=i,b>=a,b>=i} terms_tpl{2*b-2*a,2*b-a,b-2*a,b-2*i,b-a,b-i} @*/ b;
  int /*@  predicates{TRACER_NONDET==0} @*/ TRACER_NONDET;

  if(n >=0){

    i=0; a=0; b=0;

    while(i < n){
      if(TRACER_NONDET){
 a=a+1;
 b=b+2;
      }
      else{
 a=a+2;
 b=b+1;
      }
      i++;
    }
    __VERIFIER_assert(!(a+b != 3*n));
  }
}
