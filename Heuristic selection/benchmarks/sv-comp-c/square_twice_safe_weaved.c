int g1(int n)
{
  int r=0;
  int i=n;

  while ( (i > 0)) {
    r = r + n;
    i--;
  }

  r=0;
  i=n;

  while ( (i > 0)) {  // <--- second loop
    r = r + n;
    i--;
  }

  return r;
}


int g2(int n)
{
  int r=0;
  int i=n;

  while ( (i > 0)) {
    r = r + n;
    i--;
  }

  return r;
}

void main()
{
	int n;
	int res1=g1(n);
	int res2=g2(n);
	assert(res1==res2);
}


void weaved1(int n1, int n2) {

  assume(n1 == n2);

  int r1=0;
  int i1=n1;

  while ( (i1 > 0)) {
    r1 = r1 + n1;
    i1--;
  }

  r1=0;
  i1=n1;

  while ( (i1 > 0)) {  // <--- second loop
    r1 = r1 + n1;
    i1--;
  }

  ///////////////////

  int r2=0;
  int i2=n2;

  while ( (i2 > 0)) {
    r2 = r2 + n2;
    i2--;
  }

  assert(r1 == r2);

}


void weaved2(int n1, int n2) {

  assume(n1 == n2);

  int r1=0;
  int i1=n1;

  while ( (i1 > 0)) {
    r1 = r1 + n1;
    i1--;
  }

  r1=0;
  i1=n1;

  int r2=0;
  int i2=n2;

  while ( (i1 > 0) || (i2 > 0)) {  // <--- merged loop
    if (i1 > 0) {
    r1 = r1 + n1;
    i1--;
    }
    if (i2 > 0) {
    r2 = r2 + n2;
    i2--;
    }
  }

  assert(r1 == r2);

}
