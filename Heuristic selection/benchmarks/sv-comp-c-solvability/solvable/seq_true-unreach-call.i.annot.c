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
  int /*@  predicates{((-1000000)<=n0),n0<1000000} @*/ n0, /*@  predicates{((-1000000)<=n1),n1<1000000} @*/ n1;
  int /*@  predicates{i0<=n0,i0<n0,i0>=0} @*/ i0 = 0;
  int /*@  predicates{k<=i0,k>0,k>=i0} terms_tpl{k-i0} @*/ k = 0;
  n0 = __VERIFIER_nondet_int();
  n1 = __VERIFIER_nondet_int();
assume(-1000000 <= n0 && n0 < 1000000);
assume(-1000000 <= n1 && n1 < 1000000);
  while(i0 < n0){
    i0++;
    k++;
  }
  int /*@  predicates{i1<=k,i1<=n1,i1<n1,i1>=0,i1>=k} terms_tpl{i1-k} @*/ i1 = 0;
  while(i1 < n1){
    i1++;
    k++;
  }
  int /*@  predicates{(j1<(n0+n1)),j1<=(n0+n1),j1<=k,j1>=0,j1>=k} terms_tpl{j1+k} @*/ j1 = 0;
  while(j1 < n0 + n1){
      assert(k > 0);
      j1++;
      k--;
  }
}
