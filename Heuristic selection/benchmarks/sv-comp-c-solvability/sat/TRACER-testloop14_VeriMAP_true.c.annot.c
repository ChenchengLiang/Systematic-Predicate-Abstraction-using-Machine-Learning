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
# 1 "MAP/SAFE-exbench/TRACER-testloop14.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop14.tmp.c"
# 27 "MAP/SAFE-exbench/TRACER-testloop14.tmp.c"
int main()
{
  int /*@  predicates{i<10,i<=10,i>=0} predicates_tpl{0==0} @*/ i, /*@  predicates{(x<=(-1)),x==0} @*/ x, /*@  predicates{y>2} @*/ y;

  if(y <= 2){
    if(x < 0){
      x = 0;
    }
    i = 0;
    while(i < 10){
      __VERIFIER_assert(!(y > 2));
      i++;
    }

    __VERIFIER_assert(!(x <= -1));
  }
  return 0;
}