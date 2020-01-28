# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
extern __VERIFIER_nondet_int();
int main(){

int /*@  predicates{n>=0} predicates_tpl{0==0} @*/ n;
int /*@  predicates{((-1)>=i),(i<(n-1)),i<=(n-1),i<=0,i>=0,i>=n} @*/ i=0;
int /*@  predicates{((-1)>=j),j<=i,j<=n,j<n,j>=(i+1),j>=0,j>=i,j>=n} terms_tpl{j-i} @*/ j=0;
int /*@  predicates{((((i>=n)||((-1)>=i))||(min>=n))||((-1)>=min)),((((j>=n)||((-1)>=j))||(min>=n))||((-1)>=min)),((-1)>=min),min!=i,min<=(i+1),min<=0,min<=i,min>=i,min>=n,min>i} @*/ min=0;

assume(n>=0);

 while(i < n-1){

  min = i;

  j=i+1;

  while(j < n){

   if(j >= n || -1 >= j || min >= n || -1 >= min)
    goto ERROR;

   if(__VERIFIER_nondet_int()){
    min = j;
   }

   if(i != min){

    if(i >= n || -1 >= i || min >= n || -1 >= min)
     goto ERROR;
   }

   j=j+1;

  }

  i=i+1;
 }

 return 0;
ERROR:
 return -1;
}
