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
# 1 "MAP/SAFE-exbench/TRACER-testfunc14.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testfunc14.tmp.c"
# 23 "MAP/SAFE-exbench/TRACER-testfunc14.tmp.c"


void bar(){
  int i,/*@  predicates{NONDET!=0,NONDET==0} predicates_tpl{0==0} @*/ NONDET,q,/*@  predicates{z==4,z==5} @*/ z;
  i=0;

  if(q>0)z=4;
  else z=5;

  while(NONDET){
    i++;
  }
  return;
}

main(){
  int p,/*@  predicates{x==1,x==2,x==3} @*/ x;

  if(p>0)x=1;
  else x=3;

  bar();

  __VERIFIER_assert(!(x==2));

}
