void errorFn() {ERROR: assert(0); goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/SVCOMP13-locks-test_locks_9_safe.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/SVCOMP13-locks-test_locks_9_safe.tmp.c"
# 18 "MAP/SAFE-exbench/SVCOMP13-locks-test_locks_9_safe.tmp.c"
////extern int __VERIFIER_nondet_int();
int main()
{
    int p1 = __VERIFIER_nondet_int();
    int lk1;

    int p2 = __VERIFIER_nondet_int();
    int lk2;

    int p3 = __VERIFIER_nondet_int();
    int lk3;

    int p4 = __VERIFIER_nondet_int();
    int lk4;

    int p5 = __VERIFIER_nondet_int();
    int lk5;

    int p6 = __VERIFIER_nondet_int();
    int lk6;

    int p7 = __VERIFIER_nondet_int();
    int lk7;

    int p8 = __VERIFIER_nondet_int();
    int lk8;

    int p9 = __VERIFIER_nondet_int();
    int lk9;


    int cond;

    while(1) {
        cond = __VERIFIER_nondet_int();
        if (cond == 0) {
            goto out;
        } else {}
        lk1 = 0;

        lk2 = 0;

        lk3 = 0;

        lk4 = 0;

        lk5 = 0;

        lk6 = 0;

        lk7 = 0;

        lk8 = 0;

        lk9 = 0;



        if (p1 != 0) {
            lk1 = 1;
        } else {}

        if (p2 != 0) {
            lk2 = 1;
        } else {}

        if (p3 != 0) {
            lk3 = 1;
        } else {}

        if (p4 != 0) {
            lk4 = 1;
        } else {}

        if (p5 != 0) {
            lk5 = 1;
        } else {}

        if (p6 != 0) {
            lk6 = 1;
        } else {}

        if (p7 != 0) {
            lk7 = 1;
        } else {}

        if (p8 != 0) {
            lk8 = 1;
        } else {}

        if (p9 != 0) {
            lk9 = 1;
        } else {}



        if (p1 != 0) {
            if (lk1 != 1) goto ERROR;
            lk1 = 0;
        } else {}

        if (p2 != 0) {
            if (lk2 != 1) goto ERROR;
            lk2 = 0;
        } else {}

        if (p3 != 0) {
            if (lk3 != 1) goto ERROR;
            lk3 = 0;
        } else {}

        if (p4 != 0) {
            if (lk4 != 1) goto ERROR;
            lk4 = 0;
        } else {}

        if (p5 != 0) {
            if (lk5 != 1) goto ERROR;
            lk5 = 0;
        } else {}

        if (p6 != 0) {
            if (lk6 != 1) goto ERROR;
            lk6 = 0;
        } else {}

        if (p7 != 0) {
            if (lk7 != 1) goto ERROR;
            lk7 = 0;
        } else {}

        if (p8 != 0) {
            if (lk8 != 1) goto ERROR;
            lk8 = 0;
        } else {}

        if (p9 != 0) {
            if (lk9 != 1) goto ERROR;
            lk9 = 0;
        } else {}

    }
  out:
    return 0;
  ERROR: assert(0);
    return 0;
}
