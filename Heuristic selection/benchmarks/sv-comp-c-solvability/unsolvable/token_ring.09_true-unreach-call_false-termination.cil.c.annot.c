# 1 "/tmp/tmp.WsVqyrFrWi.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.WsVqyrFrWi.c"
extern void __VERIFIER_error();




void error(void)
{

  {
  ERROR: __VERIFIER_error();
  return;
}
}
int /*@  predicates{m_pc==0,m_pc==1} predicates_tpl{0==0} @*/ m_pc = 0;
int /*@  predicates{t1_pc==0,t1_pc==1} @*/ t1_pc = 0;
int /*@  predicates{t2_pc==0,t2_pc==1} @*/ t2_pc = 0;
int /*@  predicates{t3_pc==0,t3_pc==1} @*/ t3_pc = 0;
int /*@  predicates{t4_pc==0,t4_pc==1} @*/ t4_pc = 0;
int /*@  predicates{t5_pc==0,t5_pc==1} @*/ t5_pc = 0;
int /*@  predicates{t6_pc==0,t6_pc==1} @*/ t6_pc = 0;
int /*@  predicates{t7_pc==0,t7_pc==1} @*/ t7_pc = 0;
int /*@  predicates{t8_pc==0,t8_pc==1} @*/ t8_pc = 0;
int /*@  predicates{t9_pc==0,t9_pc==1} @*/ t9_pc = 0;
int /*@  predicates{m_st==0,m_st==1,m_st==2} @*/ m_st ;
int /*@  predicates{t1_st==0,t1_st==1,t1_st==2} @*/ t1_st ;
int /*@  predicates{t2_st==0,t2_st==1,t2_st==2} @*/ t2_st ;
int /*@  predicates{t3_st==0,t3_st==1,t3_st==2} @*/ t3_st ;
int /*@  predicates{t4_st==0,t4_st==1,t4_st==2} @*/ t4_st ;
int /*@  predicates{t5_st==0,t5_st==1,t5_st==2} @*/ t5_st ;
int /*@  predicates{t6_st==0,t6_st==1,t6_st==2} @*/ t6_st ;
int /*@  predicates{t7_st==0,t7_st==1,t7_st==2} @*/ t7_st ;
int /*@  predicates{t8_st==0,t8_st==1,t8_st==2} @*/ t8_st ;
int /*@  predicates{t9_st==0,t9_st==1,t9_st==2} @*/ t9_st ;
int /*@  predicates{m_i==1} @*/ m_i ;
int /*@  predicates{t1_i==1} @*/ t1_i ;
int /*@  predicates{t2_i==1} @*/ t2_i ;
int /*@  predicates{t3_i==1} @*/ t3_i ;
int /*@  predicates{t4_i==1} @*/ t4_i ;
int /*@  predicates{t5_i==1} @*/ t5_i ;
int /*@  predicates{t6_i==1} @*/ t6_i ;
int /*@  predicates{t7_i==1} @*/ t7_i ;
int /*@  predicates{t8_i==1} @*/ t8_i ;
int /*@  predicates{t9_i==1} @*/ t9_i ;
int /*@  predicates{M_E==0,M_E==1,M_E==2} @*/ M_E = 2;
int /*@  predicates{T1_E==0,T1_E==1,T1_E==2} @*/ T1_E = 2;
int /*@  predicates{T2_E==0,T2_E==1,T2_E==2} @*/ T2_E = 2;
int /*@  predicates{T3_E==0,T3_E==1,T3_E==2} @*/ T3_E = 2;
int /*@  predicates{T4_E==0,T4_E==1,T4_E==2} @*/ T4_E = 2;
int /*@  predicates{T5_E==0,T5_E==1,T5_E==2} @*/ T5_E = 2;
int /*@  predicates{T6_E==0,T6_E==1,T6_E==2} @*/ T6_E = 2;
int /*@  predicates{T7_E==0,T7_E==1,T7_E==2} @*/ T7_E = 2;
int /*@  predicates{T8_E==0,T8_E==1,T8_E==2} @*/ T8_E = 2;
int /*@  predicates{T9_E==0,T9_E==1,T9_E==2} @*/ T9_E = 2;
int /*@  predicates{E_M==0,E_M==1,E_M==2} @*/ E_M = 2;
int /*@  predicates{E_1==0,E_1==1,E_1==2} @*/ E_1 = 2;
int /*@  predicates{E_2==0,E_2==1,E_2==2} @*/ E_2 = 2;
int /*@  predicates{E_3==0,E_3==1,E_3==2} @*/ E_3 = 2;
int /*@  predicates{E_4==0,E_4==1,E_4==2} @*/ E_4 = 2;
int /*@  predicates{E_5==0,E_5==1,E_5==2} @*/ E_5 = 2;
int /*@  predicates{E_6==0,E_6==1,E_6==2} @*/ E_6 = 2;
int /*@  predicates{E_7==0,E_7==1,E_7==2} @*/ E_7 = 2;
int /*@  predicates{E_8==0,E_8==1,E_8==2} @*/ E_8 = 2;
int /*@  predicates{E_9==0,E_9==1,E_9==2} @*/ E_9 = 2;
int is_master_triggered(void);
int is_transmit1_triggered(void);
int is_transmit2_triggered(void);
int is_transmit3_triggered(void);
int is_transmit4_triggered(void);
int is_transmit5_triggered(void);
int is_transmit6_triggered(void);
int is_transmit7_triggered(void);
int is_transmit8_triggered(void);
int is_transmit9_triggered(void);
void immediate_notify(void);
int token ;
int __VERIFIER_nondet_int();
int /*@  predicates{(token!=(local+9))} @*/ local ;
void master(void)
{

  {
  if(m_pc == 0){
    goto M_ENTRY;
  } else {
    if(m_pc == 1){
      goto M_WAIT;
    } else {

    }
  }
  M_ENTRY: ;
  {
  while(1){
    while_0_continue: ;
    {
    token = __VERIFIER_nondet_int();
    local = token;
    E_1 = 1;
    immediate_notify();
    E_1 = 2;
    m_pc = 1;
    m_st = 2;
    }

    goto return_label;
    M_WAIT: ;
    if(token != local + 9){
      {
assert(0);
      }
    } else {

    }
  }
  while_0_break: ;
  }

  return_label:
  return;
}
}
void transmit1(void)
{

  {
  if(t1_pc == 0){
    goto T1_ENTRY;
  } else {
    if(t1_pc == 1){
      goto T1_WAIT;
    } else {

    }
  }
  T1_ENTRY: ;
  {
  while(1){
    while_1_continue: ;
    t1_pc = 1;
    t1_st = 2;

    goto return_label;
    T1_WAIT:
    {
    token += 1;
    E_2 = 1;
    immediate_notify();
    E_2 = 2;
    }
  }
  while_1_break: ;
  }

  return_label:
  return;
}
}
void transmit2(void)
{

  {
  if(t2_pc == 0){
    goto T2_ENTRY;
  } else {
    if(t2_pc == 1){
      goto T2_WAIT;
    } else {

    }
  }
  T2_ENTRY: ;
  {
  while(1){
    while_2_continue: ;
    t2_pc = 1;
    t2_st = 2;

    goto return_label;
    T2_WAIT:
    {
    token += 1;
    E_3 = 1;
    immediate_notify();
    E_3 = 2;
    }
  }
  while_2_break: ;
  }

  return_label:
  return;
}
}
void transmit3(void)
{

  {
  if(t3_pc == 0){
    goto T3_ENTRY;
  } else {
    if(t3_pc == 1){
      goto T3_WAIT;
    } else {

    }
  }
  T3_ENTRY: ;
  {
  while(1){
    while_3_continue: ;
    t3_pc = 1;
    t3_st = 2;

    goto return_label;
    T3_WAIT:
    {
    token += 1;
    E_4 = 1;
    immediate_notify();
    E_4 = 2;
    }
  }
  while_3_break: ;
  }

  return_label:
  return;
}
}
void transmit4(void)
{

  {
  if(t4_pc == 0){
    goto T4_ENTRY;
  } else {
    if(t4_pc == 1){
      goto T4_WAIT;
    } else {

    }
  }
  T4_ENTRY: ;
  {
  while(1){
    while_4_continue: ;
    t4_pc = 1;
    t4_st = 2;

    goto return_label;
    T4_WAIT:
    {
    token += 1;
    E_5 = 1;
    immediate_notify();
    E_5 = 2;
    }
  }
  while_4_break: ;
  }

  return_label:
  return;
}
}
void transmit5(void)
{

  {
  if(t5_pc == 0){
    goto T5_ENTRY;
  } else {
    if(t5_pc == 1){
      goto T5_WAIT;
    } else {

    }
  }
  T5_ENTRY: ;
  {
  while(1){
    while_5_continue: ;
    t5_pc = 1;
    t5_st = 2;

    goto return_label;
    T5_WAIT:
    {
    token += 1;
    E_6 = 1;
    immediate_notify();
    E_6 = 2;
    }
  }
  while_5_break: ;
  }

  return_label:
  return;
}
}
void transmit6(void)
{

  {
  if(t6_pc == 0){
    goto T6_ENTRY;
  } else {
    if(t6_pc == 1){
      goto T6_WAIT;
    } else {

    }
  }
  T6_ENTRY: ;
  {
  while(1){
    while_6_continue: ;
    t6_pc = 1;
    t6_st = 2;

    goto return_label;
    T6_WAIT:
    {
    token += 1;
    E_7 = 1;
    immediate_notify();
    E_7 = 2;
    }
  }
  while_6_break: ;
  }

  return_label:
  return;
}
}
void transmit7(void)
{

  {
  if(t7_pc == 0){
    goto T7_ENTRY;
  } else {
    if(t7_pc == 1){
      goto T7_WAIT;
    } else {

    }
  }
  T7_ENTRY: ;
  {
  while(1){
    while_7_continue: ;
    t7_pc = 1;
    t7_st = 2;

    goto return_label;
    T7_WAIT:
    {
    token += 1;
    E_8 = 1;
    immediate_notify();
    E_8 = 2;
    }
  }
  while_7_break: ;
  }

  return_label:
  return;
}
}
void transmit8(void)
{

  {
  if(t8_pc == 0){
    goto T8_ENTRY;
  } else {
    if(t8_pc == 1){
      goto T8_WAIT;
    } else {

    }
  }
  T8_ENTRY: ;
  {
  while(1){
    while_8_continue: ;
    t8_pc = 1;
    t8_st = 2;

    goto return_label;
    T8_WAIT:
    {
    token += 1;
    E_9 = 1;
    immediate_notify();
    E_9 = 2;
    }
  }
  while_8_break: ;
  }

  return_label:
  return;
}
}
void transmit9(void)
{

  {
  if(t9_pc == 0){
    goto T9_ENTRY;
  } else {
    if(t9_pc == 1){
      goto T9_WAIT;
    } else {

    }
  }
  T9_ENTRY: ;
  {
  while(1){
    while_9_continue: ;
    t9_pc = 1;
    t9_st = 2;

    goto return_label;
    T9_WAIT:
    {
    token += 1;
    E_M = 1;
    immediate_notify();
    E_M = 2;
    }
  }
  while_9_break: ;
  }

  return_label:
  return;
}
}
int is_master_triggered(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if(m_pc == 1){
    if(E_M == 1){
      __retres1 = 1;
      goto return_label;
    } else {

    }
  } else {

  }
  __retres1 = 0;
  return_label:
  return(__retres1);
}
}
int is_transmit1_triggered(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if(t1_pc == 1){
    if(E_1 == 1){
      __retres1 = 1;
      goto return_label;
    } else {

    }
  } else {

  }
  __retres1 = 0;
  return_label:
  return(__retres1);
}
}
int is_transmit2_triggered(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if(t2_pc == 1){
    if(E_2 == 1){
      __retres1 = 1;
      goto return_label;
    } else {

    }
  } else {

  }
  __retres1 = 0;
  return_label:
  return(__retres1);
}
}
int is_transmit3_triggered(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if(t3_pc == 1){
    if(E_3 == 1){
      __retres1 = 1;
      goto return_label;
    } else {

    }
  } else {

  }
  __retres1 = 0;
  return_label:
  return(__retres1);
}
}
int is_transmit4_triggered(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if(t4_pc == 1){
    if(E_4 == 1){
      __retres1 = 1;
      goto return_label;
    } else {

    }
  } else {

  }
  __retres1 = 0;
  return_label:
  return(__retres1);
}
}
int is_transmit5_triggered(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if(t5_pc == 1){
    if(E_5 == 1){
      __retres1 = 1;
      goto return_label;
    } else {

    }
  } else {

  }
  __retres1 = 0;
  return_label:
  return(__retres1);
}
}
int is_transmit6_triggered(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if(t6_pc == 1){
    if(E_6 == 1){
      __retres1 = 1;
      goto return_label;
    } else {

    }
  } else {

  }
  __retres1 = 0;
  return_label:
  return(__retres1);
}
}
int is_transmit7_triggered(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if(t7_pc == 1){
    if(E_7 == 1){
      __retres1 = 1;
      goto return_label;
    } else {

    }
  } else {

  }
  __retres1 = 0;
  return_label:
  return(__retres1);
}
}
int is_transmit8_triggered(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if(t8_pc == 1){
    if(E_8 == 1){
      __retres1 = 1;
      goto return_label;
    } else {

    }
  } else {

  }
  __retres1 = 0;
  return_label:
  return(__retres1);
}
}
int is_transmit9_triggered(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if(t9_pc == 1){
    if(E_9 == 1){
      __retres1 = 1;
      goto return_label;
    } else {

    }
  } else {

  }
  __retres1 = 0;
  return_label:
  return(__retres1);
}
}
void update_channels(void)
{

  {

  return;
}
}
void init_threads(void)
{

  {
  if(m_i == 1){
    m_st = 0;
  } else {
    m_st = 2;
  }
  if(t1_i == 1){
    t1_st = 0;
  } else {
    t1_st = 2;
  }
  if(t2_i == 1){
    t2_st = 0;
  } else {
    t2_st = 2;
  }
  if(t3_i == 1){
    t3_st = 0;
  } else {
    t3_st = 2;
  }
  if(t4_i == 1){
    t4_st = 0;
  } else {
    t4_st = 2;
  }
  if(t5_i == 1){
    t5_st = 0;
  } else {
    t5_st = 2;
  }
  if(t6_i == 1){
    t6_st = 0;
  } else {
    t6_st = 2;
  }
  if(t7_i == 1){
    t7_st = 0;
  } else {
    t7_st = 2;
  }
  if(t8_i == 1){
    t8_st = 0;
  } else {
    t8_st = 2;
  }
  if(t9_i == 1){
    t9_st = 0;
  } else {
    t9_st = 2;
  }

  return;
}
}
int exists_runnable_thread(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if(m_st == 0){
    __retres1 = 1;
    goto return_label;
  } else {
    if(t1_st == 0){
      __retres1 = 1;
      goto return_label;
    } else {
      if(t2_st == 0){
        __retres1 = 1;
        goto return_label;
      } else {
        if(t3_st == 0){
          __retres1 = 1;
          goto return_label;
        } else {
          if(t4_st == 0){
            __retres1 = 1;
            goto return_label;
          } else {
            if(t5_st == 0){
              __retres1 = 1;
              goto return_label;
            } else {
              if(t6_st == 0){
                __retres1 = 1;
                goto return_label;
              } else {
                if(t7_st == 0){
                  __retres1 = 1;
                  goto return_label;
                } else {
                  if(t8_st == 0){
                    __retres1 = 1;
                    goto return_label;
                  } else {
                    if(t9_st == 0){
                      __retres1 = 1;
                      goto return_label;
                    } else {

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
  __retres1 = 0;
  return_label:
  return(__retres1);
}
}
void eval(void)
{
  int /*@  predicates{tmp!=0,tmp==0,tmp==1} @*/ tmp ;

  {
  {
  while(1){
    while_10_continue: ;
    {
    tmp = exists_runnable_thread();
    }
    if(tmp){

    } else {
      goto while_10_break;
    }
    if(m_st == 0){
      int /*@  predicates{tmp_ndt_1!=0,tmp_ndt_1==0} @*/ tmp_ndt_1;
      tmp_ndt_1 = __VERIFIER_nondet_int();
      if(tmp_ndt_1){
        {
        m_st = 1;
        master();
        }
      } else {

      }
    } else {

    }
    if(t1_st == 0){
      int /*@  predicates{tmp_ndt_2!=0,tmp_ndt_2==0} @*/ tmp_ndt_2;
      tmp_ndt_2 = __VERIFIER_nondet_int();
      if(tmp_ndt_2){
        {
        t1_st = 1;
        transmit1();
        }
      } else {

      }
    } else {

    }
    if(t2_st == 0){
        int /*@  predicates{tmp_ndt_3!=0,tmp_ndt_3==0} @*/ tmp_ndt_3;
      tmp_ndt_3 = __VERIFIER_nondet_int();
      if(tmp_ndt_3){
        {
        t2_st = 1;
        transmit2();
        }
      } else {

      }
    } else {

    }
    if(t3_st == 0){
      int /*@  predicates{tmp_ndt_4!=0,tmp_ndt_4==0} @*/ tmp_ndt_4;
      tmp_ndt_4 = __VERIFIER_nondet_int();
      if(tmp_ndt_4){
        {
        t3_st = 1;
        transmit3();
        }
      } else {

      }
    } else {

    }
    if(t4_st == 0){
      int /*@  predicates{tmp_ndt_5!=0,tmp_ndt_5==0} @*/ tmp_ndt_5;
      tmp_ndt_5 = __VERIFIER_nondet_int();
      if(tmp_ndt_5){
        {
        t4_st = 1;
        transmit4();
        }
      } else {

      }
    } else {

    }
    if(t5_st == 0){
      int /*@  predicates{tmp_ndt_6!=0,tmp_ndt_6==0} @*/ tmp_ndt_6;
      tmp_ndt_6 = __VERIFIER_nondet_int();
      if(tmp_ndt_6){
        {
        t5_st = 1;
        transmit5();
        }
      } else {

      }
    } else {

    }
    if(t6_st == 0){
      int /*@  predicates{tmp_ndt_7!=0,tmp_ndt_7==0} @*/ tmp_ndt_7;
      tmp_ndt_7 = __VERIFIER_nondet_int();
      if(tmp_ndt_7){
        {
        t6_st = 1;
        transmit6();
        }
      } else {

      }
    } else {

    }
    if(t7_st == 0){
      int /*@  predicates{tmp_ndt_8!=0,tmp_ndt_8==0} @*/ tmp_ndt_8;
      tmp_ndt_8 = __VERIFIER_nondet_int();
      if(tmp_ndt_8){
        {
        t7_st = 1;
        transmit7();
        }
      } else {

      }
    } else {

    }
    if(t8_st == 0){
      int /*@  predicates{tmp_ndt_9!=0,tmp_ndt_9==0} @*/ tmp_ndt_9;
      tmp_ndt_9 = __VERIFIER_nondet_int();
      if(tmp_ndt_9){
        {
        t8_st = 1;
        transmit8();
        }
      } else {

      }
    } else {

    }
    if(t9_st == 0){
      int /*@  predicates{tmp_ndt_10!=0,tmp_ndt_10==0} @*/ tmp_ndt_10;
      tmp_ndt_10 = __VERIFIER_nondet_int();
      if(tmp_ndt_10){
        {
        t9_st = 1;
        transmit9();
        }
      } else {

      }
    } else {

    }
  }
  while_10_break: ;
  }

  return;
}
}
void fire_delta_events(void)
{

  {
  if(M_E == 0){
    M_E = 1;
  } else {

  }
  if(T1_E == 0){
    T1_E = 1;
  } else {

  }
  if(T2_E == 0){
    T2_E = 1;
  } else {

  }
  if(T3_E == 0){
    T3_E = 1;
  } else {

  }
  if(T4_E == 0){
    T4_E = 1;
  } else {

  }
  if(T5_E == 0){
    T5_E = 1;
  } else {

  }
  if(T6_E == 0){
    T6_E = 1;
  } else {

  }
  if(T7_E == 0){
    T7_E = 1;
  } else {

  }
  if(T8_E == 0){
    T8_E = 1;
  } else {

  }
  if(T9_E == 0){
    T9_E = 1;
  } else {

  }
  if(E_M == 0){
    E_M = 1;
  } else {

  }
  if(E_1 == 0){
    E_1 = 1;
  } else {

  }
  if(E_2 == 0){
    E_2 = 1;
  } else {

  }
  if(E_3 == 0){
    E_3 = 1;
  } else {

  }
  if(E_4 == 0){
    E_4 = 1;
  } else {

  }
  if(E_5 == 0){
    E_5 = 1;
  } else {

  }
  if(E_6 == 0){
    E_6 = 1;
  } else {

  }
  if(E_7 == 0){
    E_7 = 1;
  } else {

  }
  if(E_8 == 0){
    E_8 = 1;
  } else {

  }
  if(E_9 == 0){
    E_9 = 1;
  } else {

  }

  return;
}
}
void reset_delta_events(void)
{

  {
  if(M_E == 1){
    M_E = 2;
  } else {

  }
  if(T1_E == 1){
    T1_E = 2;
  } else {

  }
  if(T2_E == 1){
    T2_E = 2;
  } else {

  }
  if(T3_E == 1){
    T3_E = 2;
  } else {

  }
  if(T4_E == 1){
    T4_E = 2;
  } else {

  }
  if(T5_E == 1){
    T5_E = 2;
  } else {

  }
  if(T6_E == 1){
    T6_E = 2;
  } else {

  }
  if(T7_E == 1){
    T7_E = 2;
  } else {

  }
  if(T8_E == 1){
    T8_E = 2;
  } else {

  }
  if(T9_E == 1){
    T9_E = 2;
  } else {

  }
  if(E_M == 1){
    E_M = 2;
  } else {

  }
  if(E_1 == 1){
    E_1 = 2;
  } else {

  }
  if(E_2 == 1){
    E_2 = 2;
  } else {

  }
  if(E_3 == 1){
    E_3 = 2;
  } else {

  }
  if(E_4 == 1){
    E_4 = 2;
  } else {

  }
  if(E_5 == 1){
    E_5 = 2;
  } else {

  }
  if(E_6 == 1){
    E_6 = 2;
  } else {

  }
  if(E_7 == 1){
    E_7 = 2;
  } else {

  }
  if(E_8 == 1){
    E_8 = 2;
  } else {

  }
  if(E_9 == 1){
    E_9 = 2;
  } else {

  }

  return;
}
}
void activate_threads(void)
{ int /*@  predicates{tmp==0,tmp==1} @*/ tmp ;
  int /*@  predicates{tmp___0==0,tmp___0==1} @*/ tmp___0 ;
  int /*@  predicates{tmp___1==0,tmp___1==1} @*/ tmp___1 ;
  int /*@  predicates{tmp___2==0,tmp___2==1} @*/ tmp___2 ;
  int /*@  predicates{tmp___3==0,tmp___3==1} @*/ tmp___3 ;
  int /*@  predicates{tmp___4==0,tmp___4==1} @*/ tmp___4 ;
  int /*@  predicates{tmp___5==0,tmp___5==1} @*/ tmp___5 ;
  int /*@  predicates{tmp___6==0,tmp___6==1} @*/ tmp___6 ;
  int /*@  predicates{tmp___7==0,tmp___7==1} @*/ tmp___7 ;
  int /*@  predicates{tmp___8==0,tmp___8==1} @*/ tmp___8 ;

  {
  {
  tmp = is_master_triggered();
  }
  if(tmp){
    m_st = 0;
  } else {

  }
  {
  tmp___0 = is_transmit1_triggered();
  }
  if(tmp___0){
    t1_st = 0;
  } else {

  }
  {
  tmp___1 = is_transmit2_triggered();
  }
  if(tmp___1){
    t2_st = 0;
  } else {

  }
  {
  tmp___2 = is_transmit3_triggered();
  }
  if(tmp___2){
    t3_st = 0;
  } else {

  }
  {
  tmp___3 = is_transmit4_triggered();
  }
  if(tmp___3){
    t4_st = 0;
  } else {

  }
  {
  tmp___4 = is_transmit5_triggered();
  }
  if(tmp___4){
    t5_st = 0;
  } else {

  }
  {
  tmp___5 = is_transmit6_triggered();
  }
  if(tmp___5){
    t6_st = 0;
  } else {

  }
  {
  tmp___6 = is_transmit7_triggered();
  }
  if(tmp___6){
    t7_st = 0;
  } else {

  }
  {
  tmp___7 = is_transmit8_triggered();
  }
  if(tmp___7){
    t8_st = 0;
  } else {

  }
  {
  tmp___8 = is_transmit9_triggered();
  }
  if(tmp___8){
    t9_st = 0;
  } else {

  }

  return;
}
}
void immediate_notify(void)
{

  {
  {
  activate_threads();
  }

  return;
}
}
void fire_time_events(void)
{

  {
  M_E = 1;

  return;
}
}
void reset_time_events(void)
{

  {
  if(M_E == 1){
    M_E = 2;
  } else {

  }
  if(T1_E == 1){
    T1_E = 2;
  } else {

  }
  if(T2_E == 1){
    T2_E = 2;
  } else {

  }
  if(T3_E == 1){
    T3_E = 2;
  } else {

  }
  if(T4_E == 1){
    T4_E = 2;
  } else {

  }
  if(T5_E == 1){
    T5_E = 2;
  } else {

  }
  if(T6_E == 1){
    T6_E = 2;
  } else {

  }
  if(T7_E == 1){
    T7_E = 2;
  } else {

  }
  if(T8_E == 1){
    T8_E = 2;
  } else {

  }
  if(T9_E == 1){
    T9_E = 2;
  } else {

  }
  if(E_M == 1){
    E_M = 2;
  } else {

  }
  if(E_1 == 1){
    E_1 = 2;
  } else {

  }
  if(E_2 == 1){
    E_2 = 2;
  } else {

  }
  if(E_3 == 1){
    E_3 = 2;
  } else {

  }
  if(E_4 == 1){
    E_4 = 2;
  } else {

  }
  if(E_5 == 1){
    E_5 = 2;
  } else {

  }
  if(E_6 == 1){
    E_6 = 2;
  } else {

  }
  if(E_7 == 1){
    E_7 = 2;
  } else {

  }
  if(E_8 == 1){
    E_8 = 2;
  } else {

  }
  if(E_9 == 1){
    E_9 = 2;
  } else {

  }

  return;
}
}
void init_model(void)
{

  {
  m_i = 1;
  t1_i = 1;
  t2_i = 1;
  t3_i = 1;
  t4_i = 1;
  t5_i = 1;
  t6_i = 1;
  t7_i = 1;
  t8_i = 1;
  t9_i = 1;

  return;
}
}
int stop_simulation(void)
{ int /*@  predicates{tmp!=0,tmp==0,tmp==1} @*/ tmp ;
  int /*@  predicates{__retres2==0,__retres2==1} @*/ __retres2 ;

  {
  {
  tmp = exists_runnable_thread();
  }
  if(tmp){
    __retres2 = 0;
    goto return_label;
  } else {

  }
  __retres2 = 1;
  return_label:
  return(__retres2);
}
}
void start_simulation(void)
{ int /*@  predicates{kernel_st==0,kernel_st==1,kernel_st==2,kernel_st==3,kernel_st==4} @*/ kernel_st ;
  int /*@  predicates{tmp==0,tmp==1} @*/ tmp ;
  int /*@  predicates{tmp___0!=0,tmp___0==0,tmp___0==1} @*/ tmp___0 ;

  {
  {
  kernel_st = 0;
  update_channels();
  init_threads();
  fire_delta_events();
  activate_threads();
  reset_delta_events();
  }
  {
  while(1){
    while_11_continue: ;
    {
    kernel_st = 1;
    eval();
    }
    {
    kernel_st = 2;
    update_channels();
    }
    {
    kernel_st = 3;
    fire_delta_events();
    activate_threads();
    reset_delta_events();
    }
    {
    tmp = exists_runnable_thread();
    }
    if(tmp == 0){
      {
      kernel_st = 4;
      fire_time_events();
      activate_threads();
      reset_time_events();
      }
    } else {

    }
    {
    tmp___0 = stop_simulation();
    }
    if(tmp___0){
      goto while_11_break;
    } else {

    }
  }
  while_11_break: ;
  }

  return;
}
}
int main(void)
{ int /*@  predicates{__retres1==0} @*/ __retres1 ;

  {
  {
  init_model();
  start_simulation();
  }
  __retres1 = 0;
  return(__retres1);
}
}
