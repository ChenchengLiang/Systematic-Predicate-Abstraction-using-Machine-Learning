# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-nested7.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-nested7.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-nested7.tmp.c"
int /*@  predicates{__BLAST_NONDET==0} predicates_tpl{0==0} @*/ __BLAST_NONDET;

void main(){
  int /*@  predicates{i>=0} @*/ i,/*@  predicates{j<=i,j>=0,j>=i} terms_tpl{j+i,j-i} @*/ j,/*@  predicates{k<=j} @*/ k,/*@  predicates{l<=i,l<=j,l>=0,l>=i,l>=j} terms_tpl{l+j,l-i,l-j} @*/ l,/*@  predicates{(j<(n+k)),(j<=(n+k)),j<=(n+k),n>=i,n>=l,n>i,n>l} @*/ n,/*@  predicates{m>=i,m>=l,m>i,m>l} @*/ m;

  if(j<=n+k); else goto END;
  for(i=0;i<n;i++){
    for(i=0;i<m;i++){
      j=k;
      if(__BLAST_NONDET)
 for(l=0;l<n;l++)j++;
    }
    if(k > 5){
      for(l=0;l<m;l++){

      }
      for(l=0;l<m;l++){
 for(j = 0;j<n+k;j++);
      }
    } else if(k > n){
      for(l=0;l<n;l++)j--;
    }
  }
  assert(j<=n+k);
 END: ;
}
