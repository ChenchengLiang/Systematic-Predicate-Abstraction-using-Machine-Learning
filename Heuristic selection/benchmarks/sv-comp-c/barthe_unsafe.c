extern int m(int);
int f1(int n, int c) {
   int i;
   int j;
   int x;

   i = 0;
   j = 0; // <--- j is assigned 0
   x = 0;

   while(m(42) && i < n) {
      j = 5*i + c;
      x = x + j;
      i++;
   }
   return x;
}

int f2(int n, int c) {
   int i;
   int j;
   int x;

   i = 0;
   j = c; // <--- j is assigned c
   x = 0;

   while(m(42) && i < n) {
      x = x + j;
      j = j + 5;
      if (i == 10) {
        j = 10;
      }
      i++;
   }
   return x;
}

void main()
{
	int n,c;
	int res1=f1(n,c);
	int res2=f2(n,c);
	assert(res1 == res2);
}
