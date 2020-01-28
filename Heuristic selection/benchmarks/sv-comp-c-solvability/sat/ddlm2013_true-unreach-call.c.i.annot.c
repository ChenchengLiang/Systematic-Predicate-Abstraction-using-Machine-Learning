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
    unsigned int i,/*@  predicates{j<=i,j>=i} terms_tpl{2*j-2*i,2*j-i} @*/ j,/*@  predicates{a<=i,a<=j,a>=i,a>=j} terms_tpl{2*a-i,2*a-j,a-j} @*/ a,/*@  predicates{b<=a,b<=i,b<=j,b==a,b>=a,b>=i,b>=j} terms_tpl{b-a,b-i,b-j} @*/ b;
    int /*@  predicates{flag!=0,flag==0} @*/ flag = __VERIFIER_nondet_int();
    a = 0;
    b = 0;
    j = 1;
    if(flag){
        i = 0;
    } else {
        i = 1;
    }
    while(__VERIFIER_nondet_int()){
        a++;
        b +=(j - i);
        i += 2;
        if(i%2 == 0){
            j += 2;
        } else {
            j++;
        }
    }
    if(flag){
        assert(a == b);
    }
    return 0;
}
