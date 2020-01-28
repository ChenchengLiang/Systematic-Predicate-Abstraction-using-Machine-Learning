void errorFn() {assert(0);}


/*
 * "nested4.c" from InvGen benchmark suite
 */


void main() {
  int i,k,n,l;


  assume(l>0);

  for (k=1;k<n;k++){
    for (i=l;i<n;i++) {
    }
    for (i=l;i<n;i++) {
      if(!(1<=i))
		errorFn();
    }
  }

}
