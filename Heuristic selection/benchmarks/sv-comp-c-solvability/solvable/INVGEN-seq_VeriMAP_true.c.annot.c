# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-seq.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-seq.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-seq.tmp.c"
void main(){
  int n0, n1;
  int /*@  predicates{i0<=n0,i0<n0,i0>=0} predicates_tpl{0==0} @*/ i0 = 0;
  int /*@  predicates{k<=0,k<=i0,k>=i0} terms_tpl{k-i0} @*/ k = 0;

  while(i0 < n0){
    ;
    i0++;
    k++;
  }
  int /*@  predicates{i1<=k,i1<=n1,i1<n1,i1>=0,i1>=k} terms_tpl{i1-k} @*/ i1 = 0;
  while(i1 < n1){
    ;
    i1++;
    k++;
  }
  int /*@  predicates{(j1<(n0+n1)),j1<=(n0+n1),j1<=k,j1>=0,j1>=k} terms_tpl{j1+k} @*/ j1 = 0;
  while(j1 < n0 + n1){
    ;
    if(k <= 0)ERROR: goto ERROR;
    j1++;
    k--;
  }
}
