# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 12 "/tmp/tmp.ryE8Ak88j0.c"
void main(){
 int /*@  predicates{n0<0} predicates_tpl{0==0} @*/ n0,/*@  predicates{n1<=n0,n1>=0} @*/ n1=n0,/*@  predicates{n2<=n0,n2>0,n2>=0} @*/ n2=n0;
   int /*@  predicates{m1<=n1,m1>=n1} terms_tpl{m1+n1} @*/ m1 = 0, /*@  predicates{(m1==(m2+1)),m2<=n2,m2>=n2} terms_tpl{m2+n2} @*/ m2 = 0;

   while((n1 >= 0)){
      m1++;
      n1--;
   }

   while((n2 > 0)){
      m2++;
      n2--;
   }
   assert(n0<0 || m1==m2+1);
}
