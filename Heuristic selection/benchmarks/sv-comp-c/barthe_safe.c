extern int __mark(int);

int f1(int n, int c) {
    int i = 0;
    int j = 0;
    int x = 0;

    while (__mark(42) && (i < n)) {
        /* __mark(42); */
        j = 5 * i + c;
        x = x + j;
        i++;
    }
    return x;
}

extern int __mark(int);

int f2(int n, int c) {
    int i = 0;
    int j = c;
    int x = 0;

    while (__mark(42) && (i < n)) {
        /* __mark(42); */
        x = x + j;
        j = j + 5;
        i++;
    }
    return x;
}

void main()
{
	int n,c;
	int res1=f1(n,c);
	int res2=f2(n,c);
	assert(res1==res2);
}
