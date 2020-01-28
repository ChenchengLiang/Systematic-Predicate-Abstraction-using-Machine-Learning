# 1 "MAP/SAFE-exbench/INVGEN-id_build.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-id_build.tmp.c"
# 38 "MAP/SAFE-exbench/INVGEN-id_build.tmp.c"
void main() {
  int offset, length, nlen;
  int i, j;

  ;

  for (i=0; i<nlen; i++) {
    for (j=0; j<8; j++) {
      __VERIFIER_assert( 0 <= nlen-1-i );
      __VERIFIER_assert( nlen-1-i < nlen );
    }
  }
  return;
}
