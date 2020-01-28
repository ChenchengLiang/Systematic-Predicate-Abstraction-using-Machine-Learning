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






void main(){
 int x = 0, /*@  predicates{y<=x,y>=x} predicates_tpl{0==0} terms_tpl{y+x,y-100*x,y-x} @*/ y = 0;
 while(unknown1()){
   if(unknown2()){
      x++;
      y+=100;
   }
   else if(unknown3()){
      if(x >= 4){
          x++;
          y++;
      }
      if(x < 0){
          y--;
      }
   }

 }
 if(!(x < 4 || y > 2))
  errorFn();
}
