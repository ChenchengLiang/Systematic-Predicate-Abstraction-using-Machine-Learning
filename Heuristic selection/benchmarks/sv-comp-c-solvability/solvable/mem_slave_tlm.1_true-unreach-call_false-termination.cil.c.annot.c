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

int /*@  predicates{m_run_st==0,m_run_st==1,m_run_st==2} predicates_tpl{0==0} @*/ m_run_st ;
int /*@  predicates{m_run_i==1} @*/ m_run_i ;
int /*@  predicates{m_run_pc==0,m_run_pc==1,m_run_pc==2,m_run_pc==3,m_run_pc==4,m_run_pc==5,m_run_pc==6} @*/ m_run_pc ;
int s_memory0 ;

int /*@  predicates{s_run_st==0,s_run_st==1,s_run_st==2} @*/ s_run_st ;
int /*@  predicates{s_run_i==1} @*/ s_run_i ;
int /*@  predicates{s_run_pc==0,s_run_pc==1,s_run_pc==2} @*/ s_run_pc ;
int /*@  predicates{c_m_lock==0,c_m_lock==1} @*/ c_m_lock ;
int /*@  predicates{c_m_ev==1,c_m_ev==2} @*/ c_m_ev ;
int /*@  predicates{c_req_type==0,c_req_type==1} @*/ c_req_type ;
int c_req_a ;
int c_req_d ;
int /*@  predicates{c_rsp_type==0,c_rsp_type==1} @*/ c_rsp_type ;
int /*@  predicates{c_rsp_status==0,c_rsp_status==1} @*/ c_rsp_status ;
int c_rsp_d ;
int /*@  predicates{c_empty_req==0,c_empty_req==1} @*/ c_empty_req ;
int /*@  predicates{c_empty_rsp==0,c_empty_rsp==1} @*/ c_empty_rsp ;
int /*@  predicates{c_read_req_ev==1,c_read_req_ev==2} @*/ c_read_req_ev ;
int /*@  predicates{c_write_req_ev==1,c_write_req_ev==2} @*/ c_write_req_ev ;
int /*@  predicates{c_read_rsp_ev==1,c_read_rsp_ev==2} @*/ c_read_rsp_ev ;
int /*@  predicates{c_write_rsp_ev==1,c_write_rsp_ev==2} @*/ c_write_rsp_ev ;
static int d_t ;
static int a_t ;
static int /*@  predicates{req_t_type==0,req_t_type==1} @*/ req_t_type ;
static int req_t_a ;
static int req_t_d ;
static int /*@  predicates{rsp_t_type==0,rsp_t_type==1} @*/ rsp_t_type ;
static int /*@  predicates{rsp_t_status==0,rsp_t_status==1} @*/ rsp_t_status ;
static int rsp_t_d ;
static int /*@  predicates{req_tt_type==0,req_tt_type==1} @*/ req_tt_type ;
static int req_tt_a ;
static int req_tt_d ;
static int /*@  predicates{rsp_tt_type==0,rsp_tt_type==1} @*/ rsp_tt_type ;
static int /*@  predicates{rsp_tt_status==0,rsp_tt_status==1} @*/ rsp_tt_status ;
static int rsp_tt_d ;

int s_memory_read(int /*@  predicates{i==0} @*/ i)
{
  int x;

  if(i==0)
    x = s_memory0;
  else
assert(0);

  return(x);
}

void s_memory_write(int /*@  predicates{i==0} @*/ i, int v)
{
  if(i==0)
    s_memory0 = v;
  else
assert(0);

  return;
}


void m_run(void)
{ int d ;
  int /*@  predicates{a<1,a<=1,a>=0} @*/ a ;
  int /*@  predicates{req_type==0,req_type==1} @*/ req_type ;
  int req_a ;
  int req_d ;
  int /*@  predicates{rsp_type==0,rsp_type==1} @*/ rsp_type ;
  int /*@  predicates{rsp_status==0,rsp_status==1} @*/ rsp_status ;
  int rsp_d ;
  int /*@  predicates{req_type___0==0,req_type___0==1} @*/ req_type___0 ;
  int req_a___0 ;
  int req_d___0 ;
  int /*@  predicates{rsp_type___0==0,rsp_type___0==1} @*/ rsp_type___0 ;
  int /*@  predicates{rsp_status___0==0,rsp_status___0==1} @*/ rsp_status___0 ;
  int /*@  predicates{(!((req_a___0+50)==rsp_d___0)),((req_a___0+50)==rsp_d___0)} @*/ rsp_d___0 ;

  {
  if((int)m_run_pc == 0){
    goto L_MASTER_RUN_ENTRY;
  } else {
    if((int)m_run_pc == 1){
      goto L_MASTER_RUN_MUTEX;
    } else {
      if((int)m_run_pc == 2){
        goto L_MASTER_RUN_PUT;
      } else {
        if((int)m_run_pc == 3){
          goto L_MASTER_RUN_GET;
        } else {
          if((int)m_run_pc == 4){
            goto L_MASTER_RUN_MUTEX2;
          } else {
            if((int)m_run_pc == 5){
              goto L_MASTER_RUN_PUT2;
            } else {
              if((int)m_run_pc == 6){
                goto L_MASTER_RUN_GET2;
              } else {

              }
            }
          }
        }
      }
    }
  }
  L_MASTER_RUN_ENTRY:
  a = 0;
  {
  while(1){
    while_0_continue: ;
    if(a < 1){

    } else {
      goto while_0_break;
    }
    req_type = 1;
    req_a = a;
    req_d = a + 50;
    {
    while(1){
      while_1_continue: ;
      if(c_m_lock == 1){

      } else {
        goto while_1_break;
      }
      m_run_st = 2;
      m_run_pc = 1;
      req_t_type = req_type;
      req_t_a = req_a;
      req_t_d = req_d;
      rsp_t_type = rsp_type;
      rsp_t_status = rsp_status;
      rsp_t_d = rsp_d;
      d_t = d;
      a_t = a;

      goto return_label;
      L_MASTER_RUN_MUTEX:
      req_type = req_t_type;
      req_a = req_t_a;
      req_d = req_t_d;
      rsp_type = rsp_t_type;
      rsp_status = rsp_t_status;
      rsp_d = rsp_t_d;
      d = d_t;
      a = a_t;
    }
    while_1_break: ;
    }
    c_m_lock = 1;
    {
    while(1){
      while_2_continue: ;
      if((int)c_empty_req == 0){

      } else {
        goto while_2_break;
      }
      m_run_st = 2;
      m_run_pc = 2;
      req_t_type = req_type;
      req_t_a = req_a;
      req_t_d = req_d;
      rsp_t_type = rsp_type;
      rsp_t_status = rsp_status;
      rsp_t_d = rsp_d;
      d_t = d;
      a_t = a;

      goto return_label;
      L_MASTER_RUN_PUT:
      req_type = req_t_type;
      req_a = req_t_a;
      req_d = req_t_d;
      rsp_type = rsp_t_type;
      rsp_status = rsp_t_status;
      rsp_d = rsp_t_d;
      a = a_t;
      d = d_t;
    }
    while_2_break: ;
    }
    c_req_type = req_type;
    c_req_a = req_a;
    c_req_d = req_d;
    c_empty_req = 0;
    c_write_req_ev = 1;
    if((int)m_run_pc == 1){
      if((int)c_m_ev == 1){
        m_run_st = 0;
      } else {
        goto _L___3;
      }
    } else {
      _L___3:
      if((int)m_run_pc == 2){
        if((int)c_read_req_ev == 1){
          m_run_st = 0;
        } else {
          goto _L___2;
        }
      } else {
        _L___2:
        if((int)m_run_pc == 3){
          if((int)c_write_rsp_ev == 1){
            m_run_st = 0;
          } else {
            goto _L___1;
          }
        } else {
          _L___1:
          if((int)m_run_pc == 4){
            if((int)c_m_ev == 1){
              m_run_st = 0;
            } else {
              goto _L___0;
            }
          } else {
            _L___0:
            if((int)m_run_pc == 5){
              if((int)c_read_req_ev == 1){
                m_run_st = 0;
              } else {
                goto _L;
              }
            } else {
              _L:
              if((int)m_run_pc == 6){
                if((int)c_write_rsp_ev == 1){
                  m_run_st = 0;
                } else {

                }
              } else {

              }
            }
          }
        }
      }
    }
    if((int)s_run_pc == 2){
      if((int)c_write_req_ev == 1){
        s_run_st = 0;
      } else {
        goto _L___4;
      }
    } else {
      _L___4:
      if((int)s_run_pc == 1){
        if((int)c_read_rsp_ev == 1){
          s_run_st = 0;
        } else {

        }
      } else {

      }
    }
    c_write_req_ev = 2;
    {
    while(1){
      while_3_continue: ;
      if((int)c_empty_rsp == 1){

      } else {
        goto while_3_break;
      }
      m_run_st = 2;
      m_run_pc = 3;
      req_t_type = req_type;
      req_t_a = req_a;
      req_t_d = req_d;
      rsp_t_type = rsp_type;
      rsp_t_status = rsp_status;
      rsp_t_d = rsp_d;
      d_t = d;
      a_t = a;

      goto return_label;
      L_MASTER_RUN_GET:
      req_type = req_t_type;
      req_a = req_t_a;
      req_d = req_t_d;
      rsp_type = rsp_t_type;
      rsp_status = rsp_t_status;
      rsp_d = rsp_t_d;
      d = d_t;
      a = a_t;
    }
    while_3_break: ;
    }
    rsp_type = c_rsp_type;
    rsp_status = c_rsp_status;
    rsp_d = c_rsp_d;
    c_empty_rsp = 1;
    c_read_rsp_ev = 1;
    if((int)m_run_pc == 1){
      if((int)c_m_ev == 1){
        m_run_st = 0;
      } else {
        goto _L___9;
      }
    } else {
      _L___9:
      if((int)m_run_pc == 2){
        if((int)c_read_req_ev == 1){
          m_run_st = 0;
        } else {
          goto _L___8;
        }
      } else {
        _L___8:
        if((int)m_run_pc == 3){
          if((int)c_write_rsp_ev == 1){
            m_run_st = 0;
          } else {
            goto _L___7;
          }
        } else {
          _L___7:
          if((int)m_run_pc == 4){
            if((int)c_m_ev == 1){
              m_run_st = 0;
            } else {
              goto _L___6;
            }
          } else {
            _L___6:
            if((int)m_run_pc == 5){
              if((int)c_read_req_ev == 1){
                m_run_st = 0;
              } else {
                goto _L___5;
              }
            } else {
              _L___5:
              if((int)m_run_pc == 6){
                if((int)c_write_rsp_ev == 1){
                  m_run_st = 0;
                } else {

                }
              } else {

              }
            }
          }
        }
      }
    }
    if((int)s_run_pc == 2){
      if((int)c_write_req_ev == 1){
        s_run_st = 0;
      } else {
        goto _L___10;
      }
    } else {
      _L___10:
      if((int)s_run_pc == 1){
        if((int)c_read_rsp_ev == 1){
          s_run_st = 0;
        } else {

        }
      } else {

      }
    }
    c_read_rsp_ev = 2;
    if(c_m_lock == 0){
      {
assert(0);
      }
    } else {

    }
    c_m_lock = 0;
    c_m_ev = 1;
    if((int)m_run_pc == 1){
      if((int)c_m_ev == 1){
        m_run_st = 0;
      } else {
        goto _L___15;
      }
    } else {
      _L___15:
      if((int)m_run_pc == 2){
        if((int)c_read_req_ev == 1){
          m_run_st = 0;
        } else {
          goto _L___14;
        }
      } else {
        _L___14:
        if((int)m_run_pc == 3){
          if((int)c_write_rsp_ev == 1){
            m_run_st = 0;
          } else {
            goto _L___13;
          }
        } else {
          _L___13:
          if((int)m_run_pc == 4){
            if((int)c_m_ev == 1){
              m_run_st = 0;
            } else {
              goto _L___12;
            }
          } else {
            _L___12:
            if((int)m_run_pc == 5){
              if((int)c_read_req_ev == 1){
                m_run_st = 0;
              } else {
                goto _L___11;
              }
            } else {
              _L___11:
              if((int)m_run_pc == 6){
                if((int)c_write_rsp_ev == 1){
                  m_run_st = 0;
                } else {

                }
              } else {

              }
            }
          }
        }
      }
    }
    if((int)s_run_pc == 2){
      if((int)c_write_req_ev == 1){
        s_run_st = 0;
      } else {
        goto _L___16;
      }
    } else {
      _L___16:
      if((int)s_run_pc == 1){
        if((int)c_read_rsp_ev == 1){
          s_run_st = 0;
        } else {

        }
      } else {

      }
    }
    c_m_ev = 2;
    a += 1;
  }
  while_0_break: ;
  }
  a = 0;
  {
  while(1){
    while_4_continue: ;
    if(a < 1){

    } else {
      goto while_4_break;
    }
    req_type___0 = 0;
    req_a___0 = a;
    {
    while(1){
      while_5_continue: ;
      if(c_m_lock == 1){

      } else {
        goto while_5_break;
      }
      m_run_st = 2;
      m_run_pc = 4;
      req_tt_type = req_type___0;
      req_tt_a = req_a___0;
      req_tt_d = req_d___0;
      rsp_tt_type = rsp_type___0;
      rsp_tt_status = rsp_status___0;
      rsp_tt_d = rsp_d___0;
      d_t = d;
      a_t = a;

      goto return_label;
      L_MASTER_RUN_MUTEX2:
      req_type___0 = req_tt_type;
      req_a___0 = req_tt_a;
      req_d___0 = req_tt_d;
      rsp_type___0 = rsp_tt_type;
      rsp_status___0 = rsp_tt_status;
      rsp_d___0 = rsp_tt_d;
      d = d_t;
      a = a_t;
    }
    while_5_break: ;
    }
    c_m_lock = 1;
    {
    while(1){
      while_6_continue: ;
      if((int)c_empty_req == 0){

      } else {
        goto while_6_break;
      }
      m_run_st = 2;
      m_run_pc = 5;
      req_tt_type = req_type___0;
      req_tt_a = req_a___0;
      req_tt_d = req_d___0;
      rsp_tt_type = rsp_type___0;
      rsp_tt_status = rsp_status___0;
      rsp_tt_d = rsp_d___0;
      d_t = d;
      a_t = a;

      goto return_label;
      L_MASTER_RUN_PUT2:
      req_type___0 = req_tt_type;
      req_a___0 = req_tt_a;
      req_d___0 = req_tt_d;
      rsp_type___0 = rsp_tt_type;
      rsp_status___0 = rsp_tt_status;
      rsp_d___0 = rsp_tt_d;
      d = d_t;
      a = a_t;
    }
    while_6_break: ;
    }
    c_req_type = req_type___0;
    c_req_a = req_a___0;
    c_req_d = req_d___0;
    c_empty_req = 0;
    c_write_req_ev = 1;
    if((int)m_run_pc == 1){
      if((int)c_m_ev == 1){
        m_run_st = 0;
      } else {
        goto _L___21;
      }
    } else {
      _L___21:
      if((int)m_run_pc == 2){
        if((int)c_read_req_ev == 1){
          m_run_st = 0;
        } else {
          goto _L___20;
        }
      } else {
        _L___20:
        if((int)m_run_pc == 3){
          if((int)c_write_rsp_ev == 1){
            m_run_st = 0;
          } else {
            goto _L___19;
          }
        } else {
          _L___19:
          if((int)m_run_pc == 4){
            if((int)c_m_ev == 1){
              m_run_st = 0;
            } else {
              goto _L___18;
            }
          } else {
            _L___18:
            if((int)m_run_pc == 5){
              if((int)c_read_req_ev == 1){
                m_run_st = 0;
              } else {
                goto _L___17;
              }
            } else {
              _L___17:
              if((int)m_run_pc == 6){
                if((int)c_write_rsp_ev == 1){
                  m_run_st = 0;
                } else {

                }
              } else {

              }
            }
          }
        }
      }
    }
    if((int)s_run_pc == 2){
      if((int)c_write_req_ev == 1){
        s_run_st = 0;
      } else {
        goto _L___22;
      }
    } else {
      _L___22:
      if((int)s_run_pc == 1){
        if((int)c_read_rsp_ev == 1){
          s_run_st = 0;
        } else {

        }
      } else {

      }
    }
    c_write_req_ev = 2;
    {
    while(1){
      while_7_continue: ;
      if((int)c_empty_rsp == 1){

      } else {
        goto while_7_break;
      }
      m_run_st = 2;
      m_run_pc = 6;
      req_tt_type = req_type___0;
      req_tt_a = req_a___0;
      req_tt_d = req_d___0;
      rsp_tt_type = rsp_type___0;
      rsp_tt_status = rsp_status___0;
      rsp_tt_d = rsp_d___0;
      d_t = d;
      a_t = a;

      goto return_label;
      L_MASTER_RUN_GET2:
      req_type___0 = req_tt_type;
      req_a___0 = req_tt_a;
      req_d___0 = req_tt_d;
      rsp_type___0 = rsp_tt_type;
      rsp_status___0 = rsp_tt_status;
      rsp_d___0 = rsp_tt_d;
      d = d_t;
      a = a_t;
    }
    while_7_break: ;
    }
    rsp_type___0 = c_rsp_type;
    rsp_status___0 = c_rsp_status;
    rsp_d___0 = c_rsp_d;
    c_empty_rsp = 1;
    c_read_rsp_ev = 1;
    if((int)m_run_pc == 1){
      if((int)c_m_ev == 1){
        m_run_st = 0;
      } else {
        goto _L___27;
      }
    } else {
      _L___27:
      if((int)m_run_pc == 2){
        if((int)c_read_req_ev == 1){
          m_run_st = 0;
        } else {
          goto _L___26;
        }
      } else {
        _L___26:
        if((int)m_run_pc == 3){
          if((int)c_write_rsp_ev == 1){
            m_run_st = 0;
          } else {
            goto _L___25;
          }
        } else {
          _L___25:
          if((int)m_run_pc == 4){
            if((int)c_m_ev == 1){
              m_run_st = 0;
            } else {
              goto _L___24;
            }
          } else {
            _L___24:
            if((int)m_run_pc == 5){
              if((int)c_read_req_ev == 1){
                m_run_st = 0;
              } else {
                goto _L___23;
              }
            } else {
              _L___23:
              if((int)m_run_pc == 6){
                if((int)c_write_rsp_ev == 1){
                  m_run_st = 0;
                } else {

                }
              } else {

              }
            }
          }
        }
      }
    }
    if((int)s_run_pc == 2){
      if((int)c_write_req_ev == 1){
        s_run_st = 0;
      } else {
        goto _L___28;
      }
    } else {
      _L___28:
      if((int)s_run_pc == 1){
        if((int)c_read_rsp_ev == 1){
          s_run_st = 0;
        } else {

        }
      } else {

      }
    }
    c_read_rsp_ev = 2;
    if(c_m_lock == 0){
      {
assert(0);
      }
    } else {

    }
    c_m_lock = 0;
    c_m_ev = 1;
    if((int)m_run_pc == 1){
      if((int)c_m_ev == 1){
        m_run_st = 0;
      } else {
        goto _L___33;
      }
    } else {
      _L___33:
      if((int)m_run_pc == 2){
        if((int)c_read_req_ev == 1){
          m_run_st = 0;
        } else {
          goto _L___32;
        }
      } else {
        _L___32:
        if((int)m_run_pc == 3){
          if((int)c_write_rsp_ev == 1){
            m_run_st = 0;
          } else {
            goto _L___31;
          }
        } else {
          _L___31:
          if((int)m_run_pc == 4){
            if((int)c_m_ev == 1){
              m_run_st = 0;
            } else {
              goto _L___30;
            }
          } else {
            _L___30:
            if((int)m_run_pc == 5){
              if((int)c_read_req_ev == 1){
                m_run_st = 0;
              } else {
                goto _L___29;
              }
            } else {
              _L___29:
              if((int)m_run_pc == 6){
                if((int)c_write_rsp_ev == 1){
                  m_run_st = 0;
                } else {

                }
              } else {

              }
            }
          }
        }
      }
    }
    if((int)s_run_pc == 2){
      if((int)c_write_req_ev == 1){
        s_run_st = 0;
      } else {
        goto _L___34;
      }
    } else {
      _L___34:
      if((int)s_run_pc == 1){
        if((int)c_read_rsp_ev == 1){
          s_run_st = 0;
        } else {

        }
      } else {

      }
    }
    c_m_ev = 2;
    if(!(req_a___0 + 50 == rsp_d___0)){
      {
assert(0);
      }
    } else {

    }
    a += 1;
  }
  while_4_break: ;
  }

  return_label:
  return;
}
}
static int /*@  predicates{req_t_type___0==0,req_t_type___0==1} @*/ req_t_type___0 ;
static int req_t_a___0 ;
static int req_t_d___0 ;
static int /*@  predicates{rsp_t_type___0==0,rsp_t_type___0==1} @*/ rsp_t_type___0 ;
static int /*@  predicates{rsp_t_status___0==0,rsp_t_status___0==1} @*/ rsp_t_status___0 ;
static int rsp_t_d___0 ;
void s_run(void)
{ int /*@  predicates{req_type==0,req_type==1} @*/ req_type ;
  int req_a ;
  int req_d ;
  int /*@  predicates{rsp_type==0,rsp_type==1} @*/ rsp_type ;
  int /*@  predicates{rsp_status==0,rsp_status==1} @*/ rsp_status ;
  int rsp_d ;
  int dummy ;

  {
  if((int)s_run_pc == 0){
    goto L_SLAVE_RUN_ENTRY;
  } else {
    if((int)s_run_pc == 1){
      goto L_SLAVE_RUN_PUT;
    } else {
      if((int)s_run_pc == 2){
        goto L_SLAVE_RUN_GET;
      } else {

      }
    }
  }
  L_SLAVE_RUN_ENTRY:
  {
  while(1){
    while_8_continue: ;
    {
    while(1){
      while_9_continue: ;
      if((int)c_empty_req == 1){

      } else {
        goto while_9_break;
      }
      s_run_st = 2;
      s_run_pc = 2;
      req_t_type___0 = req_type;
      req_t_a___0 = req_a;
      req_t_d___0 = req_d;
      rsp_t_type___0 = rsp_type;
      rsp_t_status___0 = rsp_status;
      rsp_t_d___0 = rsp_d;

      goto return_label;
      L_SLAVE_RUN_GET:
      req_type = req_t_type___0;
      req_a = req_t_a___0;
      req_d = req_t_d___0;
      rsp_type = rsp_t_type___0;
      rsp_status = rsp_t_status___0;
      rsp_d = rsp_t_d___0;
    }
    while_9_break: ;
    }
    req_type = c_req_type;
    req_a = c_req_a;
    req_d = c_req_d;
    c_empty_req = 1;
    c_read_req_ev = 1;
    if((int)m_run_pc == 1){
      if((int)c_m_ev == 1){
        m_run_st = 0;
      } else {
        goto _L___3;
      }
    } else {
      _L___3:
      if((int)m_run_pc == 2){
        if((int)c_read_req_ev == 1){
          m_run_st = 0;
        } else {
          goto _L___2;
        }
      } else {
        _L___2:
        if((int)m_run_pc == 3){
          if((int)c_write_rsp_ev == 1){
            m_run_st = 0;
          } else {
            goto _L___1;
          }
        } else {
          _L___1:
          if((int)m_run_pc == 4){
            if((int)c_m_ev == 1){
              m_run_st = 0;
            } else {
              goto _L___0;
            }
          } else {
            _L___0:
            if((int)m_run_pc == 5){
              if((int)c_read_req_ev == 1){
                m_run_st = 0;
              } else {
                goto _L;
              }
            } else {
              _L:
              if((int)m_run_pc == 6){
                if((int)c_write_rsp_ev == 1){
                  m_run_st = 0;
                } else {

                }
              } else {

              }
            }
          }
        }
      }
    }
    if((int)s_run_pc == 2){
      if((int)c_write_req_ev == 1){
        s_run_st = 0;
      } else {
        goto _L___4;
      }
    } else {
      _L___4:
      if((int)s_run_pc == 1){
        if((int)c_read_rsp_ev == 1){
          s_run_st = 0;
        } else {

        }
      } else {

      }
    }
    c_read_req_ev = 2;
    rsp_type = req_type;
    if((int)req_type == 0){

      rsp_d = s_memory_read(req_a);

      rsp_status = 1;
    } else {
      if((int)req_type == 1){

 s_memory_write(req_a,req_d);

        rsp_status = 1;
      } else {
        rsp_status = 0;
      }
    }
    {
    while(1){
      while_10_continue: ;
      if((int)c_empty_rsp == 0){

      } else {
        goto while_10_break;
      }
      s_run_st = 2;
      s_run_pc = 1;
      req_t_type___0 = req_type;
      req_t_a___0 = req_a;
      req_t_d___0 = req_d;
      rsp_t_type___0 = rsp_type;
      rsp_t_status___0 = rsp_status;
      rsp_t_d___0 = rsp_d;

      goto return_label;
      L_SLAVE_RUN_PUT:
      req_type = req_t_type___0;
      req_a = req_t_a___0;
      req_d = req_t_d___0;
      rsp_type = rsp_t_type___0;
      rsp_status = rsp_t_status___0;
      rsp_d = rsp_t_d___0;
    }
    while_10_break: ;
    }
    c_rsp_type = rsp_type;
    c_rsp_status = rsp_status;
    c_rsp_d = rsp_d;
    c_empty_rsp = 0;
    c_write_rsp_ev = 1;
    if((int)m_run_pc == 1){
      if((int)c_m_ev == 1){
        m_run_st = 0;
      } else {
        goto _L___9;
      }
    } else {
      _L___9:
      if((int)m_run_pc == 2){
        if((int)c_read_req_ev == 1){
          m_run_st = 0;
        } else {
          goto _L___8;
        }
      } else {
        _L___8:
        if((int)m_run_pc == 3){
          if((int)c_write_rsp_ev == 1){
            m_run_st = 0;
          } else {
            goto _L___7;
          }
        } else {
          _L___7:
          if((int)m_run_pc == 4){
            if((int)c_m_ev == 1){
              m_run_st = 0;
            } else {
              goto _L___6;
            }
          } else {
            _L___6:
            if((int)m_run_pc == 5){
              if((int)c_read_req_ev == 1){
                m_run_st = 0;
              } else {
                goto _L___5;
              }
            } else {
              _L___5:
              if((int)m_run_pc == 6){
                if((int)c_write_rsp_ev == 1){
                  m_run_st = 0;
                } else {

                }
              } else {

              }
            }
          }
        }
      }
    }
    if((int)s_run_pc == 2){
      if((int)c_write_req_ev == 1){
        s_run_st = 0;
      } else {
        goto _L___10;
      }
    } else {
      _L___10:
      if((int)s_run_pc == 1){
        if((int)c_read_rsp_ev == 1){
          s_run_st = 0;
        } else {

        }
      } else {

      }
    }
    c_write_rsp_ev = 2;
  }
  while_8_break: ;
  }
  return_label:
  return;
}
}
void eval(void)
{ int /*@  predicates{tmp!=0,tmp==0} @*/ tmp ;
  int /*@  predicates{tmp___0!=0,tmp___0==0} @*/ tmp___0 ;

  {
  {
  while(1){
    while_11_continue: ;
    if((int)m_run_st == 0){

    } else {
      if((int)s_run_st == 0){

      } else {
        goto while_11_break;
      }
    }
    if((int)m_run_st == 0){
      {
 tmp = __VERIFIER_nondet_int();
      }
      if(tmp){
        {
        m_run_st = 1;
        m_run();
        }
      } else {

      }
    } else {

    }
    if((int)s_run_st == 0){
      {
 tmp___0 = __VERIFIER_nondet_int();
      }
      if(tmp___0){
        {
        s_run_st = 1;
        s_run();
        }
      } else {

      }
    } else {

    }
  }
  while_11_break: ;
  }

  return;
}
}
void start_simulation(void)
{ int /*@  predicates{kernel_st==0,kernel_st==1,kernel_st==2,kernel_st==3} @*/ kernel_st ;

  {
  kernel_st = 0;
  if((int)m_run_i == 1){
    m_run_st = 0;
  } else {
    m_run_st = 2;
  }
  if((int)s_run_i == 1){
    s_run_st = 0;
  } else {
    s_run_st = 2;
  }
  if((int)m_run_pc == 1){
    if((int)c_m_ev == 1){
      m_run_st = 0;
    } else {
      goto _L___3;
    }
  } else {
    _L___3:
    if((int)m_run_pc == 2){
      if((int)c_read_req_ev == 1){
        m_run_st = 0;
      } else {
        goto _L___2;
      }
    } else {
      _L___2:
      if((int)m_run_pc == 3){
        if((int)c_write_rsp_ev == 1){
          m_run_st = 0;
        } else {
          goto _L___1;
        }
      } else {
        _L___1:
        if((int)m_run_pc == 4){
          if((int)c_m_ev == 1){
            m_run_st = 0;
          } else {
            goto _L___0;
          }
        } else {
          _L___0:
          if((int)m_run_pc == 5){
            if((int)c_read_req_ev == 1){
              m_run_st = 0;
            } else {
              goto _L;
            }
          } else {
            _L:
            if((int)m_run_pc == 6){
              if((int)c_write_rsp_ev == 1){
                m_run_st = 0;
              } else {

              }
            } else {

            }
          }
        }
      }
    }
  }
  if((int)s_run_pc == 2){
    if((int)c_write_req_ev == 1){
      s_run_st = 0;
    } else {
      goto _L___4;
    }
  } else {
    _L___4:
    if((int)s_run_pc == 1){
      if((int)c_read_rsp_ev == 1){
        s_run_st = 0;
      } else {

      }
    } else {

    }
  }
  {
  while(1){
    while_12_continue: ;
    {
    kernel_st = 1;
    eval();
    }
    kernel_st = 2;
    kernel_st = 3;
    if((int)m_run_pc == 1){
      if((int)c_m_ev == 1){
        m_run_st = 0;
      } else {
        goto _L___9;
      }
    } else {
      _L___9:
      if((int)m_run_pc == 2){
        if((int)c_read_req_ev == 1){
          m_run_st = 0;
        } else {
          goto _L___8;
        }
      } else {
        _L___8:
        if((int)m_run_pc == 3){
          if((int)c_write_rsp_ev == 1){
            m_run_st = 0;
          } else {
            goto _L___7;
          }
        } else {
          _L___7:
          if((int)m_run_pc == 4){
            if((int)c_m_ev == 1){
              m_run_st = 0;
            } else {
              goto _L___6;
            }
          } else {
            _L___6:
            if((int)m_run_pc == 5){
              if((int)c_read_req_ev == 1){
                m_run_st = 0;
              } else {
                goto _L___5;
              }
            } else {
              _L___5:
              if((int)m_run_pc == 6){
                if((int)c_write_rsp_ev == 1){
                  m_run_st = 0;
                } else {

                }
              } else {

              }
            }
          }
        }
      }
    }
    if((int)s_run_pc == 2){
      if((int)c_write_req_ev == 1){
        s_run_st = 0;
      } else {
        goto _L___10;
      }
    } else {
      _L___10:
      if((int)s_run_pc == 1){
        if((int)c_read_rsp_ev == 1){
          s_run_st = 0;
        } else {

        }
      } else {

      }
    }
    if((int)m_run_st == 0){

    } else {
      if((int)s_run_st == 0){

      } else {
        goto while_12_break;
      }
    }
  }
  while_12_break: ;
  }

  return;
}
}
int main(void)
{ int /*@  predicates{__retres1==0} @*/ __retres1 ;

  {
  {
 c_m_lock = 0;
 c_m_ev = 2;

  m_run_i = 1;
  m_run_pc = 0;
  s_run_i = 1;
  s_run_pc = 0;
  c_empty_req = 1;
  c_empty_rsp = 1;
  c_read_req_ev = 2;
  c_write_req_ev = 2;
  c_read_rsp_ev = 2;
  c_write_rsp_ev = 2;
  c_m_lock = 0;
  c_m_ev = 2;
  start_simulation();
  }
  __retres1 = 0;
  return(__retres1);
}
}