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
# 1 "MAP/SAFE-exbench/TRACER-testabs14.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testabs14.tmp.c"
# 27 "MAP/SAFE-exbench/TRACER-testabs14.tmp.c"
main(int /*@  predicates{n<=10,n==10} predicates_tpl{0==0} @*/ n){
  int /*@  predicates{i<=n,i<n,i>10,i>=0} @*/ i,/*@  predicates{j<=n,j<n,j>10,j>=0} @*/ j;

  i=0; j=0; n=10;

  while(j < n){
    j++;
  }
  while(i < n){
    i++;
  }

  __VERIFIER_assert(!(i>10 || j>10));

}
