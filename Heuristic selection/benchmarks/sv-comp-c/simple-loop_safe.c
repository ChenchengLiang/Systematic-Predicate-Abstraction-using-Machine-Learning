extern int __mark(int);
int f1(int z) {
  int i = 0; // <--- i is assigned 0

  while (__mark(42) && i <= 10) {
    i++;
  }
  return i;
}

int f2(int z) {
  int i = 1; // <--- i is assigned 1

  while (__mark(42) && i <= 10) {
    i++;
  }
  return i;
}

void main()
{
	int z;
	int res1=f1(z);
	int res2=f2(z);
	assert(res1==res2);
}
