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
# 1 "MAP/SAFE-exbench/TRACER-test2.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-test2.tmp.c"
# 20 "MAP/SAFE-exbench/TRACER-test2.tmp.c"


int foo(int n){
  int i = 1;
  int sum = 0;
  int product = 1;

    if(i<=n){
      sum = sum + i;
      product = product * i;
      i = i + 1;
    }
  return sum;

}

void main(){
  int /*@  predicates{y<=0,y>0} predicates_tpl{0==0} @*/ y;

assume(y >0);

  if(unknown())
    y = y + 1;
  else{
    y = foo(y)- 1;
    y = foo(5)+ 5;

  }

  __VERIFIER_assert(!(y <= 0));
  return ;
}
