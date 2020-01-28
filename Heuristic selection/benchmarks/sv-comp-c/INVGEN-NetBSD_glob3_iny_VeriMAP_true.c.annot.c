# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-NetBSD_glob3_iny.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-NetBSD_glob3_iny.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-NetBSD_glob3_iny.tmp.c"
int /*@  predicates{__BLAST_NONDET!=0,__BLAST_NONDET==0} predicates_tpl{0==0} @*/ __BLAST_NONDET;

int main()
{





  int /*@  predicates{buf_off==0} @*/ buf_off, /*@  predicates{pattern_off==0,pattern_off>=0} @*/ pattern_off, bound_off;

  int /*@  predicates{MAXPATHLEN>0,MAXPATHLEN>=pattern_off} @*/ MAXPATHLEN;





  int /*@  predicates{error==0,error==5} @*/ error;

  int /*@  predicates{pathbuf_off==0} @*/ pathbuf_off;
  int /*@  predicates{pathend_off==0} @*/ pathend_off;
  int /*@  predicates{pathlim_off<=MAXPATHLEN,pathlim_off>=0} @*/ pathlim_off;





  if(MAXPATHLEN >0); else goto END;

  buf_off = 0;
  pattern_off = 0;

  bound_off = MAXPATHLEN;
# 67 "MAP/SAFE-exbench/INVGEN-NetBSD_glob3_iny.tmp.c"
  pathbuf_off = 0;
  pathend_off = 0;
  pathlim_off = MAXPATHLEN;



  error = 0;


  while(__BLAST_NONDET){
    int /*@  predicates{(i<=(MAXPATHLEN+1)),i==0,i>=0,i>MAXPATHLEN} @*/ i;


    assert(0 <= pattern_off); assert(pattern_off <= MAXPATHLEN);

      if(__BLAST_NONDET)continue;




    i = 0;
    for(;;)
      if(i > MAXPATHLEN)goto END;
      else {
 assert(0 <= i); assert(i <= MAXPATHLEN);

        i++;
        if(__BLAST_NONDET)goto END;
      }




    assert(0 <= pathlim_off); assert(pathlim_off <= MAXPATHLEN);


    if(i > MAXPATHLEN){
      if(__BLAST_NONDET){





 if(__BLAST_NONDET){
   error = 5;
   goto END;
 }
 else {

   assert(0 <= i);assert(i <= MAXPATHLEN + 1);

   continue;
 }
      }
    }





    if(__BLAST_NONDET){

      assert(i <= MAXPATHLEN + 1);

      continue;
    }
  END_LOOP1:;
  }



 END: return 0;
}
