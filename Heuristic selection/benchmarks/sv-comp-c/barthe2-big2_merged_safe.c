void main() {
	int n;
    int i = 1;
    int x1 = 1;
    int x2 = 1;

    while (/*__mark(1) &&*/ i <= n) {
        x1 = x1 * 1;
        x2 = x2 * 1;
        i++;
    }

    int i1 = 0; // <--- i is assigned 0
    int i2 = 1; // <--- i is assigned 1
	while (1)
	{
    	if (/*__mark(2) &&*/ i1 <= n) {
	        x1 = x1 + i1;
    	    i1++;
	    }

		if (/*__mark(2) &&*/ i2 <= n) {
	        x2 = x2 + i2;
    	    i2++;
		}

		if (i1>n && i2>n) break;
		assert(x2==x1+i1);
    }

    i = 1;
    while (/*__mark(3) &&*/ i <= n) {
        x1 = x1 * 2;
        x2 = x2 * 2;
        i++;
    }
}
