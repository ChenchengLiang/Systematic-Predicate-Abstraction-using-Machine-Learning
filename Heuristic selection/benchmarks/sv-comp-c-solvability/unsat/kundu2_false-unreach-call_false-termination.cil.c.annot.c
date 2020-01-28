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

void immediate_notify(void);
int /*@  predicates{max_loop<=2,max_loop==2,max_loop>=2} predicates_tpl{0==0} @*/ max_loop ;
int /*@  predicates{num<0,num<=0,num==0,num>0,num>=0} @*/ num ;
int /*@  predicates{i<=max_loop,i<=num,i<max_loop,i>=0,i>=num} terms_tpl{i+num} @*/ i ;
int /*@  predicates{e==1,e==2} @*/ e ;
int /*@  predicates{timer!=0,timer==0,timer==1} @*/ timer ;
char /*@  predicates{data_0=='A',data_0=='B'} @*/ data_0 ;
char /*@  predicates{data_1=='A',data_1=='B'} @*/ data_1 ;
char read_data(int /*@  predicates{i___0==0,i___0==1} @*/ i___0)
{ char c ;
  char /*@  predicates{__retres3=='A',__retres3=='B'} @*/ __retres3 ;

  {
  if(i___0 == 0){
    __retres3 = data_0;
    goto return_label;
  } else {
    if(i___0 == 1){
      __retres3 = data_1;
      goto return_label;
    } else {
      {
assert(0);
      }
    }
  }
  __retres3 = c;
  return_label:
  return(__retres3);
}
}
void write_data(int /*@  predicates{i___0==0,i___0==1} @*/ i___0 , char /*@  predicates{c=='A',c=='B'} @*/ c)
{

  {
  if(i___0 == 0){
    data_0 = c;
  } else {
    if(i___0 == 1){
      data_1 = c;
    } else {
      {
assert(0);
      }
    }
  }

  return;
}
}
int /*@  predicates{P_1_pc==0,P_1_pc==1} @*/ P_1_pc;
int /*@  predicates{P_1_st==0,P_1_st==1,P_1_st==2} @*/ P_1_st ;
int /*@  predicates{P_1_i==1} @*/ P_1_i ;
int /*@  predicates{P_1_ev==1,P_1_ev==2} @*/ P_1_ev ;
void P_1(void)
{

  {
  if((int)P_1_pc == 0){
    goto P_1_ENTRY_LOC;
  } else {
    if((int)P_1_pc == 1){
      goto P_1_WAIT_LOC;
    } else {

    }
  }
  P_1_ENTRY_LOC:
  {
  while(i < max_loop){
    while_0_continue: ;
    {
    write_data(num, 'A');
    num += 1;
    P_1_pc = 1;
    P_1_st = 2;
    }

    goto return_label;
    P_1_WAIT_LOC: ;
  }
  while_0_break: ;
  }
  P_1_st = 2;

  return_label:
  return;
}
}
int is_P_1_triggered(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if((int)P_1_pc == 1){
    if((int)P_1_ev == 1){
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
int /*@  predicates{P_2_pc==0,P_2_pc==1} @*/ P_2_pc ;
int /*@  predicates{P_2_st==0,P_2_st==1,P_2_st==2} @*/ P_2_st ;
int /*@  predicates{P_2_i==1} @*/ P_2_i ;
int /*@  predicates{P_2_ev==1,P_2_ev==2} @*/ P_2_ev ;
void P_2(void)
{

  {
  if((int)P_2_pc == 0){
    goto P_2_ENTRY_LOC;
  } else {
    if((int)P_2_pc == 1){
      goto P_2_WAIT_LOC;
    } else {

    }
  }
  P_2_ENTRY_LOC:
  {
  while(i < max_loop){
    while_1_continue: ;
    {
    write_data(num, 'B');
    num += 1;
    }
    if(timer){
      {
      timer = 0;
      e = 1;
      immediate_notify();
      e = 2;
      }
    } else {

    }
    P_2_pc = 1;
    P_2_st = 2;

    goto return_label;
    P_2_WAIT_LOC: ;
  }
  while_1_break: ;
  }
  P_2_st = 2;

  return_label:
  return;
}
}
int is_P_2_triggered(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if((int)P_2_pc == 1){
    if((int)P_2_ev == 1){
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
int /*@  predicates{C_1_pc==0,C_1_pc==1,C_1_pc==2} @*/ C_1_pc ;
int /*@  predicates{C_1_st==0,C_1_st==1,C_1_st==2} @*/ C_1_st ;
int /*@  predicates{C_1_i==1} @*/ C_1_i ;
int /*@  predicates{C_1_ev==1,C_1_ev==2} @*/ C_1_ev ;
int C_1_pr ;
void C_1(void)
{ char /*@  predicates{c=='A',c=='B'} @*/ c ;

  {
  if((int)C_1_pc == 0){
    goto C_1_ENTRY_LOC;
  } else {
    if((int)C_1_pc == 1){
      goto C_1_WAIT_1_LOC;
    } else {
      if((int)C_1_pc == 2){
        goto C_1_WAIT_2_LOC;
      } else {

      }
    }
  }
  C_1_ENTRY_LOC:
  {
  while(i < max_loop){
    while_2_continue: ;
    if(num == 0){
      timer = 1;
      i += 1;
      C_1_pc = 1;
      C_1_st = 2;

      goto return_label;
      C_1_WAIT_1_LOC: ;
    } else {

    }
    num -= 1;
    if(!(num >= 0)){
      {
assert(0);
      }
    } else {

    }
    {
    c = read_data(num);
    i += 1;
    C_1_pc = 2;
    C_1_st = 2;
    }

    goto return_label;
    C_1_WAIT_2_LOC: ;
  }
  while_2_break: ;
  }
  C_1_st = 2;

  return_label:
  return;
}
}
int is_C_1_triggered(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if((int)C_1_pc == 1){
    if((int)e == 1){
      __retres1 = 1;
      goto return_label;
    } else {

    }
  } else {

  }
  if((int)C_1_pc == 2){
    if((int)C_1_ev == 1){
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
  if((int)P_1_i == 1){
    P_1_st = 0;
  } else {
    P_1_st = 2;
  }
  if((int)P_2_i == 1){
    P_2_st = 0;
  } else {
    P_2_st = 2;
  }
  if((int)C_1_i == 1){
    C_1_st = 0;
  } else {
    C_1_st = 2;
  }

  return;
}
}
int exists_runnable_thread(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if((int)P_1_st == 0){
    __retres1 = 1;
    goto return_label;
  } else {
    if((int)P_2_st == 0){
      __retres1 = 1;
      goto return_label;
    } else {
      if((int)C_1_st == 0){
        __retres1 = 1;
        goto return_label;
      } else {

      }
    }
  }
  __retres1 = 0;
  return_label:
  return(__retres1);
}
}
void eval(void)
{ int /*@  predicates{tmp!=0,tmp==0} @*/ tmp ;
  int /*@  predicates{tmp___0!=0,tmp___0==0} @*/ tmp___0 ;
  int /*@  predicates{tmp___1!=0,tmp___1==0} @*/ tmp___1 ;
  int /*@  predicates{tmp___2!=0,tmp___2==0,tmp___2==1} @*/ tmp___2 ;

  {
  {
  while(1){
    while_3_continue: ;
    {
    tmp___2 = exists_runnable_thread();
    }
    if(tmp___2){

    } else {
      goto while_3_break;
    }
    if((int)P_1_st == 0){
      {
      tmp = __VERIFIER_nondet_int();
      }
      if(tmp){
        {
        P_1_st = 1;
        P_1();
        }
      } else {

      }
    } else {

    }
    if((int)P_2_st == 0){
      {
      tmp___0 = __VERIFIER_nondet_int();
      }
      if(tmp___0){
        {
        P_2_st = 1;
        P_2();
        }
      } else {

      }
    } else {

    }
    if((int)C_1_st == 0){
      {
 tmp___1 = __VERIFIER_nondet_int();
      }
      if(tmp___1){
        {
        C_1_st = 1;
        C_1();
        }
      } else {

      }
    } else {

    }
  }
  while_3_break: ;
  }

  return;
}
}
void fire_delta_events(void)
{

  {

  return;
}
}
void reset_delta_events(void)
{

  {

  return;
}
}
void fire_time_events(void)
{

  {
  C_1_ev = 1;
  P_1_ev = 1;
  P_2_ev = 1;

  return;
}
}
void reset_time_events(void)
{

  {
  if((int)P_1_ev == 1){
    P_1_ev = 2;
  } else {

  }
  if((int)P_2_ev == 1){
    P_2_ev = 2;
  } else {

  }
  if((int)C_1_ev == 1){
    C_1_ev = 2;
  } else {

  }

  return;
}
}
void activate_threads(void)
{ int /*@  predicates{tmp==0,tmp==1} @*/ tmp ;
  int /*@  predicates{tmp___0==0,tmp___0==1} @*/ tmp___0 ;
  int /*@  predicates{tmp___1==0,tmp___1==1} @*/ tmp___1 ;

  {
  {
  tmp = is_P_1_triggered();
  }
  if(tmp){
    P_1_st = 0;
  } else {

  }
  {
  tmp___0 = is_P_2_triggered();
  }
  if(tmp___0){
    P_2_st = 0;
  } else {

  }
  {
  tmp___1 = is_C_1_triggered();
  }
  if(tmp___1){
    C_1_st = 0;
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
    while_4_continue: ;
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
      goto while_4_break;
    } else {

    }
  }
  while_4_break: ;
  }

  return;
}
}
void init_model(void)
{

  {
  P_1_i = 1;
  P_2_i = 1;
  C_1_i = 1;

  return;
}
}
int main(void)
{ int /*@  predicates{count==0} @*/ count ;
  int /*@  predicates{__retres2==0} @*/ __retres2 ;

  {
  {
  num = 0;
  i = 0;
  max_loop = 2;
  e ;
  timer = 0;
  P_1_pc = 0;
  P_2_pc = 0;
  C_1_pc = 0;

  count = 0;
  init_model();
  start_simulation();
  }
  __retres2 = 0;
  return(__retres2);
}
}
