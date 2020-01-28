# 1 "/tmp/tmp.iQTEZnXQj2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.iQTEZnXQj2.c"
void errorFn(){assert(0);}

int unknown1();
int unknown2();
int unknown3();
int unknown4();





int main(){
 int /*@  predicates{flag==0} predicates_tpl{0==0} @*/ flag; int a;
   int /*@  predicates{b<100,b<=100,b>=0} @*/ b;
   int /*@  predicates{j<=b,j>=b} terms_tpl{j-b} @*/ j = 0;

   for(b=0; b < 100 ; ++b){
      if(flag)
         j = j +1;
   }


   if(flag)
      if(!(j==100))
  errorFn();
}
