# 1 "MAP/SAFE-exbench/INVGEN-fragtest_simple.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-fragtest_simple.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-fragtest_simple.tmp.c"
int __BLAST_NONDET;

void main(){
  int i,pvlen ;
  int tmp___1 ;
  int k = 0;
  int n;

  i = 0;


  while ( __BLAST_NONDET )
    i = i + 1;
  if (i > pvlen) {
    pvlen = i;
  } else {

  }
  i = 0;

  while ( __BLAST_NONDET ) {
    tmp___1 = i;
    i = i + 1;
    k = k +1;
  }
  while ( __BLAST_NONDET );

  int j = 0;
  n = i;

  while (1) {

    __VERIFIER_assert( k >= 0 );
    k = k -1;
    i = i - 1;
    j = j + 1;
    if (j < n) {

    } else {
      break;
    }
    }
  return;

}
