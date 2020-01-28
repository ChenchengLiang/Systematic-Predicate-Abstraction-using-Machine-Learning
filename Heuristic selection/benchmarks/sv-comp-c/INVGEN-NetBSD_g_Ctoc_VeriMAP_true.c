# 1 "MAP/SAFE-exbench/INVGEN-NetBSD_g_Ctoc.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-NetBSD_g_Ctoc.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-NetBSD_g_Ctoc.tmp.c"
int BASE_SZ;
int __BLAST_NONDET;
int main ()
{


  int i;
  int j;
  int len = BASE_SZ;

  if(BASE_SZ > 0 ); else goto END;


  __VERIFIER_assert( 0 <= BASE_SZ-1 );

  if (len == 0)
    goto END;

  i = 0;
  j = 0;
  while (1) {
    if ( len == 0 ){
      goto END;
    } else {
      __VERIFIER_assert( 0<= j ); __VERIFIER_assert( j < BASE_SZ );
      __VERIFIER_assert( 0<= i ); __VERIFIER_assert( i < BASE_SZ );

      if ( __BLAST_NONDET ) {
        i++;
        j++;
        goto END;
      }
    }
    i ++;
    j ++;
    len --;
  }

 END: return 0;
}
