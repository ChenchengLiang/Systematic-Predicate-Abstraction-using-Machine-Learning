# 1 "/tmp/tmp.WsVqyrFrWi.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/tmp/tmp.WsVqyrFrWi.c"
void __VERIFIER_error(){assert(0);}

extern char __VERIFIER_nondet_char(void);
extern int __VERIFIER_nondet_int(void);
extern long __VERIFIER_nondet_long(void);

extern int __VERIFIER_nondet_int();



int ssl3_accept(int /*@  predicates{initial_state==12292,initial_state==16384,initial_state==24576,initial_state==3,initial_state==8192,initial_state==8195,initial_state==8448,initial_state==8464,initial_state==8465,initial_state==8466,initial_state==8480,initial_state==8481,initial_state==8482,initial_state==8496,initial_state==8497,initial_state==8512,initial_state==8513,initial_state==8528,initial_state==8529,initial_state==8544,initial_state==8545,initial_state==8560,initial_state==8561,initial_state==8576,initial_state==8577,initial_state==8592,initial_state==8593,initial_state==8608,initial_state==8609,initial_state==8640,initial_state==8641,initial_state==8656,initial_state==8657,initial_state==8672,initial_state==8673} predicates_tpl{0==0} @*/ initial_state)
{ int /*@  predicates{s__info_callback!=0,s__info_callback!=2,s__info_callback==0,s__info_callback==2} @*/ s__info_callback = __VERIFIER_nondet_int();
  int s__in_handshake = __VERIFIER_nondet_int();
  int /*@  predicates{s__state!=12292,s__state==12292,s__state==16384,s__state==24576,s__state==3,s__state==8192,s__state==8195,s__state==8448,s__state==8464,s__state==8465,s__state==8466,s__state==8480,s__state==8481,s__state==8482,s__state==8496,s__state==8497,s__state==8512,s__state==8513,s__state==8528,s__state==8529,s__state==8544,s__state==8545,s__state==8560,s__state==8561,s__state==8576,s__state==8577,s__state==8592,s__state==8593,s__state==8608,s__state==8609,s__state==8640,s__state==8641,s__state==8656,s__state==8657,s__state==8672,s__state==8673} @*/ s__state ;
  int /*@  predicates{s__new_session==0,s__new_session==1} @*/ s__new_session ;
  int /*@  predicates{s__server==1} @*/ s__server ;
  int /*@  predicates{s__version!=0,s__version!=2,s__version==0,s__version==2} @*/ s__version = __VERIFIER_nondet_int();
  int /*@  predicates{s__type==8192} @*/ s__type ;
  int /*@  predicates{s__init_num==0} @*/ s__init_num ;
  int /*@  predicates{s__hit!=0,s__hit!=2,s__hit==0,s__hit==2} @*/ s__hit = __VERIFIER_nondet_int();
  int /*@  predicates{s__rwstate==1,s__rwstate==2} @*/ s__rwstate ;
  int /*@  predicates{s__init_buf___0!=0,s__init_buf___0!=2,s__init_buf___0==0,s__init_buf___0==2} @*/ s__init_buf___0 ;
  int /*@  predicates{s__debug!=0,s__debug!=2,s__debug==0,s__debug==2} @*/ s__debug = __VERIFIER_nondet_int();
  int /*@  predicates{s__shutdown==0} @*/ s__shutdown ;
  int /*@  predicates{s__cert!=0,s__cert!=2,s__cert==0,s__cert==2} @*/ s__cert = __VERIFIER_nondet_int();
  int /*@  predicates{s__options!=0,s__options!=2,s__options==0,s__options==2} @*/ s__options = __VERIFIER_nondet_int();
  int /*@  predicates{s__verify_mode!=0,s__verify_mode!=2,s__verify_mode+1,s__verify_mode+2,s__verify_mode+4,s__verify_mode==0,s__verify_mode==2} @*/ s__verify_mode = __VERIFIER_nondet_int();
  int /*@  predicates{s__session__peer!=0,s__session__peer!=2,s__session__peer==0,s__session__peer==2} @*/ s__session__peer = __VERIFIER_nondet_int();
  int /*@  predicates{s__cert__pkeys__AT0__privatekey!=0,s__cert__pkeys__AT0__privatekey!=2,s__cert__pkeys__AT0__privatekey==0,s__cert__pkeys__AT0__privatekey==2} @*/ s__cert__pkeys__AT0__privatekey = __VERIFIER_nondet_int();
  int /*@  predicates{s__ctx__info_callback!=0,s__ctx__info_callback!=2,s__ctx__info_callback==0,s__ctx__info_callback==2} @*/ s__ctx__info_callback = __VERIFIER_nondet_int();
  int s__ctx__stats__sess_accept_renegotiate = __VERIFIER_nondet_int();
  int /*@  predicates{s__ctx__stats__sess_accept<=s__ctx__stats__sess_accept_renegotiate,s__ctx__stats__sess_accept>=s__ctx__stats__sess_accept_renegotiate} terms_tpl{s__ctx__stats__sess_accept-s__ctx__stats__sess_accept_renegotiate} @*/ s__ctx__stats__sess_accept = __VERIFIER_nondet_int();
  int /*@  predicates{s__ctx__stats__sess_accept_good<=s__ctx__stats__sess_accept,s__ctx__stats__sess_accept_good<=s__ctx__stats__sess_accept_renegotiate,s__ctx__stats__sess_accept_good>=s__ctx__stats__sess_accept,s__ctx__stats__sess_accept_good>=s__ctx__stats__sess_accept_renegotiate} terms_tpl{s__ctx__stats__sess_accept_good-s__ctx__stats__sess_accept,s__ctx__stats__sess_accept_good-s__ctx__stats__sess_accept_renegotiate} @*/ s__ctx__stats__sess_accept_good = __VERIFIER_nondet_int();
  int /*@  predicates{s__s3__tmp__cert_request==0,s__s3__tmp__cert_request==1} @*/ s__s3__tmp__cert_request ;
  int /*@  predicates{s__s3__tmp__reuse_message!=0,s__s3__tmp__reuse_message!=2,s__s3__tmp__reuse_message==0,s__s3__tmp__reuse_message==2} @*/ s__s3__tmp__reuse_message = __VERIFIER_nondet_int();
  int /*@  predicates{s__s3__tmp__use_rsa_tmp!=0,s__s3__tmp__use_rsa_tmp==0,s__s3__tmp__use_rsa_tmp==1} @*/ s__s3__tmp__use_rsa_tmp ;
  int /*@  predicates{s__s3__tmp__new_cipher!=0,s__s3__tmp__new_cipher!=2,s__s3__tmp__new_cipher==0,s__s3__tmp__new_cipher==2} @*/ s__s3__tmp__new_cipher = __VERIFIER_nondet_int();
  int /*@  predicates{s__s3__tmp__new_cipher__algorithms!=0,s__s3__tmp__new_cipher__algorithms!=2,s__s3__tmp__new_cipher__algorithms==0,s__s3__tmp__new_cipher__algorithms==2} @*/ s__s3__tmp__new_cipher__algorithms = __VERIFIER_nondet_int();
  int /*@  predicates{s__s3__tmp__next_state___0==12292,s__s3__tmp__next_state___0==16384,s__s3__tmp__next_state___0==24576,s__s3__tmp__next_state___0==3,s__s3__tmp__next_state___0==8192,s__s3__tmp__next_state___0==8195,s__s3__tmp__next_state___0==8448,s__s3__tmp__next_state___0==8464,s__s3__tmp__next_state___0==8465,s__s3__tmp__next_state___0==8466,s__s3__tmp__next_state___0==8480,s__s3__tmp__next_state___0==8481,s__s3__tmp__next_state___0==8482,s__s3__tmp__next_state___0==8496,s__s3__tmp__next_state___0==8497,s__s3__tmp__next_state___0==8512,s__s3__tmp__next_state___0==8513,s__s3__tmp__next_state___0==8528,s__s3__tmp__next_state___0==8529,s__s3__tmp__next_state___0==8544,s__s3__tmp__next_state___0==8545,s__s3__tmp__next_state___0==8560,s__s3__tmp__next_state___0==8561,s__s3__tmp__next_state___0==8576,s__s3__tmp__next_state___0==8577,s__s3__tmp__next_state___0==8592,s__s3__tmp__next_state___0==8593,s__s3__tmp__next_state___0==8608,s__s3__tmp__next_state___0==8609,s__s3__tmp__next_state___0==8640,s__s3__tmp__next_state___0==8641,s__s3__tmp__next_state___0==8656,s__s3__tmp__next_state___0==8657,s__s3__tmp__next_state___0==8672,s__s3__tmp__next_state___0==8673} @*/ s__s3__tmp__next_state___0 ;
  int /*@  predicates{s__s3__tmp__new_cipher__algo_strength!=0,s__s3__tmp__new_cipher__algo_strength!=2,s__s3__tmp__new_cipher__algo_strength==0,s__s3__tmp__new_cipher__algo_strength==2} @*/ s__s3__tmp__new_cipher__algo_strength = __VERIFIER_nondet_int();
  int /*@  predicates{s__session__cipher!=0,s__session__cipher!=2,s__session__cipher==0,s__session__cipher==2,s__session__cipher==s__s3__tmp__new_cipher} @*/ s__session__cipher ;
  int /*@  predicates{buf!=0,buf!=2,buf==0,buf==2,buf==s__init_buf___0} @*/ buf ;
  unsigned long l ;
  unsigned long Time ;
  unsigned long tmp ;
  int /*@  predicates{cb!=0,cb!=2,cb==0,cb==2,cb==s__ctx__info_callback,cb==s__info_callback} @*/ cb ;
  long num1 ;
  int /*@  predicates{ret!=0,ret!=2,ret<=0,ret==(-1),ret==0,ret==1,ret==2} @*/ ret ;
  int /*@  predicates{new_state==12292,new_state==16384,new_state==24576,new_state==3,new_state==8192,new_state==8195,new_state==8448,new_state==8464,new_state==8465,new_state==8466,new_state==8480,new_state==8481,new_state==8482,new_state==8496,new_state==8497,new_state==8512,new_state==8513,new_state==8528,new_state==8529,new_state==8544,new_state==8545,new_state==8560,new_state==8561,new_state==8576,new_state==8577,new_state==8592,new_state==8593,new_state==8608,new_state==8609,new_state==8640,new_state==8641,new_state==8656,new_state==8657,new_state==8672,new_state==8673} @*/ new_state ;
  int /*@  predicates{state!=s__state,state==12292,state==16384,state==24576,state==3,state==8192,state==8195,state==8448,state==8464,state==8465,state==8466,state==8480,state==8481,state==8482,state==8496,state==8497,state==8512,state==8513,state==8528,state==8529,state==8544,state==8545,state==8560,state==8561,state==8576,state==8577,state==8592,state==8593,state==8608,state==8609,state==8640,state==8641,state==8656,state==8657,state==8672,state==8673} @*/ state ;
  int /*@  predicates{skip==0,skip==1} @*/ skip ;
  int /*@  predicates{got_new_session==0,got_new_session==1} @*/ got_new_session ;
  int /*@  predicates{tmp___1!=0,tmp___1!=2,tmp___1==0,tmp___1==2} @*/ tmp___1 = __VERIFIER_nondet_int();
  int /*@  predicates{tmp___2!=0,tmp___2!=2,tmp___2==0,tmp___2==2} @*/ tmp___2 = __VERIFIER_nondet_int();
  int /*@  predicates{tmp___3!=0,tmp___3!=2,tmp___3==0,tmp___3==2} @*/ tmp___3 = __VERIFIER_nondet_int();
  int /*@  predicates{tmp___4!=0,tmp___4!=2,tmp___4==0,tmp___4==2} @*/ tmp___4 = __VERIFIER_nondet_int();
  int /*@  predicates{tmp___5!=0,tmp___5!=2,tmp___5==0,tmp___5==2} @*/ tmp___5 = __VERIFIER_nondet_int();
  int /*@  predicates{tmp___6!=0,tmp___6!=2,tmp___6==0,tmp___6==2} @*/ tmp___6 = __VERIFIER_nondet_int();
  int /*@  predicates{tmp___7==1024,tmp___7==512} @*/ tmp___7 ;
  long tmp___8 = __VERIFIER_nondet_long();
  int /*@  predicates{tmp___9!=0,tmp___9!=2,tmp___9==0,tmp___9==2} @*/ tmp___9 = __VERIFIER_nondet_int();
  int /*@  predicates{tmp___10!=0,tmp___10!=2,tmp___10==0,tmp___10==2} @*/ tmp___10 = __VERIFIER_nondet_int();
  int /*@  predicates{blastFlag==0,blastFlag==1,blastFlag==2,blastFlag==3,blastFlag==4} @*/ blastFlag ;
  int /*@  predicates{__cil_tmp55!=3} @*/ __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  int /*@  predicates{__cil_tmp60>tmp___7} @*/ __cil_tmp60 ;
  unsigned long __cil_tmp61 ;

  {
;
  s__state = initial_state;
  blastFlag = 0;
  tmp = __VERIFIER_nondet_int();
  Time = tmp;
  cb = 0;
  ret = -1;
  skip = 0;
  got_new_session = 0;
  if(s__info_callback != 0){
    cb = s__info_callback;
  } else {
    if(s__ctx__info_callback != 0){
      cb = s__ctx__info_callback;
    }
  }
  s__in_handshake ++;
  if(tmp___1 + 12288){
    if(tmp___2 + 16384){

    }
  }
  if(s__cert == 0){
    return(-1);
  }
  {
  while(1){
    while_0_continue: ;
    state = s__state;
    if(s__state == 12292){
      goto switch_1_12292;
    } else {
      if(s__state == 16384){
        goto switch_1_16384;
      } else {
        if(s__state == 8192){
          goto switch_1_8192;
        } else {
          if(s__state == 24576){
            goto switch_1_24576;
          } else {
            if(s__state == 8195){
              goto switch_1_8195;
            } else {
              if(s__state == 8480){
                goto switch_1_8480;
              } else {
                if(s__state == 8481){
                  goto switch_1_8481;
                } else {
                  if(s__state == 8482){
                    goto switch_1_8482;
                  } else {
                    if(s__state == 8464){
                      goto switch_1_8464;
                    } else {
                      if(s__state == 8465){
                        goto switch_1_8465;
                      } else {
                        if(s__state == 8466){
                          goto switch_1_8466;
                        } else {
                          if(s__state == 8496){
                            goto switch_1_8496;
                          } else {
                            if(s__state == 8497){
                              goto switch_1_8497;
                            } else {
                              if(s__state == 8512){
                                goto switch_1_8512;
                              } else {
                                if(s__state == 8513){
                                  goto switch_1_8513;
                                } else {
                                  if(s__state == 8528){
                                    goto switch_1_8528;
                                  } else {
                                    if(s__state == 8529){
                                      goto switch_1_8529;
                                    } else {
                                      if(s__state == 8544){
                                        goto switch_1_8544;
                                      } else {
                                        if(s__state == 8545){
                                          goto switch_1_8545;
                                        } else {
                                          if(s__state == 8560){
                                            goto switch_1_8560;
                                          } else {
                                            if(s__state == 8561){
                                              goto switch_1_8561;
                                            } else {
                                              if(s__state == 8448){
                                                goto switch_1_8448;
                                              } else {
                                                if(s__state == 8576){
                                                  goto switch_1_8576;
                                                } else {
                                                  if(s__state == 8577){
                                                    goto switch_1_8577;
                                                  } else {
                                                    if(s__state == 8592){
                                                      goto switch_1_8592;
                                                    } else {
                                                      if(s__state == 8593){
                                                        goto switch_1_8593;
                                                      } else {
                                                        if(s__state == 8608){
                                                          goto switch_1_8608;
                                                        } else {
                                                          if(s__state == 8609){
                                                            goto switch_1_8609;
                                                          } else {
                                                            if(s__state == 8640){
                                                              goto switch_1_8640;
                                                            } else {
                                                              if(s__state == 8641){
                                                                goto switch_1_8641;
                                                              } else {
                                                                if(s__state == 8656){
                                                                  goto switch_1_8656;
                                                                } else {
                                                                  if(s__state == 8657){
                                                                    goto switch_1_8657;
                                                                  } else {
                                                                    if(s__state == 8672){
                                                                      goto switch_1_8672;
                                                                    } else {
                                                                      if(s__state == 8673){
                                                                        goto switch_1_8673;
                                                                      } else {
                                                                        if(s__state == 3){
                                                                          goto switch_1_3;
                                                                        } else {
                                                                          goto switch_1_default;
                                                                          if(0){
                                                                            switch_1_12292:
                                                                            s__new_session = 1;
                                                                            switch_1_16384: ;
                                                                            switch_1_8192: ;
                                                                            switch_1_24576: ;
                                                                            switch_1_8195:
                                                                            s__server = 1;
                                                                            if(cb != 0){

                                                                            }
                                                                            {
                                                                            __cil_tmp55 = s__version * 8;
                                                                            if(__cil_tmp55 != 3){
                                                                              return(-1);
                                                                            }
                                                                            }
                                                                            s__type = 8192;
                                                                            if(s__init_buf___0 == 0){
                                                                              buf = __VERIFIER_nondet_int();
                                                                              if(buf == 0){
                                                                                ret = -1;
                                                                                goto end;
                                                                              }
                                                                              if(! tmp___3){
                                                                                ret = -1;
                                                                                goto end;
                                                                              }
                                                                              s__init_buf___0 = buf;
                                                                            }
                                                                            if(! tmp___4){
                                                                              ret = -1;
                                                                              goto end;
                                                                            }
                                                                            s__init_num = 0;
                                                                            if(s__state != 12292){
                                                                              if(! tmp___5){
                                                                                ret = -1;
                                                                                goto end;
                                                                              }
                                                                              s__state = 8464;
                                                                              s__ctx__stats__sess_accept ++;
                                                                            } else {
                                                                              s__ctx__stats__sess_accept_renegotiate ++;
                                                                              s__state = 8480;
                                                                            }
                                                                            goto switch_1_break;
                                                                            switch_1_8480: ;
                                                                            switch_1_8481:
                                                                            s__shutdown = 0;
                                                                            ret = __VERIFIER_nondet_int();
                                                                            if(ret <= 0){
                                                                              goto end;
                                                                            }
                                                                            s__s3__tmp__next_state___0 = 8482;
                                                                            s__state = 8448;
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8482:
                                                                            s__state = 3;
                                                                            goto switch_1_break;
                                                                            switch_1_8464: ;
                                                                            switch_1_8465: ;
                                                                            switch_1_8466:
                                                                            s__shutdown = 0;
                                                                            ret = __VERIFIER_nondet_int();
                                                                            if(blastFlag == 0){
                                                                              blastFlag = 1;
                                                                            }
                                                                            if(ret <= 0){
                                                                              goto end;
                                                                            }
                                                                            got_new_session = 1;
                                                                            s__state = 8496;
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8496: ;
                                                                            switch_1_8497:
                                                                            ret = __VERIFIER_nondet_int();
                                                                            if(blastFlag == 1){
                                                                              blastFlag = 2;
                                                                            }
                                                                            if(ret <= 0){
                                                                              goto end;
                                                                            }
                                                                            if(s__hit){
                                                                              s__state = 8656;
                                                                            } else {
                                                                              s__state = 8512;
                                                                            }
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8512: ;
                                                                            switch_1_8513: ;
                                                                            {
                                                                            __cil_tmp56 =(unsigned long)s__s3__tmp__new_cipher__algorithms;
                                                                            if(__cil_tmp56 + 256UL){
                                                                              skip = 1;
                                                                            } else {
                                                                              ret = __VERIFIER_nondet_int();
                                                                              if(ret <= 0){
                                                                                goto end;
                                                                              }
                                                                            }
                                                                            }
                                                                            s__state = 8528;
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8528: ;
                                                                            switch_1_8529:
                                                                            l =(unsigned long)s__s3__tmp__new_cipher__algorithms;
                                                                            {
                                                                            __cil_tmp57 =(unsigned long)s__options;
                                                                            if(__cil_tmp57 + 2097152UL){
                                                                              s__s3__tmp__use_rsa_tmp = 1;
                                                                            } else {
                                                                              s__s3__tmp__use_rsa_tmp = 0;
                                                                            }
                                                                            }
                                                                            if(s__s3__tmp__use_rsa_tmp){
                                                                              goto _L___0;
                                                                            } else {
                                                                              if(l + 30UL){
                                                                                goto _L___0;
                                                                              } else {
                                                                                if(l + 1UL){
                                                                                  if(s__cert__pkeys__AT0__privatekey == 0){
                                                                                    goto _L___0;
                                                                                  } else {
                                                                                    {
                                                                                    __cil_tmp58 =(unsigned long)s__s3__tmp__new_cipher__algo_strength;
                                                                                    if(__cil_tmp58 + 2UL){
                                                                                      {
                                                                                      __cil_tmp59 =(unsigned long)s__s3__tmp__new_cipher__algo_strength;
                                                                                      if(__cil_tmp59 + 4UL){
                                                                                        tmp___7 = 512;
                                                                                      } else {
                                                                                        tmp___7 = 1024;
                                                                                      }
                                                                                      }
                                                                                      {
                                                                                      __cil_tmp60 = tmp___6 * 8;
                                                                                      if(__cil_tmp60 > tmp___7){
                                                                                        _L___0:
                                                                                        ret = __VERIFIER_nondet_int();
                                                                                        if(ret <= 0){
                                                                                          goto end;
                                                                                        }
                                                                                      } else {
                                                                                        skip = 1;
                                                                                      }
                                                                                      }
                                                                                    } else {
                                                                                      skip = 1;
                                                                                    }
                                                                                    }
                                                                                  }
                                                                                } else {
                                                                                  skip = 1;
                                                                                }
                                                                              }
                                                                            }
                                                                            s__state = 8544;
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8544: ;
                                                                            switch_1_8545: ;
                                                                            if(s__verify_mode + 1){
                                                                              if(s__session__peer != 0){
                                                                                if(s__verify_mode + 4){
                                                                                  skip = 1;
                                                                                  s__s3__tmp__cert_request = 0;
                                                                                  s__state = 8560;
                                                                                } else {
                                                                                  goto _L___2;
                                                                                }
                                                                              } else {
                                                                                _L___2:
                                                                                {
                                                                                __cil_tmp61 =(unsigned long)s__s3__tmp__new_cipher__algorithms;
                                                                                if(__cil_tmp61 + 256UL){
                                                                                  if(s__verify_mode + 2){
                                                                                    goto _L___1;
                                                                                  } else {
                                                                                    skip = 1;
                                                                                    s__s3__tmp__cert_request = 0;
                                                                                    s__state = 8560;
                                                                                  }
                                                                                } else {
                                                                                  _L___1:
                                                                                  s__s3__tmp__cert_request = 1;
                                                                                  ret = __VERIFIER_nondet_int();
                                                                                  if(ret <= 0){
                                                                                    goto end;
                                                                                  }
                                                                                  s__state = 8448;
                                                                                  s__s3__tmp__next_state___0 = 8576;
                                                                                  s__init_num = 0;
                                                                                }
                                                                                }
                                                                              }
                                                                            } else {
                                                                              skip = 1;
                                                                              s__s3__tmp__cert_request = 0;
                                                                              s__state = 8560;
                                                                            }
                                                                            goto switch_1_break;
                                                                            switch_1_8560: ;
                                                                            switch_1_8561:
                                                                            ret = __VERIFIER_nondet_int();
                                                                            if(ret <= 0){
                                                                              goto end;
                                                                            }
                                                                            s__s3__tmp__next_state___0 = 8576;
                                                                            s__state = 8448;
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8448:
                                                                            if(num1 > 0L){
                                                                              s__rwstate = 2;
                                                                              num1 = tmp___8;
                                                                              if(num1 <= 0L){
                                                                                ret = -1;
                                                                                goto end;
                                                                              }
                                                                              s__rwstate = 1;
                                                                            }
                                                                            s__state = s__s3__tmp__next_state___0;
                                                                            goto switch_1_break;
                                                                            switch_1_8576: ;
                                                                            switch_1_8577:
                                                                            ret = __VERIFIER_nondet_int();
                                                                            if(ret <= 0){
                                                                              goto end;
                                                                            }
                                                                            if(ret == 2){
                                                                              s__state = 8466;
                                                                            } else {
                                                                              ret = __VERIFIER_nondet_int();
                                                                              if(ret <= 0){
                                                                                goto end;
                                                                              }
                                                                              s__init_num = 0;
                                                                              s__state = 8592;
                                                                            }
                                                                            goto switch_1_break;
                                                                            switch_1_8592: ;
                                                                            switch_1_8593:
                                                                            ret = __VERIFIER_nondet_int();
                                                                            if(ret <= 0){
                                                                              goto end;
                                                                            }
                                                                            s__state = 8608;
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8608: ;
                                                                            switch_1_8609:
                                                                            ret = __VERIFIER_nondet_int();
                                                                            if(ret <= 0){
                                                                              goto end;
                                                                            }
                                                                            s__state = 8640;
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8640: ;
                                                                            switch_1_8641:
                                                                            ret = __VERIFIER_nondet_int();
                                                                            if(blastFlag == 3){
                                                                              blastFlag = 4;
                                                                            }
                                                                            if(ret <= 0){
                                                                              goto end;
                                                                            }
                                                                            if(s__hit){
                                                                              s__state = 3;
                                                                            } else {
                                                                              s__state = 8656;
                                                                            }
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8656: ;
                                                                            switch_1_8657:
                                                                            s__session__cipher = s__s3__tmp__new_cipher;
                                                                            if(! tmp___9){
                                                                              ret = -1;
                                                                              goto end;
                                                                            }
                                                                            ret = __VERIFIER_nondet_int();
                                                                            if(blastFlag == 2){
                                                                              blastFlag = 3;
                                                                            }
                                                                            if(ret <= 0){
                                                                              goto end;
                                                                            }
                                                                            s__state = 8672;
                                                                            s__init_num = 0;
                                                                            if(! tmp___10){
                                                                              ret = -1;
                                                                              goto end;
                                                                            }
                                                                            goto switch_1_break;
                                                                            switch_1_8672: ;
                                                                            switch_1_8673:
                                                                            ret = __VERIFIER_nondet_int();
                                                                            if(blastFlag == 4){
                                                                              goto ERROR;
                                                                            }
                                                                            if(ret <= 0){
                                                                              goto end;
                                                                            }
                                                                            s__state = 8448;
                                                                            if(s__hit){
                                                                              s__s3__tmp__next_state___0 = 8640;
                                                                            } else {
                                                                              s__s3__tmp__next_state___0 = 3;
                                                                            }
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_3:
                                                                            s__init_buf___0 = 0;
                                                                            s__init_num = 0;
                                                                            if(got_new_session){
                                                                              s__new_session = 0;
                                                                              s__ctx__stats__sess_accept_good ++;
                                                                              if(cb != 0){

                                                                              }
                                                                            }
                                                                            ret = 1;
                                                                            goto end;
                                                                            switch_1_default:
                                                                            ret = -1;
                                                                            goto end;
                                                                          } else {
                                                                            switch_1_break: ;
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
              }
            }
          }
        }
      }
    }
    if(! s__s3__tmp__reuse_message){
      if(! skip){
        if(s__debug){
          ret = __VERIFIER_nondet_int();
          if(ret <= 0){
            goto end;
          }
        }
        if(cb != 0){
          if(s__state != state){
            new_state = s__state;
            s__state = state;
            s__state = new_state;
          }
        }
      }
    }
    skip = 0;
  }
  while_0_break: ;
  }

  end:
  s__in_handshake --;
  if(cb != 0){

  }
  return(ret);
  ERROR: __VERIFIER_error();
  return(-1);
}
}
int main(void)
{ int /*@  predicates{s==12292,s==16384,s==24576,s==3,s==8192,s==8195,s==8448,s==8464,s==8465,s==8466,s==8480,s==8481,s==8482,s==8496,s==8497,s==8512,s==8513,s==8528,s==8529,s==8544,s==8545,s==8560,s==8561,s==8576,s==8577,s==8592,s==8593,s==8608,s==8609,s==8640,s==8641,s==8656,s==8657,s==8672,s==8673} @*/ s ;
  int /*@  predicates{tmp!=0,tmp!=2,tmp==(-1),tmp==0,tmp==1,tmp==2} @*/ tmp ;

  {
  {
  s = 8464;
  tmp = ssl3_accept(s);
  }
  return(tmp);
}
}
