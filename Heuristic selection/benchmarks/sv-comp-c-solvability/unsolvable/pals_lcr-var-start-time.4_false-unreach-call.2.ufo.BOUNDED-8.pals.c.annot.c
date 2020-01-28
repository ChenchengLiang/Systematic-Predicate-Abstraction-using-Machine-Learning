# 1 "/tmp/tmp.WsVqyrFrWi.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.WsVqyrFrWi.c"
void __VERIFIER_error(){assert(0);}
# 61 "/tmp/tmp.WsVqyrFrWi.c"
int __VERIFIER_nondet_int(void);
char __VERIFIER_nondet_char(void);
char __VERIFIER_nondet_char(void);
void assert(int arg);
void __VERIFIER_assume(int /*@  predicates{arg==0,arg==1} predicates_tpl{0==0} @*/ arg);


extern void read(int p , char m);
extern void write(int p , char m);
char nomsg =(char)-1;
char /*@  predicates{r1<4,r1==0} @*/ r1 ;
int p1 ;
char /*@  predicates{p1_old!=(-1),p1_old==(-1)} @*/ p1_old ;
char /*@  predicates{p1_new!=(-1),p1_new==(-1)} @*/ p1_new ;
char /*@  predicates{id1!=(-1),id1!=0,id1!=nomsg,id1!=p1_new,id1!=p1_old,id1==(-1),id1==0,id1==nomsg,id1==p1_new,id1==p1_old,id1>=0} @*/ id1 ;
char /*@  predicates{st1!=(-1),st1!=0,st1==(-1),st1==0,st1==1} @*/ st1 ;
char send1 ;
int mode1 ;
int alive1 ;
int p2 ;
char /*@  predicates{p2_old!=(-1),p2_old!=id1,p2_old==(-1),p2_old==id1} @*/ p2_old ;
char /*@  predicates{p2_new!=(-1),p2_new!=id1,p2_new==(-1),p2_new==id1} @*/ p2_new ;
char /*@  predicates{id2!=(-1),id2!=0,id2!=id1,id2!=nomsg,id2!=p1_new,id2!=p1_old,id2!=p2_new,id2!=p2_old,id2!=send1,id2<id1,id2==(-1),id2==0,id2==id1,id2==nomsg,id2==p1_new,id2==p1_old,id2==p2_new,id2==p2_old,id2==send1,id2>=0,id2>id1} @*/ id2 ;
char /*@  predicates{st2!=(-1),st2!=0,st2==(-1),st2==0,st2==1} @*/ st2 ;
char send2 ;
int mode2 ;
int alive2 ;
int p3 ;
char /*@  predicates{p3_old!=(-1),p3_old!=id1,p3_old!=id2,p3_old==(-1),p3_old==id1,p3_old==id2} @*/ p3_old ;
char /*@  predicates{p3_new!=(-1),p3_new!=id1,p3_new!=id2,p3_new==(-1),p3_new==id1,p3_new==id2} @*/ p3_new ;
char /*@  predicates{id3!=(-1),id3!=0,id3!=id1,id3!=id2,id3!=nomsg,id3!=p1_new,id3!=p1_old,id3!=p2_new,id3!=p2_old,id3!=p3_new,id3!=p3_old,id3!=send1,id3!=send2,id3<id1,id3<id2,id3==(-1),id3==0,id3==id1,id3==id2,id3==nomsg,id3==p1_new,id3==p1_old,id3==p2_new,id3==p2_old,id3==p3_new,id3==p3_old,id3==send1,id3==send2,id3>=0,id3>id1,id3>id2} @*/ id3 ;
char /*@  predicates{st3!=(-1),st3!=0,st3==(-1),st3==0,st3==1} @*/ st3 ;
char send3 ;
int mode3 ;
int alive3 ;
int p4 ;
char /*@  predicates{p4_old!=(-1),p4_old!=id1,p4_old!=id2,p4_old!=id3,p4_old==(-1),p4_old==id1,p4_old==id2,p4_old==id3} @*/ p4_old ;
char /*@  predicates{p4_new!=(-1),p4_new!=id1,p4_new!=id2,p4_new!=id3,p4_new==(-1),p4_new==id1,p4_new==id2,p4_new==id3} @*/ p4_new ;
char /*@  predicates{id4!=(-1),id4!=0,id4!=id1,id4!=id2,id4!=id3,id4!=nomsg,id4!=p1_new,id4!=p1_old,id4!=p2_new,id4!=p2_old,id4!=p3_new,id4!=p3_old,id4!=p4_new,id4!=p4_old,id4!=send1,id4!=send2,id4!=send3,id4<id1,id4<id2,id4<id3,id4==(-1),id4==0,id4==id1,id4==id2,id4==id3,id4==nomsg,id4==p1_new,id4==p1_old,id4==p2_new,id4==p2_old,id4==p3_new,id4==p3_old,id4==p4_new,id4==p4_old,id4==send1,id4==send2,id4==send3,id4>=0,id4>id1,id4>id2,id4>id3} @*/ id4 ;
char /*@  predicates{((((st1+st2)+st3)+st4)<=1),((((st1+st2)+st3)+st4)==1),st4!=(-1),st4!=0,st4==(-1),st4==0,st4==1} @*/ st4 ;
char send4 ;
int mode4 ;
int alive4 ;
void node1(void)
{
  char m1 ;

  {
  m1 = nomsg;
  if(mode1){
    r1 =(char)((int)r1 + 1);
    m1 = p4_old;
    p4_old = nomsg;
    if((int)m1 !=(int)nomsg){
      if(alive1){
        if((int)m1 >(int)id1){
          send1 = m1;
        } else
        if((int)m1 ==(int)id1){
          st1 =(char)1;
        }
      } else {
        send1 = m1;
      }
    }
    mode1 =(int)0;
  } else {
    if(alive1){
      p1_new = send1 != nomsg && p1_new == nomsg ? send1 : p1_new;
    }
    mode1 =(int)1;
  }
  return;
}
}
void node2(void)
{
  char m2 ;

  {
  m2 = nomsg;
  if(mode2){
    m2 = p1_old;
    p1_old = nomsg;
    if((int)m2 !=(int)nomsg){
      if(alive2){
        if((int)m2 >(int)id2){
          send2 = m2;
        } else
        if((int)m2 ==(int)id2){
          st2 =(char)1;
        }
      } else {
        send2 = m2;
      }
    }
    mode2 =(int)0;
  } else {
    if(alive2){
      p2_new = send2 != nomsg && p2_new == nomsg ? send2 : p2_new;
    } else
    if((int)send2 !=(int)id2){
      p2_new = send2 != nomsg && p2_new == nomsg ? send2 : p2_new;
    }
    mode2 =(int)1;
  }
  return;
}
}
void node3(void)
{
  char m3 ;

  {
  m3 = nomsg;
  if(mode3){
    m3 = p2_old;
    p2_old = nomsg;
    if((int)m3 !=(int)nomsg){
      if(alive3){
        if((int)m3 >(int)id3){
          send3 = m3;
        } else
        if((int)m3 ==(int)id3){
          st3 =(char)1;
        }
      } else {
        send3 = m3;
      }
    }
    mode3 =(int)0;
  } else {
    if(alive3){
      p3_new = send3 != nomsg && p3_new == nomsg ? send3 : p3_new;
    } else
    if((int)send3 !=(int)id3){
      p3_new = send3 != nomsg && p3_new == nomsg ? send3 : p3_new;
    }
    mode3 =(int)1;
  }
  return;
}
}
void node4(void)
{
  char m4 ;

  {
  m4 = nomsg;
  if(mode4){
    m4 = p3_old;
    p3_old = nomsg;
    if((int)m4 !=(int)nomsg){
      if(alive4){
        if((int)m4 >(int)id4){
          send4 = m4;
        } else
        if((int)m4 ==(int)id4){
          st4 =(char)1;
        }
      } else {
        send4 = m4;
      }
    }
    mode4 =(int)0;
  } else {
    if(alive4){
      p4_new = send4 != nomsg && p4_new == nomsg ? send4 : p4_new;
    } else
    if((int)send4 !=(int)id4){
      p4_new = send4 != nomsg && p4_new == nomsg ? send4 : p4_new;
    }
    mode4 =(int)1;
  }
  return;
}
}
int init(void)
{
  int /*@  predicates{tmp==0,tmp==1} @*/ tmp ;

  {
  if((int)r1 == 0){
    if((((int)alive1 +(int)alive2)+(int)alive3)+(int)alive4 >= 1){
      if((int)id1 >= 0){
        if((int)st1 == 0){
          if((int)send1 ==(int)id1){
            if((int)mode1 == 0){
              if((int)id2 >= 0){
                if((int)st2 == 0){
                  if((int)send2 ==(int)id2){
                    if((int)mode2 == 0){
                      if((int)id3 >= 0){
                        if((int)st3 == 0){
                          if((int)send3 ==(int)id3){
                            if((int)mode3 == 0){
                              if((int)id4 >= 0){
                                if((int)st4 == 0){
                                  if((int)send4 ==(int)id4){
                                    if((int)mode4 == 0){
                                      if((int)id1 !=(int)id2){
                                        if((int)id1 !=(int)id3){
                                          if((int)id1 !=(int)id4){
                                            if((int)id2 !=(int)id3){
                                              if((int)id2 !=(int)id4){
                                                if((int)id3 !=(int)id4){
                                                  tmp = 1;
                                                } else {
                                                  tmp = 0;
                                                }
                                              } else {
                                                tmp = 0;
                                              }
                                            } else {
                                              tmp = 0;
                                            }
                                          } else {
                                            tmp = 0;
                                          }
                                        } else {
                                          tmp = 0;
                                        }
                                      } else {
                                        tmp = 0;
                                      }
                                    } else {
                                      tmp = 0;
                                    }
                                  } else {
                                    tmp = 0;
                                  }
                                } else {
                                  tmp = 0;
                                }
                              } else {
                                tmp = 0;
                              }
                            } else {
                              tmp = 0;
                            }
                          } else {
                            tmp = 0;
                          }
                        } else {
                          tmp = 0;
                        }
                      } else {
                        tmp = 0;
                      }
                    } else {
                      tmp = 0;
                    }
                  } else {
                    tmp = 0;
                  }
                } else {
                  tmp = 0;
                }
              } else {
                tmp = 0;
              }
            } else {
              tmp = 0;
            }
          } else {
            tmp = 0;
          }
        } else {
          tmp = 0;
        }
      } else {
        tmp = 0;
      }
    } else {
      tmp = 0;
    }
  } else {
    tmp = 0;
  }
  return(tmp);
}
}
int check(void)
{
  int /*@  predicates{tmp==0,tmp==1} @*/ tmp ;

  {
  if((((int)st1 +(int)st2)+(int)st3)+(int)st4 <= 1){
    if((int)r1 < 4){
      tmp = 1;
    } else
    if((((int)st1 +(int)st2)+(int)st3)+(int)st4 == 1){
      tmp = 1;
    } else {
      tmp = 0;
    }
  } else {
    tmp = 0;
  }
  return(tmp);
}
}
int main(void)
{
  int /*@  predicates{c1==0,c1==1} @*/ c1 ;
  int /*@  predicates{i2<8,i2<=8,i2==0,i2==1,i2>=0,i2>=1} @*/ i2 ;

  {
  c1 = 0;
  r1 = __VERIFIER_nondet_char();
  id1 = __VERIFIER_nondet_char();
  st1 = __VERIFIER_nondet_char();
  send1 = __VERIFIER_nondet_char();
  mode1 = __VERIFIER_nondet_int();
  alive1 = __VERIFIER_nondet_int();
  id2 = __VERIFIER_nondet_char();
  st2 = __VERIFIER_nondet_char();
  send2 = __VERIFIER_nondet_char();
  mode2 = __VERIFIER_nondet_int();
  alive2 = __VERIFIER_nondet_int();
  id3 = __VERIFIER_nondet_char();
  st3 = __VERIFIER_nondet_char();
  send3 = __VERIFIER_nondet_char();
  mode3 = __VERIFIER_nondet_int();
  alive3 = __VERIFIER_nondet_int();
  id4 = __VERIFIER_nondet_char();
  st4 = __VERIFIER_nondet_char();
  send4 = __VERIFIER_nondet_char();
  mode4 = __VERIFIER_nondet_int();
  alive4 = __VERIFIER_nondet_int();
  i2 = init();
assume(i2);
  p1_old = nomsg;
  p1_new = nomsg;
  p2_old = nomsg;
  p2_new = nomsg;
  p3_old = nomsg;
  p3_new = nomsg;
  p4_old = nomsg;
  p4_new = nomsg;
  i2 = 0;
  while(i2 < 8){
    {
    node1();
    node2();
    node3();
    node4();
    p1_old = p1_new;
    p1_new = nomsg;
    p2_old = p2_new;
    p2_new = nomsg;
    p3_old = p3_new;
    p3_new = nomsg;
    p4_old = p4_new;
    p4_new = nomsg;
    c1 = check();
    assert(c1);
    i2 ++;
    }
  }
}
return 0;
}
void assert(int arg)
{


  {
  if(! arg){
    {
    ERROR: __VERIFIER_error();
    }
  }
}
}
