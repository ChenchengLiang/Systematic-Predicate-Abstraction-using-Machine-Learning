# 1 "MAP/SAFE-exbench/INVGEN-up2.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-up2.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-up2.tmp.c"
void main() {
  int n;
  int i = 0;
  int k = 0;
  while( i < n ) {
    ;
    i++;
    k++;
  }
  int j = 0;
  while( j < n ) {
    ;
    if(k <= 0) ERROR: goto ERROR;
    j = j + 2;
    k--;
  }
}
