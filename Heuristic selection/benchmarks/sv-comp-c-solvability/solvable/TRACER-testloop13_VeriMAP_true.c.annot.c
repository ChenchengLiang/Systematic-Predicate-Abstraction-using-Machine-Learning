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
# 1 "MAP/SAFE-exbench/TRACER-testloop13.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop13.tmp.c"
# 24 "MAP/SAFE-exbench/TRACER-testloop13.tmp.c"


int main()
{
  int /*@  predicates{lock==0,lock==1} predicates_tpl{0==0} @*/ lock, old, /*@  predicates{new!=old,new<=old,new<old} terms_tpl{new%2} @*/ new;

  lock=0;
  new=old+1;

  while(new != old){
    lock = 1;
    old = new;
    if(unknown()){
      lock = 0;
      new+=2;
    }
  }

  __VERIFIER_assert(!(lock==0));
  return 0;
}
