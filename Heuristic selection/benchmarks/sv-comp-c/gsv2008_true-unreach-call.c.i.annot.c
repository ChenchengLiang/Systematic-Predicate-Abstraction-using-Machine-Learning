# 1 "/tmp/tmp.BYaIDD6M8g.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.BYaIDD6M8g.c"
extern void __VERIFIER_error(void);
extern void __VERIFIER_assume(int);
void __VERIFIER_assert(int /*@  predicates{cond!=0} predicates_tpl{0==0} @*/ cond){
  if(!(cond)){
      ERROR: __VERIFIER_error();
  }
  return;
}
int __VERIFIER_nondet_int();
int main(){
    int /*@  predicates{x<0} @*/ x,/*@  predicates{((-1000)<y),y<1000000,y<=x,y>0,y>=x} terms_tpl{y-x} @*/ y;
    x = -50;
    y = __VERIFIER_nondet_int();
assume(-1000 < y && y < 1000000);
    while(x < 0){
 x = x + y;
 y++;
    }
    assert(y > 0);
    return 0;
}
