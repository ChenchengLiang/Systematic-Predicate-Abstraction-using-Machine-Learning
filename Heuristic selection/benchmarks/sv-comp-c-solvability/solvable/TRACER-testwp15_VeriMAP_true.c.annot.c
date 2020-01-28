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
# 1 "MAP/SAFE-exbench/TRACER-testwp15.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testwp15.tmp.c"
# 22 "MAP/SAFE-exbench/TRACER-testwp15.tmp.c"
int /*@  predicates{z==2,z==3} predicates_tpl{0==0} @*/ z;



int foo(){
  int /*@  predicates{y1==1} @*/ y1;
  if(y1>0){
   z = 3;
  }
  else {
    y1 = 1;
  }
  return y1;
}

main()
{

  int /*@  predicates{x==0} @*/ x,/*@  predicates{((x+y)<=0),y==1} @*/ y;

  if(x>0){
    z = 2;
  }
  else {
    x = 0;
  }

  y= foo();

  __VERIFIER_assert(!(x+y<=0));
}
