# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-seq-z3.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-seq-z3.tmp.c"
# 21 "MAP/SAFE-exbench/INVGEN-seq-z3.tmp.c"
void main(){
  int n0, n1;
  int /*@  predicates{(i<((6*n1)+128)),(i<(20*n0)),i<=((6*n1)+128),i<=(20*n0),i>=0} predicates_tpl{0==0} @*/ i = 0;
  int /*@  predicates{k<=i,k>0,k>=i} terms_tpl{k+i,k-i} @*/ k = 0;

  while(i < 20*n0){
    i++;
    k++;
  }
  i = 0;
  while(i < 6*n1+128){
    i++;
    k++;
  }
  i = 0;
  while(i < 6*n1+128){
    i++;
    k--;
  }
  i = 0;
  while(i < 20*n0){
    assert(k > 0);
    i++;
    k--;
  }
  return 0;
}
