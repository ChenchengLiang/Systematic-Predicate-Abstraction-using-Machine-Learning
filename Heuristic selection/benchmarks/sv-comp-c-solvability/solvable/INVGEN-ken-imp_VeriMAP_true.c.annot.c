# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-ken-imp.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-ken-imp.tmp.c"
# 18 "MAP/SAFE-exbench/INVGEN-ken-imp.tmp.c"
void main(){
  int i;
  int /*@  predicates{j==i} predicates_tpl{0==0} @*/ j;
  int /*@  predicates{x!=0,x<=i,x>0,x>=0} @*/ x = i;
  int /*@  predicates{y!=0,y<=x,y>=x} terms_tpl{y-x} @*/ y = j;
  while(x!=0){
 x--;
 y--;
  }
  if(i==j)
 if(y != 0)ERROR: goto ERROR;
}
