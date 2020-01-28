void errorFn() {assert(0);}

int unknown1();
int unknown2();
int unknown3();
int unknown4();

void main()
{
	int x, y, k, j, i, n;
    assume((x+y)== k);
    int m = 0;
    j = 0;
    while(j<n) {
      if(j==i)
      {
         x++;
         y--;
      }else
      {
         y++;
         x--;
      }
	if(unknown1())
  		m = j;
      j++;
    }
    if(!((x+y)== k))
		errorFn();
    if(n>0)
    {
   	if(! (0<=m)) 
		errorFn();
	if(! (m<n))
		errorFn();
    }

}

