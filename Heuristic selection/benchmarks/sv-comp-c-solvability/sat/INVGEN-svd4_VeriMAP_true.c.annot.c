# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-svd4.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-svd4.tmp.c"
# 21 "MAP/SAFE-exbench/INVGEN-svd4.tmp.c"
int /*@  predicates{NONDET==0} predicates_tpl{0==0} @*/ NONDET;

void main(int n)
{
  int /*@  predicates{i<=n,i>=1} @*/ i,/*@  predicates{j<=i,j<=n,j>=(i+1),j>=(i-1),j>=1,j>=i,j>=n} terms_tpl{j+i} @*/ j,/*@  predicates{k<=i,k<=j,k>=(i+1),k>=(i-1),k>=1,k>=i,k>=j,k>=n} terms_tpl{k+i,k-j} @*/ k,/*@  predicates{l<=j,l<=k} @*/ l,/*@  predicates{m<=j,m<=k,m<n,m>=i,m>=j,m>=k} @*/ m;


    ;

assume(n>m);
  if(m<=n){ i = m; } else { i = n; }

  for(;i>=1;i--){
    l=i+1;

    assert(1<=i);
    assert(i<=n);

    for(j=l;j<=n;j++){
      assert(1<=i);
      assert(i<=m);
      assert(1<=j);assert(j<=n);
    }

    if(NONDET){
      for(j=l;j<=n;j++){
 for(k=l;k<=m;k++){
   assert(1<=k);assert(k<=m);
   assert(1<=i);assert(i<=n);
   assert(1<=j);assert(j<=n);
 }

 assert(1<=i);assert(i<=m);
 assert(1<=i);assert(i<=n);
 for(k=i;k<=m;k++){
   assert(1<=k);assert(k<=m);
   assert(1<=j);assert(j<=n);
   assert(1<=i);assert(i<=n);
   }
      }
      for(j=i;j<=m;j++){
 assert(1<=j);assert(j<=m);
 assert(1<=i);assert(i<=n);
      }
    } else for(j=i;j<=m;j++){
      assert(1<=j);assert(j<=m);
      assert(1<=i);assert(i<=n);
    }

    assert(1<=i);assert(i<=m);
    assert(1<=i);assert(i<=n);
    }
}
