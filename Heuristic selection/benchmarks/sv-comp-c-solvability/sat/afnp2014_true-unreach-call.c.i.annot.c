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
    int x = 1;
    int /*@  predicates{y<=1000,y<=x,y>=0,y>=x} terms_tpl{y-x} @*/ y = 0;
    while(y < 1000 && __VERIFIER_nondet_int()){
        x = x + y;
        y = y + 1;
    }
    assert(x >= y);
    return 0;
}
