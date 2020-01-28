# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
void main(){
 int n;
    int x1 = 0;
    int /*@  predicates{x2<=x1,x2>=x1} predicates_tpl{0==0} terms_tpl{x2-x1} @*/ x2 = 0;

    int /*@  predicates{(x2==(x1+i1)),i1<=n,i1<=x1,i1<=x2,i1>=0,i1>=x1,i1>=x2} terms_tpl{i1-x1,i1-x2} @*/ i1 = 0;
    int /*@  predicates{((i1>n)&&(i2>n)),i1>=n,i2<=i1,i2<=n,i2<=x1,i2<=x2,i2>=1,i2>=i1,i2>=n,i2>=x1,i2>=x2} terms_tpl{i2-i1,i2-x1,i2-x2} @*/ i2 = 1;
 while(1)
 {
     if(i1 <= n){
         x1 = x1 + i1;
         i1++;
     }

  if(i2 <= n){
         x2 = x2 + i2;
         i2++;
  }

  if(i1>n && i2>n)break;
  assert(x2==x1+i1);
    }
}
