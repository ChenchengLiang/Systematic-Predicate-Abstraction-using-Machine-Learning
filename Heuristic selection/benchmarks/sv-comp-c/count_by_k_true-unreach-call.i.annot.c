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
    int i;
    int /*@  predicates{(i<(1000000*k)),(i==(1000000*k)),k<=10,k>=0} @*/ k;
    k = __VERIFIER_nondet_int();
assume(0 <= k && k <= 10);
    for(i = 0; i < 1000000*k; i += k);
    assert(i == 1000000*k);
    return 0;
}