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
    int /*@  predicates{i<1000000,i<=1000000,i>=1} @*/ i,/*@  predicates{j<=i,j>=i} terms_tpl{j-i} @*/ j,/*@  predicates{((i+k)<=2),(1<=(i+k)),k<=1,k<=i,k<=j,k>=0,k>=i,k>=j} terms_tpl{k+i,k-j} @*/ k;
    i = 1;
    j = 1;
    k = __VERIFIER_nondet_int();
assume(0 <= k && k <= 1);
    while(i < 1000000){
 i = i + 1;
 j = j + k;
 k = k - 1;
 assert(1 <= i + k && i + k <= 2 && i >= 1);
    }
    return 0;
}
