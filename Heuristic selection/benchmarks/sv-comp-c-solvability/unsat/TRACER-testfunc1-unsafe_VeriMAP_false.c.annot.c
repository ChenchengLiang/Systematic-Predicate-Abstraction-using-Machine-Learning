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
# 1 "MAP/UNSAFE-exbench/TRACER-testfunc1-unsafe.tmp.c"
# 1 "<command-line>"
# 1 "MAP/UNSAFE-exbench/TRACER-testfunc1-unsafe.tmp.c"
# 20 "MAP/UNSAFE-exbench/TRACER-testfunc1-unsafe.tmp.c"
int f1(int w)
{
    int z;
    z = w + 3;
    return z;
}

int f2(int w1)
{
  int z1;
  z1 = w1 + 5;
  return z1;
}

void main()
{
  int x,a,/*@  predicates{b==0} @*/ b,/*@  predicates{arbit==0} predicates_tpl{0==0} @*/ arbit;

  if(arbit){
    a = f1(x);
    b = a - x - 3;
  }
  else {
    a = f2(x);
    b = a - x - 5;
  }

  __VERIFIER_assert(!(b == 0));
  return;
}
