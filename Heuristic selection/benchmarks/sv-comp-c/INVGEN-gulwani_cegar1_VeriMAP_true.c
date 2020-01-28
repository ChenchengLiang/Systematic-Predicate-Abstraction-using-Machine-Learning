# 1 "MAP/SAFE-exbench/INVGEN-gulwani_cegar1.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-gulwani_cegar1.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-gulwani_cegar1.tmp.c"
int __BLAST_NONDET;
void main() {
  int x,y;

  __VERIFIER_assume( 0 <= x ); __VERIFIER_assume( x <= 2 );
  __VERIFIER_assume( 0 <= y ); __VERIFIER_assume( y <= 2 );
  while( __BLAST_NONDET ) {
 x+=2;
 y+=2;
  }
  if( y >= 0 )
    if( y <= 0 )
      if( 4 <= x )
 __VERIFIER_assert( x < 4 );
}
