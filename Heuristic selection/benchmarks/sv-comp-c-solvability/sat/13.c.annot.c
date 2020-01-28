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
 int /*@  predicates{flag==0} predicates_tpl{0==0} @*/ flag;
   int j = 2;
   int /*@  predicates{k<=j,k>=j} terms_tpl{2*k-j,4*k-j} @*/ k = 0;

   while(unknown1()){
     if(flag)
       j = j + 4;
     else {
       j = j + 2;
       k = k + 1;
     }
   }
   if(k!=0)
     if(!(j==2*k+2))
  errorFn();
}
