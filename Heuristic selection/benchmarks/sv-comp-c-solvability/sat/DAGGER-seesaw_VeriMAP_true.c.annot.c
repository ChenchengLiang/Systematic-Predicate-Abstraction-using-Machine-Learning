# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/DAGGER-seesaw.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/DAGGER-seesaw.tmp.c"
# 18 "MAP/SAFE-exbench/DAGGER-seesaw.tmp.c"
int nondet(){int i; return i; }


void main()
{
 int /*@  predicates{(!((x-4)<=0)),(!((x-5)>=0)),(!((x-7)<=0)),x!=0,x<7,x<9,x>9} predicates_tpl{0==0} @*/ x;
 int /*@  predicates{(((-x)+(2*y))>=0),(((3*x)-y)>=0),y!=0,y<=x,y>=x} terms_tpl{2*y-2*x,2*y-3*x,2*y-x,y-2*x,y-3*x,y-x} @*/ y;

 if(!(x==0))return;
 if(!(y==0))return;

 while(nondet())
 {
  if(nondet())
  {
   if(!(x >= 9))return;
   x = x + 2;
   y = y + 1;
  }
  else
  {
   if(nondet())
   {
    if(!(x >= 7))return;
    if(!(x <= 9))return;
    x = x + 1;
    y = y + 3;
   }
   else
   {
    if(nondet())
    {
     if(!(x - 5 >=0))return;
     if(!(x - 7 <=0))return;
     x = x + 2;
     y = y + 1;
    }
    else
    {
     if(!(x - 4 <=0))return;
     x = x + 1;
     y = y + 2;
    }
   }
  }
 }
 assert(-x + 2*y >= 0);
 assert(3*x - y >= 0);
}
