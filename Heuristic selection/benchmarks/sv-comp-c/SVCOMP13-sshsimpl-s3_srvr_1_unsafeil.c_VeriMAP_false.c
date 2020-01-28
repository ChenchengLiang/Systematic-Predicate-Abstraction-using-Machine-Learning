extern long __VERIFIER_nondet_long(void);
extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: assert(0); goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/UNSAFE-exbench/SVCOMP13-sshsimpl-s3_srvr_1_unsafeil.c.tmp.c"
# 1 "<command-line>"
# 1 "MAP/UNSAFE-exbench/SVCOMP13-sshsimpl-s3_srvr_1_unsafeil.c.tmp.c"
# 18 "MAP/UNSAFE-exbench/SVCOMP13-sshsimpl-s3_srvr_1_unsafeil.c.tmp.c"
//extern char __VERIFIER_nondet_char(void);
//extern int __VERIFIER_nondet_int(void);
//extern long __VERIFIER_nondet_long(void);
//extern void *__VERIFIER_nondet_pointer(void);
//extern int __VERIFIER_nondet_int();
# 4 "s3_srvr_1_BUG.cil.c"
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
  int s__s3__tmp__new_cipher__algorithms = __VERIFIER_nondet_int() ;
  int s__s3__tmp__next_state___0 ;
  int s__s3__tmp__new_cipher__algo_strength = __VERIFIER_nondet_int() ;
  int s__session__cipher ;
  int buf = __VERIFIER_nondet_int() ;
  unsigned long l ;
  unsigned long Time ;
  unsigned long tmp = __VERIFIER_nondet_long() ;
  int cb ;
  long num1 ;
  int ret ;
  int new_state ;
  int state ;
  int skip ;
  int got_new_session ;
  int tmp___1 = __VERIFIER_nondet_int() ;
  int tmp___2 = __VERIFIER_nondet_int() ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  long tmp___8 = __VERIFIER_nondet_long() ;
  int tmp___9 ;
  int tmp___10 ;
  int blastFlag ;
  int __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  int __cil_tmp60 ;
  unsigned long __cil_tmp61 ;

  {
# 60 "s3_srvr_1_BUG.cil.c"
;
  s__state = initial_state;
# 61 "s3_srvr_1_BUG.cil.c"
  blastFlag = 0;
# 62 "s3_srvr_1_BUG.cil.c"
  Time = tmp;
# 63 "s3_srvr_1_BUG.cil.c"
  cb = 0;
# 64 "s3_srvr_1_BUG.cil.c"
  ret = -1;
# 65 "s3_srvr_1_BUG.cil.c"
  skip = 0;
# 66 "s3_srvr_1_BUG.cil.c"
  got_new_session = 0;
# 67 "s3_srvr_1_BUG.cil.c"
  if (s__info_callback != 0) {
# 68 "s3_srvr_1_BUG.cil.c"
    cb = s__info_callback;
  } else {
# 70 "s3_srvr_1_BUG.cil.c"
    if (s__ctx__info_callback != 0) {
# 71 "s3_srvr_1_BUG.cil.c"
      cb = s__ctx__info_callback;
    }
  }
# 76 "s3_srvr_1_BUG.cil.c"
  s__in_handshake ++;
# 77 "s3_srvr_1_BUG.cil.c"
  if (tmp___1 + 12288) {
# 78 "s3_srvr_1_BUG.cil.c"
    if (tmp___2 + 16384) {

    }
  }
# 86 "s3_srvr_1_BUG.cil.c"
  if (s__cert == 0) {
# 87 "s3_srvr_1_BUG.cil.c"
    return (-1);
  }
  {
# 92 "s3_srvr_1_BUG.cil.c"
  while (1) {
    while_0_continue: ;
# 94 "s3_srvr_1_BUG.cil.c"
    state = s__state;
# 95 "s3_srvr_1_BUG.cil.c"
    if (s__state == 12292) {
      goto switch_1_12292;
    } else {
# 98 "s3_srvr_1_BUG.cil.c"
      if (s__state == 16384) {
        goto switch_1_16384;
      } else {
# 101 "s3_srvr_1_BUG.cil.c"
        if (s__state == 8192) {
          goto switch_1_8192;
        } else {
# 104 "s3_srvr_1_BUG.cil.c"
          if (s__state == 24576) {
            goto switch_1_24576;
          } else {
# 107 "s3_srvr_1_BUG.cil.c"
            if (s__state == 8195) {
              goto switch_1_8195;
            } else {
# 110 "s3_srvr_1_BUG.cil.c"
              if (s__state == 8480) {
                goto switch_1_8480;
              } else {
# 113 "s3_srvr_1_BUG.cil.c"
                if (s__state == 8481) {
                  goto switch_1_8481;
                } else {
# 116 "s3_srvr_1_BUG.cil.c"
                  if (s__state == 8482) {
                    goto switch_1_8482;
                  } else {
# 119 "s3_srvr_1_BUG.cil.c"
                    if (s__state == 8464) {
                      goto switch_1_8464;
                    } else {
# 122 "s3_srvr_1_BUG.cil.c"
                      if (s__state == 8465) {
                        goto switch_1_8465;
                      } else {
# 125 "s3_srvr_1_BUG.cil.c"
                        if (s__state == 8466) {
                          goto switch_1_8466;
                        } else {
# 128 "s3_srvr_1_BUG.cil.c"
                          if (s__state == 8496) {
                            goto switch_1_8496;
                          } else {
# 131 "s3_srvr_1_BUG.cil.c"
                            if (s__state == 8497) {
                              goto switch_1_8497;
                            } else {
# 134 "s3_srvr_1_BUG.cil.c"
                              if (s__state == 8512) {
                                goto switch_1_8512;
                              } else {
# 137 "s3_srvr_1_BUG.cil.c"
                                if (s__state == 8513) {
                                  goto switch_1_8513;
                                } else {
# 140 "s3_srvr_1_BUG.cil.c"
                                  if (s__state == 8528) {
                                    goto switch_1_8528;
                                  } else {
# 143 "s3_srvr_1_BUG.cil.c"
                                    if (s__state == 8529) {
                                      goto switch_1_8529;
                                    } else {
# 146 "s3_srvr_1_BUG.cil.c"
                                      if (s__state == 8544) {
                                        goto switch_1_8544;
                                      } else {
# 149 "s3_srvr_1_BUG.cil.c"
                                        if (s__state == 8545) {
                                          goto switch_1_8545;
                                        } else {
# 152 "s3_srvr_1_BUG.cil.c"
                                          if (s__state == 8560) {
                                            goto switch_1_8560;
                                          } else {
# 155 "s3_srvr_1_BUG.cil.c"
                                            if (s__state == 8561) {
                                              goto switch_1_8561;
                                            } else {
# 158 "s3_srvr_1_BUG.cil.c"
                                              if (s__state == 8448) {
                                                goto switch_1_8448;
                                              } else {
# 161 "s3_srvr_1_BUG.cil.c"
                                                if (s__state == 8576) {
                                                  goto switch_1_8576;
                                                } else {
# 164 "s3_srvr_1_BUG.cil.c"
                                                  if (s__state == 8577) {
                                                    goto switch_1_8577;
                                                  } else {
# 167 "s3_srvr_1_BUG.cil.c"
                                                    if (s__state == 8592) {
                                                      goto switch_1_8592;
                                                    } else {
# 170 "s3_srvr_1_BUG.cil.c"
                                                      if (s__state == 8593) {
                                                        goto switch_1_8593;
                                                      } else {
# 173 "s3_srvr_1_BUG.cil.c"
                                                        if (s__state == 8608) {
                                                          goto switch_1_8608;
                                                        } else {
# 176 "s3_srvr_1_BUG.cil.c"
                                                          if (s__state == 8609) {
                                                            goto switch_1_8609;
                                                          } else {
# 179 "s3_srvr_1_BUG.cil.c"
                                                            if (s__state == 8640) {
                                                              goto switch_1_8640;
                                                            } else {
# 182 "s3_srvr_1_BUG.cil.c"
                                                              if (s__state == 8641) {
                                                                goto switch_1_8641;
                                                              } else {
# 185 "s3_srvr_1_BUG.cil.c"
                                                                if (s__state == 8656) {
                                                                  goto switch_1_8656;
                                                                } else {
# 188 "s3_srvr_1_BUG.cil.c"
                                                                  if (s__state == 8657) {
                                                                    goto switch_1_8657;
                                                                  } else {
# 191 "s3_srvr_1_BUG.cil.c"
                                                                    if (s__state == 8672) {
                                                                      goto switch_1_8672;
                                                                    } else {
# 194 "s3_srvr_1_BUG.cil.c"
                                                                      if (s__state == 8673) {
                                                                        goto switch_1_8673;
                                                                      } else {
# 197 "s3_srvr_1_BUG.cil.c"
                                                                        if (s__state == 3) {
                                                                          goto switch_1_3;
                                                                        } else {
                                                                          goto switch_1_default;
# 202 "s3_srvr_1_BUG.cil.c"
                                                                          if (0) {
                                                                            switch_1_12292:
# 204 "s3_srvr_1_BUG.cil.c"
                                                                            s__new_session = 1;
                                                                            switch_1_16384: ;
                                                                            switch_1_8192: ;
                                                                            switch_1_24576: ;
                                                                            switch_1_8195:
# 209 "s3_srvr_1_BUG.cil.c"
                                                                            s__server = 1;
# 210 "s3_srvr_1_BUG.cil.c"
                                                                            if (cb != 0) {

                                                                            }
                                                                            {
# 215 "s3_srvr_1_BUG.cil.c"
                                                                            __cil_tmp55 = s__version * 8;
# 215 "s3_srvr_1_BUG.cil.c"
                                                                            if (__cil_tmp55 != 3) {
# 216 "s3_srvr_1_BUG.cil.c"
                                                                              return (-1);
                                                                            }
                                                                            }
# 220 "s3_srvr_1_BUG.cil.c"
                                                                            s__type = 8192;
# 221 "s3_srvr_1_BUG.cil.c"
                                                                            if (s__init_buf___0 == 0) {
# 222 "s3_srvr_1_BUG.cil.c"
                                                                              tmp___3 = __VERIFIER_nondet_int();
# 223 "s3_srvr_1_BUG.cil.c"
                                                                              if (! tmp___3) {
# 224 "s3_srvr_1_BUG.cil.c"
                                                                                ret = -1;
                                                                                goto end;
                                                                              }
# 229 "s3_srvr_1_BUG.cil.c"
                                                                              s__init_buf___0 = buf;
                                                                            }
# 233 "s3_srvr_1_BUG.cil.c"
                                                                            tmp___4 = __VERIFIER_nondet_int();
# 234 "s3_srvr_1_BUG.cil.c"
                                                                            if (! tmp___4) {
# 235 "s3_srvr_1_BUG.cil.c"
                                                                              ret = -1;
                                                                              goto end;
                                                                            }
# 240 "s3_srvr_1_BUG.cil.c"
                                                                            s__init_num = 0;
# 241 "s3_srvr_1_BUG.cil.c"
                                                                            if (s__state != 12292) {
# 242 "s3_srvr_1_BUG.cil.c"
                                                                              tmp___5 = __VERIFIER_nondet_int();
# 243 "s3_srvr_1_BUG.cil.c"
                                                                              if (! tmp___5) {
# 244 "s3_srvr_1_BUG.cil.c"
                                                                                ret = -1;
                                                                                goto end;
                                                                              }
# 249 "s3_srvr_1_BUG.cil.c"
                                                                              s__state = 8464;
# 250 "s3_srvr_1_BUG.cil.c"
                                                                              s__ctx__stats__sess_accept ++;
                                                                            } else {
# 252 "s3_srvr_1_BUG.cil.c"
                                                                              s__ctx__stats__sess_accept_renegotiate ++;
# 253 "s3_srvr_1_BUG.cil.c"
                                                                              s__state = 8480;
                                                                            }
                                                                            goto switch_1_break;
                                                                            switch_1_8480: ;
                                                                            switch_1_8481:
# 258 "s3_srvr_1_BUG.cil.c"
                                                                            s__shutdown = 0;
# 259 "s3_srvr_1_BUG.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 260 "s3_srvr_1_BUG.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 265 "s3_srvr_1_BUG.cil.c"
                                                                            s__s3__tmp__next_state___0 = 8482;
# 266 "s3_srvr_1_BUG.cil.c"
                                                                            s__state = 8448;
# 267 "s3_srvr_1_BUG.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8482:
# 270 "s3_srvr_1_BUG.cil.c"
                                                                            s__state = 3;
                                                                            goto switch_1_break;
                                                                            switch_1_8464: ;
                                                                            switch_1_8465: ;
                                                                            switch_1_8466:
# 275 "s3_srvr_1_BUG.cil.c"
                                                                            s__shutdown = 0;
# 276 "s3_srvr_1_BUG.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 277 "s3_srvr_1_BUG.cil.c"
                                                                            if (blastFlag == 0) {
# 278 "s3_srvr_1_BUG.cil.c"
                                                                              blastFlag = 1;
                                                                            }
# 282 "s3_srvr_1_BUG.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 287 "s3_srvr_1_BUG.cil.c"
                                                                            got_new_session = 1;
# 288 "s3_srvr_1_BUG.cil.c"
                                                                            s__state = 8496;
# 289 "s3_srvr_1_BUG.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8496: ;
                                                                            switch_1_8497:
# 293 "s3_srvr_1_BUG.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 294 "s3_srvr_1_BUG.cil.c"
                                                                            if (blastFlag == 1) {
# 295 "s3_srvr_1_BUG.cil.c"
                                                                              blastFlag = 2;
                                                                            }
# 299 "s3_srvr_1_BUG.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 304 "s3_srvr_1_BUG.cil.c"
                                                                            if (s__hit) {
# 305 "s3_srvr_1_BUG.cil.c"
                                                                              s__state = 8656;
                                                                            } else {
# 307 "s3_srvr_1_BUG.cil.c"
                                                                              s__state = 8512;
                                                                            }
# 309 "s3_srvr_1_BUG.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8512: ;
                                                                            switch_1_8513: ;
                                                                            {
# 313 "s3_srvr_1_BUG.cil.c"
                                                                            __cil_tmp56 = (unsigned long )s__s3__tmp__new_cipher__algorithms;
# 313 "s3_srvr_1_BUG.cil.c"
                                                                            if (__cil_tmp56 + 256UL) {
# 314 "s3_srvr_1_BUG.cil.c"
                                                                              skip = 1;
                                                                            } else {
# 316 "s3_srvr_1_BUG.cil.c"
                                                                              ret = __VERIFIER_nondet_int();
# 317 "s3_srvr_1_BUG.cil.c"
                                                                              if (ret <= 0) {
                                                                                goto end;
                                                                              }
                                                                            }
                                                                            }
# 323 "s3_srvr_1_BUG.cil.c"
                                                                            s__state = 8528;
# 324 "s3_srvr_1_BUG.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8528: ;
                                                                            switch_1_8529:
# 328 "s3_srvr_1_BUG.cil.c"
                                                                            l = (unsigned long )s__s3__tmp__new_cipher__algorithms;
                                                                            {
# 329 "s3_srvr_1_BUG.cil.c"
                                                                            __cil_tmp57 = (unsigned long )s__options;
# 329 "s3_srvr_1_BUG.cil.c"
                                                                            if (__cil_tmp57 + 2097152UL) {
# 330 "s3_srvr_1_BUG.cil.c"
                                                                              s__s3__tmp__use_rsa_tmp = 1;
                                                                            } else {
# 332 "s3_srvr_1_BUG.cil.c"
                                                                              s__s3__tmp__use_rsa_tmp = 0;
                                                                            }
                                                                            }
# 334 "s3_srvr_1_BUG.cil.c"
                                                                            if (s__s3__tmp__use_rsa_tmp) {
                                                                              goto _L___0;
                                                                            } else {
# 337 "s3_srvr_1_BUG.cil.c"
                                                                              if (l + 30UL) {
                                                                                goto _L___0;
                                                                              } else {
# 340 "s3_srvr_1_BUG.cil.c"
                                                                                if (l + 1UL) {
# 341 "s3_srvr_1_BUG.cil.c"
                                                                                  if (s__cert__pkeys__AT0__privatekey == 0) {
                                                                                    goto _L___0;
                                                                                  } else {
                                                                                    {
# 344 "s3_srvr_1_BUG.cil.c"
                                                                                    __cil_tmp58 = (unsigned long )s__s3__tmp__new_cipher__algo_strength;
# 344 "s3_srvr_1_BUG.cil.c"
                                                                                    if (__cil_tmp58 + 2UL) {
# 345 "s3_srvr_1_BUG.cil.c"
                                                                                      tmp___6 = __VERIFIER_nondet_int();
                                                                                      {
# 346 "s3_srvr_1_BUG.cil.c"
                                                                                      __cil_tmp59 = (unsigned long )s__s3__tmp__new_cipher__algo_strength;
# 346 "s3_srvr_1_BUG.cil.c"
                                                                                      if (__cil_tmp59 + 4UL) {
# 347 "s3_srvr_1_BUG.cil.c"
                                                                                        tmp___7 = 512;
                                                                                      } else {
# 349 "s3_srvr_1_BUG.cil.c"
                                                                                        tmp___7 = 1024;
                                                                                      }
                                                                                      }
                                                                                      {
# 351 "s3_srvr_1_BUG.cil.c"
                                                                                      __cil_tmp60 = tmp___6 * 8;
# 351 "s3_srvr_1_BUG.cil.c"
                                                                                      if (__cil_tmp60 > tmp___7) {
                                                                                        _L___0:
# 353 "s3_srvr_1_BUG.cil.c"
                                                                                        ret = __VERIFIER_nondet_int();
# 354 "s3_srvr_1_BUG.cil.c"
                                                                                        if (ret <= 0) {
                                                                                          goto end;
                                                                                        }
                                                                                      } else {
# 360 "s3_srvr_1_BUG.cil.c"
                                                                                        skip = 1;
                                                                                      }
                                                                                      }
                                                                                    } else {
# 363 "s3_srvr_1_BUG.cil.c"
                                                                                      skip = 1;
                                                                                    }
                                                                                    }
                                                                                  }
                                                                                } else {
# 367 "s3_srvr_1_BUG.cil.c"
                                                                                  skip = 1;
                                                                                }
                                                                              }
                                                                            }
# 371 "s3_srvr_1_BUG.cil.c"
                                                                            s__state = 8544;
# 372 "s3_srvr_1_BUG.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8544: ;
                                                                            switch_1_8545: ;
# 376 "s3_srvr_1_BUG.cil.c"
                                                                            if (s__verify_mode + 1) {
# 377 "s3_srvr_1_BUG.cil.c"
                                                                              if (s__session__peer != 0) {
# 378 "s3_srvr_1_BUG.cil.c"
                                                                                if (s__verify_mode + 4) {
# 379 "s3_srvr_1_BUG.cil.c"
                                                                                  skip = 1;
# 380 "s3_srvr_1_BUG.cil.c"
                                                                                  s__s3__tmp__cert_request = 0;
# 381 "s3_srvr_1_BUG.cil.c"
                                                                                  s__state = 8560;
                                                                                } else {
                                                                                  goto _L___2;
                                                                                }
                                                                              } else {
                                                                                _L___2:
                                                                                {
# 387 "s3_srvr_1_BUG.cil.c"
                                                                                __cil_tmp61 = (unsigned long )s__s3__tmp__new_cipher__algorithms;
# 387 "s3_srvr_1_BUG.cil.c"
                                                                                if (__cil_tmp61 + 256UL) {
# 388 "s3_srvr_1_BUG.cil.c"
                                                                                  if (s__verify_mode + 2) {
                                                                                    goto _L___1;
                                                                                  } else {
# 391 "s3_srvr_1_BUG.cil.c"
                                                                                    skip = 1;
# 392 "s3_srvr_1_BUG.cil.c"
                                                                                    s__s3__tmp__cert_request = 0;
# 393 "s3_srvr_1_BUG.cil.c"
                                                                                    s__state = 8560;
                                                                                  }
                                                                                } else {
                                                                                  _L___1:
# 397 "s3_srvr_1_BUG.cil.c"
                                                                                  s__s3__tmp__cert_request = 1;
# 398 "s3_srvr_1_BUG.cil.c"
                                                                                  ret = __VERIFIER_nondet_int();
# 399 "s3_srvr_1_BUG.cil.c"
                                                                                  if (ret <= 0) {
                                                                                    goto end;
                                                                                  }
# 404 "s3_srvr_1_BUG.cil.c"
                                                                                  s__state = 8448;
# 405 "s3_srvr_1_BUG.cil.c"
                                                                                  s__s3__tmp__next_state___0 = 8576;
# 406 "s3_srvr_1_BUG.cil.c"
                                                                                  s__init_num = 0;
                                                                                }
                                                                                }
                                                                              }
                                                                            } else {
# 410 "s3_srvr_1_BUG.cil.c"
                                                                              skip = 1;
# 411 "s3_srvr_1_BUG.cil.c"
                                                                              s__s3__tmp__cert_request = 0;
# 412 "s3_srvr_1_BUG.cil.c"
                                                                              s__state = 8560;
                                                                            }
                                                                            goto switch_1_break;
                                                                            switch_1_8560: ;
                                                                            switch_1_8561:
# 417 "s3_srvr_1_BUG.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 418 "s3_srvr_1_BUG.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 423 "s3_srvr_1_BUG.cil.c"
                                                                            s__s3__tmp__next_state___0 = 8576;
# 424 "s3_srvr_1_BUG.cil.c"
                                                                            s__state = 8448;
# 425 "s3_srvr_1_BUG.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8448:
# 428 "s3_srvr_1_BUG.cil.c"
                                                                            num1 = __VERIFIER_nondet_int();
# 429 "s3_srvr_1_BUG.cil.c"
                                                                            if (num1 > 0) {
# 430 "s3_srvr_1_BUG.cil.c"
                                                                              s__rwstate = 2;
# 431 "s3_srvr_1_BUG.cil.c"
                                                                              num1 = tmp___8;
# 432 "s3_srvr_1_BUG.cil.c"
                                                                              if (num1 <= 0) {
# 433 "s3_srvr_1_BUG.cil.c"
                                                                                ret = -1;
                                                                                goto end;
                                                                              }
# 438 "s3_srvr_1_BUG.cil.c"
                                                                              s__rwstate = 1;
                                                                            }
# 442 "s3_srvr_1_BUG.cil.c"
                                                                            s__state = s__s3__tmp__next_state___0;
                                                                            goto switch_1_break;
                                                                            switch_1_8576: ;
                                                                            switch_1_8577:
# 446 "s3_srvr_1_BUG.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 447 "s3_srvr_1_BUG.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 452 "s3_srvr_1_BUG.cil.c"
                                                                            if (ret == 2) {
# 453 "s3_srvr_1_BUG.cil.c"
                                                                              s__state = 8466;
                                                                            } else {
# 455 "s3_srvr_1_BUG.cil.c"
                                                                              ret = __VERIFIER_nondet_int();
# 456 "s3_srvr_1_BUG.cil.c"
                                                                              if (ret <= 0) {
                                                                                goto end;
                                                                              }
# 461 "s3_srvr_1_BUG.cil.c"
                                                                              s__init_num = 0;
# 462 "s3_srvr_1_BUG.cil.c"
                                                                              s__state = 8592;
                                                                            }
                                                                            goto switch_1_break;
                                                                            switch_1_8592: ;
                                                                            switch_1_8593:
# 467 "s3_srvr_1_BUG.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 468 "s3_srvr_1_BUG.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 473 "s3_srvr_1_BUG.cil.c"
                                                                            s__state = 8608;
# 474 "s3_srvr_1_BUG.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8608: ;
                                                                            switch_1_8609:
# 478 "s3_srvr_1_BUG.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 479 "s3_srvr_1_BUG.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 484 "s3_srvr_1_BUG.cil.c"
                                                                            s__state = 8640;
# 485 "s3_srvr_1_BUG.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8640: ;
                                                                            switch_1_8641:
# 489 "s3_srvr_1_BUG.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 490 "s3_srvr_1_BUG.cil.c"
                                                                            if (blastFlag == 3) {
# 491 "s3_srvr_1_BUG.cil.c"
                                                                              blastFlag = 4;
                                                                            }
# 495 "s3_srvr_1_BUG.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 500 "s3_srvr_1_BUG.cil.c"
                                                                            if (s__hit) {
# 501 "s3_srvr_1_BUG.cil.c"
                                                                              s__state = 3;
                                                                            } else {
# 503 "s3_srvr_1_BUG.cil.c"
                                                                              s__state = 8656;
                                                                            }
# 505 "s3_srvr_1_BUG.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_8656: ;
                                                                            switch_1_8657:
# 509 "s3_srvr_1_BUG.cil.c"
                                                                            s__session__cipher = s__s3__tmp__new_cipher;
# 510 "s3_srvr_1_BUG.cil.c"
                                                                            tmp___9 = __VERIFIER_nondet_int();
# 511 "s3_srvr_1_BUG.cil.c"
                                                                            if (! tmp___9) {
# 512 "s3_srvr_1_BUG.cil.c"
                                                                              ret = -1;
                                                                              goto end;
                                                                            }
# 517 "s3_srvr_1_BUG.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 518 "s3_srvr_1_BUG.cil.c"
                                                                            if (blastFlag == 2) {
# 519 "s3_srvr_1_BUG.cil.c"
                                                                              blastFlag = 3;
                                                                            }
# 523 "s3_srvr_1_BUG.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 528 "s3_srvr_1_BUG.cil.c"
                                                                            s__state = 8672;
# 529 "s3_srvr_1_BUG.cil.c"
                                                                            s__init_num = 0;
# 530 "s3_srvr_1_BUG.cil.c"
                                                                            tmp___10 = __VERIFIER_nondet_int();
# 531 "s3_srvr_1_BUG.cil.c"
                                                                            if (! tmp___10) {
# 532 "s3_srvr_1_BUG.cil.c"
                                                                              ret = -1;
                                                                              goto end;
                                                                            }
                                                                            goto switch_1_break;
                                                                            switch_1_8672: ;
                                                                            switch_1_8673:
# 540 "s3_srvr_1_BUG.cil.c"
                                                                            ret = __VERIFIER_nondet_int();
# 541 "s3_srvr_1_BUG.cil.c"
                                                                            if (blastFlag == 4) {
# 542 "s3_srvr_1_BUG.cil.c"
                                                                              blastFlag = 5;
                                                                            } else {
# 544 "s3_srvr_1_BUG.cil.c"
                                                                              if (blastFlag == 3) {
                                                                                goto ERROR;
                                                                              }
                                                                            }
# 550 "s3_srvr_1_BUG.cil.c"
                                                                            if (ret <= 0) {
                                                                              goto end;
                                                                            }
# 555 "s3_srvr_1_BUG.cil.c"
                                                                            s__state = 8448;
# 556 "s3_srvr_1_BUG.cil.c"
                                                                            if (s__hit) {
# 557 "s3_srvr_1_BUG.cil.c"
                                                                              s__s3__tmp__next_state___0 = 8640;
                                                                            } else {
# 559 "s3_srvr_1_BUG.cil.c"
                                                                              s__s3__tmp__next_state___0 = 3;
                                                                            }
# 561 "s3_srvr_1_BUG.cil.c"
                                                                            s__init_num = 0;
                                                                            goto switch_1_break;
                                                                            switch_1_3:
# 564 "s3_srvr_1_BUG.cil.c"
                                                                            s__init_buf___0 = 0;
# 565 "s3_srvr_1_BUG.cil.c"
                                                                            s__init_num = 0;
# 566 "s3_srvr_1_BUG.cil.c"
                                                                            if (got_new_session) {
# 567 "s3_srvr_1_BUG.cil.c"
                                                                              s__new_session = 0;
# 568 "s3_srvr_1_BUG.cil.c"
                                                                              s__ctx__stats__sess_accept_good ++;
# 569 "s3_srvr_1_BUG.cil.c"
                                                                              if (cb != 0) {

                                                                              }
                                                                            }
# 577 "s3_srvr_1_BUG.cil.c"
                                                                            ret = 1;
                                                                            goto end;
                                                                            switch_1_default:
# 580 "s3_srvr_1_BUG.cil.c"
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
# 621 "s3_srvr_1_BUG.cil.c"
    if (! s__s3__tmp__reuse_message) {
# 622 "s3_srvr_1_BUG.cil.c"
      if (! skip) {
# 623 "s3_srvr_1_BUG.cil.c"
        if (s__debug) {
# 624 "s3_srvr_1_BUG.cil.c"
          ret = __VERIFIER_nondet_int();
# 625 "s3_srvr_1_BUG.cil.c"
          if (ret <= 0) {
            goto end;
          }
        }
# 633 "s3_srvr_1_BUG.cil.c"
        if (cb != 0) {
# 634 "s3_srvr_1_BUG.cil.c"
          if (s__state != state) {
# 635 "s3_srvr_1_BUG.cil.c"
            new_state = s__state;
# 636 "s3_srvr_1_BUG.cil.c"
            s__state = state;
# 637 "s3_srvr_1_BUG.cil.c"
            s__state = new_state;
          }
        }
      }
    }
# 650 "s3_srvr_1_BUG.cil.c"
    skip = 0;
  }
  while_0_break: ;
  }

  end:
# 655 "s3_srvr_1_BUG.cil.c"
  s__in_handshake --;
# 656 "s3_srvr_1_BUG.cil.c"
  if (cb != 0) {

  }
# 661 "s3_srvr_1_BUG.cil.c"
  return (ret);
  ERROR: assert(0);
# 663 "s3_srvr_1_BUG.cil.c"
  return (-1);
}
}
# 666 "s3_srvr_1_BUG.cil.c"
int main(void)
{ int s ;
  int tmp ;

  {
  {
# 672 "s3_srvr_1_BUG.cil.c"
  s = 8464;
# 673 "s3_srvr_1_BUG.cil.c"
  tmp = ssl3_accept(s);
  }
# 675 "s3_srvr_1_BUG.cil.c"
  return (tmp);
}
}
