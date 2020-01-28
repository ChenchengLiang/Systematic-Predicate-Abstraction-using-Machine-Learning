# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
void main(){
 int n;
  int  i1 = 0;
  int /*@   terms_tpl{j1-i1} @*/ j1 = 0;
 int i2 = n;
  int /*@   terms_tpl{j2+i2} @*/ j2 = 0;

  while((i1 <= n)){
    i1++;
    j1++;
 assert(i1==j1);
  }

  while((i2 >= 0)){
    i2 = i2 - 1;
    j2++;
 assert(i2+j2==n);
  }

 assert(j1==j2);
}
