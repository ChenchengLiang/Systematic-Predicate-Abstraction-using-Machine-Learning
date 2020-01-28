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
  int idBitLength, material_length, /*@  predicates{(nlen==(idBitLength/32))} @*/ nlen;
  int /*@  predicates{((j/4)<nlen),((j<(idBitLength/8))&&(j<material_length)),(0<=(j/4)),j<=(idBitLength/8),j<=material_length,j<material_length,j>=0} @*/ j, k;
  nlen = __VERIFIER_nondet_int();
  idBitLength = __VERIFIER_nondet_int();
  material_length = __VERIFIER_nondet_int();
assume(nlen == idBitLength / 32);
  for(j = 0;(j < idBitLength / 8)&&(j < material_length); j++){
    assert(0 <= j);
    assert(j < material_length);
    assert(0 <= j/4);
    assert(j/4 < nlen);
  }
  return 0;
}
