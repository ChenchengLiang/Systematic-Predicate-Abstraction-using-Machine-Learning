void errorFn() {assert(0);}


int unknown1();

/*
 * "nest-if8" from InvGen benchmark suite
 */


int main() {
  int i,j,k,n,m;
  if( m+1 < n ); else return 0;
  for ( i=0; i<n; i+=4 ) {
    for ( j=i; j<m; ) {
      if (unknown1()){
        if(!( j >= 0 ))
		errorFn();
        j++;
        k = 0;
        while( k < j ) {
          k++;
        }
      }
      else { 
	if(!( n+j+5>i ))
		errorFn();
	j+= 2;
      }
    }
  }
}
