extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testloop5.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop5.tmp.c"
# 20 "MAP/SAFE-exbench/TRACER-testloop5.tmp.c"
int i = 0;

int foo()
{
  i++;
  return i;
}

void main() {

  while(foo() < 10){}

  __VERIFIER_assert(!( i == 10 ));

}
