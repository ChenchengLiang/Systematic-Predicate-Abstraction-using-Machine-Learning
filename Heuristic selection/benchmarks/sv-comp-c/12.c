void errorFn() {assert(0);}
int unknown1();
int unknown2();


int main()
{
	int flag;
  int t = 0;
  int /*@ predicates{2*s>=t} @*/ s = 0;
  int a = 0;
  int b = 0;
  while(unknown1()){
    a++;
    b++;
    s+=a;
    t+=b;
    if(flag){
      t+=a;
    }
  } 
  //2s >= t
  int /*@ predicates{x<=2} @*/ x = 1;
  if(flag){
    x = t-2*s+2;
  }
  //x <= 2
  int y = 0;
  while(y<=x){
    if(unknown2()) 
       y++;
    else 
       y+=2;
  }
  if(!(y<=4))
		errorFn();
}
