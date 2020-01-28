extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testabs15.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testabs15.tmp.c"
# 28 "MAP/SAFE-exbench/TRACER-testabs15.tmp.c"
main(int n){
  int i, a, b;
  int TRACER_NONDET;

  if(n >=0){

    i=0; a=0; b=0;

    while (i < n){
      if (TRACER_NONDET){
 a=a+1;
 b=b+2;
      }
      else{
 a=a+2;
 b=b+1;
      }
      i++;
    }
    __VERIFIER_assert(!( a+b != 3*n ));
  }
}
