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
  int /*@  predicates{((MAXPATHLEN>0)&&(MAXPATHLEN<2147483647))} @*/ MAXPATHLEN;
  int /*@  predicates{pathbuf_off==0} @*/ pathbuf_off;
  int bound_off;
  int /*@  predicates{(glob2_p_off<(MAXPATHLEN+1)),glob2_p_off==0,glob2_p_off>=0,glob2_p_off>=pathbuf_off} @*/ glob2_p_off;
  int /*@  predicates{glob2_pathbuf_off<=glob2_p_off,glob2_pathbuf_off==0} @*/ glob2_pathbuf_off;
  int /*@  predicates{glob2_pathlim_off<=((pathbuf_off+(MAXPATHLEN+1))-1),glob2_pathlim_off<=bound_off,glob2_pathlim_off>=glob2_p_off} @*/ glob2_pathlim_off;
  MAXPATHLEN = __VERIFIER_nondet_int();
  if(MAXPATHLEN > 0 && MAXPATHLEN < 2147483647); else goto END;
  pathbuf_off = 0;
  bound_off = pathbuf_off +(MAXPATHLEN + 1)- 1;
  glob2_pathbuf_off = pathbuf_off;
  glob2_pathlim_off = bound_off;
  for(glob2_p_off = glob2_pathbuf_off;
      glob2_p_off <= glob2_pathlim_off;
      glob2_p_off++){
    assert(0 <= glob2_p_off);
    assert(glob2_p_off < MAXPATHLEN + 1);
  }
 END: return 0;
}
