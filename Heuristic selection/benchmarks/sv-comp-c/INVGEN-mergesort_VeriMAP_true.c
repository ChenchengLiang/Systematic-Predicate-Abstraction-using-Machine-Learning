# 1 "MAP/SAFE-exbench/INVGEN-mergesort.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-mergesort.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-mergesort.tmp.c"
int __BLAST_NONDET;
# 30 "MAP/SAFE-exbench/INVGEN-mergesort.tmp.c"
int i,n,t,k;
int l,r,u,j;
int x,y,z;


main()
{
  x=1;
  while (x<n) {
    z=1;
    while (z+x<=n) {
      y=z+x*2;
      if (y>n) y=n+1;

      l = z; r = z+x; u = y;
      i=l; j=r; k=l;
      while (i<r && j<u) {


 if(__BLAST_NONDET) {




   i++;
 }
 else {



   j++;
 }
 k++;
      }


      __VERIFIER_assert( k<=n );

      while (i<r) {



 i++;
 k++;
      }
      while (j<u) {



 j++; k++;
      }
      for (k=l; k<u; k++) {


      }

      z=z+x*2;
    }
    x=x*2;
  }
}
