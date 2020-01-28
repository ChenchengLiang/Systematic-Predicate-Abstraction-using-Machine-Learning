# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
void main(){
  int x1 = 0, /*@  predicates{x2==x1} predicates_tpl{0==0} @*/ x2 = 0;
 int c0, /*@  predicates{c1<=0,c1<=c0,c1<=x1,c1>0,c1>=x1} terms_tpl{c1+x1} @*/ c1=c0, /*@  predicates{c2<=0,c2<=c0,c2<=x2,c2>0,c2>=x2} terms_tpl{c2+x2} @*/ c2=c0;
 int t;
 int r0, /*@  predicates{r1<=r0,r1<=x1,r1>0,r1>=0,r1>=x1} terms_tpl{2*r1+x1} @*/ r1=r0, /*@  predicates{r2<=r0,r2<=x2,r2>0,r2>=0,r2>=x2} terms_tpl{2*r2+x2} @*/ r2=r0;

  if(0 < t){
      while((0 < c1)){
          x1++;
          c1--;
      }
 }

  while((r1 > 0)){
      x1+=2;
      r1--;
  }

  while((0 < c2)){
      if(0 < t){
          x2++;
      }
      c2--;
  }

  while((r2 > 0)){
      x2+=2;
      r2--;
  }

 assert(x1 == x2);
}
