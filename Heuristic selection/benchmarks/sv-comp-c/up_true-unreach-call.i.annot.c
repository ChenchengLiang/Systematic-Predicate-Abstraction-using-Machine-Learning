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
  int /*@  predicates{i<=n,i<n,i>=0} @*/ i = 0;
  int /*@  predicates{k<=i,k>0,k>=i} terms_tpl{k-i} @*/ k = 0;
  n = __VERIFIER_nondet_int();
  while(i < n){
 i++;
 k++;
  }
  int /*@  predicates{j<=k,j<=n,j<n,j>=0,j>=k} terms_tpl{j+k} @*/ j = 0;
  while(j < n){
    assert(k > 0);
    j++;
    k--;
  }
}
