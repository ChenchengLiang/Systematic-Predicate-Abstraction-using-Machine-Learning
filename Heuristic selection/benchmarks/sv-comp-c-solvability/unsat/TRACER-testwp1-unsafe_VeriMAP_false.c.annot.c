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
# 1 "MAP/SAFE-exbench/TRACER-testwp1.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testwp1.tmp.c"
# 20 "MAP/SAFE-exbench/TRACER-testwp1.tmp.c"
main()
{
  int /*@  predicates{x==(-1)} predicates_tpl{0==0} @*/ x, /*@  predicates{((x+y)<=0),y==1} @*/ y, /*@  predicates{z==2,z==3} @*/ z;

        if(x>0)
          z = 2;
        else
          x = -1;


        if(y>0)

          z = 3;
        else

          y = 1;

  __VERIFIER_assert(!(x+y<=0));
}
