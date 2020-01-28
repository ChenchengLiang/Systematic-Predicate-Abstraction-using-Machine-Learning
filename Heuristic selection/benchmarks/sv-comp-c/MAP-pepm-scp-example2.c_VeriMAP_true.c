int x = 0;
int y = 0;
int n;

void incr(int z) 
{ 
  y = y + z;
}

void main() {

  while (x < n) {
    x = x + 1; 
    incr(x); 
  }

  __VERIFIER_assert( x<=y );

}
