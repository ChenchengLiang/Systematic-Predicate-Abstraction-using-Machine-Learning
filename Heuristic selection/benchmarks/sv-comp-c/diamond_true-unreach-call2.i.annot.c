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
  unsigned int /*@  predicates{x<99,x<=0,x<=99,x>=0} @*/ x = 0;
  unsigned int /*@  predicates{((x%2)==(y%2)),((y%2)==0)} @*/ y = __VERIFIER_nondet_uint();
  while(x < 99){
    if(y % 2 == 0)x += 2;
    else x++;
    if(y % 2 == 0)x += 2;
    else x -= 2;
    if(y % 2 == 0)x += 2;
    else x += 2;
    if(y % 2 == 0)x += 2;
    else x -= 2;
    if(y % 2 == 0)x += 2;
    else x += 2;
    if(y % 2 == 0)x += 2;
    else x -= 4;
    if(y % 2 == 0)x += 2;
    else x += 4;
    if(y % 2 == 0)x += 2;
    else x += 2;
    if(y % 2 == 0)x += 2;
    else x -= 4;
    if(y % 2 == 0)x += 2;
    else x -= 4;
  }
  __VERIFIER_assert((x % 2)==(y % 2));
}
