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
  int /*@  predicates{tagbuf_len>=1} @*/ tagbuf_len;
  int /*@  predicates{t<=tagbuf_len,t<tagbuf_len,t==tagbuf_len,t>=0} @*/ t;
  tagbuf_len = __VERIFIER_nondet_int();
  if(tagbuf_len >= 1); else goto END;
  t = 0;
  --tagbuf_len;
  while(1){
    if(t == tagbuf_len){
      assert(0 <= t);
      assert(t <= tagbuf_len);
      goto END;
    }
    if(__VERIFIER_nondet_int()){
      break;
    }
     assert(0 <= t);
     assert(t <= tagbuf_len);
    t++;
  }
   assert(0 <= t);
   assert(t <= tagbuf_len);
  t++;
  while(1){
    if(t == tagbuf_len){
      assert(0 <= t);
      assert(t <= tagbuf_len);
      goto END;
    }
    if(__VERIFIER_nondet_int()){
      if(__VERIFIER_nondet_int()){
  assert(0 <= t);
 assert(t <= tagbuf_len);
        t++;
        if(t == tagbuf_len){
   assert(0 <= t);
   assert(t <= tagbuf_len);
          goto END;
        }
      }
    }
    else if(__VERIFIER_nondet_int()){
      break;
    }
    assert(0 <= t);
    assert(t <= tagbuf_len);
    t++;
  }
  assert(0 <= t);
  assert(t <= tagbuf_len);
 END:
  return 0;
}
