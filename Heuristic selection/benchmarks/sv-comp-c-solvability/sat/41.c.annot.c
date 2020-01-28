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
 int n; int /*@  predicates{flag==0} predicates_tpl{0==0} @*/ flag;
   assume(n>=0);
   int /*@  predicates{k==1,k>=0} @*/ k = 1;
   if(flag){
 k = unknown1();
 assume(k>=0);
   }
   int /*@  predicates{i<=n,i>=0} @*/ i = 0, /*@  predicates{j<=i,j>=i} terms_tpl{j-i} @*/ j = 0;
   while(i <= n){
     i++;
     j+=i;
   }
   int z = k + i + j;
   if(!(z > 2*n))
  errorFn();
}
