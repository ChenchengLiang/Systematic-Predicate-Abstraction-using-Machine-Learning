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
    int /*@  predicates{i<1000000} @*/ i = 0;
    int /*@  predicates{k<=1000000,k<=i,k>=i} terms_tpl{k-i} @*/ k = 0;
    while(i < 1000000){
        int /*@  predicates{j<1000000,j>=1} @*/ j = __VERIFIER_nondet_int();
assume(1 <= j && j < 1000000);
        i = i + j;
        k ++;
    }
    assert(k <= 1000000);
    return 0;
}
