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
# 1 "MAP/SAFE-exbench/TRACER-testloop16.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop16.tmp.c"
# 22 "MAP/SAFE-exbench/TRACER-testloop16.tmp.c"
void main(int N)
{
  int /*@  predicates{i<=N,i<N,i>=0} predicates_tpl{0==0} @*/ i, /*@  predicates{x==1,x==2,x>2} @*/ x;

  x = 1;
  i = 0;

  while(i<N){
    if(x==1){
      x=2;
    } else {
      x=1;
    }
    i++;
  }

  __VERIFIER_assert(!(x>2));

  return;
}
