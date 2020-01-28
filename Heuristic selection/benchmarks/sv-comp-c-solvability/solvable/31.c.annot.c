# 1 "/tmp/tmp.iQTEZnXQj2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.iQTEZnXQj2.c"
void errorFn(){assert(0);}


int unknown1();






int main(){
  int /*@  predicates{i>=0} predicates_tpl{0==0} @*/ i,/*@  predicates{j<=(i+4),j<=0,j<=i,j>=(i+4),j>=0,j>=i} terms_tpl{4*j-2*i,4*j-i} @*/ j,/*@  predicates{k<=0,k<=i,k<=j,k<j,k>=0,k>=i,k>=j} terms_tpl{2*k-j,4*k-i,k-j} @*/ k,/*@  predicates{n>i} @*/ n,/*@  predicates{((m+1)<n),m>=j,m>j} @*/ m;
  if(m+1 < n); else return 0;
  for(i=0; i<n; i+=4){
    for(j=i; j<m;){
      if(unknown1()){
        if(!(j >= 0))
  errorFn();
        j++;
        k = 0;
        while(k < j){
          k++;
        }
      }
      else {
 if(!(n+j+5>i))
  errorFn();
 j+= 2;
      }
    }
  }
}
