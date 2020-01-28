int f(int t, int c) {
  int x = 0;

  if(0 < t) {
    while(0 < c) {
      x ++;
      c = c -1;
    }
  }

  return x;
}

int f(int t, int c) {
  int x = 0;

  while(0 < c) {
    if(0 < t) {
      x ++;
    }
    c = c - 1;
  }

  return x;
}

