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
  int /*@  predicates{i>=1} @*/ i,/*@  predicates{k<=i,k>=1,k>=i} terms_tpl{k-i} @*/ k,/*@  predicates{n<1000000,n>=i,n>=k,n>i,n>k} @*/ n,/*@  predicates{i>=(l+1),l<1000000,l<=i,l<=k,l>0,l>=i,l>=k} terms_tpl{l-i,l-k} @*/ l;
  n = __VERIFIER_nondet_int();
  l = __VERIFIER_nondet_int();
assume(l>0);
assume(l < 1000000);
assume(n < 1000000);
  for(k=1;k<n;k++){
    for(i=l;i<n;i++){
      assert(1<=i);
    }
    if(__VERIFIER_nondet_int())
      l = l + 1;
  }
 }
