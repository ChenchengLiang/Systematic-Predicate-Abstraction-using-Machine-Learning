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
  int /*@  predicates{p>=0} @*/ p;
  int /*@  predicates{i<=p,i>=0,i>=p} terms_tpl{2*i-p} @*/ i;
  int /*@  predicates{leader_len<1000000,leader_len>0} @*/ leader_len;
  int /*@  predicates{bufsize<1000000,bufsize<leader_len,bufsize>0} @*/ bufsize;
  int /*@  predicates{((p+1)<bufsize_0)} @*/ bufsize_0;
  int /*@  predicates{((ielen>i)&&(bufsize>2)),(bufsize<(2*ielen)),ielen<1000000,ielen>0,ielen>=i} @*/ ielen;
  leader_len = __VERIFIER_nondet_int();
  bufsize = __VERIFIER_nondet_int();
  ielen = __VERIFIER_nondet_int();
assume(leader_len < 1000000);
assume(bufsize < 1000000);
assume(ielen < 1000000);
  if(leader_len >0); else goto END;
  if(bufsize >0); else goto END;
  if(ielen >0); else goto END;
  if(bufsize < leader_len)
    goto END;
  p = 0;
  bufsize_0 = bufsize;
  bufsize -= leader_len;
  p += leader_len;
  if(bufsize < 2*ielen)
    goto END;
  for(i = 0; i < ielen && bufsize > 2; i++){
    assert(0<=p);
    assert(p+1<bufsize_0);
    p += 2;
  }
 END:
  ;
}
