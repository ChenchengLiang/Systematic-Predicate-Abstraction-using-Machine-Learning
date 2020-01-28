# 1 "/tmp/tmp.iQTEZnXQj2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.iQTEZnXQj2.c"
void errorFn(){assert(0);}

int unknown1();
int unknown2();
int unknown3();
int unknown4();






int main(){
 int /*@  predicates{n>=0} predicates_tpl{0==0} @*/ n;
   int /*@  predicates{i<=n,i<n,i>=0} @*/ i, /*@  predicates{sum<=i,sum>=i} terms_tpl{sum-i} @*/ sum=0;
   assume(n >= 0);

   for(i=0; i < n; ++i)
      sum = sum +i;

   if(!(sum >= 0))
  errorFn();
}
