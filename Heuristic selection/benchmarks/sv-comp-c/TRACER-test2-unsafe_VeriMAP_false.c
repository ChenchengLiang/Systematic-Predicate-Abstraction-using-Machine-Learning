extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/UNSAFE-exbench/TRACER-test2-unsafe.tmp.c"
# 1 "<command-line>"
# 1 "MAP/UNSAFE-exbench/TRACER-test2-unsafe.tmp.c"
# 20 "MAP/UNSAFE-exbench/TRACER-test2-unsafe.tmp.c"
//extern int unknown();

int foo(int n){
  int i = 1;
  int sum = 0;
  int product = 1;

    if (i<=n){
      sum = sum + i;
      product = product * i;
      i = i + 1;
    }
  return sum;

}

int main(){
  int y;

  __VERIFIER_assume( y >0 );
  if (y > 0)
    y = y + 1;
  else{
    y = foo(y) - 1;
    y = foo(5) + 5;

  }

  __VERIFIER_assert(!( y > 0 ));
}
