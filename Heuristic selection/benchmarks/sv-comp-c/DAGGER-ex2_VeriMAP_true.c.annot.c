# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/DAGGER-ex2.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/DAGGER-ex2.tmp.c"
# 19 "MAP/SAFE-exbench/DAGGER-ex2.tmp.c"
int nondet(void);
int main(){
int /*@  predicates{x<=132} predicates_tpl{0==0} @*/ x=0;

if(nondet())x = x+1;
else x = x+22;

if(nondet())x = x+1;
else x = x+20;

if(nondet())x = x+1;
else x = x+18;

if(nondet())x = x+1;
else x = x+16;

if(nondet())x = x+1;
else x = x+14;

if(nondet())x = x+1;
else x = x+12;

if(nondet())x = x+1;
else x = x+10;

if(nondet())x = x+1;
else x = x+8;

if(nondet())x = x+1;
else x = x+6;

if(nondet())x = x+1;
else x = x+4;

if(nondet())x = x+1;
else x = x+2;

assert(x <= 132);

return 0;
}
