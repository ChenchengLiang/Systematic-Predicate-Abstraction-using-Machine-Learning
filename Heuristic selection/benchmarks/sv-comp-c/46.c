void errorFn() {assert(0);}

int unknown1();
int unknown2();
int unknown3();
int unknown4();

void main()
{


	int w = 1;
	int z = 0;
	int x= 0;
	int y=0;

	  
         while(unknown2()){
	    if(w%2 == 1) {x++; w++;};
	    if(z%2==0) {y++; z++;};
	}

  
	if(!(x<=1))
		errorFn();
}

