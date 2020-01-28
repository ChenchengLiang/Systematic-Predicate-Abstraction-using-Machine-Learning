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






int main()
{
 int k; int /*@  predicates{flag==1} predicates_tpl{0==0} @*/ flag;
  int /*@  predicates{i<=k,i>=0} @*/ i=0;
  int /*@  predicates{j<=i,j>=i} terms_tpl{j-i} @*/ j=0;
  int /*@  predicates{n==1,n==2} @*/ n;
  int __BLAST_NONDET;


  if(flag == 1){
     n=1;
  } else {
     n=2;
  }

  i=0;

  while(i <= k){
    i++;
    j= j +n;
  }
  if(flag == 1)
      if(!(j == i))
  errorFn();

}
