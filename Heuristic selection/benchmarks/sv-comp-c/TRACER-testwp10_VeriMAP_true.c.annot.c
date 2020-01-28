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
# 1 "MAP/SAFE-exbench/TRACER-testwp10.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testwp10.tmp.c"
# 19 "MAP/SAFE-exbench/TRACER-testwp10.tmp.c"
main(){
# 41 "MAP/SAFE-exbench/TRACER-testwp10.tmp.c"
  int /*@  predicates{x==0,x==1,x==2,x==3,x>4} predicates_tpl{0==0} @*/ x;
  if(x==1){
    x++;
  }
  else{
    if(x==2){
      x++;
    }
    else{
      if(x==3){
 x++;
      }
      else
 x=0;
    }
  }

  __VERIFIER_assert(!(x>4));

}
