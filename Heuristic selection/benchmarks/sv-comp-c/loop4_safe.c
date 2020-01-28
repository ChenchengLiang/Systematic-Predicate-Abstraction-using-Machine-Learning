/* This example may not finish within the timeout ... */
/* Please switch off full invariants (options to the right)
 * to make this example working. 
 */
int f(int n) {
  int i = 0;
  int j = 0;

  while (i < n + n) {
    j++;
    i++;
  }
  return j;
}

int f(int n) {
  int i = 0;
  int j = 0;

  while (i < n) {
    j = j + 2;
    i++;
  }
  return j;
}
