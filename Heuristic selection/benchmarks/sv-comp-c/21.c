void errorFn() {assert(0);}

extern int unknown1();
int unknown2();
int unknown3();
int unknown4();
extern int argc;

/*
 * Based on "larg_const.c" from InvGen test suite  
 */

int main() {
  int c1 = 4000;
  int c2 = 2000;
  int n, v;
  int i, k, j;


  n = unknown1();
  assume(n>0);
  assume(n<10);


  k = 0;
  i = 0;
  while( i < n ) {
    i++;
//    if(unknown2() % 2 == 0) 
    if(argc == 0) 
      v = 0;
    else v = 1;
    
    if( v == 0 )
      k += c1;
    else 
      k += c2;
  }
  
  if(!(k>n))
		errorFn();
  return 0;
}

