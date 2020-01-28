int __mark(int);
int f1(int x) {
    int i = 0; // <--- i iterates from 0 to 10
    while (/*__mark(42) &*/ (i <= 10)) {
        __mark(42);
        if (i == x) {
            break;
        }
        i++;
    }
    return i;
}

int f2(int x) {
    int i = 10; // <--- i iterates from 10 to 0
    while (/*__mark(42) &*/ (i >= 0)) {
        __mark(42);
        if (i == (10 - x)) {
            break;
        }
        i--;
    }
    return 10 - i;
}

void main()
{
	int x;
	int res1=f1(x);
	int res2=f2(x);
	assert(res1==res2);
}
