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
    int /*@  predicates{n<=10000,n>=10} @*/ n = __VERIFIER_nondet_int();
    int /*@  predicates{m<=10000,m>=10} @*/ m = __VERIFIER_nondet_int();
    int /*@  predicates{k>=100} @*/ k = 0;
    int /*@  predicates{i<=k,i<=n,i<n,i>=0,i>=k} terms_tpl{i-k} @*/ i,/*@  predicates{j<=i,j<=k,j<=m,j<m,j>=0,j>=i,j>=k} terms_tpl{j-i,j-k} @*/ j;
assume(10 <= n && n <= 10000);
assume(10 <= m && m <= 10000);
    for(i = 0; i < n; i++){
 for(j = 0; j < m; j++){
     k ++;
 }
    }
    assert(k >= 100);
    return 0;
}
