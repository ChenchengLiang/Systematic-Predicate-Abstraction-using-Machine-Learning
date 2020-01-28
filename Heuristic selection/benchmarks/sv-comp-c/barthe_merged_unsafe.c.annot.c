# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
void main(){
 int n, c;
 int /*@  predicates{i<=n,i<n,i==0,i==1,i==10,i==2,i==3,i==4,i==5,i==6,i==7,i==8,i==9,i>=0} predicates_tpl{0==0} @*/ i;
 int j1, /*@  predicates{j2<=i,j2>=i} terms_tpl{j2-5*i} @*/ j2;
 int /*@  predicates{x1<=i,x1<=j2,x1>=i,x1>=j2} terms_tpl{x1-i,x1-j2} @*/ x1, /*@  predicates{x2<=i,x2<=j2,x2<=x1,x2==x1,x2>=i,x2>=j2,x2>=x1} terms_tpl{x2-i,x2-j2,x2-x1} @*/ x2;

 i = 0;
 j1 = 0;
 x1 = 0;
 j2 = c;
 x2 = 0;

 while(i < n){
  j1 = 5*i + c;

  x1 = x1 + j1;
  x2 = x2 + j2;
  assert(x1==x2);

  j2 = j2 + 5;
  if(i == 10){
    j2 = 10;
  }
  i++;
 }
}
