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
# 1 "MAP/UNSAFE-exbench/TRACER-testfunc12-unsafe.tmp.c"
# 1 "<command-line>"
# 1 "MAP/UNSAFE-exbench/TRACER-testfunc12-unsafe.tmp.c"
# 20 "MAP/UNSAFE-exbench/TRACER-testfunc12-unsafe.tmp.c"
int foo(){
  int /*@  predicates{tmp==1} predicates_tpl{0==0} @*/ tmp=1;
  return tmp;
}

main(){
  int /*@  predicates{x==1,x==2} @*/ x,/*@  predicates{y==2,y==3} @*/ y,p,q;

  if(q>0)y=2;
  else y=3;


  if(p>0)x=1;
  else x=2;

  foo();

  __VERIFIER_assert(!(x==2));

}
