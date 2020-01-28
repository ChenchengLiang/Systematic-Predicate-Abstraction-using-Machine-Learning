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
    int /*@  predicates{i>=0} @*/ i,/*@  predicates{j<=i,j>=(2*i),j>=i} terms_tpl{j-i} @*/ j,/*@  predicates{(k>=(2*i)),k<=i,k<=j,k>=(2*i),k>=(j+1),k>=i,k>=j} terms_tpl{k-i,k-j} @*/ k,/*@  predicates{n!=k,n<1000000,n<=k,n==k,n>=i,n>=j,n>=k,n>i,n>j,n>k} @*/ n;
    k = __VERIFIER_nondet_int();
    n = __VERIFIER_nondet_int();
assume(n < 1000000);
    if(k == n){
    } else {
        goto END;
    }
    for(i=0;i<n;i++){
        for(j=2*i;j<n;j++){
            if(__VERIFIER_nondet_int()){
                for(k=j;k<n;k++){
                    assert(k>=2*i);
                }
            }
            else {
                assert(k >= n);
                assert(k <= n);
            }
        }
    }
END:
  return 0;
}
