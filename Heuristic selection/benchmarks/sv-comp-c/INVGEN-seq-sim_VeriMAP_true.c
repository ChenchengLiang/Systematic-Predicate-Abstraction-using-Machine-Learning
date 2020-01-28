# 1 "MAP/SAFE-exbench/INVGEN-seq-sim.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-seq-sim.tmp.c"
# 21 "MAP/SAFE-exbench/INVGEN-seq-sim.tmp.c"
void main() {
  int n, m;
  int i = 0;
  int k = 0;

  while( i < n ) {
    i++;
    k++;
  }
  i = 0;
  while( i < m ) {
    i++;
    k++;
  }
  i = 0;
  while( i < m ) {
    i++;
    k--;
  }
  i = 0;
  while( i < n ) {
    __VERIFIER_assert( k > 0 );
    i++;
    k--;
  }
  return 0;
}
