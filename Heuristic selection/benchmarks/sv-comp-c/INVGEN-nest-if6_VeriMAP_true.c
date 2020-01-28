# 1 "MAP/SAFE-exbench/INVGEN-nest-if6.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-nest-if6.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-nest-if6.tmp.c"
int __BLAST_NONDET;

void main()


{
  int lda,n;

  int j,k,kp1,l,nm1;
  int i, itemp;

  if( n < lda); else goto END;
  if( 0 <= n ); else goto END;

  nm1 = n - 1;
  if (nm1 >= 0) {
    for (k = 0; k < nm1; k++) {
      kp1 = k + 1;




      int dx = k;
      int incx = 1;




      if( n-k < 1 ) { itemp = -1; goto IDAMAXEND; }
      if(n-k ==1 ) { itemp = 0; goto IDAMAXEND; }
      if(incx != 1) {



 int ix = 1;


 ix = ix + incx;
 for (i = 1; i < n-k; i++) {


   if(__BLAST_NONDET) {
     itemp = i;


   }
   ix = ix + incx;
 }
      }
      else {



 itemp = 0;

 for (i = 1; i < n-k; i++) {


   if(__BLAST_NONDET) {
     itemp = i;


   }
 }
      }

    IDAMAXEND: l = itemp +k;
# 96 "MAP/SAFE-exbench/INVGEN-nest-if6.tmp.c"
      if ( __BLAST_NONDET ) {


 if (l != k) {



 }
# 112 "MAP/SAFE-exbench/INVGEN-nest-if6.tmp.c"
 for (j = kp1; j < n; j++) {




   if (l != k) {


   }


 }
      }
      else {

      }
    }
  }
   __VERIFIER_assert( 0 <= n );__VERIFIER_assert( n < lda );

 END:;


}
