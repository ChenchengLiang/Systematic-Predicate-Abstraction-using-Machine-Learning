extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: assert(0); goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/UNSAFE-exbench/SVCOMP13-sshsimpl-s3_clnt_3_unsafeil.c.tmp.c"
# 1 "<command-line>"
# 1 "MAP/UNSAFE-exbench/SVCOMP13-sshsimpl-s3_clnt_3_unsafeil.c.tmp.c"
# 18 "MAP/UNSAFE-exbench/SVCOMP13-sshsimpl-s3_clnt_3_unsafeil.c.tmp.c"
//extern char __VERIFIER_nondet_char(void);
//extern int __VERIFIER_nondet_int(void);
//extern long __VERIFIER_nondet_long(void);
//extern void *__VERIFIER_nondet_pointer(void);
//extern int __VERIFIER_nondet_int();
# 4 "s3_clnt_3_BUG.cil.c"
int ssl3_connect(int initial_state )
{ int s__info_callback = __VERIFIER_nondet_int() ;
  int s__in_handshake = __VERIFIER_nondet_int() ;
  int s__state ;
  int s__new_session ;
  int s__server ;
  int s__version = __VERIFIER_nondet_int() ;
  int s__type ;
  int s__init_num ;
  int s__bbio = __VERIFIER_nondet_int() ;
  int s__wbio = __VERIFIER_nondet_int() ;
  int s__hit = __VERIFIER_nondet_int() ;
  int s__rwstate ;
  int s__init_buf___0 ;
  int s__debug = __VERIFIER_nondet_int() ;
  int s__shutdown ;
  int s__ctx__info_callback = __VERIFIER_nondet_int() ;
  int s__ctx__stats__sess_connect_renegotiate = __VERIFIER_nondet_int() ;
  int s__ctx__stats__sess_connect = __VERIFIER_nondet_int() ;
  int s__ctx__stats__sess_hit = __VERIFIER_nondet_int() ;
  int s__ctx__stats__sess_connect_good = __VERIFIER_nondet_int() ;
  int s__s3__change_cipher_spec ;
  int s__s3__flags ;
  int s__s3__delay_buf_pop_ret ;
  int s__s3__tmp__cert_req = __VERIFIER_nondet_int() ;
  int s__s3__tmp__new_compression = __VERIFIER_nondet_int() ;
  int s__s3__tmp__reuse_message = __VERIFIER_nondet_int() ;
  int s__s3__tmp__new_cipher = __VERIFIER_nondet_int() ;
  int s__s3__tmp__new_cipher__algorithms = __VERIFIER_nondet_int() ;
  int s__s3__tmp__next_state___0 ;
  int s__s3__tmp__new_compression__id = __VERIFIER_nondet_int() ;
  int s__session__cipher ;
  int s__session__compress_meth ;
  int buf ;
  unsigned long tmp ;
  unsigned long l ;
  int num1 ;
  int cb ;
  int ret ;
  int new_state ;
  int state ;
  int skip ;
  int tmp___0 ;
  int tmp___1 = __VERIFIER_nondet_int() ;
  int tmp___2 = __VERIFIER_nondet_int() ;
  int tmp___3 = __VERIFIER_nondet_int() ;
  int tmp___4 = __VERIFIER_nondet_int() ;
  int tmp___5 = __VERIFIER_nondet_int() ;
  int tmp___6 = __VERIFIER_nondet_int() ;
  int tmp___7 = __VERIFIER_nondet_int() ;
  int tmp___8 = __VERIFIER_nondet_int() ;
  int tmp___9 = __VERIFIER_nondet_int() ;
  int blastFlag ;
  int __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  long __cil_tmp65 ;
  long __cil_tmp66 ;
  long __cil_tmp67 ;
  long __cil_tmp68 ;
  long __cil_tmp69 ;
  long __cil_tmp70 ;
  long __cil_tmp71 ;
  long __cil_tmp72 ;
  long __cil_tmp73 ;
  long __cil_tmp74 ;

  {
# 60 "s3_clnt_3_BUG.cil.c"
;
  s__state = initial_state;
# 61 "s3_clnt_3_BUG.cil.c"
  blastFlag = 0;
# 62 "s3_clnt_3_BUG.cil.c"
  tmp = __VERIFIER_nondet_int();
# 63 "s3_clnt_3_BUG.cil.c"
  cb = 0;
# 64 "s3_clnt_3_BUG.cil.c"
  ret = -1;
# 65 "s3_clnt_3_BUG.cil.c"
  skip = 0;
# 66 "s3_clnt_3_BUG.cil.c"
  tmp___0 = 0;
# 67 "s3_clnt_3_BUG.cil.c"
  if (s__info_callback != 0) {
# 68 "s3_clnt_3_BUG.cil.c"
    cb = s__info_callback;
  } else {
# 70 "s3_clnt_3_BUG.cil.c"
    if (s__ctx__info_callback != 0) {
# 71 "s3_clnt_3_BUG.cil.c"
      cb = s__ctx__info_callback;
    }
  }
# 76 "s3_clnt_3_BUG.cil.c"
  s__in_handshake ++;
# 77 "s3_clnt_3_BUG.cil.c"
  if (tmp___1 + 12288) {
# 78 "s3_clnt_3_BUG.cil.c"
    if (tmp___2 + 16384) {

    }
  }
  {
# 87 "s3_clnt_3_BUG.cil.c"
  while (1) {
    while_0_continue: ;
# 89 "s3_clnt_3_BUG.cil.c"
    state = s__state;
# 90 "s3_clnt_3_BUG.cil.c"
    if (s__state == 12292) {
      goto switch_1_12292;
    } else {
# 93 "s3_clnt_3_BUG.cil.c"
      if (s__state == 16384) {
        goto switch_1_16384;
      } else {
# 96 "s3_clnt_3_BUG.cil.c"
        if (s__state == 4096) {
          goto switch_1_4096;
        } else {
# 99 "s3_clnt_3_BUG.cil.c"
          if (s__state == 20480) {
            goto switch_1_20480;
          } else {
# 102 "s3_clnt_3_BUG.cil.c"
            if (s__state == 4099) {
              goto switch_1_4099;
            } else {
# 105 "s3_clnt_3_BUG.cil.c"
              if (s__state == 4368) {
                goto switch_1_4368;
              } else {
# 108 "s3_clnt_3_BUG.cil.c"
                if (s__state == 4369) {
                  goto switch_1_4369;
                } else {
# 111 "s3_clnt_3_BUG.cil.c"
                  if (s__state == 4384) {
                    goto switch_1_4384;
                  } else {
# 114 "s3_clnt_3_BUG.cil.c"
                    if (s__state == 4385) {
                      goto switch_1_4385;
                    } else {
# 117 "s3_clnt_3_BUG.cil.c"
                      if (s__state == 4400) {
                        goto switch_1_4400;
                      } else {
# 120 "s3_clnt_3_BUG.cil.c"
                        if (s__state == 4401) {
                          goto switch_1_4401;
                        } else {
# 123 "s3_clnt_3_BUG.cil.c"
                          if (s__state == 4416) {
                            goto switch_1_4416;
                          } else {
# 126 "s3_clnt_3_BUG.cil.c"
                            if (s__state == 4417) {
                              goto switch_1_4417;
                            } else {
# 129 "s3_clnt_3_BUG.cil.c"
                              if (s__state == 4432) {
                                goto switch_1_4432;
                              } else {
# 132 "s3_clnt_3_BUG.cil.c"
                                if (s__state == 4433) {
                                  goto switch_1_4433;
                                } else {
# 135 "s3_clnt_3_BUG.cil.c"
                                  if (s__state == 4448) {
                                    goto switch_1_4448;
                                  } else {
# 138 "s3_clnt_3_BUG.cil.c"
                                    if (s__state == 4449) {
                                      goto switch_1_4449;
                                    } else {
# 141 "s3_clnt_3_BUG.cil.c"
                                      if (s__state == 4464) {
                                        goto switch_1_4464;
                                      } else {
# 144 "s3_clnt_3_BUG.cil.c"
                                        if (s__state == 4465) {
                                          goto switch_1_4465;
                                        } else {
# 147 "s3_clnt_3_BUG.cil.c"
                                          if (s__state == 4466) {
                                            goto switch_1_4466;
                                          } else {
# 150 "s3_clnt_3_BUG.cil.c"
                                            if (s__state == 4467) {
                                              goto switch_1_4467;
                                            } else {
# 153 "s3_clnt_3_BUG.cil.c"
                                              if (s__state == 4480) {
                                                goto switch_1_4480;
                                              } else {
# 156 "s3_clnt_3_BUG.cil.c"
                                                if (s__state == 4481) {
                                                  goto switch_1_4481;
                                                } else {
# 159 "s3_clnt_3_BUG.cil.c"
                                                  if (s__state == 4496) {
                                                    goto switch_1_4496;
                                                  } else {
# 162 "s3_clnt_3_BUG.cil.c"
                                                    if (s__state == 4497) {
                                                      goto switch_1_4497;
                                                    } else {
# 165 "s3_clnt_3_BUG.cil.c"
                                                      if (s__state == 4512) {
                                                        goto switch_1_4512;
                                                      } else {
# 168 "s3_clnt_3_BUG.cil.c"
                                                        if (s__state == 4513) {
                                                          goto switch_1_4513;
                                                        } else {
# 171 "s3_clnt_3_BUG.cil.c"
                                                          if (s__state == 4528) {
                                                            goto switch_1_4528;
                                                          } else {
# 174 "s3_clnt_3_BUG.cil.c"
                                                            if (s__state == 4529) {
                                                              goto switch_1_4529;
                                                            } else {
# 177 "s3_clnt_3_BUG.cil.c"
                                                              if (s__state == 4560) {
                                                                goto switch_1_4560;
                                                              } else {
# 180 "s3_clnt_3_BUG.cil.c"
                                                                if (s__state == 4561) {
                                                                  goto switch_1_4561;
                                                                } else {
# 183 "s3_clnt_3_BUG.cil.c"
                                                                  if (s__state == 4352) {
                                                                    goto switch_1_4352;
                                                                  } else {
# 186 "s3_clnt_3_BUG.cil.c"
                                                                    if (s__state == 3) {
                                                                      goto switch_1_3;
                                                                    } else {
                                                                      goto switch_1_default;
# 191 "s3_clnt_3_BUG.cil.c"
                                                                      if (0) {
                                                                        switch_1_12292:
# 193 "s3_clnt_3_BUG.cil.c"
                                                                        s__new_session = 1;
# 194 "s3_clnt_3_BUG.cil.c"
                                                                        s__state = 4096;
# 195 "s3_clnt_3_BUG.cil.c"
                                                                        s__ctx__stats__sess_connect_renegotiate ++;
                                                                        switch_1_16384: ;
                                                                        switch_1_4096: ;
                                                                        switch_1_20480: ;
                                                                        switch_1_4099:
# 200 "s3_clnt_3_BUG.cil.c"
                                                                        s__server = 0;
# 201 "s3_clnt_3_BUG.cil.c"
                                                                        if (cb != 0) {

                                                                        }
                                                                        {
# 206 "s3_clnt_3_BUG.cil.c"
                                                                        __cil_tmp55 = s__version + 65280;
# 206 "s3_clnt_3_BUG.cil.c"
                                                                        if (__cil_tmp55 != 768) {
# 207 "s3_clnt_3_BUG.cil.c"
                                                                          ret = -1;
                                                                          goto end;
                                                                        }
                                                                        }
# 212 "s3_clnt_3_BUG.cil.c"
                                                                        s__type = 4096;
                                                                        {
# 213 "s3_clnt_3_BUG.cil.c"
                                                                        __cil_tmp56 = 0;
# 213 "s3_clnt_3_BUG.cil.c"
                                                                        __cil_tmp57 = (unsigned long )__cil_tmp56;
# 213 "s3_clnt_3_BUG.cil.c"
                                                                        __cil_tmp58 = (unsigned long )s__init_buf___0;
# 213 "s3_clnt_3_BUG.cil.c"
                                                                        if (__cil_tmp58 == __cil_tmp57) {
# 214 "s3_clnt_3_BUG.cil.c"
                                                                          buf = __VERIFIER_nondet_int();
                                                                          {
# 215 "s3_clnt_3_BUG.cil.c"
                                                                          __cil_tmp59 = 0;
# 215 "s3_clnt_3_BUG.cil.c"
                                                                          __cil_tmp60 = (unsigned long )__cil_tmp59;
# 215 "s3_clnt_3_BUG.cil.c"
                                                                          __cil_tmp61 = (unsigned long )buf;
# 215 "s3_clnt_3_BUG.cil.c"
                                                                          if (__cil_tmp61 == __cil_tmp60) {
# 216 "s3_clnt_3_BUG.cil.c"
                                                                            ret = -1;
                                                                            goto end;
                                                                          }
                                                                          }
# 221 "s3_clnt_3_BUG.cil.c"
                                                                          if (! tmp___3) {
# 222 "s3_clnt_3_BUG.cil.c"
                                                                            ret = -1;
                                                                            goto end;
                                                                          }
# 227 "s3_clnt_3_BUG.cil.c"
                                                                          s__init_buf___0 = buf;
                                                                        }
                                                                        }
# 231 "s3_clnt_3_BUG.cil.c"
                                                                        if (! tmp___4) {
# 232 "s3_clnt_3_BUG.cil.c"
                                                                          ret = -1;
                                                                          goto end;
                                                                        }
# 237 "s3_clnt_3_BUG.cil.c"
                                                                        if (! tmp___5) {
# 238 "s3_clnt_3_BUG.cil.c"
                                                                          ret = -1;
                                                                          goto end;
                                                                        }
# 243 "s3_clnt_3_BUG.cil.c"
                                                                        s__state = 4368;
# 244 "s3_clnt_3_BUG.cil.c"
                                                                        s__ctx__stats__sess_connect ++;
# 245 "s3_clnt_3_BUG.cil.c"
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4368: ;
                                                                        switch_1_4369:
# 249 "s3_clnt_3_BUG.cil.c"
                                                                        s__shutdown = 0;
# 250 "s3_clnt_3_BUG.cil.c"
                                                                        ret = __VERIFIER_nondet_int();
# 251 "s3_clnt_3_BUG.cil.c"
                                                                        if (blastFlag == 0) {
# 252 "s3_clnt_3_BUG.cil.c"
                                                                          blastFlag = 1;
                                                                        }
# 256 "s3_clnt_3_BUG.cil.c"
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
# 261 "s3_clnt_3_BUG.cil.c"
                                                                        s__state = 4384;
# 262 "s3_clnt_3_BUG.cil.c"
                                                                        s__init_num = 0;
                                                                        {
# 263 "s3_clnt_3_BUG.cil.c"
                                                                        __cil_tmp62 = (unsigned long )s__wbio;
# 263 "s3_clnt_3_BUG.cil.c"
                                                                        __cil_tmp63 = (unsigned long )s__bbio;
# 263 "s3_clnt_3_BUG.cil.c"
                                                                        if (__cil_tmp63 != __cil_tmp62) {

                                                                        }
                                                                        }
                                                                        goto switch_1_break;
                                                                        switch_1_4384: ;
                                                                        switch_1_4385:
# 271 "s3_clnt_3_BUG.cil.c"
                                                                        ret = __VERIFIER_nondet_int();
# 272 "s3_clnt_3_BUG.cil.c"
                                                                        if (blastFlag == 1) {
# 273 "s3_clnt_3_BUG.cil.c"
                                                                          blastFlag = 2;
                                                                        } else {
# 275 "s3_clnt_3_BUG.cil.c"
                                                                          if (blastFlag == 4) {
# 276 "s3_clnt_3_BUG.cil.c"
                                                                            blastFlag = 5;
                                                                          }
                                                                        }
# 281 "s3_clnt_3_BUG.cil.c"
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
# 286 "s3_clnt_3_BUG.cil.c"
                                                                        if (s__hit) {
# 287 "s3_clnt_3_BUG.cil.c"
                                                                          s__state = 4560;
                                                                        } else {
# 289 "s3_clnt_3_BUG.cil.c"
                                                                          s__state = 4400;
                                                                        }
# 291 "s3_clnt_3_BUG.cil.c"
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4400: ;
                                                                        switch_1_4401: ;
                                                                        {
# 295 "s3_clnt_3_BUG.cil.c"
                                                                        __cil_tmp64 = (unsigned long )s__s3__tmp__new_cipher__algorithms;
# 295 "s3_clnt_3_BUG.cil.c"
                                                                        if (__cil_tmp64 + 256UL) {
# 296 "s3_clnt_3_BUG.cil.c"
                                                                          skip = 1;
                                                                        } else {
# 298 "s3_clnt_3_BUG.cil.c"
                                                                          ret = __VERIFIER_nondet_int();
# 299 "s3_clnt_3_BUG.cil.c"
                                                                          if (blastFlag == 2) {
# 300 "s3_clnt_3_BUG.cil.c"
                                                                            blastFlag = 3;
                                                                          }
# 304 "s3_clnt_3_BUG.cil.c"
                                                                          if (ret <= 0) {
                                                                            goto end;
                                                                          }
                                                                        }
                                                                        }
# 310 "s3_clnt_3_BUG.cil.c"
                                                                        s__state = 4416;
# 311 "s3_clnt_3_BUG.cil.c"
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4416: ;
                                                                        switch_1_4417:
# 315 "s3_clnt_3_BUG.cil.c"
                                                                        ret = __VERIFIER_nondet_int();
# 316 "s3_clnt_3_BUG.cil.c"
                                                                        if (blastFlag == 3) {
# 317 "s3_clnt_3_BUG.cil.c"
                                                                          blastFlag = 4;
                                                                        }
# 321 "s3_clnt_3_BUG.cil.c"
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
# 326 "s3_clnt_3_BUG.cil.c"
                                                                        s__state = 4432;
# 327 "s3_clnt_3_BUG.cil.c"
                                                                        s__init_num = 0;
# 328 "s3_clnt_3_BUG.cil.c"
                                                                        if (! tmp___6) {
# 329 "s3_clnt_3_BUG.cil.c"
                                                                          ret = -1;
                                                                          goto end;
                                                                        }
                                                                        goto switch_1_break;
                                                                        switch_1_4432: ;
                                                                        switch_1_4433:
# 337 "s3_clnt_3_BUG.cil.c"
                                                                        ret = __VERIFIER_nondet_int();
# 338 "s3_clnt_3_BUG.cil.c"
                                                                        if (blastFlag == 4) {
                                                                          goto ERROR;
                                                                        }
# 343 "s3_clnt_3_BUG.cil.c"
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
# 348 "s3_clnt_3_BUG.cil.c"
                                                                        s__state = 4448;
# 349 "s3_clnt_3_BUG.cil.c"
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4448: ;
                                                                        switch_1_4449:
# 353 "s3_clnt_3_BUG.cil.c"
                                                                        ret = __VERIFIER_nondet_int();
# 354 "s3_clnt_3_BUG.cil.c"
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
# 359 "s3_clnt_3_BUG.cil.c"
                                                                        if (s__s3__tmp__cert_req) {
# 360 "s3_clnt_3_BUG.cil.c"
                                                                          s__state = 4464;
                                                                        } else {
# 362 "s3_clnt_3_BUG.cil.c"
                                                                          s__state = 4480;
                                                                        }
# 364 "s3_clnt_3_BUG.cil.c"
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4464: ;
                                                                        switch_1_4465: ;
                                                                        switch_1_4466: ;
                                                                        switch_1_4467:
# 370 "s3_clnt_3_BUG.cil.c"
                                                                        ret = __VERIFIER_nondet_int();
# 371 "s3_clnt_3_BUG.cil.c"
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
# 376 "s3_clnt_3_BUG.cil.c"
                                                                        s__state = 4480;
# 377 "s3_clnt_3_BUG.cil.c"
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4480: ;
                                                                        switch_1_4481:
# 381 "s3_clnt_3_BUG.cil.c"
                                                                        ret = __VERIFIER_nondet_int();
# 382 "s3_clnt_3_BUG.cil.c"
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
# 387 "s3_clnt_3_BUG.cil.c"
                                                                        l = (unsigned long )s__s3__tmp__new_cipher__algorithms;
# 388 "s3_clnt_3_BUG.cil.c"
                                                                        if (s__s3__tmp__cert_req == 1) {
# 389 "s3_clnt_3_BUG.cil.c"
                                                                          s__state = 4496;
                                                                        } else {
# 391 "s3_clnt_3_BUG.cil.c"
                                                                          s__state = 4512;
# 392 "s3_clnt_3_BUG.cil.c"
                                                                          s__s3__change_cipher_spec = 0;
                                                                        }
# 394 "s3_clnt_3_BUG.cil.c"
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4496: ;
                                                                        switch_1_4497:
# 398 "s3_clnt_3_BUG.cil.c"
                                                                        ret = __VERIFIER_nondet_int();
# 399 "s3_clnt_3_BUG.cil.c"
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
# 404 "s3_clnt_3_BUG.cil.c"
                                                                        s__state = 4512;
# 405 "s3_clnt_3_BUG.cil.c"
                                                                        s__init_num = 0;
# 406 "s3_clnt_3_BUG.cil.c"
                                                                        s__s3__change_cipher_spec = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4512: ;
                                                                        switch_1_4513:
# 410 "s3_clnt_3_BUG.cil.c"
                                                                        ret = __VERIFIER_nondet_int();
# 411 "s3_clnt_3_BUG.cil.c"
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
# 416 "s3_clnt_3_BUG.cil.c"
                                                                        s__state = 4528;
# 417 "s3_clnt_3_BUG.cil.c"
                                                                        s__init_num = 0;
# 418 "s3_clnt_3_BUG.cil.c"
                                                                        s__session__cipher = s__s3__tmp__new_cipher;
# 419 "s3_clnt_3_BUG.cil.c"
                                                                        if (s__s3__tmp__new_compression == 0) {
# 420 "s3_clnt_3_BUG.cil.c"
                                                                          s__session__compress_meth = 0;
                                                                        } else {
# 422 "s3_clnt_3_BUG.cil.c"
                                                                          s__session__compress_meth = s__s3__tmp__new_compression__id;
                                                                        }
# 424 "s3_clnt_3_BUG.cil.c"
                                                                        if (! tmp___7) {
# 425 "s3_clnt_3_BUG.cil.c"
                                                                          ret = -1;
                                                                          goto end;
                                                                        }
# 430 "s3_clnt_3_BUG.cil.c"
                                                                        if (! tmp___8) {
# 431 "s3_clnt_3_BUG.cil.c"
                                                                          ret = -1;
                                                                          goto end;
                                                                        }
                                                                        goto switch_1_break;
                                                                        switch_1_4528: ;
                                                                        switch_1_4529:
# 439 "s3_clnt_3_BUG.cil.c"
                                                                        ret = __VERIFIER_nondet_int();
# 440 "s3_clnt_3_BUG.cil.c"
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
# 445 "s3_clnt_3_BUG.cil.c"
                                                                        s__state = 4352;
# 446 "s3_clnt_3_BUG.cil.c"
                                                                        __cil_tmp65 = (long )s__s3__flags;
# 446 "s3_clnt_3_BUG.cil.c"
                                                                        __cil_tmp66 = __cil_tmp65 - 5;
# 446 "s3_clnt_3_BUG.cil.c"
                                                                        s__s3__flags = (int )__cil_tmp66;
# 447 "s3_clnt_3_BUG.cil.c"
                                                                        if (s__hit) {
# 448 "s3_clnt_3_BUG.cil.c"
                                                                          s__s3__tmp__next_state___0 = 3;
                                                                          {
# 449 "s3_clnt_3_BUG.cil.c"
                                                                          __cil_tmp67 = (long )s__s3__flags;
# 449 "s3_clnt_3_BUG.cil.c"
                                                                          if (__cil_tmp67 + 2L) {
# 450 "s3_clnt_3_BUG.cil.c"
                                                                            s__state = 3;
# 451 "s3_clnt_3_BUG.cil.c"
                                                                            __cil_tmp68 = (long )s__s3__flags;
# 451 "s3_clnt_3_BUG.cil.c"
                                                                            __cil_tmp69 = __cil_tmp68 * 4L;
# 451 "s3_clnt_3_BUG.cil.c"
                                                                            s__s3__flags = (int )__cil_tmp69;
# 452 "s3_clnt_3_BUG.cil.c"
                                                                            s__s3__delay_buf_pop_ret = 0;
                                                                          }
                                                                          }
                                                                        } else {
# 457 "s3_clnt_3_BUG.cil.c"
                                                                          s__s3__tmp__next_state___0 = 4560;
                                                                        }
# 459 "s3_clnt_3_BUG.cil.c"
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4560: ;
                                                                        switch_1_4561:
# 463 "s3_clnt_3_BUG.cil.c"
                                                                        ret = __VERIFIER_nondet_int();
# 464 "s3_clnt_3_BUG.cil.c"
                                                                        if (ret <= 0) {
                                                                          goto end;
                                                                        }
# 469 "s3_clnt_3_BUG.cil.c"
                                                                        if (s__hit) {
# 470 "s3_clnt_3_BUG.cil.c"
                                                                          s__state = 4512;
                                                                        } else {
# 472 "s3_clnt_3_BUG.cil.c"
                                                                          s__state = 3;
                                                                        }
# 474 "s3_clnt_3_BUG.cil.c"
                                                                        s__init_num = 0;
                                                                        goto switch_1_break;
                                                                        switch_1_4352:
                                                                        {
# 477 "s3_clnt_3_BUG.cil.c"
                                                                        __cil_tmp70 = (long )num1;
# 477 "s3_clnt_3_BUG.cil.c"
                                                                        if (__cil_tmp70 > 0) {
# 478 "s3_clnt_3_BUG.cil.c"
                                                                          s__rwstate = 2;
# 479 "s3_clnt_3_BUG.cil.c"
                                                                          __cil_tmp71 = (long )tmp___9;
# 479 "s3_clnt_3_BUG.cil.c"
                                                                          num1 = (int )__cil_tmp71;
                                                                          {
# 480 "s3_clnt_3_BUG.cil.c"
                                                                          __cil_tmp72 = (long )num1;
# 480 "s3_clnt_3_BUG.cil.c"
                                                                          if (__cil_tmp72 <= 0) {
# 481 "s3_clnt_3_BUG.cil.c"
                                                                            ret = -1;
                                                                            goto end;
                                                                          }
                                                                          }
# 486 "s3_clnt_3_BUG.cil.c"
                                                                          s__rwstate = 1;
                                                                        }
                                                                        }
# 490 "s3_clnt_3_BUG.cil.c"
                                                                        s__state = s__s3__tmp__next_state___0;
                                                                        goto switch_1_break;
                                                                        switch_1_3:
# 493 "s3_clnt_3_BUG.cil.c"
                                                                        if (s__init_buf___0 != 0) {
# 494 "s3_clnt_3_BUG.cil.c"
                                                                          s__init_buf___0 = 0;
                                                                        }
                                                                        {
# 498 "s3_clnt_3_BUG.cil.c"
                                                                        __cil_tmp73 = (long )s__s3__flags;
# 498 "s3_clnt_3_BUG.cil.c"
                                                                        __cil_tmp74 = __cil_tmp73 + 4L;
# 498 "s3_clnt_3_BUG.cil.c"
                                                                        if (! __cil_tmp74) {

                                                                        }
                                                                        }
# 503 "s3_clnt_3_BUG.cil.c"
                                                                        s__init_num = 0;
# 504 "s3_clnt_3_BUG.cil.c"
                                                                        s__new_session = 0;
# 505 "s3_clnt_3_BUG.cil.c"
                                                                        if (s__hit) {
# 506 "s3_clnt_3_BUG.cil.c"
                                                                          s__ctx__stats__sess_hit ++;
                                                                        }
# 510 "s3_clnt_3_BUG.cil.c"
                                                                        ret = 1;
# 511 "s3_clnt_3_BUG.cil.c"
                                                                        s__ctx__stats__sess_connect_good ++;
# 512 "s3_clnt_3_BUG.cil.c"
                                                                        if (cb != 0) {

                                                                        }
                                                                        goto end;
                                                                        switch_1_default:
# 519 "s3_clnt_3_BUG.cil.c"
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
# 558 "s3_clnt_3_BUG.cil.c"
    if (! s__s3__tmp__reuse_message) {
# 559 "s3_clnt_3_BUG.cil.c"
      if (! skip) {
# 560 "s3_clnt_3_BUG.cil.c"
        if (s__debug) {
# 561 "s3_clnt_3_BUG.cil.c"
          ret = __VERIFIER_nondet_int();
# 562 "s3_clnt_3_BUG.cil.c"
          if (ret <= 0) {
            goto end;
          }
        }
# 570 "s3_clnt_3_BUG.cil.c"
        if (cb != 0) {
# 571 "s3_clnt_3_BUG.cil.c"
          if (s__state != state) {
# 572 "s3_clnt_3_BUG.cil.c"
            new_state = s__state;
# 573 "s3_clnt_3_BUG.cil.c"
            s__state = state;
# 574 "s3_clnt_3_BUG.cil.c"
            s__state = new_state;
          }
        }
      }
    }
# 587 "s3_clnt_3_BUG.cil.c"
    skip = 0;
  }
  while_0_break: ;
  }

  end:
# 592 "s3_clnt_3_BUG.cil.c"
  s__in_handshake --;
# 593 "s3_clnt_3_BUG.cil.c"
  if (cb != 0) {

  }
# 598 "s3_clnt_3_BUG.cil.c"
  return (ret);
  ERROR: assert(0);
# 600 "s3_clnt_3_BUG.cil.c"
  return (-1);
}
}
# 603 "s3_clnt_3_BUG.cil.c"
int main(void)
{ int s ;

  {
  {
# 608 "s3_clnt_3_BUG.cil.c"
  s = 12292;
# 609 "s3_clnt_3_BUG.cil.c"
  ssl3_connect(s);
  }
# 611 "s3_clnt_3_BUG.cil.c"
  return (0);
}
}
