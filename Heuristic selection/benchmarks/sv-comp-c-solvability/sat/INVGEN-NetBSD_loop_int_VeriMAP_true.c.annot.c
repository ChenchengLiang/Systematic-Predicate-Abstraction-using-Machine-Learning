# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-NetBSD_loop_int.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-NetBSD_loop_int.tmp.c"
# 21 "MAP/SAFE-exbench/INVGEN-NetBSD_loop_int.tmp.c"
int __BLAST_NONDET;
int /*@  predicates{MAXPATHLEN>0} predicates_tpl{0==0} @*/ MAXPATHLEN;

int main()
{





  int /*@  predicates{buf_off==0} @*/ buf_off;
  int /*@  predicates{pattern_off==0} @*/ pattern_off;
  int bound_off;





  int /*@  predicates{glob3_pathbuf_off==0} @*/ glob3_pathbuf_off;
  int /*@  predicates{glob3_pathend_off==0} @*/ glob3_pathend_off;
  int glob3_pathlim_off;
  int /*@  predicates{glob3_pattern_off==0} @*/ glob3_pattern_off;
  int /*@  predicates{glob3_dc==0} @*/ glob3_dc;

  if(MAXPATHLEN > 0); else goto END;





  buf_off = 0;
  pattern_off = 0;


  bound_off = 0 +(MAXPATHLEN + 1)- 1;

  glob3_pathbuf_off = buf_off;
  glob3_pathend_off = buf_off;
  glob3_pathlim_off = bound_off;
  glob3_pattern_off = pattern_off;

  glob3_dc = 0;
  for(;;)
    if(glob3_pathend_off + glob3_dc >= glob3_pathlim_off)break;
    else {

      glob3_dc++;

      assert(0 <= glob3_dc);assert(glob3_dc < MAXPATHLEN + 1);
      if(__BLAST_NONDET)goto END;
    }







 END: return 0;
}