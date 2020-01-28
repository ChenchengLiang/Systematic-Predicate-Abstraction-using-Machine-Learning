# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "INVGEN-seq-len.tmp.c"
# 1 "<command-line>"
# 1 "INVGEN-seq-len.tmp.c"
# 20 "INVGEN-seq-len.tmp.c"
int main(){
  int n0, n1,n2;
  int /*@  predicates{i<=n0,i<=n1,i<=n2,i<n0,i<n1,i<n2,i>=0} predicates_tpl{0==0} @*/ i = 0;
  int /*@  predicates{k<=i,k>0,k>=i} terms_tpl{k+i,k-i} @*/ k = 0;

  while(i < n0){
    i++;
    k++;
  }
  i = 0;
  while(i < n1){
    i++;
    k++;
  }

  i = 0;
  while(i < n2){
    i++;
    k++;
  }

  i = 0;
  while(i < n2){
    i++;
    k--;
  }

  i = 0;
  while(i < n1){
    i++;
    k--;
  }
  i = 0;
  while(i < n0){
    assert(k > 0);
    i++;
    k--;
  }
  return 0;
}
