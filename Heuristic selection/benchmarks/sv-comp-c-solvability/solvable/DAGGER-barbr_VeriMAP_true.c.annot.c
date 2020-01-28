# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/DAGGER-barbr.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/DAGGER-barbr.tmp.c"
# 18 "MAP/SAFE-exbench/DAGGER-barbr.tmp.c"
int nondet(){int i; return i;}


void main()
{
 int /*@  predicates{barber<1,barber>=0} predicates_tpl{0==0} @*/ barber;
 int /*@  predicates{chair<1,chair<=barber,chair>=0,chair>=barber} terms_tpl{chair+barber,chair-barber} @*/ chair;
 int /*@  predicates{open!=0,open<1,open<=barber,open<=chair,open>=0,open>=barber,open>=chair} terms_tpl{open+barber,open+chair,open-barber,open-chair} @*/ open;
 int /*@  predicates{p1<0,p1<1,p1<=1,p1==0,p1==1,p1>0,p1>1,p1>=0} @*/ p1;
 int /*@  predicates{p2<0,p2<1,p2<=1,p2==0,p2==1,p2>0,p2>1,p2>=0} @*/ p2;
 int /*@  predicates{p3<0,p3<1,p3<=1,p3==0,p3==1,p3>0,p3>1,p3>=0} @*/ p3;
 int /*@  predicates{p4<0,p4<1,p4<=1,p4<=barber,p4<=chair,p4<=open,p4>0,p4>1,p4>=0,p4>=barber,p4>=chair,p4>=open} terms_tpl{p4+barber,p4+chair,p4+open,p4-barber,p4-chair,p4-open} @*/ p4;
 int /*@  predicates{p5<0,p5<1,p5<2,p5<3,p5<=3,p5==0,p5==1,p5==2,p5==3,p5>0,p5>1,p5>2,p5>3,p5>=open} @*/ p5;

 barber=0;
 chair=0;
 open=0;
 p1=0;
 p2=0;
 p3=0;
 p4=0;
 p5=0;

 while(nondet())
 {
  if(nondet())
  {
   if(!(p1 >= 0))return;
   if(!(p1 <= 0))return;
   if(!(barber >= 1))return;
   barber = barber-1;
   chair = chair+1;
   p1 = 1;
  }
  else
  {
   if(nondet())
   {
    if(!(p2 >= 0))return;
    if(!(p2 <= 0))return;
    if(!(barber >= 1))return;
    barber = barber-1;
    chair = chair+1;
    p2 = 1;
   }
   else
   {
    if(nondet())
    {
     if(!(p2 >= 1))return;
     if(!(p2 <= 1))return;
     if(!(open >=1))return;
     open = open -1;
     p2 = 0;
    }
    else
    {
     if(nondet())
     {
      if(!(p3>=0))return;
      if(!(p3<=0))return;
      if(!(barber >=1))return;
      barber = barber-1;
      chair = chair +1;
      p3 =1;
     }
     else
     {
      if(nondet())
      {
       if(!(p3>=1))return;
       if(!(p3<=1))return;
       if(!(open >=1))return;
       open = open -1;
       p3 =0;
      }
      else
      {
       if(nondet())
       {
        if(!(p4 >=0))return;
        if(!(p4 <=0))return;
        if(!(barber >=1))return;
        barber= barber-1;
        chair = chair +1;
        p4 = p4+1;
       }
       else
       {
        if(nondet())
        {
         if(!(p4 >=1))return;
         if(!(p4 <=1))return;
         if(!(open >=1))return;
         open = open - 1;
         p4=p4 -1;
        }
        else
        {
         if(nondet())
         {
          if(!(p5>=0))return;
          if(!(p5<=0))return;
          barber=barber+1;
          p5=1;
         }
         else
         {
          if(nondet())
          {
           if(!(p5>=1))return;
           if(!(p5<=1))return;
           if(!(chair >=1))return;
           chair= chair -1;
           p5=2;
          }
          else
          {
           if(nondet())
           {
            if(!(p5>=2))return;
            if(!(p5<=2))return;
            open=open +1;
            p5=3;
           }
           else
           {
            if(nondet())
            {
             if(!(p5 >= 3))return;
             if(!(p5 <= 3))return;
             if(!(open == 0))return;
             p5=0;
            }
             else
            {
             if(!(p1 >= 1))return;
             if(!(p1 <= 1))return;
             if(!(open >= 1))return;
             open = open-1;
             p1 = 0;
            }
           }
          }
         }
        }
       }
      }
     }
    }
   }
  }
 }
 assert(p5 >= open);
 assert(p1 <= 1);
 assert(p2 <= 1);
 assert(p3 <= 1);
 assert(p4 <= 1);
 assert(p5 <= 3);
 assert(p4 >= 0);
 assert(p3 >= 0);
 assert(p2 >= 0);
 assert(p1 >= 0);
 assert(open >= 0);
 assert(chair >= 0);
 assert(barber >= 0);
}
