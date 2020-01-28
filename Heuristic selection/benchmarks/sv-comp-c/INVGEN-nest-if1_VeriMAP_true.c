# 1 "MAP/SAFE-exbench/INVGEN-nest-if1.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-nest-if1.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-nest-if1.tmp.c"
int NONDET;

void main() {
  int i,k,n,l;

  ;

  __VERIFIER_assume( l>0 );

  for (k=1;k<n;k++){
    for (i=l;i<n;i++)
      __VERIFIER_assert( 1<=i );
    if(NONDET)
      for (i=l;i<n;i++);
  }

}
