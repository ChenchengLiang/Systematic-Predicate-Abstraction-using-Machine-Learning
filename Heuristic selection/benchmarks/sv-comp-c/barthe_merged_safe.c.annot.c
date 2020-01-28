# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
extern int __mark(int);
void main(){
 int n, c;

    int /*@  predicates{i<=n,i<n,i>=0} predicates_tpl{0==0} @*/ i = 0;
    int j1 = 0;
    int /*@  predicates{x1<=i,x1>=i} terms_tpl{x1-i} @*/ x1 = 0;
    int /*@  predicates{j2<=i,j2<=x1,j2==j1,j2>=i,j2>=x1} terms_tpl{j2-5*i,j2-x1} @*/ j2 = c;
    int /*@  predicates{x2<=i,x2<=j2,x2<=x1,x2==x1,x2>=i,x2>=j2,x2>=x1} terms_tpl{x2-i,x2-j2,x2-x1} @*/ x2 = 0;

    while((i < n)){

        j1 = 5 * i + c;
  assert(j1 == j2);

        x1 = x1 + j1;
        x2 = x2 + j2;
  assert(x1 == x2);

        j2 = j2 + 5;
        i++;
    }
}
