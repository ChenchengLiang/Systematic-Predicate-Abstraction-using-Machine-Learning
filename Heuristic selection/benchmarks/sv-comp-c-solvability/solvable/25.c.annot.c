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
  int /*@  predicates{i<=x,i<=y,i>=x,i>=y} terms_tpl{i-x,i-y} @*/ i = 0;
  int /*@  predicates{j<=i,j<=x,j<=y,j>=i,j>=x,j>=y} terms_tpl{j-i,j-x,j-y} @*/ j = 0;

  while(unknown1())
  {
    while(unknown2())
    {
       if(x==y)
          i++;
       else
          j++;
    }
    if(i>=j)
    {
       x++;
       y++;
    }
    else
       y++;
  }

  if(!(i>=j))
  errorFn();
}
