# 1 "/tmp/tmp.iQTEZnXQj2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.iQTEZnXQj2.c"
void errorFn(){assert(0);}

int unknown1();
int unknown2();

void main(int /*@  predicates{flag==0} predicates_tpl{0==0} @*/ flag)
{
   int i, /*@  predicates{j<=i,j>=i} terms_tpl{2*j-i} @*/ j, k;
   j = 1;
   if(flag){i=0;}
   else {i=1;}


   while(unknown1()){
      i+=2;
      if(i%2 == 0){
 j+=2;
      }
      else j++;
   }

   int a = 0;
   int /*@  predicates{b<=a,b>=a} terms_tpl{b-a} @*/ b=0;

   while(unknown2()){
      a++;
      b+=(j-i);
   }
   if(flag)
     if(!(a==b))
  errorFn();
}
