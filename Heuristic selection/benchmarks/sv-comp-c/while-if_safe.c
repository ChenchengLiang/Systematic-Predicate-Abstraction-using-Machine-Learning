extern int __mark(int);
int f1(int t, int c) {
  int x = 0;

  if(0 < t) {
      while(__mark(42) && (0 < c)) { // <--- while inside if
      x ++;
      c = c -1;
    }
  } else {
      __mark(23);
  }

  return x;
}

int f2(int t, int c) {
  int x = 0;

  while(__mark(42) && __mark(23) && (0 < c)) {
    if(0 < t) { // <--- if inside while
      x ++;
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
