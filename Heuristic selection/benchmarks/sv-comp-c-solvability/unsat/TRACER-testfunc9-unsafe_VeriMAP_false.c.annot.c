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


int foo(){
  int /*@  predicates{result==0,result==15,result==20,result==5} predicates_tpl{0==0} @*/ result;
 int /*@  predicates{res!=0,res!=15,res!=5,res==0,res==15,res==5} @*/ res=unknown();

  if(res==0)
    {

      result= 0;

 }
 else if(res==5)
 {

      result = 5;

 }
 else if(res==15)
 {

      result = 15;

 }
 else
 {

      result = 20;
    }

  return result;
}

void main(){

  int /*@  predicates{result==0,result==15,result==20,result==5} @*/ result;

  result = foo();

  __VERIFIER_assert(!(result==15));

  return;
}
