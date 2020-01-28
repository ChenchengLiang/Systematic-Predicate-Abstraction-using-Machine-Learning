extern int __mark(int);

int f1(int n) {
    int i = 1;
    int j = 0; // <--- j is assigned 0

    if (n < 1) {
        n = 1;
    }

    __mark(23);
    while (__mark(42) && i <= n) {
        j = j + 2;
        i++;
    }

    return j;
}

int f2(int n) {
    int i = 1;
    int j = 2; // <--- j is assigned 2

    if (n < 1) {
        n = 1;
    }

    __mark(23);
    while (__mark(42) && i < n) {
        j = j + 2;
        i++;
    }

    return j;
}

void main()
{
	int n;
	int res1=f1(n);
	int res2=f2(n);
	assert(res1==res2);
}
