# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
int f1(int z){
    int /*@  predicates{x<=9} predicates_tpl{0==0} @*/ x = 1;
    int y = 0;

    while(x <= 9){
        y = x + 2;
        x = 2 * y;
    }

    return 2 * x;
}

int f2(int z){
    int y = 0;
    int /*@  predicates{x<10} @*/ x = 1;

    while(x < 10){
        y = 2 + x;
        x = y + y;
    }

    return x * 2;
}

void main()
{
 int z;
 int res1=f1(z);
 int /*@  predicates{res2==res1} @*/ res2=f2(z);
 assert(res1==res2);
}
