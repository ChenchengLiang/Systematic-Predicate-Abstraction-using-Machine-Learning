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






void main()
{
  int j=0;
  int /*@  predicates{i<=j,i>=0,i>=j} predicates_tpl{0==0} terms_tpl{2*i-j} @*/ i;
  int /*@  predicates{x<=100,x==100,x>=i,x>i} @*/ x=100;


  for(i =0; i< x ; i++){
    j = j + 2;
  }

  if(!(j == 2*x))
  errorFn();
}
