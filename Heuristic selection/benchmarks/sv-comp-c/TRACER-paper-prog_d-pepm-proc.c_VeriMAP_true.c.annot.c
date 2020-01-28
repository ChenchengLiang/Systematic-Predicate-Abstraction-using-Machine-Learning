# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern int __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn(){ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
int main(){
int /*@  predicates{y>=0} predicates_tpl{0==0} @*/ y;
int /*@  predicates{((y+x)<10000),x<10000,x<=10000,x<=y,x>=0,x>=y} terms_tpl{x-y} @*/ x=0;

assume(y>=0);

 while(x < 10000){
  y = y + 1;
  x = x + 1;
 }

 if(y + x < 10000)
  goto ERROR;

 return 0;
ERROR:
 return -1;
}
