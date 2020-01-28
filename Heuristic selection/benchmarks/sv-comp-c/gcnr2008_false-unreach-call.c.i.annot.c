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
    int /*@  predicates{x>=4} @*/ x,/*@  predicates{y<=10000,y<=2,y<=x,y>=x} terms_tpl{y-100*x,y-x} @*/ y,/*@  predicates{z<=x,z<=y,z>=x,z>=y} terms_tpl{100*z-10*y,z-10*x,z-10*y} @*/ z,/*@  predicates{((y>(10*w))&&(z>=(100*x))),w<=x,w<=y,w<=z,w>=x,w>=y,w>=z,y>=(10*w)} terms_tpl{10*w-z,100*w-y,w-x,w-y} @*/ w;
    x = y = z = w = 0;
    while(__VERIFIER_nondet_int()&& y < 10000){
 if(__VERIFIER_nondet_int()){
     x = x + 1;
     y = y + 100;
 } else if(__VERIFIER_nondet_int()){
     if(x >= 4){
  x = x + 1;
  y = y + 1;
     }
 } else if(y > 10*w && z >= 100*x){
     y = -y;
 }
 w = w + 1;
 z = z + 10;
    }
    assert(x >= 4 && y <= 2);
    return 0;
}
