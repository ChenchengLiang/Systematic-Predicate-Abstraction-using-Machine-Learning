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

int main()
{
  int a = 1;
  int /*@  predicates{b<=a,b>=a} predicates_tpl{0==0} terms_tpl{b+a,b-a} @*/ b = 1;
  int /*@  predicates{c<=a,c<=b,c>=a,c>=b} terms_tpl{c+a,c-a,c-b} @*/ c = 2;
  int /*@  predicates{d<=a,d<=b,d<=c,d>=a,d>=b,d>=c} terms_tpl{d+a,d+b,d+c,d-a} @*/ d = 2;
  int x = 3;
  int y = 3;
  while(unknown1())
  {
    x = a+c;
    y = b+d;
    if((x+y)%2 == 0)
    {
      a++;
      d++;
    }else
    {
      a--;
    }
    while(unknown2())
    {
       c--;
       b--;
    }
  }
  if(!(a+c==b+d))
  errorFn();
}
