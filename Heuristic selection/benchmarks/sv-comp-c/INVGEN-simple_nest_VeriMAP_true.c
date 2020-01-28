# 1 "MAP/SAFE-exbench/INVGEN-simple_nest.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-simple_nest.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-simple_nest.tmp.c"
void main() {
  int n,m;
  int i = 1;


  m = 10;
  while( i < n ) {
    while( m > 0 ) {
      m--;
      i = 2*i;
    }
  }
  __VERIFIER_assert( i > 0 );
}
