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

  int /*@  predicates{i<1000,i<=1000,i>=0} @*/ i, /*@  predicates{c<=i,c>=i} predicates_tpl{0==0} terms_tpl{c-i} @*/ c;
  i = 0;
  c = 0;
  while(i < 1000){
    c = c + i;
    i = i + 1;
  }

  if(!(c>=0))
  errorFn();
}
