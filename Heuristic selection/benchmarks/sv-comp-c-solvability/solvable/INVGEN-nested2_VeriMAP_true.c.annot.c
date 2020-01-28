# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-nested2.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-nested2.tmp.c"
# 19 "MAP/SAFE-exbench/INVGEN-nested2.tmp.c"
void main(){
  int i,/*@  predicates{k<=i,k>=1,k>=i} predicates_tpl{0==0} terms_tpl{k-i} @*/ k,/*@  predicates{n>=i,n>=k,n>i,n>k} @*/ n,/*@  predicates{l<=i,l>0} @*/ l;

  ;

assume(l>0);

  for(k=1;k<n;k++){


    for(i=l;i<n;i++){


    }
    for(i=l;i<n;i++){
      assert(1<=k);
    }
  }

 }
