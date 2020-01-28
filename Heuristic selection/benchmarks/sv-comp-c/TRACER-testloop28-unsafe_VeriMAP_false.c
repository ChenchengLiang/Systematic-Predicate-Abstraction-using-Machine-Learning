extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testloop28.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop28.tmp.c"
# 20 "MAP/SAFE-exbench/TRACER-testloop28.tmp.c"
//extern int unknown();
main(){
  int i,n,x, NONDET;

  x=0;
  i=0;
  while (i<n) {
    if (unknown() >0){
      __VERIFIER_assert(!( x>0 ));
    }
    else{
      x = 1;
    }
    i++;
  }
}
