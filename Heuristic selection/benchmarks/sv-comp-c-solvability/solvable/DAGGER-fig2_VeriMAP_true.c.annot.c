# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/DAGGER-fig2.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/DAGGER-fig2.tmp.c"
# 19 "MAP/SAFE-exbench/DAGGER-fig2.tmp.c"
extern int nondet();
void __VERIFIER_assert(int /*@  predicates{cond!=0} predicates_tpl{0==0} @*/ cond)
{
 if(!cond)
 {
  ERROR: goto ERROR;
 }
}

void main(){
 int x, /*@  predicates{((3*x)>=y),y<=x,y>=x} terms_tpl{y-2*x,y-3*x} @*/ y, /*@  predicates{z<=x,z<=y,z>=x,z>=y} terms_tpl{2*z-10*y,3*z-10*y,z-10*x} @*/ z, /*@  predicates{w<=x,w<=y,w<=z,w>=x,w>=y,w>=z} terms_tpl{10*w-10*z,2*w-10*y,3*w-10*y,w-10*x} @*/ w;
 x=y=z=w=0;

 while(nondet()){
  if(nondet()){x++; y = y+2;}
  else if(nondet()){
    if(x >= 4){x++; y = y+3; z = z+10; w = w+10;}
  }
  else if(x >= z && w > y){x = -x; y = -y; }
 }

 assert(3*x >= y);
}
