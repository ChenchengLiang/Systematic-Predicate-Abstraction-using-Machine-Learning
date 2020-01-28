# 1 "/tmp/tmp.iQTEZnXQj2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.iQTEZnXQj2.c"
void errorFn(){assert(0);}

extern int unknown1();
int unknown2();
int unknown3();
int unknown4();





void main(){

  int /*@  predicates{n>0} predicates_tpl{0==0} @*/ n;
  int i, /*@  predicates{k>n} @*/ k, /*@  predicates{j<=k,j<=n,j<n,j>=0,j>=k} terms_tpl{j+k} @*/ j;


  n = unknown1();
  assume(n>0);

  assume(k>n);
  j = 0;
  while(j < n){
    j++;
    k--;
  }
  if(!(k>=0))
  errorFn();
}
