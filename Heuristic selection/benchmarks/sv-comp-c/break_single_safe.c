extern int __mark(int);
int f1(int x) {
    int i = 0;
    while (__mark(42) && (i <= 10)) {
        /* __mark(42); */
        if (i == x) {
            break; // <--- conditional break
        }
        i++;
    }
    return i;
}

int f2(int x) {
    int i = 0;
    while (__mark(42) && ((i <= 10) && (i != x))) {
        /* __mark(42); */
        i++;
    }
    return i;
}

void main()
{
	int x;
	int res1=f1(x);
	int res2=f2(x);
	assert(res1==res2);
}
