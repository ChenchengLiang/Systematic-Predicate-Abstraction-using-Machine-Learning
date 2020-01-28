# 1 "MAP/SAFE-exbench/INVGEN-apache-get-tag.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-apache-get-tag.tmp.c"
# 19 "MAP/SAFE-exbench/INVGEN-apache-get-tag.tmp.c"
void main()
{
  int tagbuf_len;
  int t;
  int __BLAST_NONDET;

  ;


  if(tagbuf_len >= 1); else goto END;

  t = 0;

  --tagbuf_len;
# 55 "MAP/SAFE-exbench/INVGEN-apache-get-tag.tmp.c"
  while (1) {
    if (t == tagbuf_len) {
      __VERIFIER_assert( 0 <= t );
      __VERIFIER_assert( t <= tagbuf_len );

      goto END;
    }
    if (__BLAST_NONDET) {
      break;
    }
     __VERIFIER_assert( 0 <= t );
     __VERIFIER_assert( t <= tagbuf_len );

    t++;

  }

   __VERIFIER_assert( 0 <= t );
   __VERIFIER_assert( t <= tagbuf_len );

  t++;
# 94 "MAP/SAFE-exbench/INVGEN-apache-get-tag.tmp.c"
  while (1) {

    if (t == tagbuf_len) {
      __VERIFIER_assert( 0 <= t );
      __VERIFIER_assert( t <= tagbuf_len );

      goto END;
    }

    if (__BLAST_NONDET) {

      if ( __BLAST_NONDET) {

  __VERIFIER_assert( 0 <= t );
 __VERIFIER_assert( t <= tagbuf_len );

        t++;
        if (t == tagbuf_len) {

   __VERIFIER_assert( 0 <= t );
   __VERIFIER_assert( t <= tagbuf_len );

          goto END;
        }
      }
    }
    else if ( __BLAST_NONDET) {
      break;
    }


    __VERIFIER_assert( 0 <= t );
    __VERIFIER_assert( t <= tagbuf_len );

    t++;

  }

  __VERIFIER_assert( 0 <= t );
  __VERIFIER_assert( t <= tagbuf_len );


  END:;
}
