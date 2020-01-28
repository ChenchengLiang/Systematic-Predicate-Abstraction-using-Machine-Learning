extern int __mark(int);
int f1(int n) {
  int i = 0; // <--- i is assigned 0
  int j = 0;

  while (__mark(42) && (i <= n)) {
    i++;
    j++;
  }
  return j;
}

int f2(int n) {
  int i = n; // <--- i is assigned n
  int j = 0;

  while (__mark(42) && (i >= 0)) {
    i = i - 1;
    j++;
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
