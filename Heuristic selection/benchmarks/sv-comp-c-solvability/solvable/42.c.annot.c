# 1 "/tmp/tmp.iQTEZnXQj2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.iQTEZnXQj2.c"
void errorFn(){assert(0);}

int unknown1();
int unknown2();

void main(int /*@  predicates{flag==0} predicates_tpl{0==0} @*/ flag)
{
  int x = 1;
  int /*@  predicates{y<=x,y>=x} terms_tpl{y-x} @*/ y = 1;
  int a;

  if(flag)
    a = 0;
  else
    a = 1;

  while(unknown1()){
    if(flag)
    {
      a = x+y;
      x++;
    }
    else
    {
      a = x+y+1;
      y++;
    }
    if(a%2==1)
      y++;
    else
      x++;
  }


  if(flag)
    a++;
  if(!(a%2==1))
  errorFn();
}
