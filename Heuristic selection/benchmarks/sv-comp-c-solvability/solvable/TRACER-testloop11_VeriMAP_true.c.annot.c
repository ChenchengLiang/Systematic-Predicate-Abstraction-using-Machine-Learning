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
# 1 "MAP/SAFE-exbench/TRACER-testloop11.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop11.tmp.c"
# 18 "MAP/SAFE-exbench/TRACER-testloop11.tmp.c"



void main()
{
  int /*@  predicates{e==0,e==1,e==2,e==3} predicates_tpl{0==0} @*/ e, /*@  predicates{s==2,s==3,s==4,s==5} @*/ s;

  e=0;
  s=2;
  while(unknown()){
    if(s == 2){
      if(e ==0)e=1;
      s = 3;
    }
    else if(s == 3){
      if(e ==1)e=2;
      s=4;
    }
    else if(s == 4){
      __VERIFIER_assert(!(e == 3));
      s=5;
    }
  }
  return;
}
