# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/DAGGER-substring1.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/DAGGER-substring1.tmp.c"
# 20 "MAP/SAFE-exbench/DAGGER-substring1.tmp.c"
void main(){
int i, /*@  predicates{j<=100,j<=i,j>=i} predicates_tpl{0==0} terms_tpl{j-i} @*/ j;
int /*@  predicates{from<0,from<=i} @*/ from;
int to;
int /*@  predicates{k<0,k<from,k>100,k>=i,k>i} @*/ k;

if(!(k >= 0))return;
if(!(k <= 100))return;

if(!(from >= 0))return;
if(!(from <= k))return;

i = from;
j = 0;

while(i < k){
i++;
j++;
}

assert(j <= 100);

}
