# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "INVGEN-seq-proc.tmp.c"
# 1 "<command-line>"
# 1 "INVGEN-seq-proc.tmp.c"
# 20 "INVGEN-seq-proc.tmp.c"
int main(){
  int n0, n1;

  int /*@  predicates{i0<=n0,i0<n0,i0>=0} predicates_tpl{0==0} @*/ i0 = 0;
  int /*@  predicates{k<=i0,k>=i0} terms_tpl{k+i0,k-i0} @*/ k = 0;
  while(i0 < n0){
    i0++;
    k++;
  }
  int /*@  predicates{i1<=i0,i1<=k,i1<=n1,i1<n1,i1>=0,i1>=i0,i1>=k} terms_tpl{i1+i0,i1-k} @*/ i1 = 0;
  while(i1 < n1){
    i0--;
    i1++;
    k++;
  }
  int /*@  predicates{j1<=k,j1<=n1,j1<n1,j1>=0,j1>=k} terms_tpl{j1+k} @*/ j1 = 0;
  while(j1 < n1){
    if(k <= 0)ERROR1: goto ERROR1;
    j1++;
    k--;
  }
  int /*@  predicates{j0<=k,j0<=n0,j0<n0,j0>=0,j0>=k} terms_tpl{j0+k} @*/ j0 = 0;
  while(j0 < n0){
    if(k <= 0)ERROR2: goto ERROR2;
    j0++;
    k--;
  }


  return 0;
}
