# 1 "MAP/SAFE-exbench/INVGEN-sendmail-mime7to8_arr_three_chars_no_test_ok.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-sendmail-mime7to8_arr_three_chars_no_test_ok.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-sendmail-mime7to8_arr_three_chars_no_test_ok.tmp.c"
int main (void)
{

  int __BLAST_NONDET;
  int fbuflen;
  int fb;

  ;
  if(fbuflen >0);else goto END;
  fb = 0;
  while (__BLAST_NONDET)
  {

    if (__BLAST_NONDET)
      break;


    if (__BLAST_NONDET)
      break;


    __VERIFIER_assert( 0<=fb );
    __VERIFIER_assert( fb<fbuflen );

    fb++;
    if (fb >= fbuflen-1)
      fb = 0;


    __VERIFIER_assert( 0<=fb );
    __VERIFIER_assert( fb<fbuflen );


    fb++;
    if (fb >= fbuflen-1)
      fb = 0;


    __VERIFIER_assert( 0<=fb );
    __VERIFIER_assert( fb<fbuflen );


    fb++;
    if (fb >= fbuflen-1)
      fb = 0;
  }


  if (fb > 0)
  {

    __VERIFIER_assert( 0<=fb );
    __VERIFIER_assert( fb<fbuflen );

  }

 END: return 0;
}
