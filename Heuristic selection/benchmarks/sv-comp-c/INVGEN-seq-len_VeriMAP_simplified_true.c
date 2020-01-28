# 1 "INVGEN-seq-len.tmp.c"
# 1 "<command-line>"
# 1 "INVGEN-seq-len.tmp.c"
# 20 "INVGEN-seq-len.tmp.c"
int main() {
  int n0, n1,n2;
  int i = 0;
  int /*@ terms_tpl { k-i, k+i, i+n0, n0, n1 } @*/ k = 0;

  ;

  while( i < n0 ) {
    i++;
    k++;
  }
  i = 0;
  while( i < n1 ) {
    i++;
    k++;
  }
  /*
  i = 0;
  while( i < n2 ) {
    i++;
    k++;
  }

  i = 0;
  while( i < n2 ) {
    i++;
    k--;
  }
  */

  i = 0;
  while( i < n1 ) {
    i++;
    k--;
  }
  i = 0;
  while( i < n0 ) {
    __VERIFIER_assert( k > 0 );
    i++;
    k--;
  }
  return 0;
}
