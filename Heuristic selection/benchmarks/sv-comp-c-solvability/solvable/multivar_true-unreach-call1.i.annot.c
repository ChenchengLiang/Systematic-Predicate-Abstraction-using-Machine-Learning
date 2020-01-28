# 1 "/tmp/tmp.BYaIDD6M8g.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.BYaIDD6M8g.c"
extern void __VERIFIER_error();
extern unsigned int __VERIFIER_nondet_uint(void);
void __VERIFIER_assert(int /*@  predicates{cond!=0} predicates_tpl{0==0} @*/ cond){
  if(!(cond)){
    ERROR: __VERIFIER_error();
  }
  return;
}
int main(void){
  unsigned int /*@  predicates{x<1024,x<=1024} @*/ x = __VERIFIER_nondet_uint();
  unsigned int /*@  predicates{y<=x,y==x,y>=x} terms_tpl{y-x} @*/ y = x;
  while(x < 1024){
    x++;
    y++;
  }
  assert(x == y);
}
