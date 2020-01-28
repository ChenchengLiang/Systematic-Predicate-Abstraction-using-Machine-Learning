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
  int x = 0;
  int /*@  predicates{y<=x,y>=x} predicates_tpl{0==0} terms_tpl{y-x} @*/ y = 0;
  int /*@  predicates{z<=x,z<=y,z>=x,z>=y} terms_tpl{z-x,z-y} @*/ z = 0;
  int k = 0;

  while(unknown1())
  {
     if(k%3 == 0)
       x++;
     y++;
     z++;
     k = x+y+z;
  }

  if(!(x==y))
  errorFn();
  if(!(y==z))
  errorFn();

}
