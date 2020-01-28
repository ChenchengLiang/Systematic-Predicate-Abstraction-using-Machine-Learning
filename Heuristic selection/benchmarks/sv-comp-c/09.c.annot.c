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






void main(){
  int i,pvlen ;
  int t;
  int /*@  predicates{k<=i,k>=i} predicates_tpl{0==0} terms_tpl{k-i} @*/ k = 0;
  int /*@  predicates{n<=0} @*/ n;
  i = 0;


  while(unknown1())
    i = i + 1;
  if(i > pvlen){
    pvlen = i;
  } else {

  }
  i = 0;

  while(unknown2()){
    t = i;
    i = i + 1;
    k = k +1;
  }
  while(unknown3());

  int /*@  predicates{j<=i,j<=k,j<=n,j<n,j>=0,j>=i,j>=k} terms_tpl{j+i,j+k} @*/ j = 0;
  n = i;
  while(1){
    if(!(k >= 0))
  errorFn();
    k = k -1;
    i = i - 1;
    j = j + 1;
    if(j < n){
    } else {
      break;
    }
    }
  return 0;
}
