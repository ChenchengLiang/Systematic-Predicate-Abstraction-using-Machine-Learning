# 1 "MAP/SAFE-exbench/INVGEN-nest-if7.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-nest-if7.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-nest-if7.tmp.c"
int NONDET;

void main() {
  int i,j,k,n;

  ;

  for (i=0;i<n;i++)
    for (j=i;j<n;j++)
      for (k=j;k<n;k++)
 if(NONDET){
   __VERIFIER_assert( k>=j );
   __VERIFIER_assert( j>=i );

 }
}
