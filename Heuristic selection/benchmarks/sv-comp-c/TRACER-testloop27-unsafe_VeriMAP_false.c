extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testloop27.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop27.tmp.c"
# 22 "MAP/SAFE-exbench/TRACER-testloop27.tmp.c"
main(){
  int i,n,x,NONDET;

  i=0;x=0;
  while (i < 1){
     x++;
    if (NONDET > 0 ){
      x--;
    }
    i++;
  }

  __VERIFIER_assert(!( x !=0 ));


}
