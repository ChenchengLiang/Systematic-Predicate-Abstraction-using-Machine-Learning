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
  int len;
  int /*@  predicates{((i+1)<len),i<=len,i<len,i>=0} @*/ i;
  int /*@  predicates{j<=i,j>=0,j>=i} terms_tpl{j-i} @*/ j;
  int /*@  predicates{bufsize<0,bufsize>j} @*/ bufsize;
  bufsize = __VERIFIER_nondet_int();
  if(bufsize < 0)return 0;
  len = __VERIFIER_nondet_int();
  int /*@  predicates{((i<len)&&(limit>j)),i<=len,limit<=(bufsize-4),limit>=j} @*/ limit = bufsize - 4;
  for(i = 0; i < len;){
    for(j = 0; i < len && j < limit;){
      if(i + 1 < len){
 assert(i+1<len);
 assert(0<=i);
 if(__VERIFIER_nondet_int())goto ELSE;
        assert(i<len);
 assert(0<=i);
        assert(j<bufsize);
 assert(0<=j);
        j++;
        i++;
        assert(i<len);
 assert(0<=i);
        assert(j<bufsize);
 assert(0<=j);
        j++;
        i++;
        assert(j<bufsize);
 assert(0<=j);
        j++;
      } else {
ELSE:
        assert(i<len);
 assert(0<=i);
        assert(j<bufsize);
 assert(0<=j);
        j++;
        i++;
      }
    }
  }
  return 0;
}
