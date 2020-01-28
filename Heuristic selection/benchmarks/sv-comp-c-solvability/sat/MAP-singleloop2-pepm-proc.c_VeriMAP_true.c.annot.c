# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
int main(){
int /*@  predicates{x>=0} predicates_tpl{0==0} @*/ x=0;
int /*@  predicates{y<=x,y>=x,y>x} terms_tpl{y+x,y-2*x} @*/ y=0;
int /*@  predicates{(x<(2*n)),n>=1,x<=(2*n)} @*/ n;

assume(n>=1);

 while(x < 2*n){
    x = x + 1;

    if(x > n)
    y = y - 1;
    else
    y = y + 2;
 }

 if(x < y)
  goto ERROR;

 return 0;
ERROR:
 return -1;
}
