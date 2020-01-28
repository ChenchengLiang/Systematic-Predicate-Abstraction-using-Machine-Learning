# 1 "MAP/SAFE-exbench/INVGEN-nest-if.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-nest-if.tmp.c"
# 21 "MAP/SAFE-exbench/INVGEN-nest-if.tmp.c"
void main() {
  int i,k,n;


  ;



  for (k=1;k<n;k++){
    for (i=1;i<n;i++)
      __VERIFIER_assert( 1<=k );
    if(i<n)
      for (i=1;i<n;i++);
  }

 }
