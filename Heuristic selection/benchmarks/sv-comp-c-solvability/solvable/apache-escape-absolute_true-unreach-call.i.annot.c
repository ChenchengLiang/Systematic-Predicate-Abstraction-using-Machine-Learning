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
    int /*@  predicates{(scheme>=(-1000000)),scheme<=1000000,scheme>=0} @*/ scheme;
    int /*@  predicates{((scheme==0)||((urilen-1)<scheme)),(urilen>=(-1000000)),urilen<=1000000,urilen>0} @*/ urilen,/*@  predicates{(tokenlen>=(-1000000)),tokenlen<=1000000,tokenlen>0} @*/ tokenlen;
    int /*@  predicates{((cp+1)<urilen),((cp+1)==(urilen-1)),((cp-1)<urilen),(0<=(cp+1)),(0<=(cp-1)),(cp!=(urilen-1)),(cp==(urilen-1)),cp<(urilen-1),cp<=(urilen-1),cp<urilen,cp>=0,cp>=scheme} @*/ cp,/*@  predicates{((cp!=(urilen-1))&&(c<(tokenlen-1))),c<=(tokenlen-1),c<=cp,c<tokenlen,c>=0,c>=cp,cp<(urilen-1),cp<=(urilen-1)} terms_tpl{c-cp} @*/ c;
    urilen = __VERIFIER_nondet_int();
    tokenlen = __VERIFIER_nondet_int();
    scheme = __VERIFIER_nondet_int();
assume(urilen <= 1000000 && urilen >= -1000000);
assume(tokenlen <= 1000000 && tokenlen >= -1000000);
assume(scheme <= 1000000 && scheme >= -1000000);
    if(urilen>0); else goto END;
    if(tokenlen>0); else goto END;
    if(scheme >= 0);else goto END;
    if(scheme == 0 ||(urilen-1 < scheme)){
        goto END;
    }
    cp = scheme;
    assert(cp-1 < urilen);
    assert(0 <= cp-1);
    if(__VERIFIER_nondet_int()){
        assert(cp < urilen);
        assert(0 <= cp);
        while(cp != urilen-1){
            if(__VERIFIER_nondet_int())break;
            assert(cp < urilen);
            assert(0 <= cp);
            ++cp;
        }
        assert(cp < urilen);
        assert(0 <= cp);
        if(cp == urilen-1)goto END;
        assert(cp+1 < urilen);
        assert(0 <= cp+1);
        if(cp+1 == urilen-1)goto END;
        ++cp;
        scheme = cp;
        if(__VERIFIER_nondet_int()){
            c = 0;
            assert(cp < urilen);
            assert(0<=cp);
            while(cp != urilen-1
                    && c < tokenlen - 1){
                assert(cp < urilen);
                assert(0<=cp);
                if(__VERIFIER_nondet_int()){
                    ++c;
                    assert(c < tokenlen);
                    assert(0<=c);
                    assert(cp < urilen);
                    assert(0<=cp);
                }
                ++cp;
            }
            goto END;
        }
    }
END:
    return 0;
}
