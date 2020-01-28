# 1 "/tmp/tmp.ryE8Ak88j0.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.ryE8Ak88j0.c"
int __mark(int);
void main(){
 int x;
    int /*@  predicates{i1<=10,i1<=x,i1<x,i1==x,i1>=0} predicates_tpl{0==0} @*/ i1 = 0;
 int /*@  predicates{(i1==(10-i2)),(i2==(10-x)),i2<=10,i2>(10-x),i2>=(10-x),i2>=0} @*/ i2 = 10;

    while((i1 <= 10)){

        if(i1 == x){
            break;
        }
        i1++;
    }

    while((i2 >= 0)){

        if(i2 ==(10 - x)){
            break;
        }
        i2--;
    }

 assert(i1==10-i2);
}
