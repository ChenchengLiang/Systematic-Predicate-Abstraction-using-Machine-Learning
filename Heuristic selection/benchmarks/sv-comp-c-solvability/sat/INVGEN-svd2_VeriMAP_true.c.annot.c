# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-svd2.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-svd2.tmp.c"
# 21 "MAP/SAFE-exbench/INVGEN-svd2.tmp.c"
int /*@  predicates{NONDET==0} predicates_tpl{0==0} @*/ NONDET;

void main(int n)
{
  int /*@  predicates{i<=n,i>=1} @*/ i,/*@  predicates{j<=i,j<=n,j>=(i-1),j>=i,j>=n} terms_tpl{j+i} @*/ j,/*@  predicates{k<=i,k<=j,k<=n,k>=(i-1),k>=i,k>=j,k>=n} terms_tpl{k+i,k-j} @*/ k,/*@  predicates{l<=j,l<=k,l>0} @*/ l;

  ;

assume(l>0);

  for(i=n;i>=1;i--){
    if(i < n){
      if(NONDET){
 for(j=l;j<=n;j++){




 }
 for(j=l;j<=n;j++){
   for(k=l;k<=n;k++){



   }
   for(k=l;k<=n;k++){


     assert(1<=i);assert(i<=n);
   }
 }
      }
      for(j=l;j<=n;j++){




      }
    }





    l=i;
  }
}
