# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/INVGEN-SpamAssassin-loop_ok.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-SpamAssassin-loop_ok.tmp.c"
# 22 "MAP/SAFE-exbench/INVGEN-SpamAssassin-loop_ok.tmp.c"
int /*@  predicates{__BLAST_NONDET!=0,__BLAST_NONDET==0} predicates_tpl{0==0} @*/ __BLAST_NONDET;

void main()
{
  int len;
  int /*@  predicates{((i+1)<len),i<=len,i<len,i>=0} @*/ i;
  int /*@  predicates{j<=i,j>=0,j>=i} terms_tpl{j-i} @*/ j;

  int bufsize;
  int /*@  predicates{((i<len)&&(limit>j)),i<=len,limit<=(bufsize-4),limit>=j} @*/ limit = bufsize - 4;

  ;

  for(i = 0; i < len;){
    for(j = 0; i < len && j < limit;){
      if(i + 1 < len){


 if(__BLAST_NONDET)goto ELSE;





        j++;
        i++;






        j++;
        i++;




        j++;
      } else {
ELSE:

 assert(0<=i);




        j++;
        i++;
      }
    }
  }
}
