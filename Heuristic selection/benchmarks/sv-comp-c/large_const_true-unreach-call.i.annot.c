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
int main(void){
  int /*@  predicates{c1==4000} @*/ c1 = 4000;
  int /*@  predicates{c2==2000} @*/ c2 = 2000;
  int /*@  predicates{c3==10000} @*/ c3 = 10000;
  int /*@  predicates{n!=0,n!=1,n<10,n<2,n==0,n==1,n>=0} @*/ n, /*@  predicates{v!=0,v!=1,v==0,v==1,v>=0} @*/ v;
  int /*@  predicates{i<=n,i<n,i>=0} @*/ i, /*@  predicates{k<=i,k>0,k>=i} terms_tpl{k-i} @*/ k, /*@  predicates{j<=k,j<=n,j<n,j>=0,j>=k} terms_tpl{j+k} @*/ j;
  n = __VERIFIER_nondet_int();
assume(0 <= n && n < 10);
  k = 0;
  i = 0;
  while(i < n){
    i++;
    v = __VERIFIER_nondet_int();
assume(0 <= v && n < 2);
    if(v == 0)
      k += c1;
    else if(v == 1)
      k += c2;
    else
      k += c3;
  }
  j = 0;
  while(j < n){
    assert(k > 0);
    j++;
    k--;
  }
  return 0;
}
