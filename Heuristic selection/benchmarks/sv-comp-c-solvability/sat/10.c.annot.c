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

void main(){


 int w = 1;
 int z = 0;
 int x= 0;
 int /*@  predicates{y<=x,y>=x} predicates_tpl{0==0} terms_tpl{y-x} @*/ y=0;


         while(unknown2()){
     if(w){
  x++;
  w=!w;
     };
     if(!z){
  y++;
  z=!z;
     };
 }


 if(!(x==y))
  errorFn();

}
