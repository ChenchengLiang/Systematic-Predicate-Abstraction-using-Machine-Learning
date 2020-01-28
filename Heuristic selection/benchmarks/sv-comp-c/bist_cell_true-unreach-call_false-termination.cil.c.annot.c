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

int /*@  predicates{b0_val==0,b0_val==1} predicates_tpl{0==0} @*/ b0_val ;
int /*@  predicates{b0_val_t==0,b0_val_t==1} @*/ b0_val_t ;
int /*@  predicates{b0_ev==0,b0_ev==1,b0_ev==2} @*/ b0_ev ;
int /*@  predicates{b0_req_up==0,b0_req_up==1} @*/ b0_req_up ;
int /*@  predicates{b1_val==0,b1_val==1} @*/ b1_val ;
int /*@  predicates{b1_val_t==0,b1_val_t==1} @*/ b1_val_t ;
int /*@  predicates{b1_ev==0,b1_ev==1,b1_ev==2} @*/ b1_ev ;
int /*@  predicates{b1_req_up==0,b1_req_up==1} @*/ b1_req_up ;
int /*@  predicates{d0_val==0,d0_val==1} @*/ d0_val ;
int /*@  predicates{d0_val_t==0,d0_val_t==1} @*/ d0_val_t ;
int /*@  predicates{d0_ev==0,d0_ev==1,d0_ev==2} @*/ d0_ev ;
int /*@  predicates{d0_req_up==0,d0_req_up==1} @*/ d0_req_up ;
int /*@  predicates{d1_val==0,d1_val==1} @*/ d1_val ;
int /*@  predicates{d1_val_t==0,d1_val_t==1} @*/ d1_val_t ;
int /*@  predicates{d1_ev==0,d1_ev==1,d1_ev==2} @*/ d1_ev ;
int /*@  predicates{d1_req_up==0,d1_req_up==1} @*/ d1_req_up ;
int /*@  predicates{z_val!=0,z_val==0,z_val==1} @*/ z_val ;
int /*@  predicates{z_val_t==0,z_val_t==1} @*/ z_val_t ;
int /*@  predicates{z_ev==0,z_ev==1,z_ev==2} @*/ z_ev ;
int /*@  predicates{z_req_up==0,z_req_up==1} @*/ z_req_up ;
int /*@  predicates{comp_m1_st==0,comp_m1_st==1,comp_m1_st==2} @*/ comp_m1_st ;
int /*@  predicates{comp_m1_i==0,comp_m1_i==1} @*/ comp_m1_i ;
void method1(void)
{ int /*@  predicates{s1==0,s1==1} @*/ s1 ;
  int /*@  predicates{s2==0,s2==1} @*/ s2 ;
  int /*@  predicates{s3==0,s3==1} @*/ s3 ;

  {
  if(b0_val){
    if(d1_val){
      s1 = 0;
    } else {
      s1 = 1;
    }
  } else {
    s1 = 1;
  }
  if(d0_val){
    if(b1_val){
      s2 = 0;
    } else {
      s2 = 1;
    }
  } else {
    s2 = 1;
  }
  if(s2){
    s3 = 0;
  } else {
    if(s1){
      s3 = 0;
    } else {
      s3 = 1;
    }
  }
  if(s2){
    if(s1){
      s2 = 1;
    } else {
      s2 = 0;
    }
  } else {
    s2 = 0;
  }
  if(s2){
    z_val_t = 0;
  } else {
    if(s3){
      z_val_t = 0;
    } else {
      z_val_t = 1;
    }
  }
  z_req_up = 1;
  comp_m1_st = 2;

  return;
}
}
int is_method1_triggered(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if((int)b0_ev == 1){
    __retres1 = 1;
    goto return_label;
  } else {
    if((int)b1_ev == 1){
      __retres1 = 1;
      goto return_label;
    } else {
      if((int)d0_ev == 1){
        __retres1 = 1;
        goto return_label;
      } else {
        if((int)d1_ev == 1){
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
void update_b0(void)
{

  {
  if((int)b0_val !=(int)b0_val_t){
    b0_val = b0_val_t;
    b0_ev = 0;
  } else {

  }
  b0_req_up = 0;

  return;
}
}
void update_b1(void)
{

  {
  if((int)b1_val !=(int)b1_val_t){
    b1_val = b1_val_t;
    b1_ev = 0;
  } else {

  }
  b1_req_up = 0;

  return;
}
}
void update_d0(void)
{

  {
  if((int)d0_val !=(int)d0_val_t){
    d0_val = d0_val_t;
    d0_ev = 0;
  } else {

  }
  d0_req_up = 0;

  return;
}
}
void update_d1(void)
{

  {
  if((int)d1_val !=(int)d1_val_t){
    d1_val = d1_val_t;
    d1_ev = 0;
  } else {

  }
  d1_req_up = 0;

  return;
}
}
void update_z(void)
{

  {
  if((int)z_val !=(int)z_val_t){
    z_val = z_val_t;
    z_ev = 0;
  } else {

  }
  z_req_up = 0;

  return;
}
}
void update_channels(void)
{

  {
  if((int)b0_req_up == 1){
    {
    update_b0();
    }
  } else {

  }
  if((int)b1_req_up == 1){
    {
    update_b1();
    }
  } else {

  }
  if((int)d0_req_up == 1){
    {
    update_d0();
    }
  } else {

  }
  if((int)d1_req_up == 1){
    {
    update_d1();
    }
  } else {

  }
  if((int)z_req_up == 1){
    {
    update_z();
    }
  } else {

  }

  return;
}
}
void init_threads(void)
{

  {
  if((int)comp_m1_i == 1){
    comp_m1_st = 0;
  } else {
    comp_m1_st = 2;
  }

  return;
}
}
int exists_runnable_thread(void)
{ int /*@  predicates{__retres1==0,__retres1==1} @*/ __retres1 ;

  {
  if((int)comp_m1_st == 0){
    __retres1 = 1;
    goto return_label;
  } else {

  }
  __retres1 = 0;
  return_label:
  return(__retres1);
}
}
void eval(void)
{ int /*@  predicates{tmp!=0,tmp==0} @*/ tmp ;
  int /*@  predicates{tmp___0!=0,tmp___0==0,tmp___0==1} @*/ tmp___0 ;

  {
  {
  while(1){
    while_0_continue: ;
    {
    tmp___0 = exists_runnable_thread();
    }
    if(tmp___0){

    } else {
      goto while_0_break;
    }
    if((int)comp_m1_st == 0){
      {
 tmp = __VERIFIER_nondet_int();
      }
      if(tmp){
        {
        comp_m1_st = 1;
        method1();
        }
      } else {

      }
    } else {

    }
  }
  while_0_break: ;
  }

  return;
}
}
void fire_delta_events(void)
{

  {
  if((int)b0_ev == 0){
    b0_ev = 1;
  } else {

  }
  if((int)b1_ev == 0){
    b1_ev = 1;
  } else {

  }
  if((int)d0_ev == 0){
    d0_ev = 1;
  } else {

  }
  if((int)d1_ev == 0){
    d1_ev = 1;
  } else {

  }
  if((int)z_ev == 0){
    z_ev = 1;
  } else {

  }

  return;
}
}
void reset_delta_events(void)
{

  {
  if((int)b0_ev == 1){
    b0_ev = 2;
  } else {

  }
  if((int)b1_ev == 1){
    b1_ev = 2;
  } else {

  }
  if((int)d0_ev == 1){
    d0_ev = 2;
  } else {

  }
  if((int)d1_ev == 1){
    d1_ev = 2;
  } else {

  }
  if((int)z_ev == 1){
    z_ev = 2;
  } else {

  }

  return;
}
}
void activate_threads(void)
{ int /*@  predicates{tmp==0,tmp==1} @*/ tmp ;

  {
  {
  tmp = is_method1_triggered();
  }
  if(tmp){
    comp_m1_st = 0;
  } else {

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
{ int /*@  predicates{kernel_st==0,kernel_st==1,kernel_st==2,kernel_st==3} @*/ kernel_st ;
  int /*@  predicates{tmp!=0,tmp==0,tmp==1} @*/ tmp ;

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
    while_1_continue: ;
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
    tmp = stop_simulation();
    }
    if(tmp){
      goto while_1_break;
    } else {

    }
  }
  while_1_break: ;
  }

  return;
}
}
void init_model(void)
{

  {
  b0_val = 0;
  b0_ev = 2;
  b0_req_up = 0;
  b1_val = 0;
  b1_ev = 2;
  b1_req_up = 0;
  d0_val = 0;
  d0_ev = 2;
  d0_req_up = 0;
  d1_val = 0;
  d1_ev = 2;
  d1_req_up = 0;
  z_val = 0;
  z_ev = 2;
  z_req_up = 0;
  b0_val_t = 1;
  b0_req_up = 1;
  b1_val_t = 1;
  b1_req_up = 1;
  d0_val_t = 1;
  d0_req_up = 1;
  d1_val_t = 1;
  d1_req_up = 1;
  comp_m1_i = 0;

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
  if(!((int)z_val == 0)){
    {
assert(0);
    }
  } else {

  }
  __retres1 = 0;
  return(__retres1);
}
}
