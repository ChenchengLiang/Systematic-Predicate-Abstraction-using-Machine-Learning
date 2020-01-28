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





void main(int n){
  int /*@  predicates{x<=n,x<n,x>=0} predicates_tpl{0==0} @*/ x= 0;
  while(x<n){
    x++;
  }
  if(n>0)if(!(x==n))
  errorFn();
}
