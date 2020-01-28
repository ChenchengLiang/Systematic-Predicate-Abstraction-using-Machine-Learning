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
  int /*@  predicates{s__state<=8512,s__state==8466,s__state==8512,s__state==8640,s__state==8656} predicates_tpl{0==0} @*/ s__state ;
  int /*@  predicates{s__hit!=0,s__hit==0} @*/ s__hit = __VERIFIER_nondet_int();
  int /*@  predicates{((s__state<=8512)&&(blastFlag>2)),blastFlag==0,blastFlag==2,blastFlag==3,blastFlag==4,blastFlag==5,blastFlag>2} @*/ blastFlag ;
  int /*@  predicates{tmp___1!=0,tmp___1==0} @*/ tmp___1;

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
                          {
                            {
                              if(s__state == 8512){
                                goto switch_1_8512;
                              } else {
                                {
                                  {
                                    {
                                      {
                                        {
                                          {
                                            {
                                                {
                                                  {
                                                    {
                                                      {
                                                        {
                                                          {
                                                            if(s__state == 8640){
                                                              goto switch_1_8640;
                                                            } else {
                                                              {
                                                                if(s__state == 8656){
                                                                  goto switch_1_8656;
                                                                } else {
                                                                  {
                                                                    {
                                                                      goto end;

                                                                          switch_1_8466:
                                                                            if(blastFlag == 0){
                                                                              blastFlag = 2;
                                                                            }
                                                                            if(s__hit){
                                                                              s__state = 8656;
                                                                            } else {
                                                                              s__state = 8512;
                                                                            }
                                                                            goto switch_1_break;

                                                                          switch_1_8512:
                                                                            tmp___1 = __VERIFIER_nondet_int();
                                                                            if(tmp___1){
                                                                              s__state = 8466;
                                                                            } else {
                                                                              s__state = 8640;
                                                                            }
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
