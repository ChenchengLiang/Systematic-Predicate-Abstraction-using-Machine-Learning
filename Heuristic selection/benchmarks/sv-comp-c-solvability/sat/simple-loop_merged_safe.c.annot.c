# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
int f1(int z){
  int /*@  predicates{i<=10,i>=0} predicates_tpl{0==0} @*/ i = 0;

  while(i <= 10){
    i++;
  }
  return i;
}

int f2(int z){
  int /*@  predicates{i<=10,i>=1} @*/ i = 1;

  while(i <= 10){
    i++;
  }
  return i;
}

void main()
{
 int z;
 int res1=f1(z);
 int /*@  predicates{res2==res1} @*/ res2=f2(z);
 assert(res1==res2);
}
