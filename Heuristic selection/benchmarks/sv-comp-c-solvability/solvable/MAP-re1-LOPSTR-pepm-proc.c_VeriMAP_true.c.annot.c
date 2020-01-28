# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
int main(){

 int /*@  predicates{x<=0,x>0,x>=0} predicates_tpl{0==0} @*/ x=0;
 int /*@  predicates{y<=x,y>=x,y>x} terms_tpl{y-x} @*/ y=0;
 int /*@  predicates{n>=0,n>=x,n>x} @*/ n;

assume(n>=0);

 while(x < n){
    x = x + 1;
    y = y + 1;
 }

 while(x > 0){
    x = x - 1;
    y = y - 1;
 }

 if(y > x)
       goto ERROR;

 return 0;
ERROR:
 return -1;
}
