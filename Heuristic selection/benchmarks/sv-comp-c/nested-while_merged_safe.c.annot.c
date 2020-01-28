# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
void main(){
 int /*@  predicates{x0<=0,x0>0} predicates_tpl{0==0} @*/ x0,/*@  predicates{x1<=x0,x1>=x0} @*/ x1=x0,/*@  predicates{x2<=x0,x2==x1,x2>=x0} @*/ x2=x0;
 int g0,/*@  predicates{(g1==(g0-x0)),g1<=x1,g1==g0,g1>=x1} terms_tpl{2*g1+2*x1,2*g1-x1,g1+x1,g1-2*x1} @*/ g1=g0, /*@  predicates{(g2==(g0-x0)),g2<=x2,g2==g0,g2>=x2} terms_tpl{g2+x2,g2-x2} @*/ g2=g0;
    int /*@  predicates{i1<=0,i1<=g1,i1<=x1,i1<x1,i1>=0,i1>=g1,i1>=x1,i1>x1} terms_tpl{2*i1+g1,2*i1-x1,i1+x1,i1-g1} @*/ i1 = 0, /*@  predicates{i2<=0,i2<=g2,i2<=x2,i2<x2,i2>=0,i2>=g2,i2>=x2,i2>x2} terms_tpl{i2+g2,i2-g2,i2-x2} @*/ i2 = 0;

    while(i1 < x1){
        i1 = i1 + 1;
        g1 = g1 - 2;
        g1 = g1 + 1;

  assert(x1>=i1);
        while(x1 < i1){
            x1 = x1 + 2;
            x1 = x1 - 1;
            g1 = g1 + 1;
        }
    }

 assert((x0<=0 && g1==g0)||(x0>0 && g1==g0-x0));

    while(i2 < x2){
        i2 = i2 + 1;
        g2 = g2 - 1;
        while(x2 < i2){
            x2 = x2 + 1;
            g2 = g2 + 1;
        }
    }

 assert((x0<=0 && g2==g0)||(x0>0 && g2==g0-x0));
 assert(x1==x2);

}
