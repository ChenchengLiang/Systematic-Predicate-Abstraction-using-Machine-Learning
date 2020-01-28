# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-nested8.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-nested8.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-nested8.tmp.c"
int __BLAST_NONDET;

void main(){
  int /*@  predicates{i>=0} predicates_tpl{0==0} @*/ i,/*@  predicates{j<=i,j>=0,j>=i} terms_tpl{j-i} @*/ j,/*@  predicates{k<=i,k<=j,k>=(j+1),k>=0,k>=i,k>=j} terms_tpl{k-i,k-j} @*/ k,/*@  predicates{n>=i,n>=j,n>i,n>j} @*/ n,/*@  predicates{((i+j)<=((n+k)+m)),(k<(n+m)),k<=(n+m),m>=n} @*/ m;

  if(n<=m); else goto END;
  for(i=0;i<n;i++)
    for(j = 0;j<n;j++)
      for(k = j; k<n+m; k++)
 assert(i+j<=n+k+m);
 END:;
}
