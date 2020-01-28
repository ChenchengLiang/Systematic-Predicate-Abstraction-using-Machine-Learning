# 1 "MAP/SAFE-exbench/INVGEN-split.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-split.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-split.tmp.c"
void main() {
  int k = 100;
  int b;
  int i;
  int j;
  int n;
  i = j;
  for( n = 0 ; n < 2*k ; n++ ) {
    ;
    if(b) {
      i++;
    } else {
      j++;
    }
    b = !b;
  }
  __VERIFIER_assert( i == j );
}
