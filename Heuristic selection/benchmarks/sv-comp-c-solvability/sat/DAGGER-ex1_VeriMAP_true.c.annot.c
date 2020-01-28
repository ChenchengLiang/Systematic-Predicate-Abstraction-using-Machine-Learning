# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/DAGGER-ex1.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/DAGGER-ex1.tmp.c"
# 18 "MAP/SAFE-exbench/DAGGER-ex1.tmp.c"
extern int nondet();

int main(){

int x;
int /*@  predicates{y<=x,y>=x} predicates_tpl{0==0} terms_tpl{y-x} @*/ y;
int xa = 0;
int /*@  predicates{((xa+(2*ya))>=0)} @*/ ya = 0;

while(nondet()){
 x = xa + 2*ya;
 y = -2*xa + ya;

 x++;
 if(nondet())y = y+x;
 else y = y-x;

 xa = x - 2*y;
 ya = 2*x + y;
}

assert(xa + 2*ya >= 0);
return 0;
}
