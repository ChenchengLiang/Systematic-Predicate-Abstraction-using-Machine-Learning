extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: assert(0); goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/UNSAFE-exbench/SVCOMP13-sshsimpl-s3_srvr_13_unsafeil.c.tmp.c"
# 1 "<command-line>"
# 1 "MAP/UNSAFE-exbench/SVCOMP13-sshsimpl-s3_srvr_13_unsafeil.c.tmp.c"
# 18 "MAP/UNSAFE-exbench/SVCOMP13-sshsimpl-s3_srvr_13_unsafeil.c.tmp.c"
//extern char __VERIFIER_nondet_char(void);
//extern int __VERIFIER_nondet_int(void);
//extern long __VERIFIER_nondet_long(void);
//extern void *__VERIFIER_nondet_pointer(void);
//extern int __VERIFIER_nondet_int();
# 4 "s3_srvr_7.cil.c"
int ssl3_accept(int initial_state )
{ int s__info_callback = __VERIFIER_nondet_int() ;
  int s__in_handshake = __VERIFIER_nondet_int() ;
  int s__state ;
  int s__new_session ;
  int s__server ;
  int s__version = __VERIFIER_nondet_int() ;
  int s__type ;
  int s__init_num ;
  int s__hit = __VERIFIER_nondet_int() ;
  int s__rwstate ;
  int s__init_buf___0 ;
  int s__debug = __VERIFIER_nondet_int() ;
  int s__shutdown ;
  int s__cert = __VERIFIER_nondet_int() ;
  int s__options = __VERIFIER_nondet_int() ;
  int s__verify_mode = __VERIFIER_nondet_int() ;
  int s__session__peer = __VERIFIER_nondet_int() ;
  int s__cert__pkeys__AT0__privatekey = __VERIFIER_nondet_int() ;
  int s__ctx__info_callback = __VERIFIER_nondet_int() ;
  int s__ctx__stats__sess_accept_renegotiate = __VERIFIER_nondet_int() ;
  int s__ctx__stats__sess_accept = __VERIFIER_nondet_int() ;
  int s__ctx__stats__sess_accept_good = __VERIFIER_nondet_int() ;
  int s__s3__tmp__cert_request ;
  int s__s3__tmp__reuse_message ;
  int s__s3__tmp__use_rsa_tmp ;
  int s__s3__tmp__new_cipher = __VERIFIER_nondet_int() ;
  int s__s3__tmp__new_cipher__algorithms ;
  int s__s3__tmp__next_state___0 ;
  int s__s3__tmp__new_cipher__algo_strength ;
  int s__session__cipher ;
  int buf ;
  unsigned long l ;
  unsigned long Time ;
  unsigned long tmp ;
  int cb ;
  long num1 ;
  int ret ;
  int new_state ;
  int state ;
  int skip ;
  int got_new_session ;
  int tmp___1 = __VERIFIER_nondet_int() ;
  int tmp___2 = __VERIFIER_nondet_int() ;
  int tmp___3 = __VERIFIER_nondet_int() ;
  int tmp___4 = __VERIFIER_nondet_int() ;
  int tmp___5 = __VERIFIER_nondet_int() ;
  int tmp___6 = __VERIFIER_nondet_int() ;
  int tmp___7 ;
  long tmp___8 = __VERIFIER_nondet_long() ;
  int tmp___9 = __VERIFIER_nondet_int() ;
  int tmp___10 = __VERIFIER_nondet_int() ;
  int blastFlag ;
  int __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  int __cil_tmp60 ;
  unsigned long __cil_tmp61 ;

  {
# 60 "s3_srvr_7.cil.c"
  s__state = initial_state;
# 61 "s3_srvr_7.cil.c"
  blastFlag = 0;
# 62 "s3_srvr_7.cil.c"
  tmp = __VERIFIER_nondet_int();
# 63 "s3_srvr_7.cil.c"
  Time = tmp;
# 64 "s3_srvr_7.cil.c"
  cb = 0;
# 65 "s3_srvr_7.cil.c"
  ret = -1;
# 66 "s3_srvr_7.cil.c"
  skip = 0;
# 67 "s3_srvr_7.cil.c"
  got_new_session = 0;
# 68 "s3_srvr_7.cil.c"
  if (s__info_callback != 0) {
# 69 "s3_srvr_7.cil.c"
    cb = s__info_callback;
  } else {
# 71 "s3_srvr_7.cil.c"
    if (s__ctx__info_callback != 0) {
# 72 "s3_srvr_7.cil.c"
      cb = s__ctx__info_callback;
    }
  }
# 77 "s3_srvr_7.cil.c"
  s__in_handshake ++;
# 78 "s3_srvr_7.cil.c"
  if (tmp___1 + 12288) {
# 79 "s3_srvr_7.cil.c"
    if (tmp___2 + 16384) {

    }
  }
# 87 "s3_srvr_7.cil.c"
  if (s__cert == 0) {
# 88 "s3_srvr_7.cil.c"
    return (-1);
  }
  {
# 93 "s3_srvr_7.cil.c"
  while (1) {
    while_0_continue: ;
# 95 "s3_srvr_7.cil.c"
    state = s__state;
# 96 "s3_srvr_7.cil.c"
    if (s__state == 12292) {
      goto switch_1_12292;
    } else {
# 99 "s3_srvr_7.cil.c"
      if (s__state == 16384) {
        goto switch_1_16384;
      } else {
# 102 "s3_srvr_7.cil.c"
        if (s__state == 8192) {
          goto switch_1_8192;
        } else {
# 105 "s3_srvr_7.cil.c"
          if (s__state == 24576) {
            goto switch_1_24576;
          } else {
# 108 "s3_srvr_7.cil.c"
            if (s__state == 8195) {
              goto switch_1_8195;
            } else {
# 111 "s3_srvr_7.cil.c"
              if (s__state == 8480) {
                goto switch_1_8480;
              } else {
# 114 "s3_srvr_7.cil.c"
                if (s__state == 8481) {
                  goto switch_1_8481;
                } else {
# 117 "s3_srvr_7.cil.c"
                  if (s__state == 8482) {
                    goto switch_1_8482;
                  } else {
# 120 "s3_srvr_7.cil.c"
                    if (s__state == 8464) {
                      goto switch_1_8464;
                    } else {
# 123 "s3_srvr_7.cil.c"
                      if (s__state == 8465) {
                        goto switch_1_8465;
                      } else {
# 126 "s3_srvr_7.cil.c"
                        if (s__state == 8466) {
                          goto switch_1_8466;
                        } else {
# 129 "s3_srvr_7.cil.c"
                          if (s__state == 8496) {
                            goto switch_1_8496;
                          } else {
# 132 "s3_srvr_7.cil.c"
                            if (s__state == 8497) {
                              goto switch_1_8497;
                            } else {
# 135 "s3_srvr_7.cil.c"
                              if (s__state == 8512) {
                                goto switch_1_8512;
                              } else {
# 138 "s3_srvr_7.cil.c"
                                if (s__state == 8513) {
                                  goto switch_1_8513;
                                } else {
# 141 "s3_srvr_7.cil.c"
                                  if (s__state == 8528) {
                                    goto switch_1_8528;
                                  } else {
# 144 "s3_srvr_7.cil.c"
                                    if (s__state == 8529) {
                                      goto switch_1_8529;
                                    } else {
# 147 "s3_srvr_7.cil.c"
                                      if (s__state == 8544) {
                                        goto switch_1_8544;
                                      } else {
# 150 "s3_srvr_7.cil.c"
                                        if (s__state == 8545) {
                                          goto switch_1_8545;
                                        } else {
# 153 "s3_srvr_7.cil.c"
                                          if (s__state == 8560) {
                                            goto switch_1_8560;
                                          } else {
# 156 "s3_srvr_7.cil.c"
                                            if (s__state == 8561) {
                                              goto switch_1_8561;
                                            } else {
# 159 "s3_srvr_7.cil.c"
                                              if (s__state == 8448) {
                                                goto switch_1_8448;
                                              } else {
# 162 "s3_srvr_7.cil.c"
                                                if (s__state == 8576) {
                                                  goto switch_1_8576;
                                                } else {
# 165 "s3_srvr_7.cil.c"
                                                  if (s__state == 8577) {
                                                    goto switch_1_8577;
                                                  } else {
# 168 "s3_srvr_7.cil.c"
                                                    if (s__state == 8592) {
                                                      goto switch_1_8592;
                                                    } else {
# 171 "s3_srvr_7.cil.c"
                                                      if (s__state == 8593) {
                                                        goto switch_1_8593;
                                                      } else {
# 174 "s3_srvr_7.cil.c"
                                                        if (s__state == 8608) {
                                                          goto switch_1_8608;
                                                        } else {
# 177 "s3_srvr_7.cil.c"
                                                          if (s__state == 8609) {
                                                            goto switch_1_8609;
                                                          } else {
# 180 "s3_srvr_7.cil.c"
                                                            if (s__state == 8640) {
                                                              goto switch_1_8640;
                                                            } else {
# 183 "s3_srvr_7.cil.c"
                                                              if (s__state == 8641) {
                                                                goto switch_1_8641;
                                                              } else {
# 186 "s3_srvr_7.cil.c"
                                                                if (s__state == 8656) {
                                                                  goto switch_1_8656;
                                                                } else {
# 189 "s3_srvr_7.cil.c"
                                                                  if (s__state == 8657) {
                                                                    goto switch_1_8657;
                                                                  } else {
# 192 "s3_srvr_7.cil.c"
                                                                    if (s__state == 8672) {
                                                                      goto switch_1_8672;
                                                                    } else {
# 195 "s3_srvr_7.cil.c"
                                                                      if (s__state == 8673) {
                                                                        goto switch_1_8673;
                                                                      } else {
# 198 "s3_srvr_7.cil.c"
                                                                        if (s__state == 3) {
                                                                          goto switch_1_3;
                                                                        } else {
                                                                          goto switch_1_default;
# 203 "s3_srvr_7.cil.c"
                                                                          if (0) {
                                                                            switch_1_12292:
# 205 "s3_srvr_7.cil.c"
                                                                            s__new_session = 1;
                                                                            switch_1_16384: ;
                                                                            switch_1_8192: ;
                                                                            switch_1_24576: ;
                                                                            switch_1_8195:
# 210 "s3_srvr_7.cil.c"
                                                                            s__server = 1;
# 211 "s3_srvr_7.cil.c"
                                                                            if (cb != 0) {

                                                                            }
                                                                            {
# 216 "s3_srvr_7.cil.c"
                                                                            __cil_tmp55 = s__version * 8;
# 216 "s3_srvr_7.cil.c"
                                                                            if (__cil_tmp55 != 3) {
# 217 "s3_srvr_7.cil.c"
                                                                              return (-1);
                                                                            }
                                                                            }
# 221 "s3_srvr_7.cil.c"
                                                                            s__type = 8192;
# 222 "s3_srvr_7.cil.c"
                                                                            if (s__init_buf___0 == 0) {
# 223 "s3_srvr_7.cil.c"
                                                                              buf = __VERIFIER_nondet_int();
# 224 "s3_srvr_7.cil.c"
                                                                              if (buf == 0) {
# 225 "s3_srvr_7.cil.c"
                                                                                ret = -1;
                                                                                goto end;
                                                                              }
# 230 "s3_srvr_7.cil.c"
                                                                              if (! tmp___3) {
# 231 "s3_srvr_7.cil.c"
                                                                                ret = -1;
                                                                                goto end;
                                                                              }
# 236 "s3_srvr_7.cil.c"
                                                                              s__init_buf___0 = buf;
                                                                            }
# 240 "s3_srvr_7.cil.c"
                                                                            if (! tmp___4) {
# 241 "s3_srvr_7.cil.c"
                                                                              ret = -1;
                                                                              goto end;
                                                                            }
# 246 "s3_srvr_7.cil.c"
                                                                            s__init_num = 0;
# 247 "s3_srvr_7.cil.c"
                                                                            if (s__state != 12292) {
# 248 "s3_srvr_7.cil.c"
                                                                              if (! tmp___5) {
# 249 "s3_srvr_7.cil.c"
                                                                                ret = -1;
                                                                                goto end;
                                                                              }
# 254 "s3_srvr_7.cil.c"
                                                                              s__state = 8464;
# 255 "s3_srvr_7.cil.c"
                                                                              s__ctx__stats__sess_accept ++;
                                                                            } else {
# 257 "s3_srvr_7.cil.c"
                                                                              s__ctx__stats__sess_accept_renegotiate ++;
# 258 "s3_srvr_7.cil.c"
                                                                              s__state = 8480;
                                                                            }
                                                                            goto switch_1_break;
                                                                            switch_1_8480: ;
                                                                            switch_1_8481:
# 263 "s3_srvr_7.cil.c"
                                                                            s__shutdown = 0;
# 264 "s3_srvr_7.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 265 "s3_srvr_7.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 270 "s3_srvr_7.cil.c"
                                                                            s__s3__tmp__next_state___0 = 8482;
# 271 "s3_srvr_7.cil.c"
                                                                            s__state = 8448;
# 272 "s3_srvr_7.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8482:
# 275 "s3_srvr_7.cil.c"
                                                                            s__state = 3;
                                                                            goto switch_1_break;
                                                                            switch_1_8464: ;
                                                                            switch_1_8465: ;
                                                                            switch_1_8466:
# 280 "s3_srvr_7.cil.c"
                                                                            s__shutdown = 0;
# 281 "s3_srvr_7.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 282 "s3_srvr_7.cil.c"
                                                                            if (blastFlag == 0) {
# 283 "s3_srvr_7.cil.c"
                                                                              blastFlag = 1;
                                                                            }
# 287 "s3_srvr_7.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 292 "s3_srvr_7.cil.c"
                                                                            got_new_session = 1;
# 293 "s3_srvr_7.cil.c"
                                                                            s__state = 8496;
# 294 "s3_srvr_7.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8496: ;
                                                                            switch_1_8497:
# 298 "s3_srvr_7.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 299 "s3_srvr_7.cil.c"
                                                                            if (blastFlag == 1) {
# 300 "s3_srvr_7.cil.c"
                                                                              blastFlag = 2;
                                                                            }
# 304 "s3_srvr_7.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 309 "s3_srvr_7.cil.c"
                                                                            if (s__hit) {
# 310 "s3_srvr_7.cil.c"
                                                                              s__state = 8656;
                                                                            } else {
# 312 "s3_srvr_7.cil.c"
                                                                              s__state = 8512;
                                                                            }
# 314 "s3_srvr_7.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8512: ;
                                                                            switch_1_8513: ;
                                                                            {
          s__s3__tmp__new_cipher__algorithms = __VERIFIER_nondet_int();
                                                                            __cil_tmp56 = (unsigned long )s__s3__tmp__new_cipher__algorithms;
# 318 "s3_srvr_7.cil.c"
                                                                            if (__cil_tmp56 + 256UL) {
# 319 "s3_srvr_7.cil.c"
                                                                              skip = 1;
                                                                            } else {
# 321 "s3_srvr_7.cil.c"
                                                                              ret = __VERIFIER_nondet_int();
# 322 "s3_srvr_7.cil.c"
                                                                              if (blastFlag == 2) {
# 323 "s3_srvr_7.cil.c"
                                                                                blastFlag = 6;
                                                                              }
# 327 "s3_srvr_7.cil.c"
                                                                              if (ret <= 0) {
                                                                                goto end;
                                                                              }
                                                                            }
                                                                            }
# 333 "s3_srvr_7.cil.c"
                                                                            s__state = 8528;
# 334 "s3_srvr_7.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8528: ;
                                                                            switch_1_8529:
          s__s3__tmp__new_cipher__algorithms = __VERIFIER_nondet_int();
                                                                            l = (unsigned long )s__s3__tmp__new_cipher__algorithms;
                                                                            {
# 339 "s3_srvr_7.cil.c"
                                                                            __cil_tmp57 = (unsigned long )s__options;
# 339 "s3_srvr_7.cil.c"
                                                                            if (__cil_tmp57 + 2097152UL) {
# 340 "s3_srvr_7.cil.c"
                                                                              s__s3__tmp__use_rsa_tmp = 1;
                                                                            } else {
# 342 "s3_srvr_7.cil.c"
                                                                              s__s3__tmp__use_rsa_tmp = 0;
                                                                            }
                                                                            }
# 344 "s3_srvr_7.cil.c"
                                                                            if (s__s3__tmp__use_rsa_tmp) {
                                                                              goto _L___0;
                                                                            } else {
# 347 "s3_srvr_7.cil.c"
                                                                              if (l + 30UL) {
                                                                                goto _L___0;
                                                                              } else {
# 350 "s3_srvr_7.cil.c"
                                                                                if (l + 1UL) {
# 351 "s3_srvr_7.cil.c"
                                                                                  if (s__cert__pkeys__AT0__privatekey == 0) {
                                                                                    goto _L___0;
                                                                                  } else {
                                                                                    {
           s__s3__tmp__new_cipher__algo_strength = __VERIFIER_nondet_int();
                                                                                    __cil_tmp58 = (unsigned long )s__s3__tmp__new_cipher__algo_strength;
# 354 "s3_srvr_7.cil.c"
                                                                                    if (__cil_tmp58 + 2UL) {
                                                                                      {
           s__s3__tmp__new_cipher__algo_strength = __VERIFIER_nondet_int();
                                                                                      __cil_tmp59 = (unsigned long )s__s3__tmp__new_cipher__algo_strength;
# 355 "s3_srvr_7.cil.c"
                                                                                      if (__cil_tmp59 + 4UL) {
# 356 "s3_srvr_7.cil.c"
                                                                                        tmp___7 = 512;
                                                                                      } else {
# 358 "s3_srvr_7.cil.c"
                                                                                        tmp___7 = 1024;
                                                                                      }
                                                                                      }
                                                                                      {
# 360 "s3_srvr_7.cil.c"
                                                                                      __cil_tmp60 = tmp___6 * 8;
# 360 "s3_srvr_7.cil.c"
                                                                                      if (__cil_tmp60 > tmp___7) {
                                                                                        _L___0:
# 362 "s3_srvr_7.cil.c"
                                                                                        ret = __VERIFIER_nondet_int();
# 363 "s3_srvr_7.cil.c"
                                                                                        if (blastFlag == 6) {
# 364 "s3_srvr_7.cil.c"
                                                                                          blastFlag = 7;
                                                                                        }
# 368 "s3_srvr_7.cil.c"
                                                                                        if (ret <= 0) {
                                                                                          goto end;
                                                                                        }
                                                                                      } else {
# 374 "s3_srvr_7.cil.c"
                                                                                        skip = 1;
                                                                                      }
                                                                                      }
                                                                                    } else {
# 377 "s3_srvr_7.cil.c"
                                                                                      skip = 1;
                                                                                    }
                                                                                    }
                                                                                  }
                                                                                } else {
# 381 "s3_srvr_7.cil.c"
                                                                                  skip = 1;
                                                                                }
                                                                              }
                                                                            }
# 385 "s3_srvr_7.cil.c"
                                                                            s__state = 8544;
# 386 "s3_srvr_7.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8544: ;
                                                                            switch_1_8545: ;
# 390 "s3_srvr_7.cil.c"
                                                                            if (s__verify_mode + 1) {
# 391 "s3_srvr_7.cil.c"
                                                                              if (s__session__peer != 0) {
# 392 "s3_srvr_7.cil.c"
                                                                                if (s__verify_mode + 4) {
# 393 "s3_srvr_7.cil.c"
                                                                                  skip = 1;
# 394 "s3_srvr_7.cil.c"
                                                                                  s__s3__tmp__cert_request = 0;
# 395 "s3_srvr_7.cil.c"
                                                                                  s__state = 8560;
                                                                                } else {
                                                                                  goto _L___2;
                                                                                }
                                                                              } else {
                                                                                _L___2:
                                                                                {
           s__s3__tmp__new_cipher__algorithms = __VERIFIER_nondet_int();
                                                                                __cil_tmp61 = (unsigned long )s__s3__tmp__new_cipher__algorithms;
# 401 "s3_srvr_7.cil.c"
                                                                                if (__cil_tmp61 + 256UL) {
# 402 "s3_srvr_7.cil.c"
                                                                                  if (s__verify_mode + 2) {
                                                                                    goto _L___1;
                                                                                  } else {
# 405 "s3_srvr_7.cil.c"
                                                                                    skip = 1;
# 406 "s3_srvr_7.cil.c"
                                                                                    s__s3__tmp__cert_request = 0;
# 407 "s3_srvr_7.cil.c"
                                                                                    s__state = 8560;
                                                                                  }
                                                                                } else {
                                                                                  _L___1:
# 411 "s3_srvr_7.cil.c"
                                                                                  s__s3__tmp__cert_request = 1;
# 412 "s3_srvr_7.cil.c"
                                                                                  ret = __VERIFIER_nondet_int();
# 413 "s3_srvr_7.cil.c"
                                                                                  if (blastFlag == 8) {
                                                                                    goto ERROR;
                                                                                  }
# 418 "s3_srvr_7.cil.c"
                                                                                  if (ret <= 0) {
                                                                                    goto end;
                                                                                  }
# 423 "s3_srvr_7.cil.c"
                                                                                  s__state = 8448;
# 424 "s3_srvr_7.cil.c"
                                                                                  s__s3__tmp__next_state___0 = 8576;
# 425 "s3_srvr_7.cil.c"
                                                                                  s__init_num = 0;
                                                                                }
                                                                                }
                                                                              }
                                                                            } else {
# 429 "s3_srvr_7.cil.c"
                                                                              skip = 1;
# 430 "s3_srvr_7.cil.c"
                                                                              s__s3__tmp__cert_request = 0;
# 431 "s3_srvr_7.cil.c"
                                                                              s__state = 8560;
                                                                            }
                                                                            goto switch_1_break;
                                                                            switch_1_8560: ;
                                                                            switch_1_8561:
# 436 "s3_srvr_7.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 437 "s3_srvr_7.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 442 "s3_srvr_7.cil.c"
                                                                            s__s3__tmp__next_state___0 = 8576;
# 443 "s3_srvr_7.cil.c"
                                                                            s__state = 8448;
# 444 "s3_srvr_7.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8448:
# 447 "s3_srvr_7.cil.c"
                                                                            if (num1 > 0) {
# 448 "s3_srvr_7.cil.c"
                                                                              s__rwstate = 2;
# 449 "s3_srvr_7.cil.c"
                                                                              num1 = tmp___8;
# 450 "s3_srvr_7.cil.c"
                                                                              if (num1 <= 0) {
# 451 "s3_srvr_7.cil.c"
                                                                                ret = -1;
                                                                                goto end;
                                                                              }
# 456 "s3_srvr_7.cil.c"
                                                                              s__rwstate = 1;
                                                                            }
# 460 "s3_srvr_7.cil.c"
                                                                            s__state = s__s3__tmp__next_state___0;
                                                                            goto switch_1_break;
                                                                            switch_1_8576: ;
                                                                            switch_1_8577:
# 464 "s3_srvr_7.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 465 "s3_srvr_7.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 470 "s3_srvr_7.cil.c"
                                                                            if (ret == 2) {
# 471 "s3_srvr_7.cil.c"
                                                                              s__state = 8466;
                                                                            } else {
# 473 "s3_srvr_7.cil.c"
                                                                              ret = __VERIFIER_nondet_int();
# 474 "s3_srvr_7.cil.c"
                                                                              if (ret <= 0) {
                                                                                goto end;
                                                                              }
# 479 "s3_srvr_7.cil.c"
                                                                              s__init_num = 0;
# 480 "s3_srvr_7.cil.c"
                                                                              s__state = 8592;
                                                                            }
                                                                            goto switch_1_break;
                                                                            switch_1_8592: ;
                                                                            switch_1_8593:
# 485 "s3_srvr_7.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 486 "s3_srvr_7.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 491 "s3_srvr_7.cil.c"
                                                                            s__state = 8608;
# 492 "s3_srvr_7.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8608: ;
                                                                            switch_1_8609:
# 496 "s3_srvr_7.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 497 "s3_srvr_7.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 502 "s3_srvr_7.cil.c"
                                                                            s__state = 8640;
# 503 "s3_srvr_7.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8640: ;
                                                                            switch_1_8641:
# 507 "s3_srvr_7.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 508 "s3_srvr_7.cil.c"
                                                                            if (blastFlag == 5) {
                                                                              goto ERROR;
                                                                            }
# 513 "s3_srvr_7.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 518 "s3_srvr_7.cil.c"
                                                                            if (s__hit) {
# 519 "s3_srvr_7.cil.c"
                                                                              s__state = 3;
                                                                            } else {
# 521 "s3_srvr_7.cil.c"
                                                                              s__state = 8656;
                                                                            }
# 523 "s3_srvr_7.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8656: ;
                                                                            switch_1_8657:
# 527 "s3_srvr_7.cil.c"
                                                                            s__session__cipher = s__s3__tmp__new_cipher;
# 528 "s3_srvr_7.cil.c"
                                                                            if (! tmp___9) {
# 529 "s3_srvr_7.cil.c"
                                                                              ret = -1;
                                                                              goto end;
                                                                            }
# 534 "s3_srvr_7.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 535 "s3_srvr_7.cil.c"
                                                                            if (blastFlag == 2) {
# 536 "s3_srvr_7.cil.c"
                                                                              blastFlag = 3;
                                                                            } else {
# 538 "s3_srvr_7.cil.c"
                                                                              if (blastFlag == 4) {
# 539 "s3_srvr_7.cil.c"
                                                                                blastFlag = 5;
                                                                              } else {
# 541 "s3_srvr_7.cil.c"
                                                                                if (blastFlag == 7) {
# 542 "s3_srvr_7.cil.c"
                                                                                  blastFlag = 8;
                                                                                }
                                                                              }
                                                                            }
# 548 "s3_srvr_7.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 553 "s3_srvr_7.cil.c"
                                                                            s__state = 8672;
# 554 "s3_srvr_7.cil.c"
                                                                            s__init_num = 0;
# 555 "s3_srvr_7.cil.c"
                                                                            if (! tmp___10) {
# 556 "s3_srvr_7.cil.c"
                                                                              ret = -1;
                                                                              goto end;
                                                                            }
                                                                            goto switch_1_break;
                                                                            switch_1_8672: ;
                                                                            switch_1_8673:
# 564 "s3_srvr_7.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 565 "s3_srvr_7.cil.c"
                                                                            if (blastFlag == 3) {
# 566 "s3_srvr_7.cil.c"
                                                                              blastFlag = 4;
                                                                            }
# 570 "s3_srvr_7.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 575 "s3_srvr_7.cil.c"
                                                                            s__state = 8448;
# 576 "s3_srvr_7.cil.c"
                                                                            if (s__hit) {
# 577 "s3_srvr_7.cil.c"
                                                                              s__s3__tmp__next_state___0 = 8640;
                                                                            } else {
# 579 "s3_srvr_7.cil.c"
                                                                              s__s3__tmp__next_state___0 = 3;
                                                                            }
# 581 "s3_srvr_7.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_3:
# 584 "s3_srvr_7.cil.c"
                                                                            s__init_buf___0 = 0;
# 585 "s3_srvr_7.cil.c"
                                                                            s__init_num = 0;
# 586 "s3_srvr_7.cil.c"
                                                                            if (got_new_session) {
# 587 "s3_srvr_7.cil.c"
                                                                              s__new_session = 0;
# 588 "s3_srvr_7.cil.c"
                                                                              s__ctx__stats__sess_accept_good ++;
# 589 "s3_srvr_7.cil.c"
                                                                              if (cb != 0) {

                                                                              }
                                                                            }
# 597 "s3_srvr_7.cil.c"
                                                                            ret = 1;
                                                                            goto end;
                                                                            switch_1_default:
# 600 "s3_srvr_7.cil.c"
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
s__s3__tmp__reuse_message = __VERIFIER_nondet_int();
    if (! s__s3__tmp__reuse_message) {
# 642 "s3_srvr_7.cil.c"
      if (! skip) {
       if(state == 8528){
        if(s__state == 8544){
         if(tmp___7 != 1024){
          if(tmp___7 != 512){
           if(__cil_tmp58 != 4294967294){
            if(l != 4294967266){
              goto ERROR;

            }
           }
          }
         }
        }
       }
        if (s__debug) {
# 644 "s3_srvr_7.cil.c"
          ret = __VERIFIER_nondet_int();
# 645 "s3_srvr_7.cil.c"
          if (ret <= 0) {
            goto end;
          }
        }
# 653 "s3_srvr_7.cil.c"
        if (cb != 0) {
# 654 "s3_srvr_7.cil.c"
          if (s__state != state) {
# 655 "s3_srvr_7.cil.c"
            new_state = s__state;
# 656 "s3_srvr_7.cil.c"
            s__state = state;
# 657 "s3_srvr_7.cil.c"
            s__state = new_state;
          }
        }
      }
    }
# 670 "s3_srvr_7.cil.c"
    skip = 0;
  }
  while_0_break: ;
  }

  end:
# 675 "s3_srvr_7.cil.c"
  s__in_handshake --;
# 676 "s3_srvr_7.cil.c"
  if (cb != 0) {

  }
# 681 "s3_srvr_7.cil.c"
  return (ret);
  ERROR: assert(0);
# 683 "s3_srvr_7.cil.c"
  return (-1);
}
}
# 686 "s3_srvr_7.cil.c"
int main(void)
{ int s ;
  int tmp ;

  {
  {
# 692 "s3_srvr_7.cil.c"
  s = 8464;
# 693 "s3_srvr_7.cil.c"
  tmp = ssl3_accept(s);
  }
# 695 "s3_srvr_7.cil.c"
  return (tmp);
}
}
