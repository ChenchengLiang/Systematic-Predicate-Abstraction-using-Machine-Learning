# 1 "MAP/SAFE-exbench/INVGEN-up.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-up.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-up.tmp.c"
void main() {
  int n;
  int i = 0;
  int k = 0;
  ;
  while( i < n ) {
 i++;
 k++;
  }
  int j = 0;
  while( j < n ) {
    __VERIFIER_assert( k > 0 );
    j++;
    k--;
  }
}
