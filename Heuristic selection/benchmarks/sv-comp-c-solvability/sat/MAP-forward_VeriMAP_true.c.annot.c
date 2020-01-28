# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
extern int __VERIFIER_nondet_int();
void main(int /*@  predicates{n>=0} predicates_tpl{0==0} @*/ n){

   int /*@  predicates{i<=n,i<n,i>=0} @*/ i, n, /*@  predicates{a<=i,a>=i} terms_tpl{a-2*i,a-i} @*/ a, /*@  predicates{((a+b)!=(3*n)),b<=a,b<=i,b>=a,b>=i} terms_tpl{2*b-2*a,2*b-a,b-2*a,b-2*i,b-a,b-i} @*/ b;

assume(n>= 0);

   i = 0;
   a = 0;
   b = 0;

   while(i < n){
      if(__VERIFIER_nondet_int()){
         a = a+1;
         b = b+2;
      } else {
         a = a+2;
         b = b+1;
      }
      i = i+1;
   }

   if(a+b != 3*n)
      goto ERROR;

return;

ERROR:;
}
