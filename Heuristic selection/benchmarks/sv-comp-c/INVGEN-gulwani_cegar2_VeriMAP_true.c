# 1 "MAP/SAFE-exbench/INVGEN-gulwani_cegar2.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-gulwani_cegar2.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-gulwani_cegar2.tmp.c"
int __BLAST_NONDET;
void main() {
  int x,m,n;

  x = 0;
  m = 0;
  while( x < n ) {
    if(__BLAST_NONDET)
 m = x;
 x++;
  }
  if( n > 0 )
    {
      __VERIFIER_assert( 0<=m );
      __VERIFIER_assert( m<n );
    }
}
