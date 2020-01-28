# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/DAGGER-bkley.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/DAGGER-bkley.tmp.c"
# 18 "MAP/SAFE-exbench/DAGGER-bkley.tmp.c"
int nondet(){int i; return i;}


void main()
{

 int /*@  predicates{invalid<1} predicates_tpl{0==0} @*/ invalid;
 int /*@  predicates{unowned!=0,unowned<=invalid,unowned>=0,unowned>=invalid} terms_tpl{unowned+invalid} @*/ unowned;
 int /*@  predicates{(!((nonexclusive+unowned)>=1)),nonexclusive!=0,nonexclusive<=invalid,nonexclusive<=unowned,nonexclusive>=invalid,nonexclusive>=unowned} terms_tpl{nonexclusive-invalid,nonexclusive-unowned} @*/ nonexclusive;
 int /*@  predicates{((((invalid+unowned)+exclusive)+nonexclusive)>=1),exclusive!=0,exclusive<=invalid,exclusive<=nonexclusive,exclusive<=unowned,exclusive>=0,exclusive>=invalid,exclusive>=nonexclusive,exclusive>=unowned} terms_tpl{exclusive+invalid,exclusive-nonexclusive,exclusive-unowned} @*/ exclusive;

 if(!(exclusive==0))return;
 if(!(nonexclusive==0))return;
 if(!(unowned==0))return;
 if(!(invalid>= 1))return;

 while(nondet())
 {
  if(nondet())
  {
   if(!(invalid >= 1))return;
   nonexclusive=nonexclusive+exclusive;
   exclusive=0;
   invalid=invalid-1;
   unowned=unowned+1;
  }
  else
  {
   if(nondet())
   {
    if(!(nonexclusive + unowned >=1))return;
    invalid=invalid + unowned + nonexclusive-1;
    exclusive=exclusive+1;
    unowned=0;
    nonexclusive=0;
   }
   else
   {
    if(!(invalid >= 1))return;
    unowned=0;
    nonexclusive=0;
    exclusive=1;
    invalid=invalid+unowned+exclusive+nonexclusive-1;
   }
  }
 }

 assert(exclusive >= 0);
 assert(unowned >= 0);
 assert(invalid + unowned + exclusive + nonexclusive >= 1);
}
