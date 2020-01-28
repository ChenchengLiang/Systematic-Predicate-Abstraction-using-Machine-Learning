# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.nYfAWY3w8B.c"
# 1 "MAP/SAFE-exbench/DAGGER-lifnat.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/DAGGER-lifnat.tmp.c"
# 18 "MAP/SAFE-exbench/DAGGER-lifnat.tmp.c"
int nondet(){int i; return i;}


void main()
{
 int /*@  predicates{I<1,I>=0} predicates_tpl{0==0} @*/ I;
 int /*@  predicates{Sa<1,Sa<=I,Sa>=0,Sa>=I} terms_tpl{Sa-I} @*/ Sa;
 int /*@  predicates{Ea<1,Ea<=I,Ea<=Sa,Ea>=0,Ea>=I,Ea>=Sa} terms_tpl{Ea-I,Ea-Sa} @*/ Ea;
 int /*@  predicates{((Ea+Ma)<=1),Ma<=Ea,Ma<=I,Ma<=Sa,Ma>=0,Ma>=Ea,Ma>=I,Ma>=Sa} terms_tpl{Ma+Ea,Ma+I,Ma+Sa} @*/ Ma;
 int /*@  predicates{Sb<1,Sb<=Ea,Sb<=I,Sb<=Ma,Sb<=Sa,Sb>=0,Sb>=Ea,Sb>=I,Sb>=Ma,Sb>=Sa} terms_tpl{Sb+Ma,Sb-Ea,Sb-I,Sb-Sa} @*/ Sb;
 int /*@  predicates{Eb<1,Eb<=Ea,Eb<=I,Eb<=Ma,Eb<=Sa,Eb<=Sb,Eb>=0,Eb>=Ea,Eb>=I,Eb>=Ma,Eb>=Sa,Eb>=Sb} terms_tpl{Eb+Ma,Eb-Ea,Eb-I,Eb-Sa,Eb-Sb} @*/ Eb;
 int /*@  predicates{(((((((I+Sa)+Ea)+Ma)+Sb)+Eb)+Mb)>=1),((Eb+Mb)<=1),Mb<=Ea,Mb<=Eb,Mb<=I,Mb<=Ma,Mb<=Sa,Mb<=Sb,Mb>=0,Mb>=Ea,Mb>=Eb,Mb>=I,Mb>=Ma,Mb>=Sa,Mb>=Sb} terms_tpl{Mb+Ea,Mb+Eb,Mb+I,Mb+Sa,Mb+Sb,Mb-Ma} @*/ Mb;

 if(!(I>=1))return;
 Sa=0;
 Ea=0;
 Ma=0;
 Sb=0;
 Eb=0;
 Mb=0;

 while(nondet())
 {
  if(nondet())
  {
   if(!(Eb >=1))return;
   Eb = Eb -1;
   Mb = Mb +1;
  }
  else
  {
   if(nondet())
   {
    if(!(Ea >=1))return;
    Ea = Ea -1;
    Ma = Ma +1;
   }
   else
   {
    if(nondet())
    {
     if(!(Sa>=1))return;
     Sa=Sa-1;
     I=I+Sb+Eb+Mb;
     Sb=0;
     Eb=1;
     Mb=0;

    }
    else
    {
     if(nondet())
     {
      if(!(Sb>=1))return;
      I=I+Sb+Eb+Mb;
      Sb=0;
      Eb=1;
      Mb=0;
     }
     else
     {
      if(nondet())
      {

       if(!(Sb>=1))return;
       Sb=Sb-1;
       I=I+Sa+Ea+Ma;
       Sa=0;
       Ea=1;
       Ma=0;

      }
      else
      {
       if(nondet())
       {
        if(!(Sa>=1))return;
        I=I+Sa+Ea+Ma;
        Sa=0;
        Ea=1;
        Ma=0;
       }
       else
       {
        if(nondet())
        {
         if(!(Sa>=1))return;
         Sa=Sa-1;
         Sb=Sb+Eb+Mb+1;
         Eb=0;
         Mb=0;
        }
        else
        {
         if(nondet())
         {
          if(!(I>=1))return;
          I=I-1;
          Sb=Sb+Eb+Mb+1;
          Eb=0;
          Mb=0;
         }
         else
         {
          if(nondet())
          {
           if(!(I >= 1))return;
           I = I -1;
           Sa = Sa + Ea + Ma + 1;
           Ea = 0;
           Ma =0;
          }
          else
          {
           if(!(Sb >= 1))return;
           Sb = Sb-1;
           Sa = Ea+Ma+1;
           Ea = 0;
           Ma = 0;

          }
         }
        }
       }
      }
     }
    }
   }
  }
 }

 assert(Ea + Ma <= 1);
 assert(Eb + Mb <= 1);
 assert(I >= 0);
 assert(Sa >= 0);
 assert(Ma >= 0);
 assert(Ea >= 0);
 assert(Sb >= 0);
 assert(Mb >= 0);
 assert(Eb >= 0);
 assert(I + Sa + Ea + Ma + Sb + Eb + Mb >= 1);
}
