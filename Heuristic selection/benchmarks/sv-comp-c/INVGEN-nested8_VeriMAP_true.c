# 1 "MAP/SAFE-exbench/INVGEN-nested8.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-nested8.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-nested8.tmp.c"
int __BLAST_NONDET;

void main() {
  int i,j,k,n,m;

  if(n<=m); else goto END;
  for (i=0;i<n;i++)
    for (j = 0;j<n;j++)
      for (k = j; k<n+m; k++)
 __VERIFIER_assert( i+j<=n+k+m );
 END:;
}
