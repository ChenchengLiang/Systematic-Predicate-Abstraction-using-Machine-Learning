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
  int a = 0;
  int /*@  predicates{j<=a,j>=1,j>=a} predicates_tpl{0==0} terms_tpl{j-a} @*/ j;
  int /*@  predicates{m<=0,m>=j} @*/ m;
  int __BLAST_NONDET;
  if(m<=0)
    return 0;
  for(j = 1; j <= m ; j++){
    if(unknown1())
       a++;
    else
       a--;
  }
  if(!(a>=-m))
  errorFn();
  if(!(a<=m))
  errorFn();
}
