void errorFn() {assert(0);}

int unknown1();
int unknown2();
int unknown3();
int unknown4();

/*
 * ex49 from NECLA Static Analysis Benchmarks
 */


int main(){
	int n;
   int i, sum=0;
   assume( n >= 0);

   for (i=0; i < n; ++i)
      sum = sum +i;

   if(!(sum >= 0))
		errorFn();
}

