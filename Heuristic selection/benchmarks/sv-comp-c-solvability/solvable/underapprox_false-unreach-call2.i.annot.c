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
int main(void){
  unsigned int /*@  predicates{x!=6,x<6,x<=6,x==0,x==1,x==2,x==3,x==4,x==5,x==6,x>=0} @*/ x = 0;
  unsigned int y = 1;
  while(x < 6){
    x++;
    y *= 2;
  }
  assert(x != 6);
}
