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

void main(int /*@  predicates{flag==0} predicates_tpl{0==0} @*/ flag)
{
  int a = 0;
  int /*@  predicates{b<=a,b>=a} terms_tpl{b-a} @*/ b = 0;
  int x = 0;
  int /*@  predicates{y<=x,y>=x} terms_tpl{2*y+2*x,2*y+x,y+2*x,y+x,y-2*x,y-x} @*/ y = 0;
  int /*@  predicates{z<=x,z<=y,z>=x,z>=y} terms_tpl{2*z+y,2*z-x,z+x,z+y,z-x} @*/ z = 0;
  int /*@  predicates{j==0} @*/ j = 0;
  int w = 0;

  while(unknown1())
  {
    int /*@  predicates{i<=(z+1),i<=0,i<=x,i<=y,i<=z,i>=(z+1),i>=0,i>=x,i>=y,i>=z} terms_tpl{2*i+y,2*i-x,i+x,i+y,i-x,i-z} @*/ i = z;
    int /*@  predicates{j<=((x+y)+1),j<=0,j<=w,j>=i,j>i} @*/ j = w;
    int /*@  predicates{k<=i,k<=x,k<=y,k<=z,k>=i,k>=x,k>=y,k>=z} terms_tpl{2*k+y,2*k-x,k+x,k+y,k-i,k-x,k-z} @*/ k = 0;
    while(i<j)
    {
      k++;
      i++;
    }

    x = z;
    y = k;

    if(x%2==1)
    {
      x++;
      y--;
    }

    while(unknown2())
    {
      if(x%2==0)
      {
        x+=2;
        y-=2;
      }
      else
      {
        x--;
        y--;
      }
    }
    z++;
    w = x+y+1;
  }

  int /*@  predicates{c<=a,c<=b,c>=a,c>=b} terms_tpl{c-a,c-b} @*/ c=0;
  int /*@  predicates{d<=a,d<=b,d<=c,d>=a,d>=b,d>=c} terms_tpl{d-a,d-b,d-c} @*/ d=0;
  while(unknown3())
  {
    c++;
    d++;
    if(flag)
    {
      a++;
      b++;
    }
    else
    {
      a+=c;
      b+=d;
    }
  }
  if(!(w>=z && a-b==0))
  errorFn();
}
