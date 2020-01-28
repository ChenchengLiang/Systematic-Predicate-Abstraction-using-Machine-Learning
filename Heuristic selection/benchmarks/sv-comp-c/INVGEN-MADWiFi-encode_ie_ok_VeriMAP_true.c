# 1 "MAP/SAFE-exbench/INVGEN-MADWiFi-encode_ie_ok.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-MADWiFi-encode_ie_ok.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-MADWiFi-encode_ie_ok.tmp.c"
int main()
{


  int p;
  int i;
  int leader_len;
  int bufsize;
  int bufsize_0;
  int ielen;

  ;


  if(leader_len >0); else goto END;
  if(bufsize >0); else goto END;
  if(ielen >0); else goto END;

  if (bufsize < leader_len)
    goto END;


  p = 0;

  bufsize_0 = bufsize;
  bufsize -= leader_len;
  p += leader_len;


  if (bufsize < 2*ielen)
    goto END;



  for (i = 0; i < ielen && bufsize > 2; i++) {
    __VERIFIER_assert( 0<=p );
    __VERIFIER_assert( p+1<bufsize_0 );


    p += 2;
  }




 END:;
}
