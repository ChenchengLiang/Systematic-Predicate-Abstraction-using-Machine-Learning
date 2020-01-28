# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-bound.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-bound.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-bound.tmp.c"
void main(){
  int /*@  predicates{n<=200,n>=0} predicates_tpl{0==0} @*/ n,h;
  int /*@  predicates{i<=n,i>0,i>=0} @*/ i,/*@  predicates{j<=0,j>0,j>=0} @*/ j,/*@  predicates{j<=(k+1),k<=i,k>=i,k>=j} terms_tpl{k+i} @*/ k,/*@  predicates{m<=j,m>=j} terms_tpl{m+j} @*/ m;

  ;
  ;
assume(n >=0);
assume(n <=200);
  k=0;
  i=n;
  h = i+k;
  while(i > 0){
    i--;
    k++;
    h = i+k;
  }

  j = k;
  m = 0;
  h = j+m;
  while(j > 0){
 j--;
 m++;
 h = j+m;
  }
  assert(i >= 0);
}
