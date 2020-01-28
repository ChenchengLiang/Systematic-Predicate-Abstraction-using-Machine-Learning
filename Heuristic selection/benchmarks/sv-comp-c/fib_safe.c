/*
 * Two computations for a Fibonacci number.
 * The left starts with (0, 1, 1, ...) while the right starts with
 * (1, 1, 2, ...). They are not equivalent.
 *
 * However, if they are not started with the same input (n1 == n2) but
 * with n1 == n2 + 1, results are equal.
 * This can be expressed using a "rel_in" specification.
 */
extern int __mark(int);
int fib1(int n) {
  int f = 0;   //  <---- starting at 0
  int g = 1;
  int h = 0;

  while(__mark(42) && (n > 0)) {
    h = f + g;
    f = g;
    g = h;
    n --;
  }

  return g;
}

extern int __mark(int);
int fib2(int n) {
  int f = 1;  //  <---- starting at 1
  int g = 1;
  int h = 0;

  while(__mark(42) && (n > 0)) {
    h = f + g;
    f = g;
    g = h;
    n --;
  }

  return g;
}

void main()
{
	int n;
	int res1=fib1(n);
	int res2=fib2(n);
	assert(res1==res2);
}
