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






int main()
{
 int x; int /*@  predicates{y==x} predicates_tpl{0==0} @*/ y;
  int /*@  predicates{i==0} @*/ i=0;
  int t=y;

  if(x==y)return x;

  while(unknown1()){
    if(x > 0)
      y = y + x;
  }


  if(!(y>=t))
  errorFn();

}
