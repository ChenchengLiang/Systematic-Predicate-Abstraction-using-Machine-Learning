void main() {
	int n0;
  int result1 = 1;
	int n1=n0, n2=n0;
    int result2 = 1;
    int b = 1;
    int retval = -1;

  n1 = n1/10;
  while (n1 > 0) {
	assert(n1);
    result1++;
    n1 = n1 / 10;
    if (n1 > 0) { // <--- nested if
      result1++;
      n1 = n1 / 10;
      if (n1 > 0) {
        result1++;
        n1 = n1 / 10;
        if (n1 > 0) {
          result1++;
          n1 = n1 / 10;
        }
      }
    }
  }

    while (!(b == 0)) {
        if (n2 < 10) { // <--- else if
            retval = result2;
            b = 0;
        } else if (n2 < 100) {
            retval = result2 + 1;
            b = 0;
        } else if (n2 < 1000) {
            retval = result2 + 2;
            b = 0;
        } else if (n2 < 10000) {
            retval = result2 + 3;
            b = 0;
        } else {
            n2 = n2 / 10000;
            result2 = result2 + 4;
        }
    }

	assert(result1==retval);
}
