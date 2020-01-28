# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-NetBSD_g_Ctoc.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-NetBSD_g_Ctoc.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-NetBSD_g_Ctoc.tmp.c"
int /*@  predicates{(0<=(BASE_SZ-1)),BASE_SZ>0} predicates_tpl{0==0} @*/ BASE_SZ;
int /*@  predicates{__BLAST_NONDET!=0,__BLAST_NONDET==0} @*/ __BLAST_NONDET;
int main()
{


  int /*@  predicates{i<BASE_SZ,i>=0} @*/ i;
  int /*@  predicates{j<=i,j<BASE_SZ,j>=0,j>=i} terms_tpl{j-i} @*/ j;
  int /*@  predicates{len<=BASE_SZ,len<=i,len<=j,len==0,len>0,len>=0,len>=i,len>=j} terms_tpl{len+i,len+j} @*/ len = BASE_SZ;

  if(BASE_SZ > 0); else goto END;


  assert(0 <= BASE_SZ-1);

  if(len == 0)
    goto END;

  i = 0;
  j = 0;
  while(1){
    if(len == 0){
      goto END;
    } else {
      assert(0<= j); assert(j < BASE_SZ);
      assert(0<= i); assert(i < BASE_SZ);

      if(__BLAST_NONDET){
        i++;
        j++;
        goto END;
      }
    }
    i ++;
    j ++;
    len --;
  }

 END: return 0;
}
