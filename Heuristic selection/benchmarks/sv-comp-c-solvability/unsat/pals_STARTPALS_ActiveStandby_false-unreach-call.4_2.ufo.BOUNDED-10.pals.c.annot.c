# 1 "/tmp/tmp.WsVqyrFrWi.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.WsVqyrFrWi.c"
void __VERIFIER_error(){assert(0);}
# 61 "/tmp/tmp.WsVqyrFrWi.c"
char __VERIFIER_nondet_char(void);
char __VERIFIER_nondet_int(void);
int __VERIFIER_nondet_int(void);



extern void read(int p , int m);
extern void write(int p , int m);
int nomsg =(int)-1;
int cs1 ;
char cs1_old ;
char cs1_new ;
int cs2 ;
char cs2_old ;
char cs2_new ;
int s1s2 ;
char s1s2_old ;
char s1s2_new ;
int s1s1 ;
char s1s1_old ;
char s1s1_new ;
int s2s1 ;
char s2s1_old ;
char s2s1_new ;
int s2s2 ;
char s2s2_old ;
char s2s2_new ;
int s1p ;
char s1p_old ;
char s1p_new ;
int s2p ;
char s2p_old ;
char s2p_new ;
extern int __VERIFIER_nondet_bool();
extern char __VERIFIER_nondet_char();
int side1Failed ;
int side2Failed ;
int side1_written ;
int side2_written ;
void assert(int arg);
extern void __VERIFIER_assume(int /*@  predicates{arg==0,arg==1} @*/ arg);
static int side1Failed_History_0 ;
static int side1Failed_History_1 ;
static int side1Failed_History_2 ;
static int side2Failed_History_0 ;
static int side2Failed_History_1 ;
static int side2Failed_History_2 ;
static char active_side_History_0 ;
static char active_side_History_1 ;
static char active_side_History_2 ;
static int manual_selection_History_0 ;
static int manual_selection_History_1 ;
static int manual_selection_History_2 ;
void write_side1_failed_history(int val)
{


  {
  side1Failed_History_2 = side1Failed_History_1;
  side1Failed_History_1 = side1Failed_History_0;
  side1Failed_History_0 = val;
  return;
}
}
int read_side1_failed_history(unsigned char /*@  predicates{index==0,index==1,index==2} @*/ index)
{


  {
  if((int)index == 0){
    return(side1Failed_History_0);
  } else
  if((int)index == 1){
    return(side1Failed_History_1);
  } else
  if((int)index == 2){
    return(side1Failed_History_2);
  } else {
    assert((int)0);
    return((int)0);
  }
}
}
void write_side2_failed_history(int val)
{


  {
  side2Failed_History_2 = side2Failed_History_1;
  side2Failed_History_1 = side2Failed_History_0;
  side2Failed_History_0 = val;
  return;
}
}
int read_side2_failed_history(unsigned char /*@  predicates{index==0,index==1,index==2} @*/ index)
{


  {
  if((int)index == 0){
    return(side2Failed_History_0);
  } else
  if((int)index == 1){
    return(side2Failed_History_1);
  } else
  if((int)index == 2){
    return(side2Failed_History_2);
  } else {
    assert((int)0);
    return((int)0);
  }
}
}
void write_active_side_history(char val)
{


  {
  active_side_History_2 = active_side_History_1;
  active_side_History_1 = active_side_History_0;
  active_side_History_0 = val;
  return;
}
}
char read_active_side_history(unsigned char /*@  predicates{index==0,index==1,index==2} @*/ index)
{


  {
  if((int)index == 0){
    return(active_side_History_0);
  } else
  if((int)index == 1){
    return(active_side_History_1);
  } else
  if((int)index == 2){
    return(active_side_History_2);
  } else {
    assert((int)0);
    return((char)-2);
  }
}
}
void write_manual_selection_history(int val)
{


  {
  manual_selection_History_2 = manual_selection_History_1;
  manual_selection_History_1 = manual_selection_History_0;
  manual_selection_History_0 = val;
  return;
}
}
int read_manual_selection_history(unsigned char /*@  predicates{index==0,index==1,index==2} @*/ index)
{


  {
  if((int)index == 0){
    return(manual_selection_History_0);
  } else
  if((int)index == 1){
    return(manual_selection_History_1);
  } else
  if((int)index == 2){
    return(manual_selection_History_2);
  } else {
    assert((int)0);
    return((int)0);
  }
}
}
int init(void)
{


  {
  if((int)side1Failed_History_0 != 0){
    return(0);
  }
  if((int)side2Failed_History_0 != 0){
    return(0);
  }
  if((int)active_side_History_0 != -2){
    return(0);
  }
  if((int)manual_selection_History_0 != 0){
    return(0);
  }
  if((int)side1Failed_History_1 != 0){
    return(0);
  }
  if((int)side2Failed_History_1 != 0){
    return(0);
  }
  if((int)active_side_History_1 != -2){
    return(0);
  }
  if((int)manual_selection_History_1 != 0){
    return(0);
  }
  if((int)side1Failed_History_2 != 0){
    return(0);
  }
  if((int)side2Failed_History_2 != 0){
    return(0);
  }
  if((int)active_side_History_2 != -2){
    return(0);
  }
  if((int)manual_selection_History_2 != 0){
    return(0);
  }
  return(1);
}
}
char flip_the_side(char side)
{
  int /*@  predicates{tmp==(-1),tmp==0,tmp==1} @*/ tmp ;

  {
  if((int)side == 1){
    tmp = 0;
  } else {
    tmp = 1;
  }
  return((char)tmp);
}
}
void Console_task_each_pals_period(void)
{
  int manual_selection ;
  char /*@  predicates{tmp!=(-1),tmp!=0,tmp!=1,tmp==(-1),tmp==0,tmp==1,tmp==cs1_new,tmp==cs1_old,tmp==cs2_new,tmp==cs2_old,tmp==manual_selection} @*/ tmp ;

  {
  tmp = __VERIFIER_nondet_char();
  manual_selection = tmp;
  write_manual_selection_history(manual_selection);
  cs1_new = manual_selection != nomsg && cs1_new == nomsg ? manual_selection : cs1_new;
  cs2_new = manual_selection != nomsg && cs2_new == nomsg ? manual_selection : cs2_new;
  manual_selection =(int)0;
  return;
}
}
void Side1_activestandby_task_each_pals_period(void)
{
  char side1 ;
  char side2 ;
  int manual_selection ;
  char next_state ;

  {
  side1 = nomsg;
  side2 = nomsg;
  manual_selection =(int)0;
  side1Failed = __VERIFIER_nondet_bool();
  write_side1_failed_history(side1Failed);
  if(side1Failed){
    s1s1_new = nomsg != nomsg && s1s1_new == nomsg ? nomsg : s1s1_new;
    s1s2_new = nomsg != nomsg && s1s2_new == nomsg ? nomsg : s1s2_new;
    s1p_new = nomsg != nomsg && s1p_new == nomsg ? nomsg : s1p_new;
    side1_written = nomsg;
    return;
  }
  side1 = s1s1_old;
  s1s1_old = nomsg;
  side2 = s2s1_old;
  s2s1_old = nomsg;
  manual_selection = cs1_old;
  cs1_old = nomsg;
  if((int)side1 ==(int)side2){
    next_state =(char)1;
  } else
  if((int)side1 ==(int)nomsg){
    if((int)side2 !=(int)nomsg){
      next_state =(char)0;
    } else {
      goto _L___0;
    }
  } else
  _L___0:
  if((int)side1 !=(int)nomsg){
    if((int)side2 ==(int)nomsg){
      next_state =(char)1;
    } else {
      goto _L;
    }
  } else
  _L:
  if((int)manual_selection == 1){
    next_state = flip_the_side(side1);
  } else {
    next_state = side1;
  }
  s1s1_new = next_state != nomsg && s1s1_new == nomsg ? next_state : s1s1_new;
  s1s2_new = next_state != nomsg && s1s2_new == nomsg ? next_state : s1s2_new;
  s1p_new = next_state != nomsg && s1p_new == nomsg ? next_state : s1p_new;
  side1_written = next_state;
  return;
}
}
void Side2_activestandby_task_each_pals_period(void)
{
  char side1 ;
  char side2 ;
  int manual_selection ;
  char next_state ;

  {
  side1 = nomsg;
  side2 = nomsg;
  manual_selection =(int)0;
  side2Failed = __VERIFIER_nondet_bool();
  write_side2_failed_history(side2Failed);
  if(side2Failed){
    s2s1_new = nomsg != nomsg && s2s1_new == nomsg ? nomsg : s2s1_new;
    s2s2_new = nomsg != nomsg && s2s2_new == nomsg ? nomsg : s2s2_new;
    s2p_new = nomsg != nomsg && s2p_new == nomsg ? nomsg : s2p_new;
    side2_written = nomsg;
    return;
  }
  side1 = s1s2_old;
  s1s2_old = nomsg;
  side2 = s2s2_old;
  s2s2_old = nomsg;
  manual_selection = cs2_old;
  cs2_old = nomsg;
  if((int)side1 ==(int)side2){
    next_state =(char)0;
  } else
  if((int)side1 ==(int)nomsg){
    if((int)side2 !=(int)nomsg){
      next_state =(char)0;
    } else {
      goto _L___0;
    }
  } else
  _L___0:
  if((int)side1 !=(int)nomsg){
    if((int)side2 ==(int)nomsg){
      next_state =(char)1;
    } else {
      goto _L;
    }
  } else
  _L:
  if((int)manual_selection == 1){
    next_state = flip_the_side(side2);
  } else {
    next_state = side2;
  }
  s2s1_new = next_state != nomsg && s2s1_new == nomsg ? next_state : s2s1_new;
  s2s2_new = next_state != nomsg && s2s2_new == nomsg ? next_state : s2s2_new;
  s2p_new = next_state != nomsg && s2p_new == nomsg ? next_state : s2p_new;
  side2_written = next_state;
  return;
}
}
void Pendulum_prism_task_each_pals_period(void)
{
  char active_side ;
  char tmp ;
  char side1 ;
  char side2 ;

  {
  tmp = read_active_side_history((unsigned char)0);
  active_side = tmp;
  side1 = nomsg;
  side2 = nomsg;
  side1 = s1p_old;
  s1p_old = nomsg;
  side2 = s2p_old;
  s2p_old = nomsg;
  if((int)side1 == 1){
    active_side =(char)1;
  } else
  if((int)side2 == 1){
    active_side =(char)2;
  } else
  if((int)side1 == 0){
    if((int)side2 ==(int)nomsg){
      active_side =(char)1;
    } else {
      goto _L;
    }
  } else
  _L:
  if((int)side1 ==(int)nomsg){
    if((int)side2 == 0){
      active_side =(char)2;
    } else {
      active_side =(char)0;
    }
  } else {
    active_side =(char)0;
  }
  write_active_side_history(active_side);
  return;
}
}
int check(void)
{
  int /*@  predicates{tmp==0,tmp==1} @*/ tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  char tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  char tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  char tmp___18 ;
  char tmp___19 ;
  char tmp___20 ;

  {
  if(! side1Failed){
    tmp = 1;
  } else
  if(! side2Failed){
    tmp = 1;
  } else {
    tmp = 0;
  }
assume((int)tmp);
  tmp___0 = read_manual_selection_history((unsigned char)1);
  if(! tmp___0){
    tmp___1 = read_side1_failed_history((unsigned char)1);
    if(! tmp___1){
      tmp___2 = read_side1_failed_history((unsigned char)0);
      if(! tmp___2){
        tmp___3 = read_side2_failed_history((unsigned char)1);
        if(! tmp___3){
          tmp___4 = read_side2_failed_history((unsigned char)0);
          if(! tmp___4){
            if(!((int)side1_written == 1)){
              if(!((int)side1_written == 0)){
                return(0);
              }
            }
            if(!(!((int)side1_written == 0))){
              if(!((int)side2_written == 1)){
                return(0);
              }
            }
            if(!(!((int)side1_written == 1))){
              if(!((int)side2_written == 0)){
                return(0);
              }
            }
          }
        }
      }
    }
  }
  tmp___7 = read_side1_failed_history((unsigned char)1);
  if(tmp___7){
    tmp___8 = read_side2_failed_history((unsigned char)1);
    if(! tmp___8){
      tmp___5 = read_active_side_history((unsigned char)0);
      if(!((int)tmp___5 == 2)){
        return(0);
      }
      tmp___6 = read_side2_failed_history((unsigned char)0);
      if(! tmp___6){
        if(!((int)side2_written == 1)){
          return(0);
        }
      }
    }
  }
  tmp___11 = read_side1_failed_history((unsigned char)1);
  if(! tmp___11){
    tmp___12 = read_side2_failed_history((unsigned char)1);
    if(tmp___12){
      tmp___9 = read_active_side_history((unsigned char)0);
      if(!((int)tmp___9 == 1)){
        return(0);
      }
      tmp___10 = read_side1_failed_history((unsigned char)0);
      if(! tmp___10){
        if(!((int)side1_written == 1)){
          return(0);
        }
      }
    }
  }
  tmp___20 = read_active_side_history((unsigned char)2);
  if((int)tmp___20 > -2){
    tmp___13 = read_manual_selection_history((unsigned char)2);
    if(! tmp___13){
      tmp___14 = read_side1_failed_history((unsigned char)2);
      tmp___15 = read_side1_failed_history((unsigned char)1);
      if((int)tmp___14 ==(int)tmp___15){
        tmp___16 = read_side2_failed_history((unsigned char)2);
        tmp___17 = read_side2_failed_history((unsigned char)1);
        if((int)tmp___16 ==(int)tmp___17){
          tmp___18 = read_active_side_history((unsigned char)1);
          tmp___19 = read_active_side_history((unsigned char)0);
          if(!((int)tmp___18 ==(int)tmp___19)){
            return(0);
          }
        }
      }
    }
  }
  return(1);
}
}
int main(void)
{
  int /*@  predicates{c1==0,c1==1} @*/ c1 ;
  int /*@  predicates{i2<10,i2<=10,i2==0,i2==1,i2>=0,i2>=1} @*/ i2 ;

  {
  c1 = 0;
  side1Failed = __VERIFIER_nondet_int();
  side2Failed = __VERIFIER_nondet_int();
  side1_written = __VERIFIER_nondet_int();
  side2_written = __VERIFIER_nondet_int();
  side1Failed_History_0 = __VERIFIER_nondet_int();
  side1Failed_History_1 = __VERIFIER_nondet_int();
  side1Failed_History_2 = __VERIFIER_nondet_int();
  side2Failed_History_0 = __VERIFIER_nondet_int();
  side2Failed_History_1 = __VERIFIER_nondet_int();
  side2Failed_History_2 = __VERIFIER_nondet_int();
  active_side_History_0 = __VERIFIER_nondet_char();
  active_side_History_1 = __VERIFIER_nondet_char();
  active_side_History_2 = __VERIFIER_nondet_char();
  manual_selection_History_0 = __VERIFIER_nondet_int();
  manual_selection_History_1 = __VERIFIER_nondet_int();
  manual_selection_History_2 = __VERIFIER_nondet_int();
  i2 = init();
assume(i2);
  cs1_old = nomsg;
  cs1_new = nomsg;
  cs2_old = nomsg;
  cs2_new = nomsg;
  s1s2_old = nomsg;
  s1s2_new = nomsg;
  s1s1_old = nomsg;
  s1s1_new = nomsg;
  s2s1_old = nomsg;
  s2s1_new = nomsg;
  s2s2_old = nomsg;
  s2s2_new = nomsg;
  s1p_old = nomsg;
  s1p_new = nomsg;
  s2p_old = nomsg;
  s2p_new = nomsg;
  i2 = 0;
  while(i2 < 10){
    {
    Console_task_each_pals_period();
    Side1_activestandby_task_each_pals_period();
    Side2_activestandby_task_each_pals_period();
    Pendulum_prism_task_each_pals_period();
    cs1_old = cs1_new;
    cs1_new = nomsg;
    cs2_old = cs2_new;
    cs2_new = nomsg;
    s1s2_old = s1s2_new;
    s1s2_new = nomsg;
    s1s1_old = s1s1_new;
    s1s1_new = nomsg;
    s2s1_old = s2s1_new;
    s2s1_new = nomsg;
    s2s2_old = s2s2_new;
    s2s2_new = nomsg;
    s1p_old = s1p_new;
    s1p_new = nomsg;
    s2p_old = s2p_new;
    s2p_new = nomsg;
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
