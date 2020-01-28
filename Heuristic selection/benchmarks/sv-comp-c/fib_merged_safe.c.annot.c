# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 10 "/tmp/tmp.ryE8Ak88j0.c"
void main(){
 int /*@  predicates{n>0,n>=0} predicates_tpl{0==0} @*/ n;
  int f1 = 0;
  int f2 = 1;
  int g1 = 1, g2 = 1;
  int h1 = 0, /*@  predicates{(h2==(h1+f1))} @*/ h2 = 0;

  while((n > 0)){
    h1 = f1 + g1;
    f1 = g1;
    g1 = h1;
    n --;

    h2 = f2 + g2;
    f2 = g2;
    g2 = h2;

 assert(h2==h1+f1);
  }
}
