# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/DAGGER-cars.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/DAGGER-cars.tmp.c"
# 18 "MAP/SAFE-exbench/DAGGER-cars.tmp.c"
int nondet(){int i; return i;}


void main()
{
 int x1;
 int /*@  predicates{v1<=5,v1>5} predicates_tpl{0==0} @*/ v1;
 int /*@  predicates{x2<=x1,x2>=x1} terms_tpl{x2-x1} @*/ x2;
 int /*@  predicates{(!((v2+5)>=0)),((v2+6)>=0),v2<=6,v2<=x1,v2<=x2,v2>5,v2>=x1,v2>=x2} terms_tpl{v2-x1,v2-x2} @*/ v2;
 int /*@  predicates{(!((((2*x2)-x1)-x3)<=0)),(!((((2*x2)-x1)-x3)>=0)),x3<=v2,x3<=x1,x3<=x2,x3>=v2,x3>=x1,x3>=x2} terms_tpl{x3-v2,x3-x1,x3-x2} @*/ x3;
 int /*@  predicates{(!((((2*v2)-v1)-v3)==0)),(!((v1-v3)>=0)),((v1-v3)>=0),v3<0,v3>=0} @*/ v3;
 int /*@  predicates{((((v1-(2*v2))+v3)+(2*t))>=0),(((2*v2)+(2*t))>=(v1+v3)),(((5*t)+75)>=x2),((x2+(5*t))>=75),t<=v2,t<=x1,t<=x2,t<=x3,t>=v2,t>=x1,t>=x2,t>=x3} terms_tpl{t+v2,t-v2,t-x1,t-x2,t-x3} @*/ t;

 x1=100;
 x2=75;
 x3=-50;
 if(!(v3 >= 0))return;
 if(!(v1 <= 5))return;
 if(!(v1 -v3 >= 0))return;
 if(!(2* v2 - v1 - v3 == 0))return;
 t=0;

 if(!(v2 +5 >=0))return;
 if(!(v2 <= 5))return;
 while(nondet())
 {
  if(!(v2 +5 >=0))return;
  if(!(v2 <= 5))return;
  if(nondet())
  {
   if(!(2* x2 - x1 - x3>=0))return;
   x1 = x1+v1;
   x3 = x3+v3;
   x2 = x2+v2;
   v2 = v2-1;
   t = t+1;
  }
  else
  {
   if(!(2*x2 -x1-x3 <=0))return;
   x1 = x1+v1;
   x3 = x3+v3;
   x2 = x2+v2;
   v2 = v2+1;
   t = t+1;
  }
 }
 assert(v1 <= 5);
 assert(2*v2 + 2*t >= v1 + v3);
 assert(5*t + 75 >= x2);
 assert(v2 <= 6);
 assert(v3 >= 0);
 assert(v2 + 6 >= 0);
 assert(x2 + 5*t >= 75);
 assert(v1 - 2*v2 + v3 + 2*t >= 0);
 assert(v1 - v3 >= 0);
}
