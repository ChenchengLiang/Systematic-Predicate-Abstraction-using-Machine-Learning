# 1 "/tmp/tmp.iQTEZnXQj2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.iQTEZnXQj2.c"
void errorFn(){assert(0);}
int unknown1();
int unknown2();


int main()
{
 int /*@  predicates{flag==0} predicates_tpl{0==0} @*/ flag;
  int t = 0;
  int /*@  predicates{s<=t,s>=t} terms_tpl{s-t} @*/ s = 0;
  int /*@  predicates{a<=s,a<=t,a>=s,a>=t} terms_tpl{a-s,a-t} @*/ a = 0;
  int /*@  predicates{b<=a,b<=s,b<=t,b>=a,b>=s,b>=t} terms_tpl{b-a,b-s,b-t} @*/ b = 0;
  while(unknown1()){
    a++;
    b++;
    s+=a;
    t+=b;
    if(flag){
      t+=a;
    }
  }

  int /*@  predicates{x<=((t-(2*s))+2),x<=1} @*/ x = 1;
  if(flag){
    x = t-2*s+2;
  }

  int /*@  predicates{y<=x,y>=0} @*/ y = 0;
  while(y<=x){
    if(unknown2())
       y++;
    else
       y+=2;
  }
  if(!(y<=4))
  errorFn();
}
