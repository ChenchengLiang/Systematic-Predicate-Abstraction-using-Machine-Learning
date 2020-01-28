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
# 1 "MAP/SAFE-exbench/TRACER-testloop29.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop29.tmp.c"
# 22 "MAP/SAFE-exbench/TRACER-testloop29.tmp.c"
main(){
  int /*@  predicates{x!=50,x<100,x<50,x<=100,x<=50,x==50,x>=0} predicates_tpl{0==0} @*/ x = 0;
  while(x < 100){
    x++;
    if(x == 50)
      break;
  }
  __VERIFIER_assert(!(x != 50));
}
