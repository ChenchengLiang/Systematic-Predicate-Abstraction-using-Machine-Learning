# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/DAGGER-fig1a.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/DAGGER-fig1a.tmp.c"
# 19 "MAP/SAFE-exbench/DAGGER-fig1a.tmp.c"
extern int nondet();
void main(){

int /*@  predicates{((x>0)||(x<0)),x<=0,x>=0} predicates_tpl{0==0} @*/ x,/*@  predicates{y<=0,y<=x,y>=0,y>=x} terms_tpl{y-x} @*/ y;

x=0;
y=0;

while(nondet()){
x++;
y++;
}

while(x > 0 || x < 0){
x--;
y--;
}

assert(y >= 0 && y <= 0);

}
