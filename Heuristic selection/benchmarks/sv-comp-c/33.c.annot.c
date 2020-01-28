# 1 "/tmp/tmp.iQTEZnXQj2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.iQTEZnXQj2.c"
void errorFn(){assert(0);}
extern int unknown1();
extern int unknown2();
extern int unknown3();

int main()
{
 int k;
  int z = k;
  int x = 0;
  int /*@  predicates{y<=x,y>=x} predicates_tpl{0==0} terms_tpl{y+x,y-x} @*/ y = 0;

  while(unknown1())
  {
    int /*@  predicates{c<=x,c<=y,c>=x,c>=y} terms_tpl{c+x,c+y,c-x,c-y} @*/ c = 0;
    while(unknown2())
    {
      if(z==k+y-c)
      {
        x++;
        y++;
        c++;
      }else
      {
        x++;
        y--;
        c++;
      }
    }
    while(unknown3())
    {
      x--;
      y--;
    }
    z=k+y;
  }
  if(!(x==y))
  errorFn();
}
