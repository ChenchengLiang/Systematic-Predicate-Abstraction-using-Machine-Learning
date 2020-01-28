# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
int main(){
  int /*@  predicates{i<20,i<=0,i<=20,i==20,i>=0} predicates_tpl{0==0} @*/ i = 0;
  int /*@  predicates{a!=20,a!=i,a<=0,a<=i,a<i,a>=0,a>=i,a>i} terms_tpl{a-i} @*/ a = 0;

  while(1){
    if(i == 20){
       goto LOOPEND;
    } else {
       i++;
       a++;
    }

    if(i != a){
      goto ERROR;
    }
  }

  LOOPEND:

  if(a != 20){
     goto ERROR;
  }

  return(0);
  ERROR:
  return(-1);
}
