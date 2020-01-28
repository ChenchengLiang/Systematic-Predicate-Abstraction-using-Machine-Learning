# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/DAGGER-swim.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/DAGGER-swim.tmp.c"
# 18 "MAP/SAFE-exbench/DAGGER-swim.tmp.c"
int nondet(){int i; return i;}


void main()
{

 int /*@  predicates{x1<1,x1>=0} predicates_tpl{0==0} @*/ x1;
 int /*@  predicates{x2<1,x2<=x1,x2>=0,x2>=x1} terms_tpl{x2+x1,x2-x1} @*/ x2;
 int /*@  predicates{x3<1,x3<=x1,x3<=x2,x3>=0,x3>=x1,x3>=x2} terms_tpl{x3+x1,x3+x2,x3-x1,x3-x2} @*/ x3;
 int /*@  predicates{x4<1,x4<=x1,x4<=x2,x4<=x3,x4>=0,x4>=x1,x4>=x2,x4>=x3} terms_tpl{x4+x1,x4+x2,x4+x3,x4-x1,x4-x2,x4-x3} @*/ x4;
 int /*@  predicates{x5<1,x5<=x1,x5<=x2,x5<=x3,x5<=x4,x5>=0,x5>=x1,x5>=x2,x5>=x3,x5>=x4} terms_tpl{x5+x1,x5+x2,x5+x3,x5+x4,x5-x1,x5-x2,x5-x3,x5-x4} @*/ x5;
 int /*@  predicates{(((((x1+x2)+x4)+x5)+x6)>=1),x6<1,x6<=x1,x6<=x2,x6<=x3,x6<=x4,x6<=x5,x6>=0,x6>=x1,x6>=x2,x6>=x3,x6>=x4,x6>=x5} terms_tpl{x6+x1,x6+x2,x6+x3,x6+x4,x6+x5,x6-x1,x6-x2,x6-x3,x6-x4,x6-x5} @*/ x6;
 int /*@  predicates{((((x2+x3)+x4)+x7)>=1),x7<1,x7<=x1,x7<=x2,x7<=x3,x7<=x4,x7<=x5,x7<=x6,x7>=0,x7>=x1,x7>=x2,x7>=x3,x7>=x4,x7>=x5,x7>=x6} terms_tpl{x7+x1,x7+x2,x7+x3,x7+x4,x7+x5,x7+x6,x7-x1,x7-x2,x7-x3,x7-x4,x7-x5,x7-x6} @*/ x7;
 int /*@  predicates{(((((x1+x2)+x4)+x5)+x6)==p),p!=x6,p<1} @*/ p;
 int /*@  predicates{((((x2+x3)+x4)+x7)==q),q!=x7,q<1} @*/ q;

 x1=0;
 x2=0;
 x3=0;
 x4=0;
 x5=0;
 if(!(x6==p))return;
 if(!(x7==q))return;
 if(!(p >=1))return;
 if(!(q >=1))return;

 while(nondet())
 {
  if(nondet())
  {
   if(!(x6 >=1))return;
   x1 = x1 + 1;
   x6 = x6 - 1;
  }
  else
  {
   if(nondet())
   {
    if(!(x1 >=1))return;
    if(!(x7 >=1))return;
    x1 = x1-1;
    x2 = x2+1;
    x7 = x7-1;
   }
   else
   {
    if(nondet())
    {
     if(!(x2 >=1))return;

     x2 = x2-1;
     x3 = x3+1;
     x6 = x6+1;
    }
    else
    {
     if(nondet())
     {
      if(!(x3>=1))return;
      if(!(x6>=1))return;

      x3 = x3-1;
      x4 = x4+1;
      x6 = x6-1;
     }
     else
     {
      if(nondet())
      {
       if(!(x4>=1))return;
       x4 = x4-1;
       x5 = x5+1;
       x7 = x7+1;
      }
      else
      {
       if(!(x5>=1))return;

       x5 = x5-1;
       x6 = x6+1;
      }
     }
    }
   }
  }
 }
 assert(x2 + x3 + x4 + x7 == q);
 assert(x1 + x2 + x4 + x5 + x6 == p);
 assert(x7 >= 0);
 assert(x6 >= 0);
 assert(x5 >= 0);
 assert(x4 >= 0);
 assert(x3 >= 0);
 assert(x2 >= 0);
 assert(x1 >= 0);
 assert(x2 + x3 + x4 + x7 >= 1);
 assert(x1 + x2 + x4 + x5 + x6 >= 1);

}
