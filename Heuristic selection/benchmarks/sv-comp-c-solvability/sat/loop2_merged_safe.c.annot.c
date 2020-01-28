# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
void main(){
 int n;
    int /*@  predicates{i1<=n,i1>=1} predicates_tpl{0==0} @*/ i1 = 1;
    int /*@  predicates{(j1==(2*i1)),j1<=i1,j1>=i1} terms_tpl{j1-2*i1} @*/ j1 = 0;

    int /*@  predicates{i2<=n,i2<n,i2>=0} @*/ i2 = 0;
    int /*@  predicates{(j2==(2*i2)),j2<=i2,j2==j1,j2>=i2} terms_tpl{j2-2*i2} @*/ j2 = 0;

    while(i1 <= n){
        j1 = j1 + 2;
  assert(j1==2*i1);
        i1++;
    }
    while(i2 < n){
        j2 = j2 + 2;
        i2++;
  assert(j2==2*i2);
    }

 assert(j1==j2);
}
