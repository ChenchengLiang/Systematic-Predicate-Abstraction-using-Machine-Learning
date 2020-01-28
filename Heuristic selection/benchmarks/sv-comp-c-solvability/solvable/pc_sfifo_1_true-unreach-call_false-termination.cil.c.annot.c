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

int /*@  predicates{q_buf_0!=0,q_buf_0==0} predicates_tpl{0==0} @*/ q_buf_0 ;
int /*@  predicates{q_free==0,q_free==1} @*/ q_free ;
int /*@  predicates{q_read_ev==1,q_read_ev==2} @*/ q_read_ev ;
int /*@  predicates{q_write_ev==1,q_write_ev==2} @*/ q_write_ev ;
int p_num_write ;
int /*@  predicates{p_last_write!=0,p_last_write==0,p_last_write==q_buf_0} @*/ p_last_write ;
int /*@  predicates{p_dw_st==0,p_dw_st==1,p_dw_st==2} @*/ p_dw_st ;
int /*@  predicates{p_dw_pc==0,p_dw_pc==1} @*/ p_dw_pc ;
int /*@  predicates{p_dw_i==1} @*/ p_dw_i ;
int /*@  predicates{c_num_read==p_num_write} @*/ c_num_read ;
int /*@  predicates{c_last_read!=0,c_last_read==0,c_last_read==p_last_write,c_last_read==q_buf_0} @*/ c_last_read ;
int /*@  predicates{c_dr_st==0,c_dr_st==1,c_dr_st==2} @*/ c_dr_st ;
int /*@  predicates{c_dr_pc==0,c_dr_pc==1} @*/ c_dr_pc ;
int /*@  predicates{c_dr_i==1} @*/ c_dr_i ;
int is_do_write_p_triggered(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if((int)p_dw_pc == 1){
    if((int)q_read_ev == 1){
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
int is_do_read_c_triggered(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if((int)c_dr_pc == 1){
    if((int)q_write_ev == 1){
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
void immediate_notify_threads(void)
{ int /*@  predicates{tmp==0,tmp==1} @*/ tmp ;
  int /*@  predicates{tmp___0==0,tmp___0==1} @*/ tmp___0 ;

  {
  {
  tmp = is_do_write_p_triggered();
  }
  if(tmp){
    p_dw_st = 0;
  } else {

  }
  {
  tmp___0 = is_do_read_c_triggered();
  }
  if(tmp___0){
    c_dr_st = 0;
  } else {

  }

  return;
}
}
void do_write_p(void)
{


  {
  if((int)p_dw_pc == 0){
    goto DW_ENTRY;
  } else {
    if((int)p_dw_pc == 1){
      goto DW_WAIT_READ;
    } else {

    }
  }
  DW_ENTRY:
  {
  while(1){
    while_0_continue: ;
    if((int)q_free == 0){
      p_dw_st = 2;
      p_dw_pc = 1;

      goto return_label;
      DW_WAIT_READ: ;
    } else {

    }
    {
    q_buf_0 = __VERIFIER_nondet_int();
    p_last_write = q_buf_0;
    p_num_write += 1;
    q_free = 0;
    q_write_ev = 1;
    immediate_notify_threads();
    q_write_ev = 2;
    }
  }
  while_0_break: ;
  }
  return_label:
  return;
}
}
static int /*@  predicates{a_t!=0,a_t==0,a_t==q_buf_0} @*/ a_t ;
void do_read_c(void)
{ int /*@  predicates{a!=0,a==0,a==q_buf_0} @*/ a ;

  {
  if((int)c_dr_pc == 0){
    goto DR_ENTRY;
  } else {
    if((int)c_dr_pc == 1){
      goto DR_WAIT_WRITE;
    } else {

    }
  }
  DR_ENTRY:
  {
  while(1){
    while_1_continue: ;
    if((int)q_free == 1){
      c_dr_st = 2;
      c_dr_pc = 1;
      a_t = a;

      goto return_label;
      DR_WAIT_WRITE:
      a = a_t;
    } else {

    }
    {
    a = q_buf_0;
    c_last_read = a;
    c_num_read += 1;
    q_free = 1;
    q_read_ev = 1;
    immediate_notify_threads();
    q_read_ev = 2;
    }
    if(p_last_write == c_last_read){
      if(p_num_write == c_num_read){

      } else {
        {
assert(0);
        }
      }
    } else {
      {
assert(0);
      }
    }
  }
  while_1_break: ;
  }
  return_label:
  return;
}
}
void init_threads(void)
{

  {
  if((int)p_dw_i == 1){
    p_dw_st = 0;
  } else {
    p_dw_st = 2;
  }
  if((int)c_dr_i == 1){
    c_dr_st = 0;
  } else {
    c_dr_st = 2;
  }

  return;
}
}
int exists_runnable_thread(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if((int)p_dw_st == 0){
    __retres1 = 1;
    goto return_label;
  } else {
    if((int)c_dr_st == 0){
      __retres1 = 1;
      goto return_label;
    } else {

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
  int /*@  predicates{tmp___1!=0,tmp___1==0,tmp___1==1} @*/ tmp___1 ;

  {
  {
  while(1){
    while_2_continue: ;
    {
    tmp___1 = exists_runnable_thread();
    }
    if(tmp___1){

    } else {
      goto while_2_break;
    }
    if((int)p_dw_st == 0){
      {
 tmp = __VERIFIER_nondet_int();
      }
      if(tmp){
        {
        p_dw_st = 1;
        do_write_p();
        }
      } else {

      }
    } else {

    }
    if((int)c_dr_st == 0){
      {
 tmp___0 = __VERIFIER_nondet_int();
      }
      if(tmp___0){
        {
        c_dr_st = 1;
        do_read_c();
        }
      } else {

      }
    } else {

    }
  }
  while_2_break: ;
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
{ int /*@  predicates{kernel_st==0,kernel_st==1} @*/ kernel_st ;
  int /*@  predicates{tmp!=0,tmp==0,tmp==1} @*/ tmp ;

  {
  {
  kernel_st = 0;
  init_threads();
  }
  {
  while(1){
    while_3_continue: ;
    {
    kernel_st = 1;
    eval();
    tmp = stop_simulation();
    }
    if(tmp){
      goto while_3_break;
    } else {

    }
  }
  while_3_break: ;
  }

  return;
}
}
void init_model(void)
{

  {
  q_free = 1;
  q_write_ev = 2;
  q_read_ev = q_write_ev;
  p_num_write = 0;
  p_dw_pc = 0;
  p_dw_i = 1;
  c_num_read = 0;
  c_dr_pc = 0;
  c_dr_i = 1;

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
