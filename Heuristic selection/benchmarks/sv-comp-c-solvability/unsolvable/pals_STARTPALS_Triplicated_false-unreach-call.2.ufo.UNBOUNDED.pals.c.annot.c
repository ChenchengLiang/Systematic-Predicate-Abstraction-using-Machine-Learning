# 1 "/tmp/tmp.WsVqyrFrWi.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.WsVqyrFrWi.c"
void __VERIFIER_error(){assert(0);}
# 61 "/tmp/tmp.WsVqyrFrWi.c"
char __VERIFIER_nondet_int(void);
int __VERIFIER_nondet_int(void);



extern void read(int p , int m);
extern void write(int p , int m);
int nomsg =(int)-1;
int g1v ;
char g1v_old ;
char g1v_new ;
int g2v ;
char g2v_old ;
char g2v_new ;
int g3v ;
char g3v_old ;
char g3v_new ;
extern int __VERIFIER_nondet_bool();
extern int __VERIFIER_nondet_char();
extern void __VERIFIER_assume(int /*@  predicates{arg==0,arg==1} @*/ arg);
int gate1Failed ;
int gate2Failed ;
int gate3Failed ;
int VALUE1 ;
int VALUE2 ;
int VALUE3 ;
void assert(int arg);
int gate1Failed_History_0 ;
int gate1Failed_History_1 ;
int gate1Failed_History_2 ;
int gate2Failed_History_0 ;
int gate2Failed_History_1 ;
int gate2Failed_History_2 ;
int gate3Failed_History_0 ;
int gate3Failed_History_1 ;
int gate3Failed_History_2 ;
char votedValue_History_0 ;
char votedValue_History_1 ;
char votedValue_History_2 ;
int read_history_bool(int /*@  predicates{history_id==0,history_id==1,history_id==2} @*/ history_id , int /*@  predicates{historyIndex==0,historyIndex==1} @*/ historyIndex);
char read_history_int8(int /*@  predicates{history_id==3} @*/ history_id , int /*@  predicates{historyIndex==0,historyIndex==1} @*/ historyIndex);
int add_history_type(int /*@  predicates{history_id==0,history_id==1,history_id==2,history_id==3} @*/ history_id)
{
  int ini_bool ;
  char ini_int ;
  int /*@  predicates{var<3,var<=3,var>=0} @*/ var ;
  int /*@  predicates{tmp!=0,tmp!=ini_bool,tmp==0,tmp==ini_bool} @*/ tmp ;
  int /*@  predicates{tmp___0!=0,tmp___0!=ini_bool,tmp___0==0,tmp___0==ini_bool} @*/ tmp___0 ;
  int /*@  predicates{tmp___1!=0,tmp___1!=ini_bool,tmp___1==0,tmp___1==ini_bool} @*/ tmp___1 ;
  int /*@  predicates{tmp___2!=(-1),tmp___2!=(-2),tmp___2!=0,tmp___2!=1,tmp___2!=2,tmp___2!=ini_int,tmp___2==(-1),tmp___2==(-2),tmp___2==0,tmp___2==1,tmp___2==2,tmp___2==ini_int} @*/ tmp___2 ;

  {
  ini_bool =(int)0;
  ini_int =(char)-2;
  var = 0;
  while(var < 3){
    if(history_id == 0){
      tmp =(int)read_history_bool(0, 0);
      if(!(tmp ==(int)ini_bool)){
        return(0);
      }
    } else
    if(history_id == 1){
      tmp___0 =(int)read_history_bool(1, 0);
      if(!(tmp___0 ==(int)ini_bool)){
        return(0);
      }
    } else
    if(history_id == 2){
      tmp___1 =(int)read_history_bool(2, 0);
      if(!(tmp___1 ==(int)ini_bool)){
        return(0);
      }
    } else
    if(history_id == 3){
      tmp___2 =(int)read_history_int8(3, 0);
      if(!(tmp___2 ==(int)ini_int)){
        return(0);
      }
    }
    var ++;
  }
  return(1);
}
}
char read_history_int8(int /*@  predicates{history_id==3} @*/ history_id , int /*@  predicates{historyIndex==0,historyIndex==1} @*/ historyIndex)
{


  {
  if(history_id == 3){
    if(historyIndex == 0){
      return(votedValue_History_0);
    } else
    if(historyIndex == 1){
      return(votedValue_History_1);
    } else {
      return(votedValue_History_2);
    }
  } else {
    assert((int)0);
  }
  return((char)-2);
}
}
int read_history_bool(int /*@  predicates{history_id==0,history_id==1,history_id==2} @*/ history_id , int /*@  predicates{historyIndex==0,historyIndex==1} @*/ historyIndex)
{


  {
  if(history_id == 0){
    if(historyIndex == 0){
      return(gate1Failed_History_0);
    } else
    if(historyIndex == 1){
      return(gate1Failed_History_1);
    } else {
      return(gate1Failed_History_2);
    }
  } else
  if(history_id == 1){
    if(historyIndex == 0){
      return(gate2Failed_History_0);
    } else
    if(historyIndex == 1){
      return(gate2Failed_History_1);
    } else {
      return(gate2Failed_History_2);
    }
  } else
  if(history_id == 2){
    if(historyIndex == 0){
      return(gate3Failed_History_0);
    } else
    if(historyIndex == 1){
      return(gate3Failed_History_1);
    } else {
      return(gate3Failed_History_2);
    }
  } else {
    assert((int)0);
  }
  return((int)0);
}
}
void write_history_int8(int /*@  predicates{history_id==3} @*/ history_id , char buf)
{


  {
  if(history_id == 3){
    votedValue_History_2 = votedValue_History_1;
    votedValue_History_1 = votedValue_History_0;
    votedValue_History_0 = buf;
  } else {
    assert((int)0);
  }
  return;
}
}
void write_history_bool(int /*@  predicates{history_id==0,history_id==1,history_id==2} @*/ history_id , int buf)
{


  {
  if(history_id == 0){
    gate1Failed_History_2 = gate1Failed_History_1;
    gate1Failed_History_1 = gate1Failed_History_0;
    gate1Failed_History_0 = buf;
  } else
  if(history_id == 1){
    gate2Failed_History_2 = gate2Failed_History_1;
    gate2Failed_History_1 = gate2Failed_History_0;
    gate2Failed_History_0 = buf;
  } else
  if(history_id == 2){
    gate3Failed_History_2 = gate3Failed_History_1;
    gate3Failed_History_1 = gate3Failed_History_0;
    gate3Failed_History_0 = buf;
  } else {
    assert((int)0);
  }
  return;
}
}
int init(void)
{
  int /*@  predicates{tmp==0,tmp==1} @*/ tmp ;
  int /*@  predicates{tmp___0==0,tmp___0==1} @*/ tmp___0 ;
  int /*@  predicates{tmp___1==0,tmp___1==1} @*/ tmp___1 ;
  int /*@  predicates{tmp___2==0,tmp___2==1} @*/ tmp___2 ;

  {
  tmp = add_history_type(0);
  if(! tmp){
    return(0);
  }
  tmp___0 = add_history_type(1);
  if(! tmp___0){
    return(0);
  }
  tmp___1 = add_history_type(2);
  if(! tmp___1){
    return(0);
  }
  tmp___2 = add_history_type(3);
  if(! tmp___2){
    return(0);
  }
  return(1);
}
}
int check(void)
{
  int /*@  predicates{tmp==0,tmp==1} @*/ tmp ;
  int /*@  predicates{temp_count!=1,temp_count<=1,temp_count==0,temp_count==1,temp_count>1} @*/ temp_count ;
  char tmp___0 ;
  char tmp___1 ;
  char tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  char tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  char tmp___10 ;
  char tmp___11 ;
  char tmp___12 ;
  char tmp___13 ;
  char tmp___14 ;

  {
  if(! gate1Failed){
    tmp = 1;
  } else
  if(! gate2Failed){
    tmp = 1;
  } else
  if(! gate3Failed){
    tmp = 1;
  } else {
    tmp = 0;
  }
assume((int)tmp);
  tmp___3 = read_history_bool(0, 1);
  if(! tmp___3){
    tmp___4 = read_history_bool(1, 1);
    if(! tmp___4){
      tmp___5 = read_history_bool(2, 1);
      if(! tmp___5){
        temp_count = 0;
        tmp___0 = read_history_int8(3, 0);
        if((int)VALUE1 ==(int)tmp___0){
          temp_count ++;
        }
        tmp___1 = read_history_int8(3, 0);
        if((int)VALUE2 ==(int)tmp___1){
          temp_count ++;
        }
        tmp___2 = read_history_int8(3, 0);
        if((int)VALUE3 ==(int)tmp___2){
          temp_count ++;
        }
        if((int)VALUE1 !=(int)VALUE2){
          if((int)VALUE1 !=(int)VALUE3){
            if((int)VALUE2 !=(int)VALUE3){
              if(!(temp_count == 1)){
                return(0);
              }
            } else {
              goto _L___0;
            }
          } else {
            goto _L___0;
          }
        } else
        _L___0:
        if(!(temp_count > 1)){
          return(0);
        }
      }
    }
  }
  tmp___10 = read_history_int8(3, 1);
  if((int)tmp___10 > -2){
    tmp___6 = read_history_int8(3, 0);
    if((int)tmp___6 ==(int)nomsg){
      tmp___7 = read_history_bool(0, 1);
      if(tmp___7){
        tmp___8 = read_history_bool(1, 1);
        if(tmp___8){
          tmp___9 = read_history_bool(2, 1);
          if(! tmp___9){
            return(0);
          }
        } else {
          return(0);
        }
      } else {
        return(0);
      }
    }
  }
  tmp___11 = read_history_int8(3, 0);
  if((int)tmp___11 !=(int)nomsg){
    tmp___12 = read_history_int8(3, 0);
    if(!((int)VALUE1 ==(int)tmp___12)){
      tmp___13 = read_history_int8(3, 0);
      if(!((int)VALUE2 ==(int)tmp___13)){
        tmp___14 = read_history_int8(3, 0);
        if(!((int)VALUE3 ==(int)tmp___14)){
          return(0);
        }
      }
    }
  }
  return(1);
}
}
void gate1_each_pals_period(void)
{
  char next_state ;
  int tmp ;
  int /*@  predicates{tmp___0==0,tmp___0==1} @*/ tmp___0 ;

  {
  gate1Failed = __VERIFIER_nondet_bool();
  write_history_bool(0, gate1Failed);
  if(gate1Failed){
    g1v_new = nomsg != nomsg && g1v_new == nomsg ? nomsg : g1v_new;
    return;
  }
  tmp = __VERIFIER_nondet_char();
  next_state = tmp;
  if((int)next_state == 0){
    tmp___0 = 1;
  } else
  if((int)next_state == 1){
    tmp___0 = 1;
  } else
  if((int)next_state == 2){
    tmp___0 = 1;
  } else {
    tmp___0 = 0;
  }
assume((int)tmp___0);
  g1v_new = next_state != nomsg && g1v_new == nomsg ? next_state : g1v_new;
  return;
}
}
void gate2_each_pals_period(void)
{
  char next_state ;
  int tmp ;
  int /*@  predicates{tmp___0==0,tmp___0==1} @*/ tmp___0 ;

  {
  gate2Failed = __VERIFIER_nondet_bool();
  write_history_bool(1, gate2Failed);
  if(gate2Failed){
    g2v_new = nomsg != nomsg && g2v_new == nomsg ? nomsg : g2v_new;
    return;
  }
  tmp = __VERIFIER_nondet_char();
  next_state = tmp;
  if((int)next_state == 0){
    tmp___0 = 1;
  } else
  if((int)next_state == 1){
    tmp___0 = 1;
  } else
  if((int)next_state == 2){
    tmp___0 = 1;
  } else {
    tmp___0 = 0;
  }
assume((int)tmp___0);
  g2v_new = next_state != nomsg && g2v_new == nomsg ? next_state : g2v_new;
  return;
}
}
void gate3_each_pals_period(void)
{
  char next_state ;
  int tmp ;
  int /*@  predicates{tmp___0==0,tmp___0==1} @*/ tmp___0 ;

  {
  gate3Failed = __VERIFIER_nondet_bool();
  write_history_bool(2, gate3Failed);
  if(gate3Failed){
    g3v_new = nomsg != nomsg && g3v_new == nomsg ? nomsg : g3v_new;
    return;
  }
  tmp = __VERIFIER_nondet_char();
  next_state = tmp;
  if((int)next_state == 0){
    tmp___0 = 1;
  } else
  if((int)next_state == 1){
    tmp___0 = 1;
  } else
  if((int)next_state == 2){
    tmp___0 = 1;
  } else {
    tmp___0 = 0;
  }
assume((int)tmp___0);
  g3v_new = next_state != nomsg && g3v_new == nomsg ? next_state : g3v_new;
  return;
}
}
void voter(void)
{
  char voted_value ;

  {
  voted_value = nomsg;
  VALUE1 = g1v_old;
  g1v_old = nomsg;
  VALUE2 = g2v_old;
  g2v_old = nomsg;
  VALUE3 = g3v_old;
  g3v_old = nomsg;
  if((int)VALUE1 ==(int)VALUE2){
    if((int)VALUE1 ==(int)nomsg){
      voted_value = VALUE3;
    } else {
      voted_value = VALUE1;
    }
  } else
  if((int)VALUE1 ==(int)VALUE3){
    if((int)VALUE1 ==(int)nomsg){
      voted_value = VALUE2;
    } else {
      voted_value = VALUE1;
    }
  } else
  if((int)VALUE1 !=(int)nomsg){
    voted_value = VALUE1;
  } else
  if((int)VALUE2 !=(int)nomsg){
    voted_value = VALUE2;
  } else
  if((int)VALUE3 !=(int)nomsg){
    voted_value = VALUE3;
  } else {
    assert((int)0);
  }
  write_history_int8(3, voted_value);
  return;
}
}
int main(void)
{
  int /*@  predicates{c1==0,c1==1} @*/ c1 ;
  int /*@  predicates{i2==0,i2==1} @*/ i2 ;

  {
  c1 = 0;
  gate1Failed = __VERIFIER_nondet_int();
  gate2Failed = __VERIFIER_nondet_int();
  gate3Failed = __VERIFIER_nondet_int();
  VALUE1 = __VERIFIER_nondet_int();
  VALUE2 = __VERIFIER_nondet_int();
  VALUE3 = __VERIFIER_nondet_int();
  gate1Failed_History_0 = __VERIFIER_nondet_int();
  gate1Failed_History_1 = __VERIFIER_nondet_int();
  gate1Failed_History_2 = __VERIFIER_nondet_int();
  gate2Failed_History_0 = __VERIFIER_nondet_int();
  gate2Failed_History_1 = __VERIFIER_nondet_int();
  gate2Failed_History_2 = __VERIFIER_nondet_int();
  gate3Failed_History_0 = __VERIFIER_nondet_int();
  gate3Failed_History_1 = __VERIFIER_nondet_int();
  gate3Failed_History_2 = __VERIFIER_nondet_int();
  votedValue_History_0 = __VERIFIER_nondet_char();
  votedValue_History_1 = __VERIFIER_nondet_char();
  votedValue_History_2 = __VERIFIER_nondet_char();
  i2 = init();
assume(i2);
  g1v_old = nomsg;
  g1v_new = nomsg;
  g2v_old = nomsg;
  g2v_new = nomsg;
  g3v_old = nomsg;
  g3v_new = nomsg;
  i2 = 0;
  while(1){
    {
    gate1_each_pals_period();
    gate2_each_pals_period();
    gate3_each_pals_period();
    voter();
    g1v_old = g1v_new;
    g1v_new = nomsg;
    g2v_old = g2v_new;
    g2v_new = nomsg;
    g3v_old = g3v_new;
    g3v_new = nomsg;
    c1 = check();
    assert(c1);
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
