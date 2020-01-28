# 1 "MAP/SAFE-exbench/INVGEN-bound.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-bound.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-bound.tmp.c"
void main() {
  int n,h;
  int i,j,k,m;

  ;
  ;
  __VERIFIER_assume( n >=0 );
  __VERIFIER_assume( n <=200 );
  k=0;
  i=n;
  h = i+k;
  while( i > 0 ){
    i--;
    k++;
    h = i+k;
  }

  j = k;
  m = 0;
  h = j+m;
  while( j > 0 ) {
 j--;
 m++;
 h = j+m;
  }
  __VERIFIER_assert( i >= 0 );
}
