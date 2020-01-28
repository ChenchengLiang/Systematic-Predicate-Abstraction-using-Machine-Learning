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






int main(){
  int i; int j;
  int /*@  predicates{x!=0,x<=i,x>0,x>=0} predicates_tpl{0==0} @*/ x = i;
  int /*@  predicates{y<=x,y>=x} terms_tpl{y-x} @*/ y = j;

  while(x!=0){
 x--;
 y--;
  }
  if(i==j)
 if(!(y==0))
  errorFn();
}
