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
    int lo, /*@  predicates{mid<=1000000,mid<=lo,mid>0,mid>=0,mid>=lo} terms_tpl{mid+lo} @*/ mid, /*@  predicates{hi<=lo,hi<=mid,hi==lo,hi>=lo,hi>=mid} terms_tpl{hi+lo,hi-mid} @*/ hi;
    lo = 0;
    mid = __VERIFIER_nondet_int();
assume(mid > 0 && mid <= 1000000);
    hi = 2*mid;
    while(mid > 0){
        lo = lo + 1;
        hi = hi - 1;
        mid = mid - 1;
    }
    assert(lo == hi);
    return 0;
}
