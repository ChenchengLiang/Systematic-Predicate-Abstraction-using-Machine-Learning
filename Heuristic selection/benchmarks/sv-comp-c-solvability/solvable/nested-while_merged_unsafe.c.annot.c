# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
void main(){
 int x0,/*@  predicates{x1<=x0,x1>=x0} @*/ x1=x0,/*@  predicates{x2<=x0,x2>=x0} @*/ x2=x0,g0, /*@  predicates{g1<=x1,g1>=x1} predicates_tpl{0==0} terms_tpl{2*g1+2*x1,2*g1-x1,g1+x1,g1-2*x1} @*/ g1=g0, /*@  predicates{g2<=x2,g2==g1,g2>=x2} terms_tpl{g2+2*x2,g2-2*x2} @*/ g2=g0;
  int /*@  predicates{i1<=0,i1<=g1,i1<=x1,i1<x1,i1>=0,i1>=g1,i1>=x1,i1>x1} terms_tpl{2*i1+g1,2*i1-x1,i1+x1,i1-g1} @*/ i1 = 0, /*@  predicates{i2<=0,i2<=g2,i2<=x2,i2<x2,i2>=0,i2>=g2,i2>=x2,i2>x2} terms_tpl{2*i2+g2,2*i2-g2,i2-x2} @*/ i2 = 0;
  while((i1 < x1)){
    i1 = i1 + 1;
    g1 = g1 - 2;
    g1 = g1 + 1;
    while((x1 < i1)){
      x1 = x1 + 2;
      x1 = x1 - 1;
      g1 = g1 + 1;
    }
  }


  while((i2 < x2)){
    i2 = i2 + 1;
    g2 = g2 - 2;
    while((x2 < i2)){
      x2 = x2 + 1;
      g2 = g2 + 2;
    }
  }

 assert(g1==g2);
}
