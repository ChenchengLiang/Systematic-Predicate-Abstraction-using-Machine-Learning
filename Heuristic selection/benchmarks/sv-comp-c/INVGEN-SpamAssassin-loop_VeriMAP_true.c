# 1 "MAP/SAFE-exbench/INVGEN-SpamAssassin-loop.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-SpamAssassin-loop.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-SpamAssassin-loop.tmp.c"
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
 __VERIFIER_assert( i+1<len );
 __VERIFIER_assert( 0<=i );
 if( __BLAST_NONDET ) goto ELSE;
        __VERIFIER_assert( i<len );
 __VERIFIER_assert( 0<=i );
        __VERIFIER_assert( j<bufsize );
 __VERIFIER_assert( 0<=j );

        j++;
        i++;
        __VERIFIER_assert( i<len );
 __VERIFIER_assert( 0<=i );
        __VERIFIER_assert( j<bufsize );
 __VERIFIER_assert( 0<=j );


        j++;
        i++;
        __VERIFIER_assert( j<bufsize );
 __VERIFIER_assert( 0<=j );


        j++;
      } else {
ELSE:
        __VERIFIER_assert( i<len );
 __VERIFIER_assert( 0<=i );
        __VERIFIER_assert( j<bufsize );
 __VERIFIER_assert( 0<=j );


        j++;
        i++;
      }
    }
  }
}
