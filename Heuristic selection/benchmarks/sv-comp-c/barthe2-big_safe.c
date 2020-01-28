extern int __mark(int);
int f1(int n) {
    int i = 1;
    int x = 1;

    while (__mark(1) && i <= n) {
        x = x * 5;
        i++;
    }

    i = 0; // <--- i is assigned 0

    while (__mark(2) && i <= n) {
        x = x + i;
        i++;
    }
    return x;
}

int f2(int n) {
    int i = 1;
    int x = 1;

    while (__mark(1) && i <= n) {
        x = x * 5;
        i++;
    }

    i = 1; // <--- i is assigned 1

    while (__mark(2) && i <= n) {
        x = x + i;
        i++;
    }
    return x;
}

void main()
{
	int n;
	int res1=f1(n);
	int res2=f2(n);
	assert(res1==res2);
}
