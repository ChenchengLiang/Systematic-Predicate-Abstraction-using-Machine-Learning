# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-up3.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-up3.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-up3.tmp.c"
void main(){
  int n;
  int /*@  predicates{i<n,i>=0} predicates_tpl{0==0} @*/ i = 0;
  int /*@  predicates{k<=0,k<=i,k>=i} terms_tpl{2*k-i} @*/ k = 0;
  while(i < n){
   ;
 i = i + 2;
 k++;
  }
  int /*@  predicates{j<=k,j<n,j>=0,j>=k} terms_tpl{j+2*k} @*/ j = 0;
  while(j < n){
   ;
    if(k <= 0)ERROR: goto ERROR;
 j = j + 2;
 k--;
  }
}
