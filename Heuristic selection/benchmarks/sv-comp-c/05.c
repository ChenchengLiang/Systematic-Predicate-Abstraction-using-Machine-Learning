void errorFn() {assert(0);}

int unknown1();
int unknown2();
int unknown3();
int unknown4();

void main(int flag)
{

	int x = 0;
	int  /*@ predicates{x>=0,y>=0,y>=x} terms_tpl{x-y} @*/ y = 0;

	int j = 0;
	int /*@ terms_tpl{j-i} predicates{j>=i} @*/ i = 0;


	while(unknown1())
	{
	  x++;
	  y++;
	  i+=x;
	  j+=y;
	  if(flag)  j+=1;
	} 
	if(!(j>=i))
		errorFn();
	
}
