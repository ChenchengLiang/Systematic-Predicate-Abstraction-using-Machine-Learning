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





void main(){
  int /*@  predicates{i>=0} predicates_tpl{0==0} @*/ i,/*@  predicates{j<=i,j>=(i+1),j>=0,j>=i} terms_tpl{j-i} @*/ j,/*@  predicates{k<=i,k<=j,k>=(i+1),k>=(j+1),k>=0,k>=i,k>=j} terms_tpl{k-i,k-j} @*/ k,/*@  predicates{n>=i,n>=j,n>=k,n>i,n>j,n>k} @*/ n;

  for(i=0;i<n;i++)
    for(j=i;j<n;j++)
      for(k=j;k<n;k++)
 if(!(k>=i))
  errorFn();
}
