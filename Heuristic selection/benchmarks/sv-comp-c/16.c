void errorFn() {assert(0);}

int unknown1();
int unknown2();
int unknown3();
int unknown4();


/*
 * From "A Practical and Complete Approach to Predicate Refinement" by McMillan TACAS'06
 */

int main() {
  int i; int j;
  int x = i;
  int y = j;
 
  while(x!=0) {
	x--;
	y--;
  }
  if(i==j)
	if(!(y==0))
		errorFn();
}

