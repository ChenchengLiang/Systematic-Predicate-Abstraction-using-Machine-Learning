# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-nest-if8.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-nest-if8.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-nest-if8.tmp.c"
int /*@  predicates{__BLAST_NONDET!=0,__BLAST_NONDET==0} predicates_tpl{0==0} @*/ __BLAST_NONDET;

void main(){
  int /*@  predicates{i>=0} @*/ i,/*@  predicates{j<=(i+4),j<=0,j<=i,j>=(i+4),j>=0,j>=i} terms_tpl{4*j-2*i,4*j-i} @*/ j,/*@  predicates{k<=0,k<=i,k<=j,k<j,k>=0,k>=i,k>=j} terms_tpl{2*k-j,4*k-i,k-j} @*/ k,/*@  predicates{(((n+j)+5)>i),n>i,n>k} @*/ n,/*@  predicates{((m+1)<n),m>=j,m>j} @*/ m;
  if(m+1 < n); else goto END;
  for(i=0; i<n; i+=4){
    for(j=i; j<m;){
      if(__BLAST_NONDET){
 assert(j >= 0);
 j++;
 k = 0;
 while(k < j){
   assert(k < n);
   k++;
 }

      }
      else {
 assert(n+j+5>i);
 j+= 2;
      }
    }


  }
 END:;
}
