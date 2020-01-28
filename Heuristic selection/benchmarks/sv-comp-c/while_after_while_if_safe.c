extern int __mark(int);
int f1(int t, int c, int r) {
  int x = 0;

  if (0 < t) {
      while(__mark(42) && (0 < c)) { // <---- while in if
          x++;
          c--;
      }
  } else {
      __mark(23);
  }

  while(__mark(13) && (r > 0)) {
      x+=2;
      r--;
  }

  return x;
}

extern int __mark(int);
int f2(int t, int c, int r) {
  int x = 0;

  while(__mark(23) && __mark(42) && (0 < c)) {
      if (0 < t) { // <---- if in while
          x++;
      }
      c--;
  }

  while(__mark(13) && (r > 0)) {
      x+=2;
      r--;
  }

  return x;
}

void main()
{
	int t,c,r;
	int res1=f1(t,c,r);
	int res2=f2(t,c,r);
	assert(res1==res2);
}
