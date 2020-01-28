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
  int /*@  predicates{n<=1000000} @*/ n,/*@  predicates{i<n,i>=0} @*/ i,/*@  predicates{k<=i,k>0,k>=i} terms_tpl{2*k+i} @*/ k;
  n = __VERIFIER_nondet_int();
assume(n <= 1000000);
  k = n;
  i = 0;
  while(i < n){
    k--;
    i = i + 2;
  }
  int /*@  predicates{(j<(n/2)),j<=(n/2),j<=k,j>=0,j>=k} terms_tpl{j+k} @*/ j = 0;
  while(j < n/2){
    assert(k > 0);
    k--;
    j++;
  }
  return 0;
}
