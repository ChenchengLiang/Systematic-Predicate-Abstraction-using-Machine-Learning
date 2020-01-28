# 1 "MAP/SAFE-exbench/INVGEN-simple.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-simple.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-simple.tmp.c"
void main() {
  int x=0;
  int n;

  __VERIFIER_assume( n > 0 );
  while( x < n ){
    x++;
  }
  __VERIFIER_assert( x<=n );
}
