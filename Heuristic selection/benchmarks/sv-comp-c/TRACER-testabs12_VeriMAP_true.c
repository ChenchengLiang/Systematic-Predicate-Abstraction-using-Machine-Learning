extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testabs12.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testabs12.tmp.c"
# 18 "MAP/SAFE-exbench/TRACER-testabs12.tmp.c"
main(){
  int i,count,n;

  __VERIFIER_assume( count >= 0 );
  i=0;


  while (i < 100 ){
      count++;
      i++;
  }

  __VERIFIER_assert(!( (i > 100 ) || count < 0 ));
}
