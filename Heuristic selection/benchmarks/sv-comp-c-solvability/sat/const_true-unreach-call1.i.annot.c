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
  unsigned int /*@  predicates{x==0,x==1} @*/ x = 1;
  unsigned int /*@  predicates{y<1024,y<=1024,y>=0} @*/ y = 0;
  while(y < 1024){
    x = 0;
    y++;
  }
  assert(x == 0);
}