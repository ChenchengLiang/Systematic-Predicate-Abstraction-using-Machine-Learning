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
# 1 "MAP/SAFE-exbench/TRACER-testloop5.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop5.tmp.c"
# 20 "MAP/SAFE-exbench/TRACER-testloop5.tmp.c"
int /*@  predicates{i==0,i==1,i==10,i==2,i==3,i==4,i==5,i==6,i==7,i==8,i==9} predicates_tpl{0==0} @*/ i = 0;

int foo()
{
  i++;
  return i;
}

void main(){

  while(foo()< 10){}

  __VERIFIER_assert(!(i == 10));

}
