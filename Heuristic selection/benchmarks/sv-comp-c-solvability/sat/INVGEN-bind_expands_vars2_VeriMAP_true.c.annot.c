# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-bind_expands_vars2.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-bind_expands_vars2.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-bind_expands_vars2.tmp.c"
int main(){

  int cp1_off, /*@  predicates{n1>=cp1_off} @*/ n1, n2, /*@  predicates{mc_i<=n2,mc_i<n2,mc_i>=0} predicates_tpl{0==0} @*/ mc_i;
  int /*@  predicates{((cp1_off+mc_i)<(MAXDATA*2)),(n1<=(MAXDATA*2)),(n2<=((MAXDATA*2)-n1)),MAXDATA>0} @*/ MAXDATA;
  if(MAXDATA > 0); else goto END;

  if((n1 <= MAXDATA * 2)); else goto END;

  if((cp1_off <= n1)); else goto END;

  if((n2 <= MAXDATA*2 - n1)); else goto END;

  for(mc_i = 0; mc_i < n2; mc_i++){

    assert(cp1_off+mc_i < MAXDATA * 2);

  }



 END: return 0;
}
