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
# 1 "MAP/SAFE-exbench/TRACER-testloop9.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop9.tmp.c"
# 19 "MAP/SAFE-exbench/TRACER-testloop9.tmp.c"
main()
{
  int /*@  predicates{i<10,i<=10,i>=0} predicates_tpl{0==0} @*/ i;
  int /*@  predicates{x==1,x==2,x==3,x==4} @*/ x, /*@  predicates{y==3,y==4,y==5,y==6} @*/ y;

  i = 0;
  x = 1;

  while(i<10){
    if(x==1){
      x = 2;
      y = 3;
    } else if(x==2){
      x = 3;
      y = 4;
    } else if(x==3){
      x = 1;
      y = 5;
    } else if(x==4){
      x = 1;
      y = 6;
    } else {
      x = 2;
    }

    i = i + 1;
  }

  __VERIFIER_assert(!(y==6));




}
