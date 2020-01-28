extern int __mark(int);
int f1(int n) {
  int result = 1;
  n = n/10;

  while (__mark(42) && n > 0) {
    result++;
    n = n / 10;
    if (n > 0) { // <--- nested if
      result++;
      n = n / 10;
      if (n > 0) {
        result++;
        n = n / 10;
        if (n > 0) {
          result++;
          n = n / 10;
        }
      }
    }
  }
  return result;
}

int f2(int n) {
    int result = 1;
    int b = 1;
    int retval = -1;

    while (__mark(42) && !(b == 0)) {
        if (n < 10) { // <--- else if
            retval = result;
            b = 0;
        } else if (n < 100) {
            retval = result + 1;
            b = 0;
        } else if (n < 1000) {
            retval = result + 2;
            b = 0;
        } else if (n < 10000) {
            retval = result + 3;
            b = 0;
        } else {
            n = n / 10000;
            result = result + 4;
        }
    }
    return retval;
}

void main()
{
	int n;
	int res1=f1(n);
	int res2=f2(n);
	assert(res1==res2);
}
