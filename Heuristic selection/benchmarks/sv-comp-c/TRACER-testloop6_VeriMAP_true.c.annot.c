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
# 1 "MAP/SAFE-exbench/TRACER-testloop6.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop6.tmp.c"
# 30 "MAP/SAFE-exbench/TRACER-testloop6.tmp.c"
void main()
{
  int /*@  predicates{i<10,i<=10,i>=0} predicates_tpl{0==0} @*/ i,/*@  predicates{x<=i,x>=i} terms_tpl{x-i} @*/ x,/*@  predicates{y<0,y>=0} @*/ y,NONDET,/*@  predicates{z<0,z==1} @*/ z;

  x=0;
  z=1;

assume(y>=0);
  i = 0;
  while(i < 10){
    if(NONDET > 0){
      x = x;
    } else {
      x++;
    }

    __VERIFIER_assert(!(y < 0));
    i++;
  }
  __VERIFIER_assert(!(z<0));
}
