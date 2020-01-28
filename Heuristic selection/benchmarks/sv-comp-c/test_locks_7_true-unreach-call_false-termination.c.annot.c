# 1 "/tmp/tmp.WsVqyrFrWi.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.WsVqyrFrWi.c"
void __VERIFIER_error(){assert(0);}

extern int __VERIFIER_nondet_int();
int main()
{
    int /*@  predicates{p1!=0,p1==0} predicates_tpl{0==0} @*/ p1 = __VERIFIER_nondet_int();
    int /*@  predicates{lk1!=1,lk1==0,lk1==1} @*/ lk1;

    int /*@  predicates{p2!=0,p2==0} @*/ p2 = __VERIFIER_nondet_int();
    int /*@  predicates{lk2!=1,lk2==0,lk2==1} @*/ lk2;

    int /*@  predicates{p3!=0,p3==0} @*/ p3 = __VERIFIER_nondet_int();
    int /*@  predicates{lk3!=1,lk3==0,lk3==1} @*/ lk3;

    int /*@  predicates{p4!=0,p4==0} @*/ p4 = __VERIFIER_nondet_int();
    int /*@  predicates{lk4!=1,lk4==0,lk4==1} @*/ lk4;

    int /*@  predicates{p5!=0,p5==0} @*/ p5 = __VERIFIER_nondet_int();
    int /*@  predicates{lk5!=1,lk5==0,lk5==1} @*/ lk5;

    int /*@  predicates{p6!=0,p6==0} @*/ p6 = __VERIFIER_nondet_int();
    int /*@  predicates{lk6!=1,lk6==0,lk6==1} @*/ lk6;

    int /*@  predicates{p7!=0,p7==0} @*/ p7 = __VERIFIER_nondet_int();
    int /*@  predicates{lk7!=1,lk7==0,lk7==1} @*/ lk7;


    int /*@  predicates{cond!=0,cond==0} @*/ cond;

    while(1){
        cond = __VERIFIER_nondet_int();
        if(cond == 0){
            goto out;
        } else {}
        lk1 = 0;

        lk2 = 0;

        lk3 = 0;

        lk4 = 0;

        lk5 = 0;

        lk6 = 0;

        lk7 = 0;



        if(p1 != 0){
            lk1 = 1;
        } else {}

        if(p2 != 0){
            lk2 = 1;
        } else {}

        if(p3 != 0){
            lk3 = 1;
        } else {}

        if(p4 != 0){
            lk4 = 1;
        } else {}

        if(p5 != 0){
            lk5 = 1;
        } else {}

        if(p6 != 0){
            lk6 = 1;
        } else {}

        if(p7 != 0){
            lk7 = 1;
        } else {}



        if(p1 != 0){
            if(lk1 != 1)goto ERROR;
            lk1 = 0;
        } else {}

        if(p2 != 0){
            if(lk2 != 1)goto ERROR;
            lk2 = 0;
        } else {}

        if(p3 != 0){
            if(lk3 != 1)goto ERROR;
            lk3 = 0;
        } else {}

        if(p4 != 0){
            if(lk4 != 1)goto ERROR;
            lk4 = 0;
        } else {}

        if(p5 != 0){
            if(lk5 != 1)goto ERROR;
            lk5 = 0;
        } else {}

        if(p6 != 0){
            if(lk6 != 1)goto ERROR;
            lk6 = 0;
        } else {}

        if(p7 != 0){
            if(lk7 != 1)goto ERROR;
            lk7 = 0;
        } else {}

    }
  out:
    return 0;
  ERROR: __VERIFIER_error();
    return 0;
}
