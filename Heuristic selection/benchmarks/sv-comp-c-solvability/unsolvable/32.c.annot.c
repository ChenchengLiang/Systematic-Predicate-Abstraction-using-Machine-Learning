# 1 "/tmp/tmp.iQTEZnXQj2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.iQTEZnXQj2.c"
void errorFn(){assert(0);}







void main(){
  int /*@  predicates{k==100} predicates_tpl{0==0} @*/ k = 100;
  int b;
  int i;
  int /*@  predicates{j<=i,j>=i} terms_tpl{j-i} @*/ j;
  int /*@  predicates{(n<(2*k)),n<=(2*k),n<=i,n<=j,n>=0,n>=i,n>=j} terms_tpl{n-i,n-j} @*/ n;
  i = j;
  for(n = 0 ; n < 2*k ; n++){
    if(b){
      i++;
    } else {
      j++;
    }
    b = !b;
  }
  if(!(i == j))
  errorFn();
}
