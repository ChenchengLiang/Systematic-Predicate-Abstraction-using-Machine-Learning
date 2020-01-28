# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/DAGGER-efm.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/DAGGER-efm.tmp.c"
# 18 "MAP/SAFE-exbench/DAGGER-efm.tmp.c"
int nondet(){int i; return i;}


void main()
{
 int /*@  predicates{X1<1} predicates_tpl{0==0} @*/ X1;
 int /*@  predicates{X2!=0,X2<1,X2<=X1,X2>=0,X2>=X1} terms_tpl{X2+X1,X2-X1} @*/ X2;
 int /*@  predicates{(((X1+X2)+X3)>=1),X3!=0,X3<1,X3<=X1,X3<=X2,X3>=0,X3>=X1,X3>=X2} terms_tpl{X3+X1,X3+X2,X3-X1,X3-X2} @*/ X3;
 int /*@  predicates{X4!=1,X4<1,X4<=X1,X4<=X2,X4<=X3,X4>=0,X4>=X1,X4>=X2,X4>=X3} terms_tpl{X4+X1,X4+X2,X4+X3,X4-X1,X4-X2,X4-X3} @*/ X4;
 int /*@  predicates{((X1+X2)>=(X4+X5)),((X1+X5)>=1),((X4+X5)<=1),X5!=0,X5<=X1,X5<=X2,X5<=X3,X5<=X4,X5>=0,X5>=X1,X5>=X2,X5>=X3,X5>=X4} terms_tpl{X5+X1,X5+X2,X5+X3,X5+X4,X5-X1,X5-X2,X5-X3,X5-X4} @*/ X5;
 int /*@  predicates{((((X4+X5)+X6)-1)<=0),((((X4+X5)+X6)-1)>=0),X6!=0,X6<1,X6<=X1,X6<=X2,X6<=X3,X6<=X4,X6<=X5,X6>=X1,X6>=X2,X6>=X3,X6>=X4,X6>=X5} terms_tpl{X6-X1,X6-X2,X6-X3,X6-X4,X6-X5} @*/ X6;

 if(!(X1>=1))return;
 if(!(X2==0))return;
 if(!(X3==0))return;
 if(!(X4==1))return;
 if(!(X5==0))return;
 if(!(X6==0))return;

 while(nondet())
 {
  if(nondet())
  {
   if(!(X1 >= 1))return;
   if(!(X4 >= 1))return;
   X1=X1-1;
   X4=X4-1;
   X2=X2+1;
   X5=X5+1;
  }
  else
  {
   if(nondet())
   {
    if(!(X2 >= 1))return;
    if(!(X6 >= 1))return;
    X2=X2-1;
    X3=X3+1;
   }
   else
   {
    if(nondet())
    {
     if(!(X4 >= 1))return;
     if(!(X3 >= 1))return;
     X3=X3-1;
     X2=X2+1;
    }
    else
    {
     if(nondet())
     {
      if(!(X3>=1))return;
      X3=X3-1;
      X1=X1+1;
      X6=X6+X5;
      X5=0;
     }
     else
     {
      if(!(X2 >= 1))return;
      X2 = X2 - 1;
      X1 = X1 + 1;
      X4 = X4 + X6;
      X6 = 0;
     }
    }
   }
  }
 }

 assert(X4 + X5 + X6 -1 >= 0);
 assert(X4 + X5 + X6 -1 <= 0);
 assert(X4 + X5 <= 1);
 assert(X5 >= 0);
 assert(X4 >= 0);
 assert(X3 >= 0);
 assert(X2 >= 0);
 assert(X1 + X5 >= 1);
 assert(X1 + X2 >= X4 + X5);
 assert(X1 + X2 + X3 >= 1);

}
