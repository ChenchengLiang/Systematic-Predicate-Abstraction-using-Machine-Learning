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
    int /*@  predicates{i>=0} @*/ i, /*@  predicates{j!=i,j==i,j>=0} @*/ j;
    i = __VERIFIER_nondet_int();
    j = __VERIFIER_nondet_int();
assume(i >= 0 && j >= 0);
    int /*@  predicates{x!=0,x<=i,x>0,x>=0} @*/ x = i;
    int /*@  predicates{y<=x,y==0,y>=x} terms_tpl{y-x} @*/ y = j;
    while(x != 0){
        x--;
        y--;
    }
    if(i == j){
        assert(y == 0);
    }
    return 0;
}
