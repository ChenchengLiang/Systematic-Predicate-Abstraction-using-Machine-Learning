# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
extern int __mark(int);
void main(){
 int x;
    int /*@  predicates{i1<=10,i1<=x,i1<x,i1==x,i1>=0} predicates_tpl{0==0} @*/ i1 = 0;
    while((i1 <= 10)){

        if(i1 == x){
            break;
        }
        i1++;
    }

    int /*@  predicates{((i2<=10)&&(i2!=x)),i2<=10,i2<=x,i2<x,i2==i1,i2>=0} @*/ i2 = 0;
    while(((i2 <= 10)&&(i2 != x))){

        i2++;
    }
 assert(i1 == i2);
}
