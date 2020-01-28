# 1 "MAP/SAFE-exbench/INVGEN-seq2.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-seq2.tmp.c"
# 18 "MAP/SAFE-exbench/INVGEN-seq2.tmp.c"
int main() {
	int n0, n1;
  int i0 = 0;
  int k = 0;

  ;
  while( i0 < n0 ) {
    i0++;
    k++;
  }
  int i1 = 0;
  while( i1 < n1 ) {
    i1++;
    k++;
  }
  int j1 = 0;
  while( j1 < n1 ) {
    if(k <= 0) ERROR1: goto ERROR1;
    j1++;
    k--;
  }
  int j0 = 0;
  while( j0 < n0 ) {
    if(k <= 0) ERROR2: goto ERROR2;
    j0++;
    k--;
  }
  return 0;
}
