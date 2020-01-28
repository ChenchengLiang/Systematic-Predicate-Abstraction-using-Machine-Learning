# 1 "/tmp/tmp.BYaIDD6M8g.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.BYaIDD6M8g.c"
extern void __VERIFIER_error();
void __VERIFIER_assert(int /*@  predicates{cond!=0} predicates_tpl{0==0} @*/ cond){
  if(!(cond)){
    ERROR: __VERIFIER_error();
  }
  return;
}
int __VERIFIER_nondet_bool();
int __VERIFIER_nondet_int();
int /*@  predicates{x<=0,x>0} @*/ x;
void foo(){
  x--;
}
int main(){
  x=__VERIFIER_nondet_int();
  while(x > 0){
    int c = __VERIFIER_nondet_bool();
    if(c)foo();
    else foo();
  }
  assert(x<=0);
}
