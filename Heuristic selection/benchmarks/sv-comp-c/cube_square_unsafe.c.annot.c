# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
int g1(int n)
{
  int r=0;
  int /*@  predicates{i<=0,i<=n,i<=r,i>0,i>=0,i>=r} predicates_tpl{0==0} terms_tpl{i-r} @*/ i=n;

  while(i > 0){
    r = r + n;
    i--;
  }

  i=n;
  n=r;
  r=0;

  while(i > 0){
    r = r + n;
    i--;
  }

  return r;
}

int g2(int n)
{
  int r=0;
  int /*@  predicates{i<=n,i<=r,i>0,i>=0,i>=r} terms_tpl{i-r} @*/ i=n;

  while(i > 0){
    r = r + n;
    i--;
  }

  return r;
}

void main()
{
 int n;
 int res1=g1(n);
 int /*@  predicates{res2==res1} @*/ res2=g2(n);
 assert(res1==res2);
}
