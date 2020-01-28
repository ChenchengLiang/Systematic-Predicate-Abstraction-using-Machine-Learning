# 1 "MAP/SAFE-exbench/INVGEN-up-nd.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/INVGEN-up-nd.tmp.c"
# 20 "MAP/SAFE-exbench/INVGEN-up-nd.tmp.c"
extern int rand();
void main() {
  int n, v;
  int i = 0;
  int k = 0;
  while( i < n ) {
    ;
 i++;
 v = rand();
 if( v > 0 )
   k = k + v;
 else
   k++;
  }
  int j = 0;
  while( j < n ) {
    ;
 if(k <= 0) ERROR: goto ERROR;
 j++;
 k--;
  }
}
