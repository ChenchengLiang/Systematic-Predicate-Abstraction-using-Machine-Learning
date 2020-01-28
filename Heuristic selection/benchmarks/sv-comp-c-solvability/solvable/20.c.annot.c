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
 int x, /*@  predicates{y<=x,y>=x} terms_tpl{y+x,y-x} @*/ y, /*@  predicates{((x+y)==k)} @*/ k, /*@  predicates{j<=x,j<=y,j>=0,j>=x,j>=y} predicates_tpl{0==0} terms_tpl{j+x,j+y,j-x,j-y} @*/ j, i, /*@  predicates{n>=j,n>j} @*/ n;
    assume((x+y)== k);
    int m = 0;
    j = 0;
    while(j<n){
      if(j==i)
      {
         x++;
         y--;
      }else
      {
         y++;
         x--;
      }
 if(unknown1())
    m = j;
      j++;
    }
    if(!((x+y)== k))
  errorFn();
    if(n>0)
    {
    if(!(0<=m))
  errorFn();
 if(!(m<n))
  errorFn();
    }

}
