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
    int /*@  predicates{i<=1,i>=1} terms_tpl{i%2} @*/ i,/*@  predicates{j<=10,j<=i,j==6,j>=i} @*/ j;
    i = 1;
    j = 10;
    while(j >= i){
        i = i + 2;
        j = -1 + j;
    }
    assert(j == 6);
    return 0;
}
