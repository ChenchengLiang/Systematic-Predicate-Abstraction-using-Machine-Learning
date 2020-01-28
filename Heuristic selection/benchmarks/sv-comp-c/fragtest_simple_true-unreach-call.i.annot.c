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
int main(){
  int /*@  predicates{i<=1000000,i>=0} @*/ i,pvlen ;
  int tmp___1 ;
  int /*@  predicates{k<=i,k>=0,k>=i} terms_tpl{k-i} @*/ k = 0;
  int /*@  predicates{n<=0} @*/ n;
  i = 0;
  pvlen = __VERIFIER_nondet_int();
  while(__VERIFIER_nondet_int()&& i <= 1000000){
    i = i + 1;
  }
  if(i > pvlen){
    pvlen = i;
  }
  i = 0;
  while(__VERIFIER_nondet_int()&& i <= 1000000){
    tmp___1 = i;
    i = i + 1;
    k = k + 1;
  }
  int /*@  predicates{j<=i,j<=k,j>=0,j>=i,j>=k,j>=n} terms_tpl{j+i,j+k} @*/ j = 0;
  n = i;
  while(1){
    assert(k >= 0);
    k = k -1;
    i = i - 1;
    j = j + 1;
    if(j >= n){
      break;
    }
  }
  return 0;
}
