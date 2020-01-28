# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
extern int __VERIFIER_nondet_int();
int main(){

 int x=0;
 int /*@  predicates{((3*x)<y),y<=x,y>=x} predicates_tpl{0==0} terms_tpl{y-2*x,y-3*x} @*/ y=0;

 while(__VERIFIER_nondet_int()){
  if(__VERIFIER_nondet_int()){
   x = x+1;
   y = y+2;
  } else if(__VERIFIER_nondet_int()){
   if(x >= 4){
       x = x+1;
       y = y+3;
   }
  }
 }

    if(3*x < y)
  goto ERROR;

 return 0;
ERROR:
 return -1;
}
