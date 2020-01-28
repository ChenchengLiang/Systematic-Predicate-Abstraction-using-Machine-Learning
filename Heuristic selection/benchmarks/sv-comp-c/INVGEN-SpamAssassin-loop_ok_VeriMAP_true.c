# 1 "MAP/SAFE-exbench/INVGEN-SpamAssassin-loop_ok.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-SpamAssassin-loop_ok.tmp.c"
# 22 "MAP/SAFE-exbench/INVGEN-SpamAssassin-loop_ok.tmp.c"
int __BLAST_NONDET;

void main ()
{
  int len;
  int i;
  int j;

  int bufsize;
  int limit = bufsize - 4;

  ;

  for (i = 0; i < len; ) {
    for (j = 0; i < len && j < limit; ){
      if (i + 1 < len){


 if( __BLAST_NONDET ) goto ELSE;





        j++;
        i++;






        j++;
        i++;




        j++;
      } else {
ELSE:

 __VERIFIER_assert( 0<=i );




        j++;
        i++;
      }
    }
  }
}
