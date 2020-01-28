# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-seq-sim.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-seq-sim.tmp.c"
# 21 "MAP/SAFE-exbench/INVGEN-seq-sim.tmp.c"
void main(){
  int n, m;
  int /*@  predicates{i<=m,i<=n,i<m,i<n,i>=0} predicates_tpl{0==0} @*/ i = 0;
  int /*@  predicates{k<=i,k>0,k>=i} terms_tpl{k+i,k-i} @*/ k = 0;

  while(i < n){
    i++;
    k++;
  }
  i = 0;
  while(i < m){
    i++;
    k++;
  }
  i = 0;
  while(i < m){
    i++;
    k--;
  }
  i = 0;
  while(i < n){
    assert(k > 0);
    i++;
    k--;
  }
  return 0;
}
