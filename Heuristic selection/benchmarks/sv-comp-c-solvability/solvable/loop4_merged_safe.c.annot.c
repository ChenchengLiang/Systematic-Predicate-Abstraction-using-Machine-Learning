# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"




void main(){
  int n;
  int i1 = 0, /*@  predicates{i2<=i1,i2>=i1} predicates_tpl{0==0} terms_tpl{i2-i1} @*/ i2 = 0;
  int /*@  predicates{j1<=i1,j1<=i2,j1>=i1,j1>=i2} terms_tpl{j1-i1,j1-i2} @*/ j1 = 0, /*@  predicates{j2<=i1,j2<=i2,j2<=j1,j2==j1,j2>=i1,j2>=i2,j2>=j1} terms_tpl{j2-2*i1,j2-2*i2,j2-2*j1} @*/ j2 = 0;

  while(1){
    if(i1 < n + n){
      j1++;
      i1++;
    }

    if(i2 < n){
      j2 = j2 + 2;
      i2++;
    }
  }
  assert(j1==j2);
}
