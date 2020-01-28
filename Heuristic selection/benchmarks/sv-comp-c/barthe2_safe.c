/*
Taken from:
  Relational verification using product programs
  Gilles Barthe, Juan Manuel Crespo, and Cesar Kunz
  IMDEA Software, Madrid, Spain
  FM 2011
  Page 4
*/
extern int __mark(int);
int f1(int n) {
  int i = 0; // <--- i is assigned 0
  int x = 0;
  while (__mark(1) && i <= n) {
    x = x + i;
    i++;
  }
  return x;
}

int f2(int n) {
  int j = 1; // <--- j is assigned 1
  int x = 0;
  while (__mark(1) && j <= n) {
    x = x + j;
    j++;
  }
  return x;
}

void main()
{
	int n;
	int res1=f1(n);
	int res2=f2(n);
	assert(res1==res2);
}
