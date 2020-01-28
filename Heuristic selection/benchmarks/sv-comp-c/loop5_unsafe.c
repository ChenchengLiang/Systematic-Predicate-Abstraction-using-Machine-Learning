extern int __mark(int);
int f1(int n) {
  int i;
  int j;
  i = 0; // <--- i is assigned 0
  j = 0;
  while (__mark(42) && i < n + n) {
    j++;
    i++;
  }
  return j;
}

extern int __mark(int);
int f2(int n) {
  int i;
  int j;
  i = n + 1; // <--- i is assigned n+1
  j = 0;
  while (__mark(42) && i > 0) {
    j = j + 2;
    i = i - 1;
  }
  return j;
}

void main()
{
	int n;
	int res1=f1(n);
	int res2=f2(n);

	assert(res1==res2);
}
