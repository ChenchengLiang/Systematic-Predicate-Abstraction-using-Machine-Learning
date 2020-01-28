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

void main()
{


 int w = 1;
 int /*@  predicates{z<=w,z>=w} predicates_tpl{0==0} terms_tpl{z-w} @*/ z = 0;
 int /*@  predicates{x<=w,x<=z,x>=w,x>=z} terms_tpl{x-w,x-z} @*/ x= 0;
 int /*@  predicates{y<=w,y<=x,y<=z,y>=w,y>=x,y>=z} terms_tpl{y-w,y-x,y-z} @*/ y=0;


         while(unknown2()){
     if(w%2 == 1){x++; w++;};
     if(z%2==0){y++; z++;};
 }


 if(!(x<=1))
  errorFn();
}
