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
# 1 "MAP/SAFE-exbench/TRACER-testloop17.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop17.tmp.c"
# 23 "MAP/SAFE-exbench/TRACER-testloop17.tmp.c"
int main()
{
 int /*@  predicates{N>1} predicates_tpl{0==0} @*/ N;
  int /*@  predicates{i<=N,i<N,i>=0} @*/ i, /*@  predicates{j<=i,j>=i} terms_tpl{j-i} @*/ j, /*@  predicates{k==0,k==1,k>0} @*/ k;

  i = 0;
  j = 0;
  k = 0;

assume(N > 1);

  while(i < N){
    if(i<1)
      k = 1;
    else
      k = 0;
    j++;
    i++;
  }

  __VERIFIER_assert(!(k>0));

  return 0;
}
