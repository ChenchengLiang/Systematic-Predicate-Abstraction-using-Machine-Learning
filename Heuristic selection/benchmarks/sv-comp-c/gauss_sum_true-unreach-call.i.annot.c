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
    int /*@  predicates{n<=1000,n>=1} @*/ n, /*@  predicates{((2*sum)==(n*(n+1)))} @*/ sum, /*@  predicates{i<=n,i<=sum,i>=1,i>=sum} terms_tpl{i-sum} @*/ i;
    n = __VERIFIER_nondet_int();
assume(1 <= n && n <= 1000);
    sum = 0;
    for(i = 1; i <= n; i++){
        sum = sum + i;
    }
    __VERIFIER_assert(2*sum == n*(n+1));
    return 0;
}
