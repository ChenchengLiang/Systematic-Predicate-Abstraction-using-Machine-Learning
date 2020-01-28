# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-rajamani_1.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-rajamani_1.tmp.c"
# 19 "MAP/SAFE-exbench/INVGEN-rajamani_1.tmp.c"
int /*@  predicates{__BLAST_NONDET!=0,__BLAST_NONDET==0} predicates_tpl{0==0} @*/ __BLAST_NONDET;

int main(){
  int x=0;
  int /*@  predicates{y<=x,y>2,y>=x} terms_tpl{y-100*x,y-x} @*/ y=0;
  int /*@  predicates{z<=x,z<=y,z>=x,z>=y} terms_tpl{100*z-10*y,z-10*x,z-10*y} @*/ z=0;
  int /*@  predicates{w<=x,w<=y,w<=z,w>=x,w>=y,w>=z} terms_tpl{10*w-z,100*w-y,w-x,w-y} @*/ w=0;

  while(__BLAST_NONDET){
    if(__BLAST_NONDET){
      x++; y = y+100;
    } else if(__BLAST_NONDET){
      if(x >= 4)
 { x=x+1; y=y+1;}
    } else if(y >10*w)
      if(z>=100*x)
      y = -y;
    w=w+1;
    z=z+10;
  }
  if(x >=4)
    assert(y>2);
}
