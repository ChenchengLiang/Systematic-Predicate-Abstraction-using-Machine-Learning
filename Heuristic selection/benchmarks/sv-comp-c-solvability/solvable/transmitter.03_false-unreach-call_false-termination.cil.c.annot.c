# 1 "/tmp/tmp.WsVqyrFrWi.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.WsVqyrFrWi.c"
extern void __VERIFIER_error();

extern int __VERIFIER_nondet_int();



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
int /*@  predicates{m_st==0,m_st==1,m_st==2} @*/ m_st ;
int /*@  predicates{t1_st==0,t1_st==1,t1_st==2} @*/ t1_st ;
int /*@  predicates{t2_st==0,t2_st==1,t2_st==2} @*/ t2_st ;
int /*@  predicates{t3_st==0,t3_st==1,t3_st==2} @*/ t3_st ;
int /*@  predicates{m_i==1} @*/ m_i ;
int /*@  predicates{t1_i==1} @*/ t1_i ;
int /*@  predicates{t2_i==1} @*/ t2_i ;
int /*@  predicates{t3_i==1} @*/ t3_i ;
int /*@  predicates{M_E==0,M_E==1,M_E==2} @*/ M_E = 2;
int /*@  predicates{T1_E==0,T1_E==1,T1_E==2} @*/ T1_E = 2;
int /*@  predicates{T2_E==0,T2_E==1,T2_E==2} @*/ T2_E = 2;
int /*@  predicates{T3_E==0,T3_E==1,T3_E==2} @*/ T3_E = 2;
int /*@  predicates{E_1==0,E_1==1,E_1==2} @*/ E_1 = 2;
int /*@  predicates{E_2==0,E_2==1,E_2==2} @*/ E_2 = 2;
int /*@  predicates{E_3==0,E_3==1,E_3==2} @*/ E_3 = 2;
int is_master_triggered(void);
int is_transmit1_triggered(void);
int is_transmit2_triggered(void);
int is_transmit3_triggered(void);
void immediate_notify(void);
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
    E_1 = 1;
    immediate_notify();
    E_1 = 2;
    }
    {
    while(1){
      while_1_continue: ;
      m_pc = 1;
      m_st = 2;

      goto return_label;
      M_WAIT: ;
    }
    while_1_break: ;
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
    while_2_continue: ;
    t1_pc = 1;
    t1_st = 2;

    goto return_label;
    T1_WAIT:
    {
    E_2 = 1;
    immediate_notify();
    E_2 = 2;
    }
  }
  while_2_break: ;
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
    while_3_continue: ;
    t2_pc = 1;
    t2_st = 2;

    goto return_label;
    T2_WAIT:
    {
    E_3 = 1;
    immediate_notify();
    E_3 = 2;
    }
  }
  while_3_break: ;
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
    while_4_continue: ;
    t3_pc = 1;
    t3_st = 2;

    goto return_label;
    T3_WAIT:
    {
assert(0);
    }
  }
  while_4_break: ;
  }

  return_label:
  return;
}
}
int is_master_triggered(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if(m_pc == 1){
    if(M_E == 1){
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
    while_5_continue: ;
    {
    tmp = exists_runnable_thread();
    }
    if(tmp){

    } else {
      goto while_5_break;
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
  }
  while_5_break: ;
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

  return;
}
}
void activate_threads(void)
{ int /*@  predicates{tmp==0,tmp==1} @*/ tmp ;
  int /*@  predicates{tmp___0==0,tmp___0==1} @*/ tmp___0 ;
  int /*@  predicates{tmp___1==0,tmp___1==1} @*/ tmp___1 ;
  int /*@  predicates{tmp___2==0,tmp___2==1} @*/ tmp___2 ;

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
    while_6_continue: ;
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
      goto while_6_break;
    } else {

    }
  }
  while_6_break: ;
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
