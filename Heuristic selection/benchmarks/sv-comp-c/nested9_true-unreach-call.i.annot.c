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
int __BLAST_NONDET;
int main(){
    int /*@  predicates{i>=0} @*/ i,/*@  predicates{(j<(3*i)),j<=(2*i),j<=(3*i),j<=i,j>=(2*i),j>=i} terms_tpl{j-i} @*/ j,/*@  predicates{k<=(i+1),k<=0,k<=i,k<=j,k<j,k>=(i+1),k>=0,k>=i,k>=j} terms_tpl{k-i,k-j} @*/ k,/*@  predicates{((-1000000)<n),((k-i)<=(2*n)),n<1000000,n>=i,n>i} @*/ n,/*@  predicates{((-1000000)<l),l<1000000} @*/ l,/*@  predicates{((-1000000)<m),((3*n)<=(m+l)),m<1000000} @*/ m;
    n = __VERIFIER_nondet_int();
    m = __VERIFIER_nondet_int();
    l = __VERIFIER_nondet_int();
assume(-1000000 < n && n < 1000000);
assume(-1000000 < m && m < 1000000);
assume(-1000000 < l && l < 1000000);
    if(3*n<=m+l); else goto END;
    for(i=0;i<n;i++)
        for(j = 2*i;j<3*i;j++)
            for(k = i; k< j; k++)
                assert(k-i <= 2*n);
END:
    return 0;
}
