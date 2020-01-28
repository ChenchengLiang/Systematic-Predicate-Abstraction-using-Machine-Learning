# 1 "MAP/SAFE-exbench/INVGEN-up-nested.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-up-nested.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-up-nested.tmp.c"
int NONDET;

void main() {
  int n,j,i,k;

  ;
  i = 0;
  k = 0;

  __VERIFIER_assume( j<=n );
  while ( j <= n ) {



    __VERIFIER_assume( i >= 0 );
# 43 "MAP/SAFE-exbench/INVGEN-up-nested.tmp.c"
    j++;
  }
  __VERIFIER_assert( i>= 0 );
# 55 "MAP/SAFE-exbench/INVGEN-up-nested.tmp.c"
}
