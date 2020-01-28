extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: assert(0); goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-kbfiltr_simpl1_safeil.c.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-kbfiltr_simpl1_safeil.c.tmp.c"
# 18 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-kbfiltr_simpl1_safeil.c.tmp.c"
//extern char __VERIFIER_nondet_char(void);
//extern int __VERIFIER_nondet_int(void);
//extern long __VERIFIER_nondet_long(void);
//extern void *__VERIFIER_nondet_pointer(void);
//extern int __VERIFIER_nondet_int();



int KernelMode ;
int Executive ;
int s ;
int UNLOADED ;
int NP ;
int DC ;
int SKIP1 ;
int SKIP2 ;
int MPR1 ;
int MPR3 ;
int IPC ;
int pended ;
int compFptr ;
int compRegistered ;
int lowerDriverReturn ;
int setEventCalled ;
int customIrp ;
int myStatus ;

void stub_driver_init(void)
{

  {
# 46 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-kbfiltr_simpl1_safeil.c.tmp.c"
  s = NP;
# 47 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-kbfiltr_simpl1_safeil.c.tmp.c"
  pended = 0;
# 48 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-kbfiltr_simpl1_safeil.c.tmp.c"
  compFptr = 0;
# 49 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-kbfiltr_simpl1_safeil.c.tmp.c"
  compRegistered = 0;
# 50 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-kbfiltr_simpl1_safeil.c.tmp.c"
  lowerDriverReturn = 0;
# 51 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-kbfiltr_simpl1_safeil.c.tmp.c"
  setEventCalled = 0;
# 52 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-kbfiltr_simpl1_safeil.c.tmp.c"
  customIrp = 0;
# 53 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-kbfiltr_simpl1_safeil.c.tmp.c"
  return;
}
}
# 56 "kbfiltr_simpl1.cil.c"
void _BLAST_init(void)
{

  {
# 60 "kbfiltr_simpl1.cil.c"
  UNLOADED = 0;
# 61 "kbfiltr_simpl1.cil.c"
  NP = 1;
# 62 "kbfiltr_simpl1.cil.c"
  DC = 2;
# 63 "kbfiltr_simpl1.cil.c"
  SKIP1 = 3;
# 64 "kbfiltr_simpl1.cil.c"
  SKIP2 = 4;
# 65 "kbfiltr_simpl1.cil.c"
  MPR1 = 5;
# 66 "kbfiltr_simpl1.cil.c"
  MPR3 = 6;
# 67 "kbfiltr_simpl1.cil.c"
  IPC = 7;
# 68 "kbfiltr_simpl1.cil.c"
  s = UNLOADED;
# 69 "kbfiltr_simpl1.cil.c"
  pended = 0;
# 70 "kbfiltr_simpl1.cil.c"
  compFptr = 0;
# 71 "kbfiltr_simpl1.cil.c"
  compRegistered = 0;
# 72 "kbfiltr_simpl1.cil.c"
  lowerDriverReturn = 0;
# 73 "kbfiltr_simpl1.cil.c"
  setEventCalled = 0;
# 74 "kbfiltr_simpl1.cil.c"
  customIrp = 0;
# 75 "kbfiltr_simpl1.cil.c"
  return;
}
}
# 78 "kbfiltr_simpl1.cil.c"
void IofCompleteRequest(int, int);
// void errorFn(void);
int KbFilter_PnP(int DeviceObject , int Irp )
{ int devExt ;
  int irpStack ;
  int status ;
  int event = __VERIFIER_nondet_int() ;
  int DeviceObject__DeviceExtension = __VERIFIER_nondet_int() ;
  int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int() ;
  int irpStack__MinorFunction = __VERIFIER_nondet_int() ;
  int devExt__TopOfStack = __VERIFIER_nondet_int() ;
  int devExt__Started ;
  int devExt__Removed ;
  int devExt__SurpriseRemoved ;
  int Irp__IoStatus__Status ;
  int Irp__IoStatus__Information ;
  int Irp__CurrentLocation = __VERIFIER_nondet_int() ;
  int irpSp ;
  int nextIrpSp ;
  int nextIrpSp__Control ;
  int irpSp___0 ;
  int irpSp__Context ;
  int irpSp__Control ;
  long __cil_tmp23 ;

  {
# 101 "kbfiltr_simpl1.cil.c"
  status = 0;
# 102 "kbfiltr_simpl1.cil.c"
  devExt = DeviceObject__DeviceExtension;
# 103 "kbfiltr_simpl1.cil.c"
  irpStack = Irp__Tail__Overlay__CurrentStackLocation;
# 104 "kbfiltr_simpl1.cil.c"
  if (irpStack__MinorFunction == 0) {
    goto switch_0_0;
  } else {
# 107 "kbfiltr_simpl1.cil.c"
    if (irpStack__MinorFunction == 23) {
      goto switch_0_23;
    } else {
# 110 "kbfiltr_simpl1.cil.c"
      if (irpStack__MinorFunction == 2) {
        goto switch_0_2;
      } else {
# 113 "kbfiltr_simpl1.cil.c"
        if (irpStack__MinorFunction == 1) {
          goto switch_0_1;
        } else {
# 116 "kbfiltr_simpl1.cil.c"
          if (irpStack__MinorFunction == 5) {
            goto switch_0_1;
          } else {
# 119 "kbfiltr_simpl1.cil.c"
            if (irpStack__MinorFunction == 3) {
              goto switch_0_1;
            } else {
# 122 "kbfiltr_simpl1.cil.c"
              if (irpStack__MinorFunction == 6) {
                goto switch_0_1;
              } else {
# 125 "kbfiltr_simpl1.cil.c"
                if (irpStack__MinorFunction == 13) {
                  goto switch_0_1;
                } else {
# 128 "kbfiltr_simpl1.cil.c"
                  if (irpStack__MinorFunction == 4) {
                    goto switch_0_1;
                  } else {
# 131 "kbfiltr_simpl1.cil.c"
                    if (irpStack__MinorFunction == 7) {
                      goto switch_0_1;
                    } else {
# 134 "kbfiltr_simpl1.cil.c"
                      if (irpStack__MinorFunction == 8) {
                        goto switch_0_1;
                      } else {
# 137 "kbfiltr_simpl1.cil.c"
                        if (irpStack__MinorFunction == 9) {
                          goto switch_0_1;
                        } else {
# 140 "kbfiltr_simpl1.cil.c"
                          if (irpStack__MinorFunction == 12) {
                            goto switch_0_1;
                          } else {
# 143 "kbfiltr_simpl1.cil.c"
                            if (irpStack__MinorFunction == 10) {
                              goto switch_0_1;
                            } else {
# 146 "kbfiltr_simpl1.cil.c"
                              if (irpStack__MinorFunction == 11) {
                                goto switch_0_1;
                              } else {
# 149 "kbfiltr_simpl1.cil.c"
                                if (irpStack__MinorFunction == 15) {
                                  goto switch_0_1;
                                } else {
# 152 "kbfiltr_simpl1.cil.c"
                                  if (irpStack__MinorFunction == 16) {
                                    goto switch_0_1;
                                  } else {
# 155 "kbfiltr_simpl1.cil.c"
                                    if (irpStack__MinorFunction == 17) {
                                      goto switch_0_1;
                                    } else {
# 158 "kbfiltr_simpl1.cil.c"
                                      if (irpStack__MinorFunction == 18) {
                                        goto switch_0_1;
                                      } else {
# 161 "kbfiltr_simpl1.cil.c"
                                        if (irpStack__MinorFunction == 19) {
                                          goto switch_0_1;
                                        } else {
# 164 "kbfiltr_simpl1.cil.c"
                                          if (irpStack__MinorFunction == 20) {
                                            goto switch_0_1;
                                          } else {
                                            goto switch_0_1;
# 169 "kbfiltr_simpl1.cil.c"
                                            if (0) {
                                              switch_0_0:
# 171 "kbfiltr_simpl1.cil.c"
                                              irpSp = Irp__Tail__Overlay__CurrentStackLocation;
# 172 "kbfiltr_simpl1.cil.c"
                                              nextIrpSp = Irp__Tail__Overlay__CurrentStackLocation - 1;
# 173 "kbfiltr_simpl1.cil.c"
                                              nextIrpSp__Control = 0;
# 174 "kbfiltr_simpl1.cil.c"
                                              if (s != NP) {
                                                {
# 176 "kbfiltr_simpl1.cil.c"
                                                errorFn();
                                                }
                                              } else {
# 179 "kbfiltr_simpl1.cil.c"
                                                if (compRegistered != 0) {
                                                  {
# 181 "kbfiltr_simpl1.cil.c"
                                                  errorFn();
                                                  }
                                                } else {
# 184 "kbfiltr_simpl1.cil.c"
                                                  compRegistered = 1;
                                                }
                                              }
                                              {
# 188 "kbfiltr_simpl1.cil.c"
                                              irpSp___0 = Irp__Tail__Overlay__CurrentStackLocation - 1;
# 189 "kbfiltr_simpl1.cil.c"
                                              irpSp__Control = 224;
# 192 "kbfiltr_simpl1.cil.c"
                                              status = IofCallDriver(devExt__TopOfStack,
                                                                     Irp);
                                              }
                                              {
# 197 "kbfiltr_simpl1.cil.c"
                                              __cil_tmp23 = (long )status;
# 197 "kbfiltr_simpl1.cil.c"
                                              if (__cil_tmp23 == 259 ) {
                                                {
# 199 "kbfiltr_simpl1.cil.c"
                                                KeWaitForSingleObject(event, Executive,
                                                                      KernelMode,
                                                                      0, 0);
                                                }
                                              }
                                              }
# 206 "kbfiltr_simpl1.cil.c"
                                              if (status >= 0) {
# 207 "kbfiltr_simpl1.cil.c"
                                                if (myStatus >= 0) {
# 208 "kbfiltr_simpl1.cil.c"
                                                  devExt__Started = 1;
# 209 "kbfiltr_simpl1.cil.c"
                                                  devExt__Removed = 0;
# 210 "kbfiltr_simpl1.cil.c"
                                                  devExt__SurpriseRemoved = 0;
                                                }
                                              }
                                              {
# 218 "kbfiltr_simpl1.cil.c"
                                              Irp__IoStatus__Status = status;
# 219 "kbfiltr_simpl1.cil.c"
                                              myStatus = status;
# 220 "kbfiltr_simpl1.cil.c"
                                              Irp__IoStatus__Information = 0;
# 221 "kbfiltr_simpl1.cil.c"
                                              IofCompleteRequest(Irp, 0);
                                              }
                                              goto switch_0_break;
                                              switch_0_23:
# 225 "kbfiltr_simpl1.cil.c"
                                              devExt__SurpriseRemoved = 1;
# 226 "kbfiltr_simpl1.cil.c"
                                              if (s == NP) {
# 227 "kbfiltr_simpl1.cil.c"
                                                s = SKIP1;
                                              } else {
                                                {
# 230 "kbfiltr_simpl1.cil.c"
                                                errorFn();
                                                }
                                              }
                                              {
# 234 "kbfiltr_simpl1.cil.c"
                                              Irp__CurrentLocation ++;
# 235 "kbfiltr_simpl1.cil.c"
                                              Irp__Tail__Overlay__CurrentStackLocation ++;
# 236 "kbfiltr_simpl1.cil.c"
                                              status = IofCallDriver(devExt__TopOfStack,
                                                                     Irp);
                                              }
                                              goto switch_0_break;
                                              switch_0_2:
# 241 "kbfiltr_simpl1.cil.c"
                                              devExt__Removed = 1;
# 242 "kbfiltr_simpl1.cil.c"
                                              if (s == NP) {
# 243 "kbfiltr_simpl1.cil.c"
                                                s = SKIP1;
                                              } else {
                                                {
# 246 "kbfiltr_simpl1.cil.c"
                                                errorFn();
                                                }
                                              }
                                              {
# 250 "kbfiltr_simpl1.cil.c"
                                              Irp__CurrentLocation ++;
# 251 "kbfiltr_simpl1.cil.c"
                                              Irp__Tail__Overlay__CurrentStackLocation ++;
# 252 "kbfiltr_simpl1.cil.c"
                                              IofCallDriver(devExt__TopOfStack, Irp);
# 253 "kbfiltr_simpl1.cil.c"
                                              status = 0;
                                              }
                                              goto switch_0_break;
                                              switch_0_1: ;
# 275 "kbfiltr_simpl1.cil.c"
                                              if (s == NP) {
# 276 "kbfiltr_simpl1.cil.c"
                                                s = SKIP1;
                                              } else {
                                                {
# 279 "kbfiltr_simpl1.cil.c"
                                                errorFn();
                                                }
                                              }
                                              {
# 283 "kbfiltr_simpl1.cil.c"
                                              Irp__CurrentLocation ++;
# 284 "kbfiltr_simpl1.cil.c"
                                              Irp__Tail__Overlay__CurrentStackLocation ++;
# 285 "kbfiltr_simpl1.cil.c"
                                              status = IofCallDriver(devExt__TopOfStack,
                                                                     Irp);
                                              }
                                              goto switch_0_break;
                                            } else {
                                              switch_0_break: ;
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
# 314 "kbfiltr_simpl1.cil.c"
  return (status);
}
}
# 317 "kbfiltr_simpl1.cil.c"
int main(void)
{ int status ;
  int irp = __VERIFIER_nondet_int() ;
  int pirp ;
  int pirp__IoStatus__Status ;
  int irp_choice = __VERIFIER_nondet_int() ;
  int devobj = __VERIFIER_nondet_int() ;
  int __cil_tmp8 ;

  {
  {
;
KernelMode = 0 ;
 Executive = 0;
s = 0;
UNLOADED = 0;
NP = 0;
 DC = 0;
 SKIP1 = 0;
 SKIP2 = 0;
 MPR1 = 0;
 MPR3 = 0;
 IPC = 0;
 pended = 0;
 compFptr = 0;
 compRegistered = 0;
 lowerDriverReturn = 0;
 setEventCalled = 0;
 customIrp = 0;
 myStatus = 0;
# 328 "kbfiltr_simpl1.cil.c"
  status = 0;
# 329 "kbfiltr_simpl1.cil.c"
  pirp = irp;
# 330 "kbfiltr_simpl1.cil.c"
  _BLAST_init();
  }
# 332 "kbfiltr_simpl1.cil.c"
  if (status >= 0) {
# 333 "kbfiltr_simpl1.cil.c"
    s = NP;
# 334 "kbfiltr_simpl1.cil.c"
    customIrp = 0;
# 335 "kbfiltr_simpl1.cil.c"
    setEventCalled = customIrp;
# 336 "kbfiltr_simpl1.cil.c"
    lowerDriverReturn = setEventCalled;
# 337 "kbfiltr_simpl1.cil.c"
    compRegistered = lowerDriverReturn;
# 338 "kbfiltr_simpl1.cil.c"
    pended = compRegistered;
# 339 "kbfiltr_simpl1.cil.c"
    pirp__IoStatus__Status = 0;
# 340 "kbfiltr_simpl1.cil.c"
    myStatus = 0;
# 341 "kbfiltr_simpl1.cil.c"
    if (irp_choice == 0) {
# 342 "kbfiltr_simpl1.cil.c"
      pirp__IoStatus__Status = -1073741637;
# 343 "kbfiltr_simpl1.cil.c"
      myStatus = -1073741637;
    }
    {
# 348 "kbfiltr_simpl1.cil.c"
    stub_driver_init();
    }
    {
# 350 "kbfiltr_simpl1.cil.c"
    if(status >= 0){
      __cil_tmp8 = 1;
    }
    else{
      __cil_tmp8 = 0;
    }
# 350 "kbfiltr_simpl1.cil.c"
    if (! __cil_tmp8) {
# 351 "kbfiltr_simpl1.cil.c"
      return (-1);
    }
    }
# 355 "kbfiltr_simpl1.cil.c"
    int tmp_ndt_1;
    tmp_ndt_1 = __VERIFIER_nondet_int();
    if (tmp_ndt_1 == 3) {
      goto switch_1_3;
    } else {
      goto switch_1_default;
# 360 "kbfiltr_simpl1.cil.c"
      if (0) {
        switch_1_3:
        {
# 363 "kbfiltr_simpl1.cil.c"
        status = KbFilter_PnP(devobj, pirp);
        }
        goto switch_1_break;
        switch_1_default: ;
# 367 "kbfiltr_simpl1.cil.c"
        return (-1);
      } else {
        switch_1_break: ;
      }
    }
  }
# 376 "kbfiltr_simpl1.cil.c"
  if (pended == 1) {
# 377 "kbfiltr_simpl1.cil.c"
    if (s == NP) {
# 378 "kbfiltr_simpl1.cil.c"
      s = NP;
    } else {
      goto _L___2;
    }
  } else {
    _L___2:
# 384 "kbfiltr_simpl1.cil.c"
    if (pended == 1) {
# 385 "kbfiltr_simpl1.cil.c"
      if (s == MPR3) {
# 386 "kbfiltr_simpl1.cil.c"
        s = MPR3;
      } else {
        goto _L___1;
      }
    } else {
      _L___1:
# 392 "kbfiltr_simpl1.cil.c"
      if (s != UNLOADED) {
# 395 "kbfiltr_simpl1.cil.c"
        if (status != -1) {
# 398 "kbfiltr_simpl1.cil.c"
          if (s != SKIP2) {
# 399 "kbfiltr_simpl1.cil.c"
            if (s != IPC) {
# 400 "kbfiltr_simpl1.cil.c"
              if (s == DC) {
                goto _L___0;
              }
            } else {
              goto _L___0;
            }
          } else {
            _L___0:
# 410 "kbfiltr_simpl1.cil.c"
            if (pended == 1) {
# 411 "kbfiltr_simpl1.cil.c"
              if (status != 259) {
                {
# 413 "kbfiltr_simpl1.cil.c"
                errorFn();
                }
              }
            } else {
# 419 "kbfiltr_simpl1.cil.c"
              if (s == DC) {
# 420 "kbfiltr_simpl1.cil.c"
                if (status == 259) {

                }
              } else {
# 426 "kbfiltr_simpl1.cil.c"
                if (status != lowerDriverReturn) {

                }
              }
            }
          }
        }
      }
    }
  }

  return (status);
}
}
# 441 "kbfiltr_simpl1.cil.c"
void stubMoreProcessingRequired(void)
{

  {
# 445 "kbfiltr_simpl1.cil.c"
  if (s == NP) {
# 446 "kbfiltr_simpl1.cil.c"
    s = MPR1;
  } else {
    {
# 449 "kbfiltr_simpl1.cil.c"
    errorFn();
    }
  }
# 452 "kbfiltr_simpl1.cil.c"
  return;
}
}
# 455 "kbfiltr_simpl1.cil.c"
int IofCallDriver(int DeviceObject , int Irp )
{
  int returnVal2 ;
  int compRetStatus ;
  int lcontext = __VERIFIER_nondet_int() ;
  long long __cil_tmp7 ;
;
  {
# 462 "kbfiltr_simpl1.cil.c"
  if (compRegistered) {
    compRetStatus = KbFilter_Complete(DeviceObject, Irp, lcontext);
    stubMoreProcessingRequired();
  }
# 476 "kbfiltr_simpl1.cil.c"
  int tmp_ndt_2;
  tmp_ndt_2 = __VERIFIER_nondet_int();
  if (tmp_ndt_2 == 0) {
    goto switch_2_0;
  } else {
# 479 "kbfiltr_simpl1.cil.c"
    int tmp_ndt_3;
    tmp_ndt_3 = __VERIFIER_nondet_int();
    if (tmp_ndt_3 == 1) {
      goto switch_2_1;
    } else {
      goto switch_2_default;
# 484 "kbfiltr_simpl1.cil.c"
      if (0) {
        switch_2_0:
# 486 "kbfiltr_simpl1.cil.c"
        returnVal2 = 0;
        goto switch_2_break;
        switch_2_1:
# 489 "kbfiltr_simpl1.cil.c"
        returnVal2 = -1073741823;
        goto switch_2_break;
        switch_2_default:
# 492 "kbfiltr_simpl1.cil.c"
        returnVal2 = 259;
        goto switch_2_break;
      } else {
        switch_2_break: ;
      }
    }
  }
# 500 "kbfiltr_simpl1.cil.c"
  if (s == NP) {
# 501 "kbfiltr_simpl1.cil.c"
    s = IPC;
# 502 "kbfiltr_simpl1.cil.c"
    lowerDriverReturn = returnVal2;
  } else {
# 504 "kbfiltr_simpl1.cil.c"
    if (s == MPR1) {
# 505 "kbfiltr_simpl1.cil.c"
      if (returnVal2 == 259) {
# 506 "kbfiltr_simpl1.cil.c"
        s = MPR3;
# 507 "kbfiltr_simpl1.cil.c"
        lowerDriverReturn = returnVal2;
      } else {
# 509 "kbfiltr_simpl1.cil.c"
        s = NP;
# 510 "kbfiltr_simpl1.cil.c"
        lowerDriverReturn = returnVal2;
      }
    } else {
# 513 "kbfiltr_simpl1.cil.c"
      if (s == SKIP1) {
# 514 "kbfiltr_simpl1.cil.c"
        s = SKIP2;
# 515 "kbfiltr_simpl1.cil.c"
        lowerDriverReturn = returnVal2;
      } else {
        {
# 518 "kbfiltr_simpl1.cil.c"
        errorFn();
        }
      }
    }
  }
# 523 "kbfiltr_simpl1.cil.c"
  return (returnVal2);
}
}
# 526 "kbfiltr_simpl1.cil.c"
void IofCompleteRequest(int Irp , int PriorityBoost )
{

  {
# 530 "kbfiltr_simpl1.cil.c"
  if (s == NP) {
# 531 "kbfiltr_simpl1.cil.c"
    s = DC;
  } else {
    {
# 534 "kbfiltr_simpl1.cil.c"
    errorFn();
    }
  }
# 537 "kbfiltr_simpl1.cil.c"
  return;
}
}
# 540 "kbfiltr_simpl1.cil.c"
int KeSetEvent(int Event , int Increment , int Wait )
{ int l = __VERIFIER_nondet_int() ;

  {
# 544 "kbfiltr_simpl1.cil.c"
  setEventCalled = 1;
# 545 "kbfiltr_simpl1.cil.c"
  return (l);
}
}
# 548 "kbfiltr_simpl1.cil.c"
int KeWaitForSingleObject(int Object , int WaitReason , int WaitMode , int Alertable ,
                          int Timeout )
{
;
  {
# 553 "kbfiltr_simpl1.cil.c"
  if (s == MPR3) {
# 554 "kbfiltr_simpl1.cil.c"
    if (setEventCalled == 1) {
# 555 "kbfiltr_simpl1.cil.c"
      s = NP;
# 556 "kbfiltr_simpl1.cil.c"
      setEventCalled = 0;
    } else {
      goto _L;
    }
  } else {
    _L:
# 562 "kbfiltr_simpl1.cil.c"
    if (customIrp == 1) {
# 563 "kbfiltr_simpl1.cil.c"
      s = NP;
# 564 "kbfiltr_simpl1.cil.c"
      customIrp = 0;
    } else {
# 566 "kbfiltr_simpl1.cil.c"
      if (s == MPR3) {
        {
# 568 "kbfiltr_simpl1.cil.c"
        errorFn();
        }
      }
    }
  }
# 575 "kbfiltr_simpl1.cil.c"
  int tmp_ndt_4;
  tmp_ndt_4 = __VERIFIER_nondet_int();
  if (tmp_ndt_4 == 0) {
    goto switch_3_0;
  } else {
    goto switch_3_default;
# 580 "kbfiltr_simpl1.cil.c"
    if (0) {
      switch_3_0:
# 582 "kbfiltr_simpl1.cil.c"
      return (0);
      switch_3_default: ;
# 584 "kbfiltr_simpl1.cil.c"
      return (-1073741823);
    } else {

    }
  }
}
}
# 592 "kbfiltr_simpl1.cil.c"
int KbFilter_Complete(int DeviceObject , int Irp , int Context )
{ int event ;

  {
  {
# 597 "kbfiltr_simpl1.cil.c"
  event = Context;
# 598 "kbfiltr_simpl1.cil.c"
  KeSetEvent(event, 0, 0);
  }
# 600 "kbfiltr_simpl1.cil.c"
  return (-1073741802);
}
}

/* void errorFn(void)
{

  {
  goto ERROR;
  ERROR: assert(0);
# 23 "kbfiltr_simpl1.cil.c"
  return;
}
}
*/