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
    int /*@  predicates{x<100,x<50,x<=100,x<=50,x>=0} @*/ x = 0;
    int /*@  predicates{y<=x,y==100,y>=x} terms_tpl{y-x} @*/ y = 50;
    while(x < 100){
 if(x < 50){
     x = x + 1;
 } else {
     x = x + 1;
     y = y + 1;
 }
    }
    assert(y == 100);
    return 0;
}
