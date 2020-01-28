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
  int offset, length, nlen = __VERIFIER_nondet_int();
  int /*@  predicates{(((nlen-1)-i)<nlen),(0<=((nlen-1)-i)),i<=nlen,i<nlen,i>=0} @*/ i, /*@  predicates{j<8,j<=8,j<=i,j>=0,j>=i} terms_tpl{j-i} @*/ j;
  for(i=0; i<nlen; i++){
    for(j=0; j<8; j++){
      assert(0 <= nlen-1-i);
      assert(nlen-1-i < nlen);
    }
  }
  return 0;
}
