# 1 "/tmp/tmp.BYaIDD6M8g.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.BYaIDD6M8g.c"
extern void __VERIFIER_error();
extern void __VERIFIER_assume(int);
extern unsigned int __VERIFIER_nondet_uint(void);
void __VERIFIER_assert(int /*@  predicates{cond!=0} predicates_tpl{0==0} @*/ cond){
  if(!(cond)){
    ERROR: __VERIFIER_error();
  }
  return;
}
int main(void){
  unsigned int /*@  predicates{x>=1} @*/ x = 1;
  unsigned int /*@  predicates{(x<(y/x)),x<=(y/x),y!=x,y==x,y>0,y>=x,y>x} @*/ y = __VERIFIER_nondet_uint();
assume(y > 0);
  while(x < y){
    if(x < y / x){
      x *= x;
    } else {
      x++;
    }
  }
  assert(x != y);
}
