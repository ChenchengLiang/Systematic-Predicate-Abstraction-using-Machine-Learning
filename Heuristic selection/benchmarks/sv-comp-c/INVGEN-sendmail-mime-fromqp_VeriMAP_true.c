# 1 "MAP/SAFE-exbench/INVGEN-sendmail-mime-fromqp.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-sendmail-mime-fromqp.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-sendmail-mime-fromqp.tmp.c"
int __BLAST_NONDET;

int main (void)
{
  int outfilelen;
# 33 "MAP/SAFE-exbench/INVGEN-sendmail-mime-fromqp.tmp.c"
  int nchar = 0;

  int out = 0;

  ;

  if(outfilelen > 0); else goto RETURN;


  while(__BLAST_NONDET)
  {

    if(__BLAST_NONDET)
    {


      if(__BLAST_NONDET)


 goto AFTERLOOP;




      if(__BLAST_NONDET)
      {
 out = 0;
 nchar = 0;
 goto LOOPEND;
      }
      else
      {




 if(__BLAST_NONDET) goto AFTERLOOP;

 nchar++;
 if (nchar >= outfilelen)
   goto AFTERLOOP;


 __VERIFIER_assert( 0<=out );
 __VERIFIER_assert( out<outfilelen );

 out++;
      }
    }
    else
    {


      nchar++;
      if (nchar >= outfilelen)
 goto AFTERLOOP;


      __VERIFIER_assert( 0<=out );
      __VERIFIER_assert( out<outfilelen );

      out++;


      if(__BLAST_NONDET) goto AFTERLOOP;
    }
  LOOPEND:;
  }
 AFTERLOOP:;


  __VERIFIER_assert( 0<=out );
  __VERIFIER_assert( out<outfilelen );

  out++;
 RETURN: return 0;
}
