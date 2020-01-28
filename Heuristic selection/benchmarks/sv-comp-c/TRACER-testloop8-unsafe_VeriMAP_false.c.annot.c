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
# 1 "MAP/SAFE-exbench/TRACER-testloop8.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop8.tmp.c"
# 20 "MAP/SAFE-exbench/TRACER-testloop8.tmp.c"


void main(){
  int /*@  predicates{x<=0,x>0,x>=0} predicates_tpl{0==0} @*/ x, /*@  predicates{y<=x,y==0,y>=x} terms_tpl{y-x} @*/ y;

  x = 0;
  y = 0;
  while(unknown()){
    x ++ ;
    y ++ ;
  }
  while(x > 0){
    x -- ;
    y -- ;
  }
  __VERIFIER_assert(!(y == 0));
}
