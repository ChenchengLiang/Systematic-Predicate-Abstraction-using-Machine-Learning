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

int main(){
  int /*@  predicates{s__state<=8512,s__state==8466,s__state==8496,s__state==8512,s__state==8528,s__state==8544,s__state==8560,s__state==8576,s__state==8592,s__state==8608,s__state==8640,s__state==8656,s__state==8672} predicates_tpl{0==0} @*/ s__state ;
  int /*@  predicates{s__hit!=0,s__hit!=2,s__hit==0,s__hit==2} @*/ s__hit = __VERIFIER_nondet_int();
  int /*@  predicates{s__verify_mode!=0,s__verify_mode!=2,s__verify_mode+1,s__verify_mode+2,s__verify_mode+4,s__verify_mode==0,s__verify_mode==2} @*/ s__verify_mode = __VERIFIER_nondet_int();
  int /*@  predicates{s__session__peer!=0,s__session__peer!=2,s__session__peer==0,s__session__peer==2} @*/ s__session__peer = __VERIFIER_nondet_int();
  unsigned long s__s3__tmp__new_cipher__algorithms = __VERIFIER_nondet_long();
  int buf ;
  int cb ;
  int /*@  predicates{((s__state<=8512)&&(blastFlag>2)),blastFlag==0,blastFlag==1,blastFlag==2,blastFlag==3,blastFlag==4,blastFlag==5,blastFlag>2} @*/ blastFlag ;
  int /*@  predicates{tmp___1!=0,tmp___1!=2,tmp___1==0,tmp___1==2} @*/ tmp___1;

  s__state = 8466;
  blastFlag = 0;

  while(1){
             if(s__state <= 8512 && blastFlag > 2){ goto ERROR; }
              {
                {
                  {
                    {
                      {
                        if(s__state == 8466){
                          goto switch_1_8466;
                        } else {
                          if(s__state == 8496){
                            goto switch_1_8496;
                          } else {
                            {
                              if(s__state == 8512){
                                goto switch_1_8512;
                              } else {
                                {
                                  if(s__state == 8528){
                                    goto switch_1_8528;
                                  } else {
                                    {
                                      if(s__state == 8544){
                                        goto switch_1_8544;
                                      } else {
                                        {
                                          if(s__state == 8560){
                                            goto switch_1_8560;
                                          } else {
                                            {
                                                if(s__state == 8576){
                                                  goto switch_1_8576;
                                                } else {
                                                  {
                                                    if(s__state == 8592){
                                                      goto switch_1_8592;
                                                    } else {
                                                      {
                                                        if(s__state == 8608){
                                                          goto switch_1_8608;
                                                        } else {
                                                          {
                                                            if(s__state == 8640){
                                                              goto switch_1_8640;
                                                            } else {
                                                              {
                                                                if(s__state == 8656){
                                                                  goto switch_1_8656;
                                                                } else {
                                                                  {
                                                                    if(s__state == 8672){
                                                                      goto switch_1_8672;
                                                                    } else {
                                                                      goto end;

                                                                          switch_1_8466:
                                                                            if(blastFlag == 0){
                                                                              blastFlag = 1;
                                                                            }
                                                                            s__state = 8496;
                                                                            goto switch_1_break;

                                                                          switch_1_8496:
                                                                            if(blastFlag == 1){
                                                                              blastFlag = 2;
                                                                            }
                                                                            if(s__hit){
                                                                              s__state = 8656;
                                                                            } else {
                                                                              s__state = 8512;
                                                                            }
                                                                            goto switch_1_break;

                                                                          switch_1_8512:
                                                                            s__state = 8528;
                                                                            goto switch_1_break;

                                                                          switch_1_8528:
                                                                            s__state = 8544;
                                                                            goto switch_1_break;

                                                                          switch_1_8544:
                                                                            if(s__verify_mode + 1){
                                                                              if(s__session__peer != 0){
                                                                                if(s__verify_mode + 4){
                                                                                  s__state = 8560;
                                                                                } else {
                                                                                  goto _L___2;
                                                                                }
                                                                              } else {
                                                                                _L___2:
                                                                                if(s__s3__tmp__new_cipher__algorithms + 256UL){
                                                                                  if(s__verify_mode + 2){
                                                                                    goto _L___1;
                                                                                  } else {
                                                                                    s__state = 8560;
                                                                                  }
                                                                                } else {
                                                                                  _L___1:
                                                                                  s__state = 8576;
                                                                                }
                                                                              }
                                                                            } else {
                                                                              s__state = 8560;
                                                                            }
                                                                            goto switch_1_break;

                                                                          switch_1_8560:
                                                                            s__state = 8576;
                                                                            goto switch_1_break;

                                                                          switch_1_8576:
                                                                            tmp___1 = __VERIFIER_nondet_int();
                                                                            if(tmp___1 == 2){
                                                                              s__state = 8466;
                                                                            } else {
                                                                              s__state = 8592;
                                                                            }
                                                                            goto switch_1_break;

                                                                          switch_1_8592:
                                                                            s__state = 8608;
                                                                            goto switch_1_break;

                                                                          switch_1_8608:
                                                                            s__state = 8640;
                                                                            goto switch_1_break;

                                                                          switch_1_8640:
                                                                            if(blastFlag == 3){
                                                                              blastFlag = 4;
                                                                            }
                                                                            if(s__hit){
                                                                              goto end;
                                                                            } else {
                                                                              s__state = 8656;
                                                                            }
                                                                            goto switch_1_break;

                                                                          switch_1_8656:
                                                                            if(blastFlag == 2){
                                                                              blastFlag = 3;
                                                                            }
                                                                            s__state = 8672;
                                                                            goto switch_1_break;

                                                                          switch_1_8672:
                                                                            if(blastFlag == 4){
                                                                              blastFlag = 5;
                                                                            } else {
                                                                              if(blastFlag == 5){
                                                                                goto ERROR;
                                                                              }
                                                                            }
                                                                            if(s__hit){
                                                                              s__state = 8640;
                                                                            } else {
                                                                              goto end;
                                                                            }
                                                                            goto switch_1_break;

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
  switch_1_break: ;
  }

  end:
  return(-1);
  ERROR: __VERIFIER_error();
  return(-1);
}