extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: assert(0); goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/UNSAFE-exbench/SVCOMP13-sshsimpl-s3_srvr_11_unsafeil.c.tmp.c"
# 1 "<command-line>"
# 1 "MAP/UNSAFE-exbench/SVCOMP13-sshsimpl-s3_srvr_11_unsafeil.c.tmp.c"
# 18 "MAP/UNSAFE-exbench/SVCOMP13-sshsimpl-s3_srvr_11_unsafeil.c.tmp.c"
//extern char __VERIFIER_nondet_char(void);
//extern int __VERIFIER_nondet_int(void);
//extern long __VERIFIER_nondet_long(void);
//extern void *__VERIFIER_nondet_pointer(void);
//extern int __VERIFIER_nondet_int();
# 4 "s3_srvr_2.cil.c"
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
  int s__s3__tmp__reuse_message = __VERIFIER_nondet_int() ;
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
# 60 "s3_srvr_2.cil.c"
  s__state = initial_state;
# 61 "s3_srvr_2.cil.c"
  blastFlag = 0;
# 62 "s3_srvr_2.cil.c"
  tmp = __VERIFIER_nondet_int();
# 63 "s3_srvr_2.cil.c"
  Time = tmp;
# 64 "s3_srvr_2.cil.c"
  cb = 0;
# 65 "s3_srvr_2.cil.c"
  ret = -1;
# 66 "s3_srvr_2.cil.c"
  skip = 0;
# 67 "s3_srvr_2.cil.c"
  got_new_session = 0;
# 68 "s3_srvr_2.cil.c"
  if (s__info_callback != 0) {
# 69 "s3_srvr_2.cil.c"
    cb = s__info_callback;
  } else {
# 71 "s3_srvr_2.cil.c"
    if (s__ctx__info_callback != 0) {
# 72 "s3_srvr_2.cil.c"
      cb = s__ctx__info_callback;
    }
  }
# 77 "s3_srvr_2.cil.c"
  s__in_handshake ++;
# 78 "s3_srvr_2.cil.c"
  if (tmp___1 + 12288) {
# 79 "s3_srvr_2.cil.c"
    if (tmp___2 + 16384) {

    }
  }
# 87 "s3_srvr_2.cil.c"
  if (s__cert == 0) {
# 88 "s3_srvr_2.cil.c"
    return (-1);
  }
  {
# 93 "s3_srvr_2.cil.c"
  while (1) {
    while_0_continue: ;
# 95 "s3_srvr_2.cil.c"
    state = s__state;
# 96 "s3_srvr_2.cil.c"
    if (s__state == 12292) {
      goto switch_1_12292;
    } else {
# 99 "s3_srvr_2.cil.c"
      if (s__state == 16384) {
        goto switch_1_16384;
      } else {
# 102 "s3_srvr_2.cil.c"
        if (s__state == 8192) {
          goto switch_1_8192;
        } else {
# 105 "s3_srvr_2.cil.c"
          if (s__state == 24576) {
            goto switch_1_24576;
          } else {
# 108 "s3_srvr_2.cil.c"
            if (s__state == 8195) {
              goto switch_1_8195;
            } else {
# 111 "s3_srvr_2.cil.c"
              if (s__state == 8480) {
                goto switch_1_8480;
              } else {
# 114 "s3_srvr_2.cil.c"
                if (s__state == 8481) {
                  goto switch_1_8481;
                } else {
# 117 "s3_srvr_2.cil.c"
                  if (s__state == 8482) {
                    goto switch_1_8482;
                  } else {
# 120 "s3_srvr_2.cil.c"
                    if (s__state == 8464) {
                      goto switch_1_8464;
                    } else {
# 123 "s3_srvr_2.cil.c"
                      if (s__state == 8465) {
                        goto switch_1_8465;
                      } else {
# 126 "s3_srvr_2.cil.c"
                        if (s__state == 8466) {
                          goto switch_1_8466;
                        } else {
# 129 "s3_srvr_2.cil.c"
                          if (s__state == 8496) {
                            goto switch_1_8496;
                          } else {
# 132 "s3_srvr_2.cil.c"
                            if (s__state == 8497) {
                              goto switch_1_8497;
                            } else {
# 135 "s3_srvr_2.cil.c"
                              if (s__state == 8512) {
                                goto switch_1_8512;
                              } else {
# 138 "s3_srvr_2.cil.c"
                                if (s__state == 8513) {
                                  goto switch_1_8513;
                                } else {
# 141 "s3_srvr_2.cil.c"
                                  if (s__state == 8528) {
                                    goto switch_1_8528;
                                  } else {
# 144 "s3_srvr_2.cil.c"
                                    if (s__state == 8529) {
                                      goto switch_1_8529;
                                    } else {
# 147 "s3_srvr_2.cil.c"
                                      if (s__state == 8544) {
                                        goto switch_1_8544;
                                      } else {
# 150 "s3_srvr_2.cil.c"
                                        if (s__state == 8545) {
                                          goto switch_1_8545;
                                        } else {
# 153 "s3_srvr_2.cil.c"
                                          if (s__state == 8560) {
                                            goto switch_1_8560;
                                          } else {
# 156 "s3_srvr_2.cil.c"
                                            if (s__state == 8561) {
                                              goto switch_1_8561;
                                            } else {
# 159 "s3_srvr_2.cil.c"
                                              if (s__state == 8448) {
                                                goto switch_1_8448;
                                              } else {
# 162 "s3_srvr_2.cil.c"
                                                if (s__state == 8576) {
                                                  goto switch_1_8576;
                                                } else {
# 165 "s3_srvr_2.cil.c"
                                                  if (s__state == 8577) {
                                                    goto switch_1_8577;
                                                  } else {
# 168 "s3_srvr_2.cil.c"
                                                    if (s__state == 8592) {
                                                      goto switch_1_8592;
                                                    } else {
# 171 "s3_srvr_2.cil.c"
                                                      if (s__state == 8593) {
                                                        goto switch_1_8593;
                                                      } else {
# 174 "s3_srvr_2.cil.c"
                                                        if (s__state == 8608) {
                                                          goto switch_1_8608;
                                                        } else {
# 177 "s3_srvr_2.cil.c"
                                                          if (s__state == 8609) {
                                                            goto switch_1_8609;
                                                          } else {
# 180 "s3_srvr_2.cil.c"
                                                            if (s__state == 8640) {
                                                              goto switch_1_8640;
                                                            } else {
# 183 "s3_srvr_2.cil.c"
                                                              if (s__state == 8641) {
                                                                goto switch_1_8641;
                                                              } else {
# 186 "s3_srvr_2.cil.c"
                                                                if (s__state == 8656) {
                                                                  goto switch_1_8656;
                                                                } else {
# 189 "s3_srvr_2.cil.c"
                                                                  if (s__state == 8657) {
                                                                    goto switch_1_8657;
                                                                  } else {
# 192 "s3_srvr_2.cil.c"
                                                                    if (s__state == 8672) {
                                                                      goto switch_1_8672;
                                                                    } else {
# 195 "s3_srvr_2.cil.c"
                                                                      if (s__state == 8673) {
                                                                        goto switch_1_8673;
                                                                      } else {
# 198 "s3_srvr_2.cil.c"
                                                                        if (s__state == 3) {
                                                                          goto switch_1_3;
                                                                        } else {
                                                                          goto switch_1_default;
# 203 "s3_srvr_2.cil.c"
                                                                          if (0) {
                                                                            switch_1_12292:
# 205 "s3_srvr_2.cil.c"
                                                                            s__new_session = 1;
                                                                            switch_1_16384: ;
                                                                            switch_1_8192: ;
                                                                            switch_1_24576: ;
                                                                            switch_1_8195:
# 210 "s3_srvr_2.cil.c"
                                                                            s__server = 1;
# 211 "s3_srvr_2.cil.c"
                                                                            if (cb != 0) {

                                                                            }
                                                                            {
# 216 "s3_srvr_2.cil.c"
                                                                            __cil_tmp55 = s__version * 8;
# 216 "s3_srvr_2.cil.c"
                                                                            if (__cil_tmp55 != 3) {
# 217 "s3_srvr_2.cil.c"
                                                                              return (-1);
                                                                            }
                                                                            }
# 221 "s3_srvr_2.cil.c"
                                                                            s__type = 8192;
# 222 "s3_srvr_2.cil.c"
                                                                            if (s__init_buf___0 == 0) {
# 223 "s3_srvr_2.cil.c"
                                                                              buf = __VERIFIER_nondet_int();
# 224 "s3_srvr_2.cil.c"
                                                                              if (buf == 0) {
# 225 "s3_srvr_2.cil.c"
                                                                                ret = -1;
                                                                                goto end;
                                                                              }
# 230 "s3_srvr_2.cil.c"
                                                                              if (! tmp___3) {
# 231 "s3_srvr_2.cil.c"
                                                                                ret = -1;
                                                                                goto end;
                                                                              }
# 236 "s3_srvr_2.cil.c"
                                                                              s__init_buf___0 = buf;
                                                                            }
# 240 "s3_srvr_2.cil.c"
                                                                            if (! tmp___4) {
# 241 "s3_srvr_2.cil.c"
                                                                              ret = -1;
                                                                              goto end;
                                                                            }
# 246 "s3_srvr_2.cil.c"
                                                                            s__init_num = 0;
# 247 "s3_srvr_2.cil.c"
                                                                            if (s__state != 12292) {
# 248 "s3_srvr_2.cil.c"
                                                                              if (! tmp___5) {
# 249 "s3_srvr_2.cil.c"
                                                                                ret = -1;
                                                                                goto end;
                                                                              }
# 254 "s3_srvr_2.cil.c"
                                                                              s__state = 8464;
# 255 "s3_srvr_2.cil.c"
                                                                              s__ctx__stats__sess_accept ++;
                                                                            } else {
# 257 "s3_srvr_2.cil.c"
                                                                              s__ctx__stats__sess_accept_renegotiate ++;
# 258 "s3_srvr_2.cil.c"
                                                                              s__state = 8480;
                                                                            }
                                                                            goto switch_1_break;
                                                                            switch_1_8480: ;
                                                                            switch_1_8481:
# 263 "s3_srvr_2.cil.c"
                                                                            s__shutdown = 0;
# 264 "s3_srvr_2.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 265 "s3_srvr_2.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 270 "s3_srvr_2.cil.c"
                                                                            s__s3__tmp__next_state___0 = 8482;
# 271 "s3_srvr_2.cil.c"
                                                                            s__state = 8448;
# 272 "s3_srvr_2.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8482:
# 275 "s3_srvr_2.cil.c"
                                                                            s__state = 3;
                                                                            goto switch_1_break;
                                                                            switch_1_8464: ;
                                                                            switch_1_8465: ;
                                                                            switch_1_8466:
# 280 "s3_srvr_2.cil.c"
                                                                            s__shutdown = 0;
# 281 "s3_srvr_2.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 282 "s3_srvr_2.cil.c"
                                                                            if (blastFlag == 0) {
# 283 "s3_srvr_2.cil.c"
                                                                              blastFlag = 1;
                                                                            }
# 287 "s3_srvr_2.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 292 "s3_srvr_2.cil.c"
                                                                            got_new_session = 1;
# 293 "s3_srvr_2.cil.c"
                                                                            s__state = 8496;
# 294 "s3_srvr_2.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8496: ;
                                                                            switch_1_8497:
# 298 "s3_srvr_2.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 299 "s3_srvr_2.cil.c"
                                                                            if (blastFlag == 1) {
# 300 "s3_srvr_2.cil.c"
                                                                              blastFlag = 2;
                                                                            } else {
# 302 "s3_srvr_2.cil.c"
                                                                              if (blastFlag == 3) {
# 303 "s3_srvr_2.cil.c"
                                                                                blastFlag = 4;
                                                                              }
                                                                            }
# 308 "s3_srvr_2.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 313 "s3_srvr_2.cil.c"
                                                                            if (s__hit) {
# 314 "s3_srvr_2.cil.c"
                                                                              s__state = 8656;
                                                                            } else {
# 316 "s3_srvr_2.cil.c"
                                                                              s__state = 8512;
                                                                            }
# 318 "s3_srvr_2.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8512: ;
                                                                            switch_1_8513: ;
                                                                            {
          s__s3__tmp__new_cipher__algorithms = __VERIFIER_nondet_int();
                                                                            __cil_tmp56 = (unsigned long )s__s3__tmp__new_cipher__algorithms;
# 322 "s3_srvr_2.cil.c"
                                                                            if (__cil_tmp56 + 256UL) {
# 323 "s3_srvr_2.cil.c"
                                                                              skip = 1;
                                                                            } else {
# 325 "s3_srvr_2.cil.c"
                                                                              ret = __VERIFIER_nondet_int();
# 326 "s3_srvr_2.cil.c"
                                                                              if (ret <= 0) {
                                                                                goto end;
                                                                              }
                                                                            }
                                                                            }
# 332 "s3_srvr_2.cil.c"
                                                                            s__state = 8528;
# 333 "s3_srvr_2.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8528: ;
                                                                            switch_1_8529:
          s__s3__tmp__new_cipher__algorithms = __VERIFIER_nondet_int();
                                                                            l = (unsigned long )s__s3__tmp__new_cipher__algorithms;
                                                                            {
# 338 "s3_srvr_2.cil.c"
                                                                            __cil_tmp57 = (unsigned long )s__options;
# 338 "s3_srvr_2.cil.c"
                                                                            if (__cil_tmp57 + 2097152UL) {
# 339 "s3_srvr_2.cil.c"
                                                                              s__s3__tmp__use_rsa_tmp = 1;
                                                                            } else {
# 341 "s3_srvr_2.cil.c"
                                                                              s__s3__tmp__use_rsa_tmp = 0;
                                                                            }
                                                                            }
# 343 "s3_srvr_2.cil.c"
                                                                            if (s__s3__tmp__use_rsa_tmp) {
                                                                              goto _L___0;
                                                                            } else {
# 346 "s3_srvr_2.cil.c"
                                                                              if (l + 30UL) {
                                                                                goto _L___0;
                                                                              } else {
# 349 "s3_srvr_2.cil.c"
                                                                                if (l + 1UL) {
# 350 "s3_srvr_2.cil.c"
                                                                                  if (s__cert__pkeys__AT0__privatekey == 0) {
                                                                                    goto _L___0;
                                                                                  } else {
                                                                                    {
           s__s3__tmp__new_cipher__algo_strength = __VERIFIER_nondet_int();
                                                                                    __cil_tmp58 = (unsigned long )s__s3__tmp__new_cipher__algo_strength;
# 353 "s3_srvr_2.cil.c"
                                                                                    if (__cil_tmp58 + 2UL) {
                                                                                      {
           s__s3__tmp__new_cipher__algo_strength = __VERIFIER_nondet_int();
                                                                                      __cil_tmp59 = (unsigned long )s__s3__tmp__new_cipher__algo_strength;
# 354 "s3_srvr_2.cil.c"
                                                                                      if (__cil_tmp59 + 4UL) {
# 355 "s3_srvr_2.cil.c"
                                                                                        tmp___7 = 512;
                                                                                      } else {
# 357 "s3_srvr_2.cil.c"
                                                                                        tmp___7 = 1024;
                                                                                      }
                                                                                      }
                                                                                      {
# 359 "s3_srvr_2.cil.c"
                                                                                      __cil_tmp60 = tmp___6 * 8;
# 359 "s3_srvr_2.cil.c"
                                                                                      if (__cil_tmp60 > tmp___7) {
                                                                                        _L___0:
# 361 "s3_srvr_2.cil.c"
                                                                                        ret = __VERIFIER_nondet_int();
# 362 "s3_srvr_2.cil.c"
                                                                                        if (ret <= 0) {
                                                                                          goto end;
                                                                                        }
                                                                                      } else {
# 368 "s3_srvr_2.cil.c"
                                                                                        skip = 1;
                                                                                      }
                                                                                      }
                                                                                    } else {
# 371 "s3_srvr_2.cil.c"
                                                                                      skip = 1;
                                                                                    }
                                                                                    }
                                                                                  }
                                                                                } else {
# 375 "s3_srvr_2.cil.c"
                                                                                  skip = 1;
                                                                                }
                                                                              }
                                                                            }
# 379 "s3_srvr_2.cil.c"
                                                                            s__state = 8544;
# 380 "s3_srvr_2.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8544: ;
                                                                            switch_1_8545: ;
# 384 "s3_srvr_2.cil.c"
                                                                            if (s__verify_mode + 1) {
# 385 "s3_srvr_2.cil.c"
                                                                              if (s__session__peer != 0) {
# 386 "s3_srvr_2.cil.c"
                                                                                if (s__verify_mode + 4) {
# 387 "s3_srvr_2.cil.c"
                                                                                  skip = 1;
# 388 "s3_srvr_2.cil.c"
                                                                                  s__s3__tmp__cert_request = 0;
# 389 "s3_srvr_2.cil.c"
                                                                                  s__state = 8560;
                                                                                } else {
                                                                                  goto _L___2;
                                                                                }
                                                                              } else {
                                                                                _L___2:
                                                                                {
          s__s3__tmp__new_cipher__algorithms = __VERIFIER_nondet_int();
                                                                                __cil_tmp61 = (unsigned long )s__s3__tmp__new_cipher__algorithms;
# 395 "s3_srvr_2.cil.c"
                                                                                if (__cil_tmp61 + 256UL) {
# 396 "s3_srvr_2.cil.c"
                                                                                  if (s__verify_mode + 2) {
                                                                                    goto _L___1;
                                                                                  } else {
# 399 "s3_srvr_2.cil.c"
                                                                                    skip = 1;
# 400 "s3_srvr_2.cil.c"
                                                                                    s__s3__tmp__cert_request = 0;
# 401 "s3_srvr_2.cil.c"
                                                                                    s__state = 8560;
                                                                                  }
                                                                                } else {
                                                                                  _L___1:
# 405 "s3_srvr_2.cil.c"
                                                                                  s__s3__tmp__cert_request = 1;
# 406 "s3_srvr_2.cil.c"
                                                                                  ret = __VERIFIER_nondet_int();
# 407 "s3_srvr_2.cil.c"
                                                                                  if (ret <= 0) {
                                                                                    goto end;
                                                                                  }
# 412 "s3_srvr_2.cil.c"
                                                                                  s__state = 8448;
# 413 "s3_srvr_2.cil.c"
                                                                                  s__s3__tmp__next_state___0 = 8576;
# 414 "s3_srvr_2.cil.c"
                                                                                  s__init_num = 0;
                                                                                }
                                                                                }
                                                                              }
                                                                            } else {
# 418 "s3_srvr_2.cil.c"
                                                                              skip = 1;
# 419 "s3_srvr_2.cil.c"
                                                                              s__s3__tmp__cert_request = 0;
# 420 "s3_srvr_2.cil.c"
                                                                              s__state = 8560;
                                                                            }
                                                                            goto switch_1_break;
                                                                            switch_1_8560: ;
                                                                            switch_1_8561:
# 425 "s3_srvr_2.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 426 "s3_srvr_2.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 431 "s3_srvr_2.cil.c"
                                                                            s__s3__tmp__next_state___0 = 8576;
# 432 "s3_srvr_2.cil.c"
                                                                            s__state = 8448;
# 433 "s3_srvr_2.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8448:
# 436 "s3_srvr_2.cil.c"
                                                                            if (num1 > 0) {
# 437 "s3_srvr_2.cil.c"
                                                                              s__rwstate = 2;
# 438 "s3_srvr_2.cil.c"
                                                                              num1 = tmp___8;
# 439 "s3_srvr_2.cil.c"
                                                                              if (num1 <= 0) {
# 440 "s3_srvr_2.cil.c"
                                                                                ret = -1;
                                                                                goto end;
                                                                              }
# 445 "s3_srvr_2.cil.c"
                                                                              s__rwstate = 1;
                                                                            }
# 449 "s3_srvr_2.cil.c"
                                                                            s__state = s__s3__tmp__next_state___0;
                                                                            goto switch_1_break;
                                                                            switch_1_8576: ;
                                                                            switch_1_8577:
# 453 "s3_srvr_2.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 454 "s3_srvr_2.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 459 "s3_srvr_2.cil.c"
                                                                            if (ret == 2) {
# 460 "s3_srvr_2.cil.c"
                                                                              s__state = 8466;
                                                                            } else {
# 462 "s3_srvr_2.cil.c"
                                                                              ret = __VERIFIER_nondet_int();
# 463 "s3_srvr_2.cil.c"
                                                                              if (ret <= 0) {
                                                                                goto end;
                                                                              }
# 468 "s3_srvr_2.cil.c"
                                                                              s__init_num = 0;
# 469 "s3_srvr_2.cil.c"
                                                                              s__state = 8592;
                                                                            }
                                                                            goto switch_1_break;
                                                                            switch_1_8592: ;
                                                                            switch_1_8593:
# 474 "s3_srvr_2.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 475 "s3_srvr_2.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 480 "s3_srvr_2.cil.c"
                                                                            s__state = 8608;
# 481 "s3_srvr_2.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8608: ;
                                                                            switch_1_8609:
# 485 "s3_srvr_2.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 486 "s3_srvr_2.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 491 "s3_srvr_2.cil.c"
                                                                            s__state = 8640;
# 492 "s3_srvr_2.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8640: ;
                                                                            switch_1_8641:
# 496 "s3_srvr_2.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 497 "s3_srvr_2.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 502 "s3_srvr_2.cil.c"
                                                                            if (s__hit) {
# 503 "s3_srvr_2.cil.c"
                                                                              s__state = 3;
                                                                            } else {
# 505 "s3_srvr_2.cil.c"
                                                                              s__state = 8656;
                                                                            }
# 507 "s3_srvr_2.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8656: ;
                                                                            switch_1_8657:
# 511 "s3_srvr_2.cil.c"
                                                                            s__session__cipher = s__s3__tmp__new_cipher;
# 512 "s3_srvr_2.cil.c"
                                                                            if (! tmp___9) {
# 513 "s3_srvr_2.cil.c"
                                                                              ret = -1;
                                                                              goto end;
                                                                            }
# 518 "s3_srvr_2.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 519 "s3_srvr_2.cil.c"
                                                                            if (blastFlag == 2) {
# 520 "s3_srvr_2.cil.c"
                                                                              blastFlag = 3;
                                                                            }
# 524 "s3_srvr_2.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 529 "s3_srvr_2.cil.c"
                                                                            s__state = 8672;
# 530 "s3_srvr_2.cil.c"
                                                                            s__init_num = 0;
# 531 "s3_srvr_2.cil.c"
                                                                            if (! tmp___10) {
# 532 "s3_srvr_2.cil.c"
                                                                              ret = -1;
                                                                              goto end;
                                                                            }
                                                                            goto switch_1_break;
                                                                            switch_1_8672: ;
                                                                            switch_1_8673:
# 540 "s3_srvr_2.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 541 "s3_srvr_2.cil.c"
                                                                            if (blastFlag == 4) {
                                                                              goto ERROR;
                                                                            }
# 546 "s3_srvr_2.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 551 "s3_srvr_2.cil.c"
                                                                            s__state = 8448;
# 552 "s3_srvr_2.cil.c"
                                                                            if (s__hit) {
# 553 "s3_srvr_2.cil.c"
                                                                              s__s3__tmp__next_state___0 = 8640;
                                                                            } else {
# 555 "s3_srvr_2.cil.c"
                                                                              s__s3__tmp__next_state___0 = 3;
                                                                            }
# 557 "s3_srvr_2.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_3:
# 560 "s3_srvr_2.cil.c"
                                                                            s__init_buf___0 = 0;
# 561 "s3_srvr_2.cil.c"
                                                                            s__init_num = 0;
# 562 "s3_srvr_2.cil.c"
                                                                            if (got_new_session) {
# 563 "s3_srvr_2.cil.c"
                                                                              s__new_session = 0;
# 564 "s3_srvr_2.cil.c"
                                                                              s__ctx__stats__sess_accept_good ++;
# 565 "s3_srvr_2.cil.c"
                                                                              if (cb != 0) {

                                                                              }
                                                                            }
# 573 "s3_srvr_2.cil.c"
                                                                            ret = 1;
                                                                            goto end;
                                                                            switch_1_default:
# 576 "s3_srvr_2.cil.c"
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
# 617 "s3_srvr_2.cil.c"
    if (! s__s3__tmp__reuse_message) {
# 618 "s3_srvr_2.cil.c"
      if (! skip) {

        if (s__debug) {
# 620 "s3_srvr_2.cil.c"
          ret = __VERIFIER_nondet_int();
# 621 "s3_srvr_2.cil.c"
          if (ret <= 0) {
            goto end;
          }
        }
# 629 "s3_srvr_2.cil.c"
        if (cb != 0) {
# 630 "s3_srvr_2.cil.c"
          if (s__state != state) {
# 631 "s3_srvr_2.cil.c"
            new_state = s__state;
# 632 "s3_srvr_2.cil.c"
            s__state = state;
# 633 "s3_srvr_2.cil.c"
            s__state = new_state;
          }
        }
      }
    }
    if(state == 8576){
     if(s__state == 8592){
      if(tmp___1 != -12288){
       if(tmp___2 != -16384){
        if(__cil_tmp56 != 4294967040){
         if(__cil_tmp58 != 4294967294){
          if(tmp___7 != 1024){
           if(tmp___7 != 512){
            goto ERROR;
           }
          }
         }
        }
       }
      }
     }
    }
    skip = 0;
  }
  while_0_break: ;
  }

  end:
# 651 "s3_srvr_2.cil.c"
  s__in_handshake --;
# 652 "s3_srvr_2.cil.c"
  if (cb != 0) {

  }
# 657 "s3_srvr_2.cil.c"
  return (ret);
  ERROR: assert(0);
# 659 "s3_srvr_2.cil.c"
  return (-1);
}
}
# 662 "s3_srvr_2.cil.c"
int main(void)
{ int s ;
  int tmp ;

  {
  {
# 668 "s3_srvr_2.cil.c"
  s = 8464;
# 669 "s3_srvr_2.cil.c"
  tmp = ssl3_accept(s);
  }
# 671 "s3_srvr_2.cil.c"
  return (tmp);
}
}
