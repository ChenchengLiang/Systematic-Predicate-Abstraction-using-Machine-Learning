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

void main(int n)
{
  int x=0;
  int /*@  predicates{y<=x,y>=x} predicates_tpl{0==0} terms_tpl{y-x} @*/ y=0;
  int /*@  predicates{i<=n,i<=x,i<=y,i<n,i>=0,i>=x,i>=y} terms_tpl{i-x,i-y} @*/ i=0;

  while(i<n){
    i++;
    x++;
    if(i%2 == 0)y++;
  }

  if(i%2 == 0)if(!(x==2*y))
  errorFn();
}
