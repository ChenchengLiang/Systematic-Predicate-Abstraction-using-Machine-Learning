# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-sendmail-mime-fromqp.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-sendmail-mime-fromqp.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-sendmail-mime-fromqp.tmp.c"
int /*@  predicates{__BLAST_NONDET!=0,__BLAST_NONDET==0} predicates_tpl{0==0} @*/ __BLAST_NONDET;

int main(void)
{
  int /*@  predicates{outfilelen>0} @*/ outfilelen;
# 33 "MAP/SAFE-exbench/INVGEN-sendmail-mime-fromqp.tmp.c"
  int /*@  predicates{nchar>=0,nchar>=outfilelen} @*/ nchar = 0;

  int /*@  predicates{out<=nchar,out<outfilelen,out>=0,out>=nchar} terms_tpl{out-nchar} @*/ out = 0;

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




 if(__BLAST_NONDET)goto AFTERLOOP;

 nchar++;
 if(nchar >= outfilelen)
   goto AFTERLOOP;


 assert(0<=out);
 assert(out<outfilelen);

 out++;
      }
    }
    else
    {


      nchar++;
      if(nchar >= outfilelen)
 goto AFTERLOOP;


      assert(0<=out);
      assert(out<outfilelen);

      out++;


      if(__BLAST_NONDET)goto AFTERLOOP;
    }
  LOOPEND:;
  }
 AFTERLOOP:;


  assert(0<=out);
  assert(out<outfilelen);

  out++;
 RETURN: return 0;
}
