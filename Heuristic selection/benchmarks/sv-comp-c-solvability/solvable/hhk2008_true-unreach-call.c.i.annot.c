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
    int /*@  predicates{a<=1000000} @*/ a = __VERIFIER_nondet_int();
    int /*@  predicates{b<=1000000,b>=0} @*/ b = __VERIFIER_nondet_int();
    int /*@  predicates{(res==(a+b))} @*/ res, /*@  predicates{cnt<=b,cnt<=res,cnt>0,cnt>=0,cnt>=res} terms_tpl{cnt+res} @*/ cnt;
assume(a <= 1000000);
assume(0 <= b && b <= 1000000);
    res = a;
    cnt = b;
    while(cnt > 0){
 cnt = cnt - 1;
 res = res + 1;
    }
    assert(res == a + b);
    return 0;
}
