extern int __mark(int);
int f1(int t, int c) {
  int x = 0;

  if (0 < t) {
      while(__mark(42) && (0 < c)) { // <--- while inside if
          x++;
          c--;
      }
  } else {
      while(__mark(23) && (0 < c)) {
          x--;
          c--;
      }
  }

  return x;
}

int f2(int t, int c) {
    int x = 0;

    while (__mark(42) && __mark(23) && (0 < c)) {
        if (0 < t) { // <--- if inside while
            x++;
        } else {
            x--;
        }
        c = c - 1;
    }

    return x;
}

void main()
{
	int t,c;
	int res1=f1(t,c);
	int res2=f2(t,c);
	assert(res1==res2);
}
