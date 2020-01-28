# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
int /*@  predicates{x>=0} predicates_tpl{0==0} @*/ x = 0;
int /*@  predicates{y>=x} @*/ y = 0;
int /*@  predicates{n>=x,n>x} @*/ n;

void incr(int z)
{
  y = y + z;
}

void main(){

  while(x < n){
    x = x + 1;
    incr(x);
  }

  assert(x<=y);

}
