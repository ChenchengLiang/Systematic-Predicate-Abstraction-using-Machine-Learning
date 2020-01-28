# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
void main(){
 int /*@  predicates{t<=0,t>0} @*/ t,/*@  predicates{c0<=0,c0>0} predicates_tpl{0==0} @*/ c0,/*@  predicates{c1<=0,c1<=c0,c1>0} @*/ c1=c0,/*@  predicates{c2<=0,c2<=c0,c2>0} @*/ c2=c0;
  int /*@  predicates{(x1==(-c0)),x1<=c1,x1==c0,x1>=c1} terms_tpl{x1+c1,x1-c1} @*/ x1 = 0;
    int /*@  predicates{(x2==(-c0)),x2<=c2,x2==c0,x2==x1,x2>=c2} terms_tpl{x2+c2,x2-c2} @*/ x2 = 0;

  if(0 < t){
      while((0 < c1)){
          x1++;
          c1--;
      }
 assert(c0 <=0 || x1==c0);
  } else {
      while((0 < c1)){
          x1--;
          c1--;
      }
 assert(c0 <= 0 || x1==-c0);
  }

    while((0 < c2)){
        if(0 < t){
            x2++;
        } else {
            x2--;
        }
        c2 = c2 - 1;
    }
 assert(c0 <=0 ||(c0>0 && t>0 && x2==c0)||(c0>0 && t<=0 && x2==-c0));
 assert(x1==x2);
}
