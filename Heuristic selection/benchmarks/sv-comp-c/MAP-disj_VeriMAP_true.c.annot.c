# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
void main(){
   int /*@  predicates{x<100,x<50,x<=100,x<=50,x>=0} predicates_tpl{0==0} @*/ x, /*@  predicates{((y>100)||(y<100)),y<100,y<=x,y>100,y>=x} terms_tpl{y-x} @*/ y;

   x = 0;
   y = 50;

  while(x < 100){
    if(x < 50){
      x = x+1;
    } else {
      x = x+1;
      y = y+1;
    }
  }

  if(y > 100 || y < 100)
    goto ERROR;

  return;

ERROR:;

}
