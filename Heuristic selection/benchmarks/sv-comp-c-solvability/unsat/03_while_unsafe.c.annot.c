# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
int f1(int n, int c){
   int /*@  predicates{i<=n,i<n,i>=0} predicates_tpl{0==0} @*/ i;
   int j;
   int /*@  predicates{x<=i,x>=i} terms_tpl{x-i} @*/ x;

   i = 0;
   j = 0;
   x = 0;

   while(i < n){
      j = 5*i + c;
      x = x + j;
      i++;
   }
   return x;
}





int f2(int n, int c){
   int /*@  predicates{i<=n,i<n,i>=0} @*/ i;
   int /*@  predicates{j<=i,j>=i} terms_tpl{j-5*i} @*/ j;
   int /*@  predicates{x<=i,x<=j,x>=i,x>=j} terms_tpl{x-i,x-j} @*/ x;

   i = 0;
   j = 0;
   x = 0;

   while(i < n){
      x = x + j;
      j = j + 5;
      i++;
   }
   return x;
}

void main()
{
 int n,c;
 int res1=f1(n,c);
 int /*@  predicates{res2==res1} @*/ res2=f2(n,c);
 assert(res1==res2);
}
