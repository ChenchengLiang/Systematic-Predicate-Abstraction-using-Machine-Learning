extern int __mark(int);

int f1(int x, int g) {
  int i;
  i = 0;
  while (__mark(42) && (i < x)) {
    i = i + 1;
    g = g - 2; // <--- g is decremented by 1 in total
    g = g + 1;
    while(__mark(23) && (x < i)) {
      x = x + 2;
      x = x - 1;
      g = g + 1;
    }
  }
  return g;
}

extern int __mark(int);
int f2(int x, int g) {
  int i;
  i = 0;
  while (__mark(42) && (i < x)) {
    i = i + 1;
    g = g - 2; // <--- g is decremented by 2
    while(__mark(23) && (x < i)) {
      x = x + 1;
      g = g + 2;
    }
  }
  return g;
}

void main()
{
	int x,g;
	int res1=f1(x,g);
	int res2=f2(x,g);
	assert(res1==res2);
}
