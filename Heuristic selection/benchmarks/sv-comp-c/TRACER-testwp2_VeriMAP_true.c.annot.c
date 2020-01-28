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
# 1 "MAP/SAFE-exbench/TRACER-testwp2.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testwp2.tmp.c"
# 23 "MAP/SAFE-exbench/TRACER-testwp2.tmp.c"
main()
{
  int /*@  predicates{x==1,x==2} predicates_tpl{0==0} @*/ x, /*@  predicates{y<0,y==(-1),y==1} @*/ y, z;
  if(z>0){

    x = 1;
  } else {
    x = 2;
  }

  if(x<0){

    y = -1;
  } else {

    y = 1;
  }

  __VERIFIER_assert(!(y<0));
}
