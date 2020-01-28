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
    int /*@  predicates{i>=0} @*/ i, /*@  predicates{n<=1000000,n>=0,n>=i,n>i} @*/ n, /*@  predicates{a<=i,a>=i} terms_tpl{a-2*i,a-i} @*/ a, /*@  predicates{((a+b)==(3*n)),b<=a,b<=i,b>=a,b>=i} terms_tpl{2*b-2*a,2*b-a,b-2*a,b-2*i,b-a,b-i} @*/ b;
    i = 0; a = 0; b = 0; n = __VERIFIER_nondet_int();
assume(n >= 0 && n <= 1000000);
    while(i < n){
        if(__VERIFIER_nondet_int()){
            a = a + 1;
            b = b + 2;
        } else {
            a = a + 2;
            b = b + 1;
        }
        i = i + 1;
    }
    assert(a + b == 3*n);
    return 0;
}
