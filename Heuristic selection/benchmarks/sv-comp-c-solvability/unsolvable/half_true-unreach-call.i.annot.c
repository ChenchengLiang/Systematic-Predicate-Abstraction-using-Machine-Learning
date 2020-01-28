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
    int /*@  predicates{i>=0} @*/ i = 0;
    int /*@  predicates{n<=i,n>=i} terms_tpl{n-i} @*/ n = 0;
    int /*@  predicates{(i<(2*k)),(k>=(-1000000)),i<=(2*k),k!=n,k<0,k<=1000000,k==n} @*/ k = __VERIFIER_nondet_int();
assume(k <= 1000000 && k >= -1000000);
    for(i = 0; i < 2*k; i++){
 if(i % 2 == 0){
     n ++;
 }
    }
    assert(k < 0 || n == k);
    return 0;
}
