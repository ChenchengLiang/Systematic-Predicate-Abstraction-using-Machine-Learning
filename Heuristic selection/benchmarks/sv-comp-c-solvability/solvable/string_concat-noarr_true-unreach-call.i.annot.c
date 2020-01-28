# 1 "/tmp/tmp.BYaIDD6M8g.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.BYaIDD6M8g.c"
extern void __VERIFIER_error(void);
extern void __VERIFIER_assume(int);
void __VERIFIER_assert(int /*@  predicates{cond!=0} predicates_tpl{0==0} @*/ cond){
  if(!(cond)){
    ERROR: __VERIFIER_error();
  }
  return;
}
int __VERIFIER_nondet_int();
int main(void){
  int /*@  predicates{i<200,i<=1000000,i>=0} @*/ i, /*@  predicates{j<=i,j>=100,j>=i} terms_tpl{j-i} @*/ j;
 L0:
  i = 0;
 L1:
  while(__VERIFIER_nondet_int()&& i < 1000000){
    i++;
  }
  if(i >= 100)STUCK: goto STUCK;
  j = 0;
 L2:
  while(__VERIFIER_nondet_int()&& i < 1000000){
    i++;
    j++;
  }
  if(j >= 100)goto STUCK;
  assert(i < 200);
  return 0;
}
