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
unsigned int f(unsigned int z){
  return z + 2;
}
int main(void){
  unsigned int /*@  predicates{x%2,x<16777215} @*/ x = 0;
  while(x < 0x0ffffff){
    x = f(x);
  }
  assert(x % 2);
}