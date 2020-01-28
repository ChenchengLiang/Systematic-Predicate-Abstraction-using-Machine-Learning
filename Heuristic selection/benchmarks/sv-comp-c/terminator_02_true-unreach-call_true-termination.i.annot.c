# 1 "/tmp/tmp.BYaIDD6M8g.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.BYaIDD6M8g.c"
extern void __VERIFIER_error();
extern void __VERIFIER_assume(int);
void __VERIFIER_assert(int /*@  predicates{cond!=0} predicates_tpl{0==0} @*/ cond){
  if(!(cond)){
    ERROR: __VERIFIER_error();
  }
  return;
}
int __VERIFIER_nondet_int();
int __VERIFIER_nondet_bool();
int main()
{
    int /*@  predicates{(x>(-100)),x<100,x>=100} @*/ x=__VERIFIER_nondet_int();
    int y=__VERIFIER_nondet_int();
    int /*@  predicates{((x<100)&&(z>100)),(z>(-100)),x<=100,z<100,z<=100,z<=x,z>=x} terms_tpl{z+x,z-x} @*/ z=__VERIFIER_nondet_int();
assume(x<100);
assume(x>-100);
assume(z<100);
assume(z>-100);
    while(x<100 && 100<z)
    {
        int tmp=__VERIFIER_nondet_bool();
        if(tmp){
            x++;
        } else {
            x--;
            z--;
        }
    }
    assert(x>=100 || z<=100);
    return 0;
}
