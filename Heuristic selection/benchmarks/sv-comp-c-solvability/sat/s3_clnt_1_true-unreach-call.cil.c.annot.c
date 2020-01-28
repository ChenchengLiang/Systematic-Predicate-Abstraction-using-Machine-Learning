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



int ssl3_connect(int /*@  predicates{initial_state==12292,initial_state==16384,initial_state==20480,initial_state==3,initial_state==4096,initial_state==4099,initial_state==4352,initial_state==4368,initial_state==4369,initial_state==4384,initial_state==4385,initial_state==4400,initial_state==4401,initial_state==4416,initial_state==4417,initial_state==4432,initial_state==4433,initial_state==4448,initial_state==4449,initial_state==4464,initial_state==4465,initial_state==4466,initial_state==4467,initial_state==4480,initial_state==4481,initial_state==4496,initial_state==4497,initial_state==4512,initial_state==4513,initial_state==4528,initial_state==4529,initial_state==4560,initial_state==4561} predicates_tpl{0==0} @*/ initial_state)
{ int /*@  predicates{s__info_callback!=0,s__info_callback!=1,s__info_callback==0,s__info_callback==1} @*/ s__info_callback = __VERIFIER_nondet_int();
  int s__in_handshake = __VERIFIER_nondet_int();
  int /*@  predicates{s__state==12292,s__state==16384,s__state==20480,s__state==3,s__state==4096,s__state==4099,s__state==4352,s__state==4368,s__state==4369,s__state==4384,s__state==4385,s__state==4400,s__state==4401,s__state==4416,s__state==4417,s__state==4432,s__state==4433,s__state==4448,s__state==4449,s__state==4464,s__state==4465,s__state==4466,s__state==4467,s__state==4480,s__state==4481,s__state==4496,s__state==4497,s__state==4512,s__state==4513,s__state==4528,s__state==4529,s__state==4560,s__state==4561} @*/ s__state ;
  int /*@  predicates{s__new_session==0,s__new_session==1} @*/ s__new_session ;
  int /*@  predicates{s__server==0} @*/ s__server ;
  int /*@  predicates{s__version!=0,s__version!=1,s__version==0,s__version==1} @*/ s__version = __VERIFIER_nondet_int();
  int /*@  predicates{s__type==4096} @*/ s__type ;
  int /*@  predicates{s__init_num==0} @*/ s__init_num ;
  int /*@  predicates{s__bbio!=0,s__bbio!=1,s__bbio==0,s__bbio==1} @*/ s__bbio = __VERIFIER_nondet_int();
  int /*@  predicates{s__wbio!=0,s__wbio!=1,s__wbio!=s__bbio,s__wbio==0,s__wbio==1,s__wbio==s__bbio} @*/ s__wbio = __VERIFIER_nondet_int();
  int /*@  predicates{s__hit!=0,s__hit!=1,s__hit==0,s__hit==1} @*/ s__hit = __VERIFIER_nondet_int();
  int /*@  predicates{s__rwstate==1,s__rwstate==2} @*/ s__rwstate ;
  int /*@  predicates{s__init_buf___0!=0,s__init_buf___0!=1,s__init_buf___0==0,s__init_buf___0==1} @*/ s__init_buf___0 ;
  int /*@  predicates{s__debug!=0,s__debug!=1,s__debug==0,s__debug==1} @*/ s__debug = __VERIFIER_nondet_int();
  int /*@  predicates{s__shutdown==0} @*/ s__shutdown ;
  int /*@  predicates{s__ctx__info_callback!=0,s__ctx__info_callback!=1,s__ctx__info_callback==0,s__ctx__info_callback==1} @*/ s__ctx__info_callback = __VERIFIER_nondet_int();
  int s__ctx__stats__sess_connect_renegotiate = __VERIFIER_nondet_int();
  int /*@  predicates{s__ctx__stats__sess_connect<=s__ctx__stats__sess_connect_renegotiate,s__ctx__stats__sess_connect>=s__ctx__stats__sess_connect_renegotiate} terms_tpl{s__ctx__stats__sess_connect-s__ctx__stats__sess_connect_renegotiate} @*/ s__ctx__stats__sess_connect = __VERIFIER_nondet_int();
  int /*@  predicates{s__ctx__stats__sess_hit<=s__ctx__stats__sess_connect,s__ctx__stats__sess_hit<=s__ctx__stats__sess_connect_renegotiate,s__ctx__stats__sess_hit>=s__ctx__stats__sess_connect,s__ctx__stats__sess_hit>=s__ctx__stats__sess_connect_renegotiate} terms_tpl{s__ctx__stats__sess_hit-s__ctx__stats__sess_connect,s__ctx__stats__sess_hit-s__ctx__stats__sess_connect_renegotiate} @*/ s__ctx__stats__sess_hit = __VERIFIER_nondet_int();
  int /*@  predicates{s__ctx__stats__sess_connect_good<=s__ctx__stats__sess_connect,s__ctx__stats__sess_connect_good<=s__ctx__stats__sess_connect_renegotiate,s__ctx__stats__sess_connect_good<=s__ctx__stats__sess_hit,s__ctx__stats__sess_connect_good>=s__ctx__stats__sess_connect,s__ctx__stats__sess_connect_good>=s__ctx__stats__sess_connect_renegotiate,s__ctx__stats__sess_connect_good>=s__ctx__stats__sess_hit} terms_tpl{s__ctx__stats__sess_connect_good-s__ctx__stats__sess_connect,s__ctx__stats__sess_connect_good-s__ctx__stats__sess_connect_renegotiate,s__ctx__stats__sess_connect_good-s__ctx__stats__sess_hit} @*/ s__ctx__stats__sess_connect_good = __VERIFIER_nondet_int();
  int /*@  predicates{s__s3__change_cipher_spec==0} @*/ s__s3__change_cipher_spec ;
  int s__s3__flags ;
  int /*@  predicates{s__s3__delay_buf_pop_ret==0} @*/ s__s3__delay_buf_pop_ret ;
  int /*@  predicates{s__s3__tmp__cert_req!=0,s__s3__tmp__cert_req!=1,s__s3__tmp__cert_req==0,s__s3__tmp__cert_req==1} @*/ s__s3__tmp__cert_req = __VERIFIER_nondet_int();
  int /*@  predicates{s__s3__tmp__new_compression!=0,s__s3__tmp__new_compression!=1,s__s3__tmp__new_compression==0,s__s3__tmp__new_compression==1} @*/ s__s3__tmp__new_compression = __VERIFIER_nondet_int();
  int /*@  predicates{s__s3__tmp__reuse_message!=0,s__s3__tmp__reuse_message!=1,s__s3__tmp__reuse_message==0,s__s3__tmp__reuse_message==1} @*/ s__s3__tmp__reuse_message = __VERIFIER_nondet_int();
  int /*@  predicates{s__s3__tmp__new_cipher!=0,s__s3__tmp__new_cipher!=1,s__s3__tmp__new_cipher==0,s__s3__tmp__new_cipher==1} @*/ s__s3__tmp__new_cipher = __VERIFIER_nondet_int();
  int /*@  predicates{s__s3__tmp__new_cipher__algorithms!=0,s__s3__tmp__new_cipher__algorithms!=1,s__s3__tmp__new_cipher__algorithms-256,s__s3__tmp__new_cipher__algorithms==0,s__s3__tmp__new_cipher__algorithms==1} @*/ s__s3__tmp__new_cipher__algorithms = __VERIFIER_nondet_int();
  int /*@  predicates{s__s3__tmp__next_state___0==12292,s__s3__tmp__next_state___0==16384,s__s3__tmp__next_state___0==20480,s__s3__tmp__next_state___0==3,s__s3__tmp__next_state___0==4096,s__s3__tmp__next_state___0==4099,s__s3__tmp__next_state___0==4352,s__s3__tmp__next_state___0==4368,s__s3__tmp__next_state___0==4369,s__s3__tmp__next_state___0==4384,s__s3__tmp__next_state___0==4385,s__s3__tmp__next_state___0==4400,s__s3__tmp__next_state___0==4401,s__s3__tmp__next_state___0==4416,s__s3__tmp__next_state___0==4417,s__s3__tmp__next_state___0==4432,s__s3__tmp__next_state___0==4433,s__s3__tmp__next_state___0==4448,s__s3__tmp__next_state___0==4449,s__s3__tmp__next_state___0==4464,s__s3__tmp__next_state___0==4465,s__s3__tmp__next_state___0==4466,s__s3__tmp__next_state___0==4467,s__s3__tmp__next_state___0==4480,s__s3__tmp__next_state___0==4481,s__s3__tmp__next_state___0==4496,s__s3__tmp__next_state___0==4497,s__s3__tmp__next_state___0==4512,s__s3__tmp__next_state___0==4513,s__s3__tmp__next_state___0==4528,s__s3__tmp__next_state___0==4529,s__s3__tmp__next_state___0==4560,s__s3__tmp__next_state___0==4561} @*/ s__s3__tmp__next_state___0 ;
  int /*@  predicates{s__s3__tmp__new_compression__id!=0,s__s3__tmp__new_compression__id!=1,s__s3__tmp__new_compression__id==0,s__s3__tmp__new_compression__id==1} @*/ s__s3__tmp__new_compression__id = __VERIFIER_nondet_int();
  int /*@  predicates{s__session__cipher!=0,s__session__cipher!=1,s__session__cipher==0,s__session__cipher==1,s__session__cipher==s__s3__tmp__new_cipher} @*/ s__session__cipher ;
  int /*@  predicates{s__session__compress_meth!=0,s__session__compress_meth!=1,s__session__compress_meth==0,s__session__compress_meth==1,s__session__compress_meth==s__s3__tmp__new_compression__id} @*/ s__session__compress_meth ;
  int /*@  predicates{buf!=0,buf!=1,buf==0,buf==1,buf==s__init_buf___0} @*/ buf ;
  unsigned long tmp ;
  unsigned long l ;
  int /*@  predicates{num1!=0,num1!=1,num1==0,num1==1} @*/ num1 ;
  int /*@  predicates{cb!=0,cb!=1,cb==0,cb==1,cb==s__ctx__info_callback,cb==s__info_callback} @*/ cb ;
  int /*@  predicates{ret!=0,ret!=1,ret<=0,ret==(-1),ret==0,ret==1} @*/ ret ;
  int /*@  predicates{new_state==12292,new_state==16384,new_state==20480,new_state==3,new_state==4096,new_state==4099,new_state==4352,new_state==4368,new_state==4369,new_state==4384,new_state==4385,new_state==4400,new_state==4401,new_state==4416,new_state==4417,new_state==4432,new_state==4433,new_state==4448,new_state==4449,new_state==4464,new_state==4465,new_state==4466,new_state==4467,new_state==4480,new_state==4481,new_state==4496,new_state==4497,new_state==4512,new_state==4513,new_state==4528,new_state==4529,new_state==4560,new_state==4561} @*/ new_state ;
  int /*@  predicates{state!=s__state,state==12292,state==16384,state==20480,state==3,state==4096,state==4099,state==4352,state==4368,state==4369,state==4384,state==4385,state==4400,state==4401,state==4416,state==4417,state==4432,state==4433,state==4448,state==4449,state==4464,state==4465,state==4466,state==4467,state==4480,state==4481,state==4496,state==4497,state==4512,state==4513,state==4528,state==4529,state==4560,state==4561} @*/ state ;
  int /*@  predicates{skip==0,skip==1} @*/ skip ;
  int /*@  predicates{tmp___0==0} @*/ tmp___0 ;
  int /*@  predicates{tmp___1!=0,tmp___1!=1,tmp___1==0,tmp___1==1} @*/ tmp___1 = __VERIFIER_nondet_int();
  int /*@  predicates{tmp___2!=0,tmp___2!=1,tmp___2==0,tmp___2==1} @*/ tmp___2 = __VERIFIER_nondet_int();
  int /*@  predicates{tmp___3!=0,tmp___3!=1,tmp___3==0,tmp___3==1} @*/ tmp___3 = __VERIFIER_nondet_int();
  int /*@  predicates{tmp___4!=0,tmp___4!=1,tmp___4==0,tmp___4==1} @*/ tmp___4 = __VERIFIER_nondet_int();
  int /*@  predicates{tmp___5!=0,tmp___5!=1,tmp___5==0,tmp___5==1} @*/ tmp___5 = __VERIFIER_nondet_int();
  int /*@  predicates{tmp___6!=0,tmp___6!=1,tmp___6==0,tmp___6==1} @*/ tmp___6 = __VERIFIER_nondet_int();
  int /*@  predicates{tmp___7!=0,tmp___7!=1,tmp___7==0,tmp___7==1} @*/ tmp___7 = __VERIFIER_nondet_int();
  int /*@  predicates{tmp___8!=0,tmp___8!=1,tmp___8==0,tmp___8==1} @*/ tmp___8 = __VERIFIER_nondet_int();
  int /*@  predicates{tmp___9!=0,tmp___9!=1,tmp___9==0,tmp___9==1,tmp___9==num1} @*/ tmp___9 = __VERIFIER_nondet_int();
  int /*@  predicates{blastFlag==0,blastFlag==1,blastFlag==2,blastFlag==3,blastFlag==4,blastFlag==5} @*/ blastFlag ;
  int /*@  predicates{__cil_tmp55!=768} @*/ __cil_tmp55 ;
  long __cil_tmp56 ;
  long __cil_tmp57 ;
  long __cil_tmp58 ;
  long __cil_tmp59 ;
  long __cil_tmp60 ;
  long __cil_tmp61 ;
  long __cil_tmp62 ;
  long __cil_tmp63 ;
  long __cil_tmp64 ;
  ;
  {
  s__state = initial_state;
  blastFlag = 0;
  tmp = __VERIFIER_nondet_int();
  cb = 0;
  ret = -1;
  skip = 0;
  tmp___0 = 0;
  if(s__info_callback != 0){
    cb = s__info_callback;
  } else {
    if(s__ctx__info_callback != 0){
      cb = s__ctx__info_callback;
    }
  }
  s__in_handshake ++;
  if(tmp___1 - 12288){
    if(tmp___2 - 16384){

    }
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
        if(s__state == 4096){
          goto switch_1_4096;
        } else {
          if(s__state == 20480){
            goto switch_1_20480;
          } else {
            if(s__state == 4099){
              goto switch_1_4099;
            } else {
              if(s__state == 4368){
                goto switch_1_4368;
              } else {
                if(s__state == 4369){
                  goto switch_1_4369;
                } else {
                  if(s__state == 4384){
                    goto switch_1_4384;
                  } else {
                    if(s__state == 4385){
                      goto switch_1_4385;
                    } else {
                      if(s__state == 4400){
                        goto switch_1_4400;
                      } else {
                        if(s__state == 4401){
                          goto switch_1_4401;
                        } else {
                          if(s__state == 4416){
                            goto switch_1_4416;
                          } else {
                            if(s__state == 4417){
                              goto switch_1_4417;
                            } else {
                              if(s__state == 4432){
                                goto switch_1_4432;
                              } else {
                                if(s__state == 4433){
                                  goto switch_1_4433;
                                } else {
                                  if(s__state == 4448){
                                    goto switch_1_4448;
                                  } else {
                                    if(s__state == 4449){
                                      goto switch_1_4449;
                                    } else {
                                      if(s__state == 4464){
                                        goto switch_1_4464;
                                      } else {
                                        if(s__state == 4465){
                                          goto switch_1_4465;
                                        } else {
                                          if(s__state == 4466){
                                            goto switch_1_4466;
                                          } else {
                                            if(s__state == 4467){
                                              goto switch_1_4467;
                                            } else {
                                              if(s__state == 4480){
                                                goto switch_1_4480;
                                              } else {
                                                if(s__state == 4481){
                                                  goto switch_1_4481;
                                                } else {
                                                  if(s__state == 4496){
                                                    goto switch_1_4496;
                                                  } else {
                                                    if(s__state == 4497){
                                                      goto switch_1_4497;
                                                    } else {
                                                      if(s__state == 4512){
                                                        goto switch_1_4512;
                                                      } else {
                                                        if(s__state == 4513){
                                                          goto switch_1_4513;
                                                        } else {
                                                          if(s__state == 4528){
                                                            goto switch_1_4528;
                                                          } else {
                                                            if(s__state == 4529){
                                                              goto switch_1_4529;
                                                            } else {
                                                              if(s__state == 4560){
                                                                goto switch_1_4560;
                                                              } else {
                                                                if(s__state == 4561){
                                                                  goto switch_1_4561;
                                                                } else {
                                                                  if(s__state == 4352){
                                                                    goto switch_1_4352;
                                                                  } else {
                                                                    if(s__state == 3){
                                                                      goto switch_1_3;
                                                                    } else {
                                                                      goto switch_1_default;
                                                                      if(0){
                                                                        switch_1_12292:
                                                                        s__new_session = 1;
                                                                        s__state = 4096;
                                                                        s__ctx__stats__sess_connect_renegotiate ++;
                                                                        switch_1_16384: ;
                                                                        switch_1_4096: ;
                                                                        switch_1_20480: ;
                                                                        switch_1_4099:
                                                                        s__server = 0;
                                                                        if(cb != 0){

                                                                        }
                                                                        {
                                                                        __cil_tmp55 = s__version - 65280;
                                                                        if(__cil_tmp55 != 768){
                                                                          ret = -1;
                                                                          goto end;
                                                                        }
                                                                        }
                                                                        s__type = 4096;
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
                                                                        if(! tmp___5){
                                                                          ret = -1;
                                                                          goto end;
                                                                        }
                                                                        s__state = 4368;
                                                                        s__ctx__stats__sess_connect ++;
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4368: ;
                                                                        switch_1_4369:
                                                                        s__shutdown = 0;
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if(blastFlag == 0){
                                                                          blastFlag = 1;
                                                                        }
                                                                        if(ret <= 0){
                                                                          goto end;
                                                                        }
                                                                        s__state = 4384;
                                                                        s__init_num = 0;
                                                                        if(s__bbio != s__wbio){

                                                                        }
                                                                        goto switch_1_break;
                                                                        switch_1_4384: ;
                                                                        switch_1_4385:
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if(blastFlag == 1){
                                                                          blastFlag = 2;
                                                                        }
                                                                        if(ret <= 0){
                                                                          goto end;
                                                                        }
                                                                        if(s__hit){
                                                                          s__state = 4560;
                                                                        } else {
                                                                          s__state = 4400;
                                                                        }
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4400: ;
                                                                        switch_1_4401: ;
                                                                        if(s__s3__tmp__new_cipher__algorithms - 256){
                                                                          skip = 1;
                                                                        } else {
                                                                          ret = __VERIFIER_nondet_int();
                                                                          if(blastFlag == 2){
                                                                            blastFlag = 3;
                                                                          }
                                                                          if(ret <= 0){
                                                                            goto end;
                                                                          }
                                                                        }
                                                                        s__state = 4416;
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4416: ;
                                                                        switch_1_4417:
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if(blastFlag == 3){
                                                                          blastFlag = 4;
                                                                        }
                                                                        if(ret <= 0){
                                                                          goto end;
                                                                        }
                                                                        s__state = 4432;
                                                                        s__init_num = 0;
                                                                        if(! tmp___6){
                                                                          ret = -1;
                                                                          goto end;
                                                                        }
                                                                        goto switch_1_break;
                                                                        switch_1_4432: ;
                                                                        switch_1_4433:
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if(blastFlag == 5){
                                                                          goto ERROR;
                                                                        }
                                                                        if(ret <= 0){
                                                                          goto end;
                                                                        }
                                                                        s__state = 4448;
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4448: ;
                                                                        switch_1_4449:
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if(blastFlag == 4){
                                                                          blastFlag = 5;
                                                                        }
                                                                        if(ret <= 0){
                                                                          goto end;
                                                                        }
                                                                        if(s__s3__tmp__cert_req){
                                                                          s__state = 4464;
                                                                        } else {
                                                                          s__state = 4480;
                                                                        }
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4464: ;
                                                                        switch_1_4465: ;
                                                                        switch_1_4466: ;
                                                                        switch_1_4467:
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if(ret <= 0){
                                                                          goto end;
                                                                        }
                                                                        s__state = 4480;
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4480: ;
                                                                        switch_1_4481:
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if(ret <= 0){
                                                                          goto end;
                                                                        }
                                                                        l =(unsigned long)s__s3__tmp__new_cipher__algorithms;
                                                                        if(s__s3__tmp__cert_req == 1){
                                                                          s__state = 4496;
                                                                        } else {
                                                                          s__state = 4512;
                                                                          s__s3__change_cipher_spec = 0;
                                                                        }
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4496: ;
                                                                        switch_1_4497:
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if(ret <= 0){
                                                                          goto end;
                                                                        }
                                                                        s__state = 4512;
                                                                        s__init_num = 0;
                                                                        s__s3__change_cipher_spec = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4512: ;
                                                                        switch_1_4513:
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if(ret <= 0){
                                                                          goto end;
                                                                        }
                                                                        s__state = 4528;
                                                                        s__init_num = 0;
                                                                        s__session__cipher = s__s3__tmp__new_cipher;
                                                                        if(s__s3__tmp__new_compression == 0){
                                                                          s__session__compress_meth = 0;
                                                                        } else {
                                                                          s__session__compress_meth = s__s3__tmp__new_compression__id;
                                                                        }
                                                                        if(! tmp___7){
                                                                          ret = -1;
                                                                          goto end;
                                                                        }
                                                                        if(! tmp___8){
                                                                          ret = -1;
                                                                          goto end;
                                                                        }
                                                                        goto switch_1_break;
                                                                        switch_1_4528: ;
                                                                        switch_1_4529:
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if(ret <= 0){
                                                                          goto end;
                                                                        }
                                                                        s__state = 4352;
                                                                        __cil_tmp56 =(long)s__s3__flags;
                                                                        __cil_tmp57 = __cil_tmp56 + 5;
                                                                        s__s3__flags =(int)__cil_tmp57;
                                                                        if(s__hit){
                                                                          s__s3__tmp__next_state___0 = 3;
                                                                          {
                                                                          __cil_tmp58 =(long)s__s3__flags;
                                                                          if(__cil_tmp58 - 2L){
                                                                            s__state = 3;
                                                                            __cil_tmp59 =(long)s__s3__flags;
                                                                            __cil_tmp60 = __cil_tmp59 + 4L;
                                                                            s__s3__flags =(int)__cil_tmp60;
                                                                            s__s3__delay_buf_pop_ret = 0;
                                                                          }
                                                                          }
                                                                        } else {
                                                                          s__s3__tmp__next_state___0 = 4560;
                                                                        }
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4560: ;
                                                                        switch_1_4561:
                                                                        ret = __VERIFIER_nondet_int();
                                                                        if(ret <= 0){
                                                                          goto end;
                                                                        }
                                                                        if(s__hit){
                                                                          s__state = 4512;
                                                                        } else {
                                                                          s__state = 3;
                                                                        }
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4352:
                                                                        {
                                                                        __cil_tmp61 =(long)num1;
                                                                        if(__cil_tmp61 > 0L){
                                                                          s__rwstate = 2;
                                                                          num1 = tmp___9;
                                                                          {
                                                                          __cil_tmp62 =(long)num1;
                                                                          if(__cil_tmp62 <= 0L){
                                                                            ret = -1;
                                                                            goto end;
                                                                          }
                                                                          }
                                                                          s__rwstate = 1;
                                                                        }
                                                                        }
                                                                        s__state = s__s3__tmp__next_state___0;
                                                                        goto switch_1_break;
                                                                        switch_1_3:
                                                                        if(s__init_buf___0 != 0){
                                                                          s__init_buf___0 = 0;
                                                                        }
                                                                        {
                                                                        __cil_tmp63 =(long)s__s3__flags;
                                                                        __cil_tmp64 = __cil_tmp63 - 4L;
                                                                        if(! __cil_tmp64){

                                                                        }
                                                                        }
                                                                        s__init_num = 0;
                                                                        s__new_session = 0;
                                                                        if(s__hit){
                                                                          s__ctx__stats__sess_hit ++;
                                                                        }
                                                                        ret = 1;
                                                                        s__ctx__stats__sess_connect_good ++;
                                                                        if(cb != 0){

                                                                        }
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
{ int /*@  predicates{s==12292} @*/ s ;

  {
  {
  s = 12292;
  ssl3_connect(12292);
  }
  return(0);
}
}
