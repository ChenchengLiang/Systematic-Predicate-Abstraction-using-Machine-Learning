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
# 1 "MAP/SAFE-exbench/TRACER-testwp4.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testwp4.tmp.c"
# 23 "MAP/SAFE-exbench/TRACER-testwp4.tmp.c"
void main(){
  int /*@  predicates{sum>40} predicates_tpl{0==0} @*/ sum;
  int /*@  predicates{c1==0} @*/ c1, /*@  predicates{c2==0} @*/ c2, /*@  predicates{c3==0} @*/ c3, /*@  predicates{c4==0} @*/ c4, /*@  predicates{c5==0} @*/ c5;
  int /*@  predicates{d1==0} @*/ d1, /*@  predicates{d2==0} @*/ d2, /*@  predicates{d3==0} @*/ d3, /*@  predicates{d4==0} @*/ d4, /*@  predicates{d5==0} @*/ d5;
  int /*@  predicates{e1==0} @*/ e1, /*@  predicates{e2==0} @*/ e2, /*@  predicates{e3==0} @*/ e3, /*@  predicates{e4==0} @*/ e4, /*@  predicates{e5==0} @*/ e5;
  int /*@  predicates{f1==0} @*/ f1, /*@  predicates{f2==0} @*/ f2, /*@  predicates{f3==0} @*/ f3, /*@  predicates{f4==0} @*/ f4, /*@  predicates{f5==0} @*/ f5;

  sum = 0;

  if(c1 == 0)sum=sum+1; else sum=sum+2;
  if(c2 == 0)sum=sum+1; else sum=sum+2;
  if(c3 == 0)sum=sum+1; else sum=sum+2;
  if(c4 == 0)sum=sum+1; else sum=sum+2;
  if(c5 == 0)sum=sum+1; else sum=sum+2;

  if(d1 == 0)sum=sum+1; else sum=sum+2;
  if(d2 == 0)sum=sum+1; else sum=sum+2;
  if(d3 == 0)sum=sum+1; else sum=sum+2;
  if(d4 == 0)sum=sum+1; else sum=sum+2;
  if(d5 == 0)sum=sum+1; else sum=sum+2;

  if(e1 == 0)sum=sum+1; else sum=sum+2;
  if(e2 == 0)sum=sum+1; else sum=sum+2;
  if(e3 == 0)sum=sum+1; else sum=sum+2;
  if(e4 == 0)sum=sum+1; else sum=sum+2;
  if(e5 == 0)sum=sum+1; else sum=sum+2;

  if(f1 == 0)sum=sum+1; else sum=sum+2;
  if(f2 == 0)sum=sum+1; else sum=sum+2;
  if(f3 == 0)sum=sum+1; else sum=sum+2;
  if(f4 == 0)sum=sum+1; else sum=sum+2;
  if(f5 == 0)sum=sum+1; else sum=sum+2;

  __VERIFIER_assert(!(sum > 40));

  return;
}
