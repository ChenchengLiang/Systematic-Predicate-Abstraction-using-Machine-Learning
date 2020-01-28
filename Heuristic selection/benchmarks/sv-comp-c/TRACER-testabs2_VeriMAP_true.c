extern int unknown();
extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/TRACER-testabs2.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testabs2.tmp.c"
# 21 "MAP/SAFE-exbench/TRACER-testabs2.tmp.c"
//int error=0;
void main(){
  int x,y,z;

  z=1;
  x=4;



  if(z>0){
    x=4;
    y=1;
  }
  else{
    x=100;
    y=2;
  }

  __VERIFIER_assert(!( x<=0 ));

}
