# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
void main(){
  int n;
  int r1=0;
  int /*@  predicates{i1<=n,i1<=r1,i1>0,i1>=0,i1>=r1} predicates_tpl{0==0} terms_tpl{i1-r1} @*/ i1=n;

  while(i1 > 0){
    r1 = r1 + n;
    i1--;
  }

  r1=0;
  int /*@  predicates{r2<=i1,r2<=r1,r2==r1,r2>=i1,r2>=r1} terms_tpl{r2-i1,r2-r1} @*/ r2=0;
  i1=n;
  int /*@  predicates{i2<=i1,i2<=r1,i2<=r2,i2>=i1,i2>=r1,i2>=r2} terms_tpl{i2-i1,i2-r1,i2-r2} @*/ i2=n;

  while(1){
 if(i1 > 0){
       r1 = r1 + n;
       i1--;
    }
    if(i2 > 0){
       r2 = r2 + n;
       i2--;
    }
    assert(r1 == r2);
  }
}
