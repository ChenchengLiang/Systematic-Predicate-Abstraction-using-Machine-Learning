# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-nest-if6.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-nest-if6.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-nest-if6.tmp.c"
int /*@  predicates{__BLAST_NONDET==0} predicates_tpl{0==0} @*/ __BLAST_NONDET;

void main()


{
  int lda,/*@  predicates{n<lda,n>=0} @*/ n;

  int /*@  predicates{j<=n,j<n} @*/ j,/*@  predicates{((n-k)<1),((n-k)==1),j>=(k+1),k<=j,k>=0,k>=j} terms_tpl{k-j} @*/ k,/*@  predicates{kp1<=j} @*/ kp1,l,/*@  predicates{nm1<=(n-1),nm1>=0,nm1>=k,nm1>k} @*/ nm1;
  int /*@  predicates{(i<(n-k)),i<=(n-k),i<=j,i<=k,i>=1,i>=j,i>=k} terms_tpl{i-j,i-k} @*/ i, itemp;

  if(n < lda); else goto END;
  if(0 <= n); else goto END;

  nm1 = n - 1;
  if(nm1 >= 0){
    for(k = 0; k < nm1; k++){
      kp1 = k + 1;




      int dx = k;
      int /*@  predicates{incx==1} @*/ incx = 1;




      if(n-k < 1){ itemp = -1; goto IDAMAXEND; }
      if(n-k ==1){ itemp = 0; goto IDAMAXEND; }
      if(incx != 1){



 int /*@  predicates{ix<=i,ix<=j,ix<=k,ix>=i,ix>=j,ix>=k} terms_tpl{ix-i,ix-j,ix-k} @*/ ix = 1;


 ix = ix + incx;
 for(i = 1; i < n-k; i++){


   if(__BLAST_NONDET){
     itemp = i;


   }
   ix = ix + incx;
 }
      }
      else {



 itemp = 0;

 for(i = 1; i < n-k; i++){


   if(__BLAST_NONDET){
     itemp = i;


   }
 }
      }

    IDAMAXEND: l = itemp +k;
# 96 "MAP/SAFE-exbench/INVGEN-nest-if6.tmp.c"
      if(__BLAST_NONDET){


 if(l != k){



 }
# 112 "MAP/SAFE-exbench/INVGEN-nest-if6.tmp.c"
 for(j = kp1; j < n; j++){




   if(l != k){


   }


 }
      }
      else {

      }
    }
  }
   assert(0 <= n);assert(n < lda);

 END:;


}
