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
extern int /*@  predicates{argc==0} predicates_tpl{0==0} @*/ argc;





int main(){
  int /*@  predicates{c1==4000} @*/ c1 = 4000;
  int /*@  predicates{c2==2000} @*/ c2 = 2000;
  int /*@  predicates{n<10,n>0} @*/ n, /*@  predicates{v==0,v==1} @*/ v;
  int /*@  predicates{i<=n,i<n,i>=0} @*/ i, /*@  predicates{k<=i,k>=i} terms_tpl{k-i} @*/ k, j;


  n = unknown1();
  assume(n>0);
  assume(n<10);


  k = 0;
  i = 0;
  while(i < n){
    i++;

    if(argc == 0)
      v = 0;
    else v = 1;

    if(v == 0)
      k += c1;
    else
      k += c2;
  }

  if(!(k>n))
  errorFn();
  return 0;
}
