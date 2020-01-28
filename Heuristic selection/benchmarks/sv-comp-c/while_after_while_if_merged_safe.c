void main() {
  int x1 = 0, x2 = 0;
	int c0, c1=c0, c2=c0;
	int t;
	int r0, r1=r0, r2=r0;

  if (0 < t) {
      while((0 < c1)) { // <---- while in if
          x1++;
          c1--;
      }
	}

  while((r1 > 0)) {
      x1+=2;
      r1--;
  }

  while((0 < c2)) {
      if (0 < t) { // <---- if in while
          x2++;
      }
      c2--;
  }

  while((r2 > 0)) {
      x2+=2;
      r2--;
  }

	assert(x1 == x2);
}
