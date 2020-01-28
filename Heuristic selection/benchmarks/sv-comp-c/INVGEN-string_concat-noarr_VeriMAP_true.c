# 1 "MAP/SAFE-exbench/INVGEN-string_concat-noarr.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-string_concat-noarr.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-string_concat-noarr.tmp.c"
int NONDET;

int main(void) {
  int i, j;
  ;
 L0:
  i = 0;
 L1:
  while( NONDET ){
  ;
    i++;
  }
  if(i >= 100) STUCK: goto STUCK;
  j = 0;
 L2:
  while( NONDET ){
    ;
    i++;
    j++;
  }
  if(j >= 100) goto STUCK;
  __VERIFIER_assert( i < 200 );
  return 0;
}
