# 1 "MAP/SAFE-exbench/INVGEN-nested6.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-nested6.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-nested6.tmp.c"
int __BLAST_NONDET;

void main() {
  int i,j,k,n;

  if( k == n); else goto END;

  for (i=0;i<n;i++) {
    for (j=2*i;j<n;j++) {
      if( __BLAST_NONDET ) {
 for (k=j;k<n;k++) {
   __VERIFIER_assert( k>=2*i );
 }
      }
      else {
 __VERIFIER_assert( k >= n );
 __VERIFIER_assert( k <= n );
      }
    }
  }
 END:;
}
