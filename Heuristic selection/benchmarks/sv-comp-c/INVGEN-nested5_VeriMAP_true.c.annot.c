# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-nested5.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-nested5.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-nested5.tmp.c"
int NONDET;

void main(){
  int /*@  predicates{i>=0} predicates_tpl{0==0} @*/ i,/*@  predicates{j<=i,j>=(i+1),j>=0,j>=i} terms_tpl{j-i} @*/ j,/*@  predicates{k<=i,k<=j,k>=(i+1),k>=(j+1),k>=0,k>=i,k>=j} terms_tpl{k-i,k-j} @*/ k,/*@  predicates{n>=i,n>=j,n>=k,n>i,n>j,n>k} @*/ n;


  ;

  for(i=0;i<n;i++)
    for(j=i;j<n;j++)
      for(k=j;k<n;k++)
 assert(k>=i);
}
