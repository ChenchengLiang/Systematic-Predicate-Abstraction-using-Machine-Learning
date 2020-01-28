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






void main(int /*@  predicates{n>=0} @*/ n, int /*@  predicates{m<n,m>=0} predicates_tpl{0==0} @*/ m)
{
  assume(n>=0);
  assume(m>=0);
  assume(m<n);
  int /*@  predicates{x<=n,x<n,x>=0} @*/ x=0;
  int /*@  predicates{y<=x,y>=x} terms_tpl{y-x} @*/ y=m;
  while(x<n){
    x++;
    if(x>m)y++;
  }
  if(!(y==n))
  errorFn();
}
