# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern int __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn(){ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testloop12.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testloop12.tmp.c"
# 25 "MAP/SAFE-exbench/TRACER-testloop12.tmp.c"
int /*@  predicates{x<0,x==0,x==1} predicates_tpl{0==0} @*/ x;

int sel(int z)
{
  int /*@  predicates{y==1,y==2} @*/ y;

  if(z>=0){
    y = 1;
    __VERIFIER_assert(!(x<0));
  } else {
    y = 2;
    x = 1;
  }
  return y;
}

void main()
{
  int /*@  predicates{i<10,i<=10,i>=0} @*/ i, y;

  x = 0;
  i = 0;
  while(i < 10){

    sel(y);

    i++;
  }

  return;
}
