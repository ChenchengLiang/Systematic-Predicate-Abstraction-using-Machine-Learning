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
int main()
{
  int /*@  predicates{in>=0} @*/ in;
  int /*@  predicates{inlen>0,inlen>in} @*/ inlen = __VERIFIER_nondet_int();
  int /*@  predicates{bufferlen<inlen,bufferlen>1} @*/ bufferlen = __VERIFIER_nondet_int();
  int /*@  predicates{buf<=in,buf<bufferlen,buf>=0,buf>=in} terms_tpl{buf-in} @*/ buf;
  int /*@  predicates{buflim<=(bufferlen-2),buflim==buf,buflim>=buf,buflim>buf} @*/ buflim;
  if(bufferlen >1);else goto END;
  if(inlen > 0);else goto END;
  if(bufferlen < inlen);else goto END;
  buf = 0;
  in = 0;
  buflim = bufferlen - 2;
  while(__VERIFIER_nondet_int())
  {
    if(buf == buflim)
      break;
    assert(0<=buf);
    assert(buf<bufferlen);
    buf++;
out:
    in++;
    assert(0<=in);
    assert(in<inlen);
  }
    assert(0<=buf);
    assert(buf<bufferlen);
    buf++;
  assert(0<=buf);
  assert(buf<bufferlen);
  buf++;
 END: return 0;
}
