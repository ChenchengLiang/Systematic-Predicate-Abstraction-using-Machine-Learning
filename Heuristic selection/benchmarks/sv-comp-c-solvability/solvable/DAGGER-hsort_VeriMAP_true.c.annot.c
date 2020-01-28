# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/DAGGER-hsort.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/DAGGER-hsort.tmp.c"
# 18 "MAP/SAFE-exbench/DAGGER-hsort.tmp.c"
int nondet(){int i; return i;}


void main()
{

 int /*@  predicates{n<2} predicates_tpl{0==0} @*/ n;
 int /*@  predicates{(!((((2*l)-n)-1)<=0)),(!(((2*l)-n)>=0)),((l-1)>=0),l<2,l>1} @*/ l;
 int /*@  predicates{(!((r-n)==0)),(((((-2)*l)+r)+1)>=0),((n-r)>=0),((r-2)>=0),r<2,r<3,r<=l,r>=l} terms_tpl{r-l} @*/ r;
 int /*@  predicates{(!((i-l)==0))} @*/ i;
 int /*@  predicates{(!(((r-j)-1)>=0)),(!((j-(2*l))==0)),(!((j-r)<=0)),(((2*i)-j)<=0),(((2*i)-j)>=0)} @*/ j;

 if(!(n >= 2))return;
 if(!(r - n == 0))return;
 if(!(i - l ==0))return;
 if(!(j - 2*l == 0))return;
 if(!(2*l - n >= 0))return;
 if(!(2*l - n - 1 <= 0))return;

 while(nondet())
 {
  if(nondet())
  {
   if(!(r -j -1 >= 0))return;
   i = j + 1;
   j = 2*j + 2;
  }
  else
  {
   if(nondet())
   {
    if(!(j -r <=0))return;
    i = j;
    j = 2*j;
   }
   else
   {
    if(nondet())
    {
     if(!(l >=2))return;
     if(!(r >=2))return;
     i = l - 1;
     j = 2 *l - 2;
     l = l - 1;
    }
    else
    {
     if(!(l <= 1))return;
     r = r - 1;
     if(!(r >=3))return;
     i = l;
     j = 2*l;
    }
   }
  }
 }
 assert(2*i - j >= 0);
 assert(2*i - j <= 0);
 assert(-2*l + r + 1 >= 0);
 assert(r - 2 >= 0);
 assert(l - 1 >= 0);
 assert(n - r >= 0);
 return;
}
