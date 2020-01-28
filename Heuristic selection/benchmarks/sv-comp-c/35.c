void errorFn() {assert(0);}

int unknown1();
int unknown2();
int unknown3();
int unknown4();

/*
 * InvGen, CAV'09 paper, fig 2
 */

void main(int n) {
  int x= 0;
  while(x<n) {
    x++;
  } 
  if(n>0) if(!(x==n))
		errorFn();
}
