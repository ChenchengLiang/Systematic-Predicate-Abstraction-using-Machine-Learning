# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
int main(){

 int /*@  predicates{i<=0,i>0,i>=0} predicates_tpl{0==0} @*/ i=0;
 int /*@  predicates{k<=i,k>=i} terms_tpl{k-2*i,k-i} @*/ k=0;
 int /*@  predicates{n>=0,n>=i,n>i,n>k} @*/ n;

assume(n>=0);

 while(i < n){
    i = i + 1;
    k = k + 2;
 }

 while(i > 0){
    i = i - 1;
    k = k - 1;
 }

 if(k < n)
       goto ERROR;

 return 0;
ERROR:
 return -1;
}
