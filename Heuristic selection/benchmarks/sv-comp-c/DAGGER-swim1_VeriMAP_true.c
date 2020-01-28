# 1 "MAP/SAFE-exbench/DAGGER-swim1.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/DAGGER-swim1.tmp.c"
# 18 "MAP/SAFE-exbench/DAGGER-swim1.tmp.c"
int nondet() {int i; return i;}


void main()
{
 int x1;
 int x2;
 int x3;
 int x4;
 int x5;
 int x6;
 int x7;
 int p;
 int q;

 x1=0;
 x2=0;
 x3=0;
 x4=0;
 x5=0;
 if (! (x6==p)) return;
 if (! (x7==q)) return;
 if (! (p >=1)) return;
 if (! (q >=1)) return;

 while (nondet())
 {
  if (nondet())
  {
   if (! (x6 >=1)) return;
   x1 = x1 + 1;
   x6 = x6 - 1;
  }
  else
  {
   if (nondet())
   {
    if (! (x1 >=1)) return;
    if (! (x7 >=1)) return;
    x1 = x1-1;
    x2 = x2+1;
    x7 = x7-1;
   }
   else
   {
    if (nondet())
    {
     if (! (x2 >=1)) return;

     x2 = x2-1;
     x3 = x3+1;
     x6 = x6+1;
    }
    else
    {
     if (nondet())
     {
      if (! (x3>=1)) return;
      if (! (x6>=1)) return;

      x3 = x3-1;
      x4 = x4+1;
      x6 = x6-1;
     }
     else
     {
      if (nondet())
      {
       if (! (x4>=1)) return;
       x4 = x4-1;
       x5 = x5+1;
       x7 = x7+1;
      }
      else
      {
       if (! (x5>=1)) return;

       x5 = x5-1;
       x6 = x6+1;
      }
     }
    }
   }
  }
 }
 __VERIFIER_assert( x2 + x3 + x4 + x7 == q );
 __VERIFIER_assert( x2 + x3 + x4 + x7 >= q );
 __VERIFIER_assert( x1 + x2 + x4 + x5 + x6 >= p );
 __VERIFIER_assert( x1 + x2 + x4 + x5 + x6 <= p );
 __VERIFIER_assert( x7 >= 0 );
 __VERIFIER_assert( x6 >= 0 );
 __VERIFIER_assert( x5 >= 0 );
 __VERIFIER_assert( x4 >= 0 );
 __VERIFIER_assert( x3 >= 0 );
 __VERIFIER_assert( x2 >= 0 );
 __VERIFIER_assert( x1 >= 0 );
 __VERIFIER_assert( x2 + x3 + x4 + x7 >= 1 );
 __VERIFIER_assert( x1 + x2 + x4 + x5 + x6 >= 1 );
 __VERIFIER_assert( x1 + x2 + x4 + x6 + x7 >= 1 );
}
