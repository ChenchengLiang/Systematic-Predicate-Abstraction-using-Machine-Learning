# 1 "MAP/SAFE-exbench/INVGEN-NetBSD_glob3_iny.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-NetBSD_glob3_iny.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-NetBSD_glob3_iny.tmp.c"
int __BLAST_NONDET;

int main ()
{





  int buf_off, pattern_off, bound_off;

  int MAXPATHLEN;





  int error;

  int pathbuf_off;
  int pathend_off;
  int pathlim_off;





  if(MAXPATHLEN >0); else goto END;

  buf_off = 0;
  pattern_off = 0;

  bound_off = MAXPATHLEN;
# 67 "MAP/SAFE-exbench/INVGEN-NetBSD_glob3_iny.tmp.c"
  pathbuf_off = 0;
  pathend_off = 0;
  pathlim_off = MAXPATHLEN;



  error = 0;


  while (__BLAST_NONDET) {
    int i;


    __VERIFIER_assert( 0 <= pattern_off ); __VERIFIER_assert( pattern_off <= MAXPATHLEN );

      if (__BLAST_NONDET) continue;




    i = 0;
    for (;;)
      if (i > MAXPATHLEN) goto END;
      else {
 __VERIFIER_assert( 0 <= i ); __VERIFIER_assert( i <= MAXPATHLEN );

        i++;
        if (__BLAST_NONDET) goto END;
      }




    __VERIFIER_assert( 0 <= pathlim_off ); __VERIFIER_assert( pathlim_off <= MAXPATHLEN );


    if (i > MAXPATHLEN){
      if ( __BLAST_NONDET ) {





 if ( __BLAST_NONDET ) {
   error = 5;
   goto END;
 }
 else {

   __VERIFIER_assert( 0 <= i );__VERIFIER_assert( i <= MAXPATHLEN + 1 );

   continue;
 }
      }
    }





    if ( __BLAST_NONDET) {

      __VERIFIER_assert( i <= MAXPATHLEN + 1 );

      continue;
    }
  END_LOOP1:;
  }



 END: return 0;
}
