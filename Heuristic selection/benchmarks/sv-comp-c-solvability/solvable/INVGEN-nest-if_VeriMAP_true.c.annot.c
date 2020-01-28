# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-nest-if.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-nest-if.tmp.c"
# 21 "MAP/SAFE-exbench/INVGEN-nest-if.tmp.c"
void main(){
  int /*@  predicates{i>=1} predicates_tpl{0==0} @*/ i,/*@  predicates{k<=i,k>=1,k>=i} terms_tpl{k-i} @*/ k,/*@  predicates{n>=i,n>=k,n>i,n>k} @*/ n;


  ;



  for(k=1;k<n;k++){
    for(i=1;i<n;i++)
      assert(1<=k);
    if(i<n)
      for(i=1;i<n;i++);
  }

 }
