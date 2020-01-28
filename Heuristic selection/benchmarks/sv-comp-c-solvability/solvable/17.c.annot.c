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

void main(int n)
{
 int k=1;
 int /*@  predicates{i<=1,i<=k,i<=n,i<n,i>=1,i>=k} predicates_tpl{0==0} terms_tpl{i-k} @*/ i=1;
 int /*@  predicates{j<=0,j<=i,j<=k,j<i,j>=0,j>=i,j>=k} terms_tpl{j-i,j-k} @*/ j=0;
 while(i<n){
  j=0;
  while(j<i){
      k +=(i-j);
      j++;
  }
  i++;
 }
 if(!(k>=n))
  errorFn();

}
