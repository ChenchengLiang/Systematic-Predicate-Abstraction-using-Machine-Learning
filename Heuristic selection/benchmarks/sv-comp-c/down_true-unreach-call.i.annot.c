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
  int n;
  int /*@  predicates{k>0} @*/ k = 0;
  int /*@  predicates{i<=k,i<=n,i<n,i>=0,i>=k} terms_tpl{i-k} @*/ i = 0;
  n = __VERIFIER_nondet_int();
  while(i < n){
      i++;
      k++;
  }
  int /*@  predicates{j<=k,j<=n,j>0,j>=0,j>=k} terms_tpl{j-k} @*/ j = n;
  while(j > 0){
      assert(k > 0);
      j--;
      k--;
  }
  return 0;
}
