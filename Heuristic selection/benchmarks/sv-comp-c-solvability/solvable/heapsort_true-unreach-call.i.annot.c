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
  int /*@  predicates{n<=1000000,n>=1} @*/ n,/*@  predicates{l<=n,l>1,l>=1} @*/ l,/*@  predicates{r<=l,r<=n,r>1,r>=1,r>=l,r>=n} terms_tpl{r-l} @*/ r,/*@  predicates{i<=n,i>=1} @*/ i,/*@  predicates{((j+1)<=n),(1<=(j+1)),j<=(2*l),j<=l,j<=n,j<=r,j<r,j>=(2*l),j>=1,j>=l,j>=r} terms_tpl{j+l,j+r} @*/ j;
  n = __VERIFIER_nondet_int();
assume(1 <= n && n <= 1000000);
  l = n/2 + 1;
  r = n;
  if(l>1){
    l--;
  } else {
    r--;
  }
  while(r > 1){
    i = l;
    j = 2*l;
    while(j <= r){
      if(j < r){
 assert(1 <= j);
 assert(j <= n);
 assert(1 <= j+1);
 assert(j+1 <= n);
 if(__VERIFIER_nondet_int())
   j = j + 1;
      }
      assert(1 <= j);
      assert(j <= n);
      if(__VERIFIER_nondet_int()){
       break;
      }
      assert(1 <= i);
      assert(i <= n);
      assert(1 <= j);
      assert(j <= n);
      i = j;
      j = 2*j;
    }
    if(l > 1){
      assert(1 <= l);
      assert(l <= n);
      l--;
    } else {
      assert(1 <= r);
      assert(r <= n);
      r--;
    }
  }
  return 0;
}
