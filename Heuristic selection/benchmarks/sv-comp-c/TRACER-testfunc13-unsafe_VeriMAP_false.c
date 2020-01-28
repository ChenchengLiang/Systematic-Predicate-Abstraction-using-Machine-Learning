extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/UNSAFE-exbench/TRACER-testfunc13-unsafe.tmp.c"
# 1 "<command-line>"
# 1 "MAP/UNSAFE-exbench/TRACER-testfunc13-unsafe.tmp.c"
# 19 "MAP/UNSAFE-exbench/TRACER-testfunc13-unsafe.tmp.c"
//extern int unknown();

void bar(){
  int i,NONDET,q,z;
  i=0;

  if (q>0) z=4;
  else z=5;

  while (NONDET){
    i++;
  }
  return;
}

main(){
  int p,x;

  if (p>0) x=1;
  else x=2;

  bar();

  __VERIFIER_assert(!( x==2 ));

}
