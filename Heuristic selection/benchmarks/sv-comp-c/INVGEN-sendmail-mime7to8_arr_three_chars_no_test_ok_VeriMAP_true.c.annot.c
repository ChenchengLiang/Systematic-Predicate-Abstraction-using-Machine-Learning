# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-sendmail-mime7to8_arr_three_chars_no_test_ok.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-sendmail-mime7to8_arr_three_chars_no_test_ok.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-sendmail-mime7to8_arr_three_chars_no_test_ok.tmp.c"
int main(void)
{

  int /*@  predicates{__BLAST_NONDET!=0,__BLAST_NONDET==0} predicates_tpl{0==0} @*/ __BLAST_NONDET;
  int /*@  predicates{fbuflen>0} @*/ fbuflen;
  int /*@  predicates{fb<fbuflen,fb>=0} @*/ fb;

  ;
  if(fbuflen >0);else goto END;
  fb = 0;
  while(__BLAST_NONDET)
  {

    if(__BLAST_NONDET)
      break;


    if(__BLAST_NONDET)
      break;


    assert(0<=fb);
    assert(fb<fbuflen);

    fb++;
    if(fb >= fbuflen-1)
      fb = 0;


    assert(0<=fb);
    assert(fb<fbuflen);


    fb++;
    if(fb >= fbuflen-1)
      fb = 0;


    assert(0<=fb);
    assert(fb<fbuflen);


    fb++;
    if(fb >= fbuflen-1)
      fb = 0;
  }


  if(fb > 0)
  {

    assert(0<=fb);
    assert(fb<fbuflen);

  }

 END: return 0;
}
