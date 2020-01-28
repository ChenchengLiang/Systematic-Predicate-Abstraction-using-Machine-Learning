# 1 "MAP/SAFE-exbench/INVGEN-sendmail-close-angle.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-sendmail-close-angle.tmp.c"
# 25 "MAP/SAFE-exbench/INVGEN-sendmail-close-angle.tmp.c"
int main (void)
{






  int __BLAST_NONDET;
  int in;
  int inlen;
  int bufferlen;
  int buf;
  int buflim;


  ;

  if(bufferlen >1);else goto END;
  if(inlen > 0);else goto END;
  if(bufferlen < inlen);else goto END;




  buf = 0;
  in = 0;
  buflim = bufferlen - 2;



  while (__BLAST_NONDET)
  {
    if (buf == buflim)
      break;
    __VERIFIER_assert( 0<=buf );
    __VERIFIER_assert( buf<bufferlen );

    buf++;
out:
    in++;
    __VERIFIER_assert( 0<=in );
    __VERIFIER_assert( in<inlen );

  }

    __VERIFIER_assert( 0<=buf );
    __VERIFIER_assert( buf<bufferlen );

  buf++;


  __VERIFIER_assert( 0<=buf );
  __VERIFIER_assert( buf<bufferlen );


  buf++;

 END: return 0;
}
