void errorFn() {assert(0);}

int unknown1();
int unknown2();
int unknown3();
int unknown4();

/*
 * Based on ex16 from NECLA Static Analysis Benchmarks
 */


int main()
{
	int x; int y;
  int i=0;
  int t=y;
   
  if (x==y) return x;
  
  while (unknown1()){
    if (x > 0)   
      y = y + x;
  }
   
 
  if(!(y>=t))
		errorFn();
	
}

