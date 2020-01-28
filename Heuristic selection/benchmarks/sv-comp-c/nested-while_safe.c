extern void __mark(int);

int f1(int x, int g) {
    int i = 0;

    while (i < x) {
        __mark(23);
        i = i + 1;
        g = g - 2; // <--- small syntactic differences
        g = g + 1;
        while (x < i) {
            __mark(42);
            x = x + 2;
            x = x - 1;
            g = g + 1;
        }
    }
    return g;
}

int f2(int x, int g) {
    int i = 0;

    while (i < x) {
        __mark(23);
        i = i + 1;
        g = g - 1;
        while (x < i) {
            __mark(42);
            x = x + 1;
            g = g + 1;
        }
    }
    return g;
}

void main()
{
	int x,g;
	int res1=f1(x,g);
	int res2=f2(x,g);
	assert(res1==res2);
}
