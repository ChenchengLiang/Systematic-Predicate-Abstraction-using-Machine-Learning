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
int /*@  predicates{KernelMode==0} predicates_tpl{0==0} @*/ KernelMode ;
int /*@  predicates{Executive==0} @*/ Executive ;
int /*@  predicates{DevicePowerState==1} @*/ DevicePowerState ;
int /*@  predicates{s==0,s==1,s==2,s==3,s==4,s==5,s==6,s==7} @*/ s ;
int /*@  predicates{UNLOADED!=s,UNLOADED==0,UNLOADED==1,UNLOADED==2,UNLOADED==3,UNLOADED==4,UNLOADED==5,UNLOADED==6,UNLOADED==7} @*/ UNLOADED ;
int /*@  predicates{NP!=s,NP==0,NP==1,NP==2,NP==3,NP==4,NP==5,NP==6,NP==7,NP==s} @*/ NP ;
int /*@  predicates{DC==0,DC==1,DC==2,DC==3,DC==4,DC==5,DC==6,DC==7,DC==s} @*/ DC ;
int /*@  predicates{SKIP1==0,SKIP1==1,SKIP1==2,SKIP1==3,SKIP1==4,SKIP1==5,SKIP1==6,SKIP1==7,SKIP1==s} @*/ SKIP1 ;
int /*@  predicates{SKIP2!=s,SKIP2==0,SKIP2==1,SKIP2==2,SKIP2==3,SKIP2==4,SKIP2==5,SKIP2==6,SKIP2==7} @*/ SKIP2 ;
int /*@  predicates{MPR1==0,MPR1==1,MPR1==2,MPR1==3,MPR1==4,MPR1==5,MPR1==6,MPR1==7,MPR1==s} @*/ MPR1 ;
int /*@  predicates{MPR3==0,MPR3==1,MPR3==2,MPR3==3,MPR3==4,MPR3==5,MPR3==6,MPR3==7,MPR3==s} @*/ MPR3 ;
int /*@  predicates{IPC!=s,IPC==0,IPC==1,IPC==2,IPC==3,IPC==4,IPC==5,IPC==6,IPC==7} @*/ IPC ;
int /*@  predicates{pended==(-1),pended==(-1073741757),pended==(-1073741811),pended==(-1073741822),pended==(-1073741823),pended==0,pended==1,pended==259} @*/ pended ;
int /*@  predicates{compFptr==0} @*/ compFptr ;
int /*@  predicates{compRegistered!=0,compRegistered==(-1),compRegistered==(-1073741757),compRegistered==(-1073741811),compRegistered==(-1073741822),compRegistered==(-1073741823),compRegistered==0,compRegistered==1,compRegistered==259} @*/ compRegistered ;
int /*@  predicates{lowerDriverReturn==(-1),lowerDriverReturn==(-1073741757),lowerDriverReturn==(-1073741811),lowerDriverReturn==(-1073741822),lowerDriverReturn==(-1073741823),lowerDriverReturn==0,lowerDriverReturn==1,lowerDriverReturn==259} @*/ lowerDriverReturn ;
int /*@  predicates{setEventCalled==(-1),setEventCalled==(-1073741757),setEventCalled==(-1073741811),setEventCalled==(-1073741822),setEventCalled==(-1073741823),setEventCalled==0,setEventCalled==1,setEventCalled==259} @*/ setEventCalled ;
int /*@  predicates{customIrp==(-1),customIrp==(-1073741757),customIrp==(-1073741811),customIrp==(-1073741822),customIrp==(-1073741823),customIrp==0,customIrp==1,customIrp==259} @*/ customIrp ;
int /*@  predicates{myStatus==(-1),myStatus==(-1073741436),myStatus==(-1073741637),myStatus==(-1073741757),myStatus==(-1073741811),myStatus==(-1073741822),myStatus==(-1073741823),myStatus==0,myStatus==1,myStatus==259} @*/ myStatus ;

void stub_driver_init(void)
{

  {
  s = NP;
  pended = 0;
  compFptr = 0;
  compRegistered = 0;
  lowerDriverReturn = 0;
  setEventCalled = 0;
  customIrp = 0;
  return;
}
}
void _BLAST_init(void)
{

  {
  UNLOADED = 0;
  NP = 1;
  DC = 2;
  SKIP1 = 3;
  SKIP2 = 4;
  MPR1 = 5;
  MPR3 = 6;
  IPC = 7;
  s = UNLOADED;
  pended = 0;
  compFptr = 0;
  compRegistered = 0;
  lowerDriverReturn = 0;
  setEventCalled = 0;
  customIrp = 0;
  return;
}
}
void IofCompleteRequest(int, int);
void errorFn(void);
int KbFilter_PnP(int /*@  predicates{DeviceObject!=0,DeviceObject!=1,DeviceObject!=10,DeviceObject!=11,DeviceObject!=12,DeviceObject!=13,DeviceObject!=15,DeviceObject!=16,DeviceObject!=17,DeviceObject!=18,DeviceObject!=19,DeviceObject!=2,DeviceObject!=20,DeviceObject!=23,DeviceObject!=3,DeviceObject!=4,DeviceObject!=5,DeviceObject!=6,DeviceObject!=7,DeviceObject!=8,DeviceObject!=9,DeviceObject==0,DeviceObject==1,DeviceObject==10,DeviceObject==11,DeviceObject==12,DeviceObject==13,DeviceObject==15,DeviceObject==16,DeviceObject==17,DeviceObject==18,DeviceObject==19,DeviceObject==2,DeviceObject==20,DeviceObject==23,DeviceObject==3,DeviceObject==4,DeviceObject==5,DeviceObject==6,DeviceObject==7,DeviceObject==8,DeviceObject==9} @*/ DeviceObject , int /*@  predicates{Irp!=0,Irp!=1,Irp!=10,Irp!=11,Irp!=12,Irp!=13,Irp!=15,Irp!=16,Irp!=17,Irp!=18,Irp!=19,Irp!=2,Irp!=20,Irp!=23,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp!=7,Irp!=8,Irp!=9,Irp==0,Irp==1,Irp==10,Irp==11,Irp==12,Irp==13,Irp==15,Irp==16,Irp==17,Irp==18,Irp==19,Irp==2,Irp==20,Irp==23,Irp==3,Irp==4,Irp==5,Irp==6,Irp==7,Irp==8,Irp==9} @*/ Irp)
{ int /*@  predicates{devExt!=0,devExt!=1,devExt!=10,devExt!=11,devExt!=12,devExt!=13,devExt!=15,devExt!=16,devExt!=17,devExt!=18,devExt!=19,devExt!=2,devExt!=20,devExt!=23,devExt!=3,devExt!=4,devExt!=5,devExt!=6,devExt!=7,devExt!=8,devExt!=9,devExt==0,devExt==1,devExt==10,devExt==11,devExt==12,devExt==13,devExt==15,devExt==16,devExt==17,devExt==18,devExt==19,devExt==2,devExt==20,devExt==23,devExt==3,devExt==4,devExt==5,devExt==6,devExt==7,devExt==8,devExt==9} @*/ devExt ;
  int irpStack ;
  int /*@  predicates{status==(-1),status==(-1073741757),status==(-1073741811),status==(-1073741822),status==(-1073741823),status==0,status==1,status==259} @*/ status ;
  int /*@  predicates{event!=0,event!=1,event!=10,event!=11,event!=12,event!=13,event!=15,event!=16,event!=17,event!=18,event!=19,event!=2,event!=20,event!=23,event!=3,event!=4,event!=5,event!=6,event!=7,event!=8,event!=9,event==0,event==1,event==10,event==11,event==12,event==13,event==15,event==16,event==17,event==18,event==19,event==2,event==20,event==23,event==3,event==4,event==5,event==6,event==7,event==8,event==9} @*/ event = __VERIFIER_nondet_int();
  int /*@  predicates{DeviceObject__DeviceExtension!=0,DeviceObject__DeviceExtension!=1,DeviceObject__DeviceExtension!=10,DeviceObject__DeviceExtension!=11,DeviceObject__DeviceExtension!=12,DeviceObject__DeviceExtension!=13,DeviceObject__DeviceExtension!=15,DeviceObject__DeviceExtension!=16,DeviceObject__DeviceExtension!=17,DeviceObject__DeviceExtension!=18,DeviceObject__DeviceExtension!=19,DeviceObject__DeviceExtension!=2,DeviceObject__DeviceExtension!=20,DeviceObject__DeviceExtension!=23,DeviceObject__DeviceExtension!=3,DeviceObject__DeviceExtension!=4,DeviceObject__DeviceExtension!=5,DeviceObject__DeviceExtension!=6,DeviceObject__DeviceExtension!=7,DeviceObject__DeviceExtension!=8,DeviceObject__DeviceExtension!=9,DeviceObject__DeviceExtension==0,DeviceObject__DeviceExtension==1,DeviceObject__DeviceExtension==10,DeviceObject__DeviceExtension==11,DeviceObject__DeviceExtension==12,DeviceObject__DeviceExtension==13,DeviceObject__DeviceExtension==15,DeviceObject__DeviceExtension==16,DeviceObject__DeviceExtension==17,DeviceObject__DeviceExtension==18,DeviceObject__DeviceExtension==19,DeviceObject__DeviceExtension==2,DeviceObject__DeviceExtension==20,DeviceObject__DeviceExtension==23,DeviceObject__DeviceExtension==3,DeviceObject__DeviceExtension==4,DeviceObject__DeviceExtension==5,DeviceObject__DeviceExtension==6,DeviceObject__DeviceExtension==7,DeviceObject__DeviceExtension==8,DeviceObject__DeviceExtension==9,DeviceObject__DeviceExtension==devExt} @*/ DeviceObject__DeviceExtension = __VERIFIER_nondet_int();
  int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int();
  int /*@  predicates{irpStack__MinorFunction!=0,irpStack__MinorFunction!=1,irpStack__MinorFunction!=10,irpStack__MinorFunction!=11,irpStack__MinorFunction!=12,irpStack__MinorFunction!=13,irpStack__MinorFunction!=15,irpStack__MinorFunction!=16,irpStack__MinorFunction!=17,irpStack__MinorFunction!=18,irpStack__MinorFunction!=19,irpStack__MinorFunction!=2,irpStack__MinorFunction!=20,irpStack__MinorFunction!=23,irpStack__MinorFunction!=3,irpStack__MinorFunction!=4,irpStack__MinorFunction!=5,irpStack__MinorFunction!=6,irpStack__MinorFunction!=7,irpStack__MinorFunction!=8,irpStack__MinorFunction!=9,irpStack__MinorFunction==0,irpStack__MinorFunction==1,irpStack__MinorFunction==10,irpStack__MinorFunction==11,irpStack__MinorFunction==12,irpStack__MinorFunction==13,irpStack__MinorFunction==15,irpStack__MinorFunction==16,irpStack__MinorFunction==17,irpStack__MinorFunction==18,irpStack__MinorFunction==19,irpStack__MinorFunction==2,irpStack__MinorFunction==20,irpStack__MinorFunction==23,irpStack__MinorFunction==3,irpStack__MinorFunction==4,irpStack__MinorFunction==5,irpStack__MinorFunction==6,irpStack__MinorFunction==7,irpStack__MinorFunction==8,irpStack__MinorFunction==9} @*/ irpStack__MinorFunction = __VERIFIER_nondet_int();
  int /*@  predicates{devExt__TopOfStack!=0,devExt__TopOfStack!=1,devExt__TopOfStack!=10,devExt__TopOfStack!=11,devExt__TopOfStack!=12,devExt__TopOfStack!=13,devExt__TopOfStack!=15,devExt__TopOfStack!=16,devExt__TopOfStack!=17,devExt__TopOfStack!=18,devExt__TopOfStack!=19,devExt__TopOfStack!=2,devExt__TopOfStack!=20,devExt__TopOfStack!=23,devExt__TopOfStack!=3,devExt__TopOfStack!=4,devExt__TopOfStack!=5,devExt__TopOfStack!=6,devExt__TopOfStack!=7,devExt__TopOfStack!=8,devExt__TopOfStack!=9,devExt__TopOfStack==0,devExt__TopOfStack==1,devExt__TopOfStack==10,devExt__TopOfStack==11,devExt__TopOfStack==12,devExt__TopOfStack==13,devExt__TopOfStack==15,devExt__TopOfStack==16,devExt__TopOfStack==17,devExt__TopOfStack==18,devExt__TopOfStack==19,devExt__TopOfStack==2,devExt__TopOfStack==20,devExt__TopOfStack==23,devExt__TopOfStack==3,devExt__TopOfStack==4,devExt__TopOfStack==5,devExt__TopOfStack==6,devExt__TopOfStack==7,devExt__TopOfStack==8,devExt__TopOfStack==9} @*/ devExt__TopOfStack = __VERIFIER_nondet_int();
  int /*@  predicates{devExt__Started==1} @*/ devExt__Started ;
  int /*@  predicates{devExt__Removed==0,devExt__Removed==1} @*/ devExt__Removed ;
  int /*@  predicates{devExt__SurpriseRemoved==0,devExt__SurpriseRemoved==1} @*/ devExt__SurpriseRemoved ;
  int /*@  predicates{Irp__IoStatus__Status==(-1),Irp__IoStatus__Status==(-1073741757),Irp__IoStatus__Status==(-1073741811),Irp__IoStatus__Status==(-1073741822),Irp__IoStatus__Status==(-1073741823),Irp__IoStatus__Status==0,Irp__IoStatus__Status==1,Irp__IoStatus__Status==259} @*/ Irp__IoStatus__Status ;
  int /*@  predicates{Irp__IoStatus__Information==0} @*/ Irp__IoStatus__Information ;
  int Irp__CurrentLocation = __VERIFIER_nondet_int();
  int irpSp ;
  int nextIrpSp ;
  int /*@  predicates{nextIrpSp__Control==0} @*/ nextIrpSp__Control ;
  int irpSp___0 ;
  int /*@  predicates{irpSp__Context!=0,irpSp__Context!=1,irpSp__Context!=10,irpSp__Context!=11,irpSp__Context!=12,irpSp__Context!=13,irpSp__Context!=15,irpSp__Context!=16,irpSp__Context!=17,irpSp__Context!=18,irpSp__Context!=19,irpSp__Context!=2,irpSp__Context!=20,irpSp__Context!=23,irpSp__Context!=3,irpSp__Context!=4,irpSp__Context!=5,irpSp__Context!=6,irpSp__Context!=7,irpSp__Context!=8,irpSp__Context!=9,irpSp__Context==0,irpSp__Context==1,irpSp__Context==10,irpSp__Context==11,irpSp__Context==12,irpSp__Context==13,irpSp__Context==15,irpSp__Context==16,irpSp__Context==17,irpSp__Context==18,irpSp__Context==19,irpSp__Context==2,irpSp__Context==20,irpSp__Context==23,irpSp__Context==3,irpSp__Context==4,irpSp__Context==5,irpSp__Context==6,irpSp__Context==7,irpSp__Context==8,irpSp__Context==9,irpSp__Context==event} @*/ irpSp__Context ;
  int /*@  predicates{irpSp__Control==224} @*/ irpSp__Control ;
  long __cil_tmp23 ;

  {
  status = 0;
  devExt = DeviceObject__DeviceExtension;
  irpStack = Irp__Tail__Overlay__CurrentStackLocation;
  if(irpStack__MinorFunction == 0){
    goto switch_0_0;
  } else {
    if(irpStack__MinorFunction == 23){
      goto switch_0_23;
    } else {
      if(irpStack__MinorFunction == 2){
        goto switch_0_2;
      } else {
        if(irpStack__MinorFunction == 1){
          goto switch_0_1;
        } else {
          if(irpStack__MinorFunction == 5){
            goto switch_0_1;
          } else {
            if(irpStack__MinorFunction == 3){
              goto switch_0_1;
            } else {
              if(irpStack__MinorFunction == 6){
                goto switch_0_1;
              } else {
                if(irpStack__MinorFunction == 13){
                  goto switch_0_1;
                } else {
                  if(irpStack__MinorFunction == 4){
                    goto switch_0_1;
                  } else {
                    if(irpStack__MinorFunction == 7){
                      goto switch_0_1;
                    } else {
                      if(irpStack__MinorFunction == 8){
                        goto switch_0_1;
                      } else {
                        if(irpStack__MinorFunction == 9){
                          goto switch_0_1;
                        } else {
                          if(irpStack__MinorFunction == 12){
                            goto switch_0_1;
                          } else {
                            if(irpStack__MinorFunction == 10){
                              goto switch_0_1;
                            } else {
                              if(irpStack__MinorFunction == 11){
                                goto switch_0_1;
                              } else {
                                if(irpStack__MinorFunction == 15){
                                  goto switch_0_1;
                                } else {
                                  if(irpStack__MinorFunction == 16){
                                    goto switch_0_1;
                                  } else {
                                    if(irpStack__MinorFunction == 17){
                                      goto switch_0_1;
                                    } else {
                                      if(irpStack__MinorFunction == 18){
                                        goto switch_0_1;
                                      } else {
                                        if(irpStack__MinorFunction == 19){
                                          goto switch_0_1;
                                        } else {
                                          if(irpStack__MinorFunction == 20){
                                            goto switch_0_1;
                                          } else {
                                            goto switch_0_1;
                                            if(0){
                                              switch_0_0:
                                              irpSp = Irp__Tail__Overlay__CurrentStackLocation;
                                              nextIrpSp = Irp__Tail__Overlay__CurrentStackLocation - 1;
                                              nextIrpSp__Control = 0;
                                              if(s != NP){
                                                {
                                                errorFn();
                                                }
                                              } else {
                                                if(compRegistered != 0){
                                                  {
                                                  errorFn();
                                                  }
                                                } else {
                                                  compRegistered = 1;
                                                }
                                              }
                                              {
                                              irpSp___0 = Irp__Tail__Overlay__CurrentStackLocation - 1;
                                              irpSp__Context = event;
                                              irpSp__Control = 224;
                                              status = IofCallDriver(devExt__TopOfStack,
                                                                     Irp);
                                              }
                                              {
                                              __cil_tmp23 =(long)status;
                                              if(__cil_tmp23 == 259){
                                                {
                                                KeWaitForSingleObject(event, Executive,
                                                                      KernelMode,
                                                                      0, 0);
                                                }
                                              }
                                              }
                                              if(status >= 0){
                                                if(myStatus >= 0){
                                                  devExt__Started = 1;
                                                  devExt__Removed = 0;
                                                  devExt__SurpriseRemoved = 0;
                                                }
                                              }
                                              {
                                              Irp__IoStatus__Status = status;
                                              myStatus = status;
                                              Irp__IoStatus__Information = 0;
                                              IofCompleteRequest(Irp, 0);
                                              }
                                              goto switch_0_break;
                                              switch_0_23:
                                              devExt__SurpriseRemoved = 1;
                                              if(s == NP){
                                                s = SKIP1;
                                              } else {
                                                {
                                                errorFn();
                                                }
                                              }
                                              {
                                              Irp__CurrentLocation ++;
                                              Irp__Tail__Overlay__CurrentStackLocation ++;
                                              status = IofCallDriver(devExt__TopOfStack,
                                                                     Irp);
                                              }
                                              goto switch_0_break;
                                              switch_0_2:
                                              devExt__Removed = 1;
                                              if(s == NP){
                                                s = SKIP1;
                                              } else {
                                                {
                                                errorFn();
                                                }
                                              }
                                              {
                                              Irp__CurrentLocation ++;
                                              Irp__Tail__Overlay__CurrentStackLocation ++;
                                              IofCallDriver(devExt__TopOfStack, Irp);
                                              status = 0;
                                              }
                                              goto switch_0_break;
                                              switch_0_1: ;
                                              if(s == NP){
                                                s = SKIP1;
                                              } else {
                                                {
                                                errorFn();
                                                }
                                              }
                                              {
                                              Irp__CurrentLocation ++;
                                              Irp__Tail__Overlay__CurrentStackLocation ++;
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
  return(status);
}
}
int main(void)
{ int /*@  predicates{(status!=(-1)),status!=259,status<0,status==(-1),status==(-1073741757),status==(-1073741811),status==(-1073741822),status==(-1073741823),status==0,status==1,status==259,status>=0} @*/ status ;
  int /*@  predicates{irp!=0,irp!=1,irp!=10,irp!=11,irp!=12,irp!=13,irp!=15,irp!=16,irp!=17,irp!=18,irp!=19,irp!=2,irp!=20,irp!=23,irp!=3,irp!=4,irp!=5,irp!=6,irp!=7,irp!=8,irp!=9,irp==0,irp==1,irp==10,irp==11,irp==12,irp==13,irp==15,irp==16,irp==17,irp==18,irp==19,irp==2,irp==20,irp==23,irp==3,irp==4,irp==5,irp==6,irp==7,irp==8,irp==9} @*/ irp = __VERIFIER_nondet_int();
  int /*@  predicates{pirp!=0,pirp!=1,pirp!=10,pirp!=11,pirp!=12,pirp!=13,pirp!=15,pirp!=16,pirp!=17,pirp!=18,pirp!=19,pirp!=2,pirp!=20,pirp!=23,pirp!=3,pirp!=4,pirp!=5,pirp!=6,pirp!=7,pirp!=8,pirp!=9,pirp==0,pirp==1,pirp==10,pirp==11,pirp==12,pirp==13,pirp==15,pirp==16,pirp==17,pirp==18,pirp==19,pirp==2,pirp==20,pirp==23,pirp==3,pirp==4,pirp==5,pirp==6,pirp==7,pirp==8,pirp==9,pirp==irp} @*/ pirp ;
  int /*@  predicates{pirp__IoStatus__Status==(-1073741637),pirp__IoStatus__Status==0} @*/ pirp__IoStatus__Status ;
  int /*@  predicates{irp_choice!=0,irp_choice!=1,irp_choice!=10,irp_choice!=11,irp_choice!=12,irp_choice!=13,irp_choice!=15,irp_choice!=16,irp_choice!=17,irp_choice!=18,irp_choice!=19,irp_choice!=2,irp_choice!=20,irp_choice!=23,irp_choice!=3,irp_choice!=4,irp_choice!=5,irp_choice!=6,irp_choice!=7,irp_choice!=8,irp_choice!=9,irp_choice==0,irp_choice==1,irp_choice==10,irp_choice==11,irp_choice==12,irp_choice==13,irp_choice==15,irp_choice==16,irp_choice==17,irp_choice==18,irp_choice==19,irp_choice==2,irp_choice==20,irp_choice==23,irp_choice==3,irp_choice==4,irp_choice==5,irp_choice==6,irp_choice==7,irp_choice==8,irp_choice==9} @*/ irp_choice = __VERIFIER_nondet_int();
  int /*@  predicates{devobj!=0,devobj!=1,devobj!=10,devobj!=11,devobj!=12,devobj!=13,devobj!=15,devobj!=16,devobj!=17,devobj!=18,devobj!=19,devobj!=2,devobj!=20,devobj!=23,devobj!=3,devobj!=4,devobj!=5,devobj!=6,devobj!=7,devobj!=8,devobj!=9,devobj==0,devobj==1,devobj==10,devobj==11,devobj==12,devobj==13,devobj==15,devobj==16,devobj==17,devobj==18,devobj==19,devobj==2,devobj==20,devobj==23,devobj==3,devobj==4,devobj==5,devobj==6,devobj==7,devobj==8,devobj==9} @*/ devobj = __VERIFIER_nondet_int();
  int __cil_tmp8 ;

 KernelMode = 0;
 Executive = 0;
 DevicePowerState = 1;
 s = 0;
 UNLOADED = 0;
 NP = 0;
 DC = 0;
 SKIP1 = 0;
 SKIP2 = 0 ;
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

  {
  {
  status = 0;
  pirp = irp;
  _BLAST_init();
  }
  if(status >= 0){
    s = NP;
    customIrp = 0;
    setEventCalled = customIrp;
    lowerDriverReturn = setEventCalled;
    compRegistered = lowerDriverReturn;
    pended = compRegistered;
    pirp__IoStatus__Status = 0;
    myStatus = 0;
    if(irp_choice == 0){
      pirp__IoStatus__Status = -1073741637;
      myStatus = -1073741637;
    }
    {
    stub_driver_init();
    }
    {
    if(status < 0){
      return(-1);
    }
    }
    int /*@  predicates{tmp_ndt_1!=0,tmp_ndt_1!=1,tmp_ndt_1!=10,tmp_ndt_1!=11,tmp_ndt_1!=12,tmp_ndt_1!=13,tmp_ndt_1!=15,tmp_ndt_1!=16,tmp_ndt_1!=17,tmp_ndt_1!=18,tmp_ndt_1!=19,tmp_ndt_1!=2,tmp_ndt_1!=20,tmp_ndt_1!=23,tmp_ndt_1!=3,tmp_ndt_1!=4,tmp_ndt_1!=5,tmp_ndt_1!=6,tmp_ndt_1!=7,tmp_ndt_1!=8,tmp_ndt_1!=9,tmp_ndt_1==0,tmp_ndt_1==1,tmp_ndt_1==10,tmp_ndt_1==11,tmp_ndt_1==12,tmp_ndt_1==13,tmp_ndt_1==15,tmp_ndt_1==16,tmp_ndt_1==17,tmp_ndt_1==18,tmp_ndt_1==19,tmp_ndt_1==2,tmp_ndt_1==20,tmp_ndt_1==23,tmp_ndt_1==3,tmp_ndt_1==4,tmp_ndt_1==5,tmp_ndt_1==6,tmp_ndt_1==7,tmp_ndt_1==8,tmp_ndt_1==9} @*/ tmp_ndt_1;
    tmp_ndt_1 = __VERIFIER_nondet_int();
    if(tmp_ndt_1 == 0){
      goto switch_1_0;
    } else {
      int /*@  predicates{tmp_ndt_2!=0,tmp_ndt_2!=1,tmp_ndt_2!=10,tmp_ndt_2!=11,tmp_ndt_2!=12,tmp_ndt_2!=13,tmp_ndt_2!=15,tmp_ndt_2!=16,tmp_ndt_2!=17,tmp_ndt_2!=18,tmp_ndt_2!=19,tmp_ndt_2!=2,tmp_ndt_2!=20,tmp_ndt_2!=23,tmp_ndt_2!=3,tmp_ndt_2!=4,tmp_ndt_2!=5,tmp_ndt_2!=6,tmp_ndt_2!=7,tmp_ndt_2!=8,tmp_ndt_2!=9,tmp_ndt_2==0,tmp_ndt_2==1,tmp_ndt_2==10,tmp_ndt_2==11,tmp_ndt_2==12,tmp_ndt_2==13,tmp_ndt_2==15,tmp_ndt_2==16,tmp_ndt_2==17,tmp_ndt_2==18,tmp_ndt_2==19,tmp_ndt_2==2,tmp_ndt_2==20,tmp_ndt_2==23,tmp_ndt_2==3,tmp_ndt_2==4,tmp_ndt_2==5,tmp_ndt_2==6,tmp_ndt_2==7,tmp_ndt_2==8,tmp_ndt_2==9} @*/ tmp_ndt_2;
      tmp_ndt_2 = __VERIFIER_nondet_int();
      if(tmp_ndt_2 == 1){
        goto switch_1_1;
      } else {
        int /*@  predicates{tmp_ndt_3!=0,tmp_ndt_3!=1,tmp_ndt_3!=10,tmp_ndt_3!=11,tmp_ndt_3!=12,tmp_ndt_3!=13,tmp_ndt_3!=15,tmp_ndt_3!=16,tmp_ndt_3!=17,tmp_ndt_3!=18,tmp_ndt_3!=19,tmp_ndt_3!=2,tmp_ndt_3!=20,tmp_ndt_3!=23,tmp_ndt_3!=3,tmp_ndt_3!=4,tmp_ndt_3!=5,tmp_ndt_3!=6,tmp_ndt_3!=7,tmp_ndt_3!=8,tmp_ndt_3!=9,tmp_ndt_3==0,tmp_ndt_3==1,tmp_ndt_3==10,tmp_ndt_3==11,tmp_ndt_3==12,tmp_ndt_3==13,tmp_ndt_3==15,tmp_ndt_3==16,tmp_ndt_3==17,tmp_ndt_3==18,tmp_ndt_3==19,tmp_ndt_3==2,tmp_ndt_3==20,tmp_ndt_3==23,tmp_ndt_3==3,tmp_ndt_3==4,tmp_ndt_3==5,tmp_ndt_3==6,tmp_ndt_3==7,tmp_ndt_3==8,tmp_ndt_3==9} @*/ tmp_ndt_3;
        tmp_ndt_3 = __VERIFIER_nondet_int();
        if(tmp_ndt_3 == 3){
          goto switch_1_3;
        } else {
          int /*@  predicates{tmp_ndt_4!=0,tmp_ndt_4!=1,tmp_ndt_4!=10,tmp_ndt_4!=11,tmp_ndt_4!=12,tmp_ndt_4!=13,tmp_ndt_4!=15,tmp_ndt_4!=16,tmp_ndt_4!=17,tmp_ndt_4!=18,tmp_ndt_4!=19,tmp_ndt_4!=2,tmp_ndt_4!=20,tmp_ndt_4!=23,tmp_ndt_4!=3,tmp_ndt_4!=4,tmp_ndt_4!=5,tmp_ndt_4!=6,tmp_ndt_4!=7,tmp_ndt_4!=8,tmp_ndt_4!=9,tmp_ndt_4==0,tmp_ndt_4==1,tmp_ndt_4==10,tmp_ndt_4==11,tmp_ndt_4==12,tmp_ndt_4==13,tmp_ndt_4==15,tmp_ndt_4==16,tmp_ndt_4==17,tmp_ndt_4==18,tmp_ndt_4==19,tmp_ndt_4==2,tmp_ndt_4==20,tmp_ndt_4==23,tmp_ndt_4==3,tmp_ndt_4==4,tmp_ndt_4==5,tmp_ndt_4==6,tmp_ndt_4==7,tmp_ndt_4==8,tmp_ndt_4==9} @*/ tmp_ndt_4;
          tmp_ndt_4 = __VERIFIER_nondet_int();
          if(tmp_ndt_4 == 4){
            goto switch_1_4;
          } else {
            int /*@  predicates{tmp_ndt_5!=0,tmp_ndt_5!=1,tmp_ndt_5!=10,tmp_ndt_5!=11,tmp_ndt_5!=12,tmp_ndt_5!=13,tmp_ndt_5!=15,tmp_ndt_5!=16,tmp_ndt_5!=17,tmp_ndt_5!=18,tmp_ndt_5!=19,tmp_ndt_5!=2,tmp_ndt_5!=20,tmp_ndt_5!=23,tmp_ndt_5!=3,tmp_ndt_5!=4,tmp_ndt_5!=5,tmp_ndt_5!=6,tmp_ndt_5!=7,tmp_ndt_5!=8,tmp_ndt_5!=9,tmp_ndt_5==0,tmp_ndt_5==1,tmp_ndt_5==10,tmp_ndt_5==11,tmp_ndt_5==12,tmp_ndt_5==13,tmp_ndt_5==15,tmp_ndt_5==16,tmp_ndt_5==17,tmp_ndt_5==18,tmp_ndt_5==19,tmp_ndt_5==2,tmp_ndt_5==20,tmp_ndt_5==23,tmp_ndt_5==3,tmp_ndt_5==4,tmp_ndt_5==5,tmp_ndt_5==6,tmp_ndt_5==7,tmp_ndt_5==8,tmp_ndt_5==9} @*/ tmp_ndt_5;
            tmp_ndt_5 = __VERIFIER_nondet_int();
            if(tmp_ndt_5 == 8){
              goto switch_1_8;
            } else {
              goto switch_1_default;
              if(0){
                switch_1_0:
                {
                status = KbFilter_CreateClose(devobj, pirp);
                }
                goto switch_1_break;
                switch_1_1:
                {
                status = KbFilter_CreateClose(devobj, pirp);
                }
                goto switch_1_break;
                switch_1_3:
                {
                status = KbFilter_PnP(devobj, pirp);
                }
                goto switch_1_break;
                switch_1_4:
                {
                status = KbFilter_Power(devobj, pirp);
                }
                goto switch_1_break;
                switch_1_8:
                {
                status = KbFilter_InternIoCtl(devobj, pirp);
                }
                goto switch_1_break;
                switch_1_default: ;
                return(-1);
              } else {
                switch_1_break: ;
              }
            }
          }
        }
      }
    }
  }
  if(pended == 1){
    if(s == NP){
      s = NP;
    } else {
      goto _L___2;
    }
  } else {
    _L___2:
    if(pended == 1){
      if(s == MPR3){
        s = MPR3;
      } else {
        goto _L___1;
      }
    } else {
      _L___1:
      if(s != UNLOADED){
        if(status != -1){
          if(s != SKIP2){
            if(s != IPC){
              if(s == DC){
                goto _L___0;
              }
            } else {
              goto _L___0;
            }
          } else {
            _L___0:
            if(pended == 1){
              if(status != 259){
                {
                errorFn();
                }
              }
            } else {
              if(s == DC){
                if(status == 259){

                }
              } else {
                if(status != lowerDriverReturn){

                }
              }
            }
          }
        }
      }
    }
  }
  return(status);
}
}
void stubMoreProcessingRequired(void)
{

  {
  if(s == NP){
    s = MPR1;
  } else {
    {
    errorFn();
    }
  }
  return;
}
}
int IofCallDriver(int /*@  predicates{DeviceObject!=0,DeviceObject!=1,DeviceObject!=10,DeviceObject!=11,DeviceObject!=12,DeviceObject!=13,DeviceObject!=15,DeviceObject!=16,DeviceObject!=17,DeviceObject!=18,DeviceObject!=19,DeviceObject!=2,DeviceObject!=20,DeviceObject!=23,DeviceObject!=3,DeviceObject!=4,DeviceObject!=5,DeviceObject!=6,DeviceObject!=7,DeviceObject!=8,DeviceObject!=9,DeviceObject==0,DeviceObject==1,DeviceObject==10,DeviceObject==11,DeviceObject==12,DeviceObject==13,DeviceObject==15,DeviceObject==16,DeviceObject==17,DeviceObject==18,DeviceObject==19,DeviceObject==2,DeviceObject==20,DeviceObject==23,DeviceObject==3,DeviceObject==4,DeviceObject==5,DeviceObject==6,DeviceObject==7,DeviceObject==8,DeviceObject==9} @*/ DeviceObject , int /*@  predicates{Irp!=0,Irp!=1,Irp!=10,Irp!=11,Irp!=12,Irp!=13,Irp!=15,Irp!=16,Irp!=17,Irp!=18,Irp!=19,Irp!=2,Irp!=20,Irp!=23,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp!=7,Irp!=8,Irp!=9,Irp==0,Irp==1,Irp==10,Irp==11,Irp==12,Irp==13,Irp==15,Irp==16,Irp==17,Irp==18,Irp==19,Irp==2,Irp==20,Irp==23,Irp==3,Irp==4,Irp==5,Irp==6,Irp==7,Irp==8,Irp==9} @*/ Irp)
{
  int /*@  predicates{returnVal2==(-1),returnVal2==(-1073741757),returnVal2==(-1073741811),returnVal2==(-1073741822),returnVal2==(-1073741823),returnVal2==0,returnVal2==1,returnVal2==259} @*/ returnVal2 ;
  int /*@  predicates{compRetStatus==(-1073741802)} @*/ compRetStatus ;
  int /*@  predicates{lcontext!=0,lcontext!=1,lcontext!=10,lcontext!=11,lcontext!=12,lcontext!=13,lcontext!=15,lcontext!=16,lcontext!=17,lcontext!=18,lcontext!=19,lcontext!=2,lcontext!=20,lcontext!=23,lcontext!=3,lcontext!=4,lcontext!=5,lcontext!=6,lcontext!=7,lcontext!=8,lcontext!=9,lcontext==0,lcontext==1,lcontext==10,lcontext==11,lcontext==12,lcontext==13,lcontext==15,lcontext==16,lcontext==17,lcontext==18,lcontext==19,lcontext==2,lcontext==20,lcontext==23,lcontext==3,lcontext==4,lcontext==5,lcontext==6,lcontext==7,lcontext==8,lcontext==9} @*/ lcontext = __VERIFIER_nondet_int();
  long long __cil_tmp7 ;

  {
  if(compRegistered){
    {
    compRetStatus = KbFilter_Complete(DeviceObject, Irp, lcontext);
    }
    {
    __cil_tmp7 =(long long)compRetStatus;
    if(__cil_tmp7 == -1073741802){
      {
      stubMoreProcessingRequired();
      }
    }
    }
  }
  int /*@  predicates{tmp_ndt_6!=0,tmp_ndt_6!=1,tmp_ndt_6!=10,tmp_ndt_6!=11,tmp_ndt_6!=12,tmp_ndt_6!=13,tmp_ndt_6!=15,tmp_ndt_6!=16,tmp_ndt_6!=17,tmp_ndt_6!=18,tmp_ndt_6!=19,tmp_ndt_6!=2,tmp_ndt_6!=20,tmp_ndt_6!=23,tmp_ndt_6!=3,tmp_ndt_6!=4,tmp_ndt_6!=5,tmp_ndt_6!=6,tmp_ndt_6!=7,tmp_ndt_6!=8,tmp_ndt_6!=9,tmp_ndt_6==0,tmp_ndt_6==1,tmp_ndt_6==10,tmp_ndt_6==11,tmp_ndt_6==12,tmp_ndt_6==13,tmp_ndt_6==15,tmp_ndt_6==16,tmp_ndt_6==17,tmp_ndt_6==18,tmp_ndt_6==19,tmp_ndt_6==2,tmp_ndt_6==20,tmp_ndt_6==23,tmp_ndt_6==3,tmp_ndt_6==4,tmp_ndt_6==5,tmp_ndt_6==6,tmp_ndt_6==7,tmp_ndt_6==8,tmp_ndt_6==9} @*/ tmp_ndt_6;
  tmp_ndt_6 = __VERIFIER_nondet_int();
  if(tmp_ndt_6 == 0){
    goto switch_2_0;
  } else {
    int /*@  predicates{tmp_ndt_7!=0,tmp_ndt_7!=1,tmp_ndt_7!=10,tmp_ndt_7!=11,tmp_ndt_7!=12,tmp_ndt_7!=13,tmp_ndt_7!=15,tmp_ndt_7!=16,tmp_ndt_7!=17,tmp_ndt_7!=18,tmp_ndt_7!=19,tmp_ndt_7!=2,tmp_ndt_7!=20,tmp_ndt_7!=23,tmp_ndt_7!=3,tmp_ndt_7!=4,tmp_ndt_7!=5,tmp_ndt_7!=6,tmp_ndt_7!=7,tmp_ndt_7!=8,tmp_ndt_7!=9,tmp_ndt_7==0,tmp_ndt_7==1,tmp_ndt_7==10,tmp_ndt_7==11,tmp_ndt_7==12,tmp_ndt_7==13,tmp_ndt_7==15,tmp_ndt_7==16,tmp_ndt_7==17,tmp_ndt_7==18,tmp_ndt_7==19,tmp_ndt_7==2,tmp_ndt_7==20,tmp_ndt_7==23,tmp_ndt_7==3,tmp_ndt_7==4,tmp_ndt_7==5,tmp_ndt_7==6,tmp_ndt_7==7,tmp_ndt_7==8,tmp_ndt_7==9} @*/ tmp_ndt_7;
    tmp_ndt_7 = __VERIFIER_nondet_int();
    if(tmp_ndt_7 == 1){
      goto switch_2_1;
    } else {
      goto switch_2_default;
      if(0){
        switch_2_0:
        returnVal2 = 0;
        goto switch_2_break;
        switch_2_1:
        returnVal2 = -1073741823;
        goto switch_2_break;
        switch_2_default:
        returnVal2 = 259;
        goto switch_2_break;
      } else {
        switch_2_break: ;
      }
    }
  }
  if(s == NP){
    s = IPC;
    lowerDriverReturn = returnVal2;
  } else {
    if(s == MPR1){
      if(returnVal2 == 259){
        s = MPR3;
        lowerDriverReturn = returnVal2;
      } else {
        s = NP;
        lowerDriverReturn = returnVal2;
      }
    } else {
      if(s == SKIP1){
        s = SKIP2;
        lowerDriverReturn = returnVal2;
      } else {
        {
        errorFn();
        }
      }
    }
  }
  return(returnVal2);
}
}
void IofCompleteRequest(int /*@  predicates{Irp!=0,Irp!=1,Irp!=10,Irp!=11,Irp!=12,Irp!=13,Irp!=15,Irp!=16,Irp!=17,Irp!=18,Irp!=19,Irp!=2,Irp!=20,Irp!=23,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp!=7,Irp!=8,Irp!=9,Irp==0,Irp==1,Irp==10,Irp==11,Irp==12,Irp==13,Irp==15,Irp==16,Irp==17,Irp==18,Irp==19,Irp==2,Irp==20,Irp==23,Irp==3,Irp==4,Irp==5,Irp==6,Irp==7,Irp==8,Irp==9} @*/ Irp , int /*@  predicates{PriorityBoost==0} @*/ PriorityBoost)
{

  {
  if(s == NP){
    s = DC;
  } else {
    {
    errorFn();
    }
  }
  return;
}
}
int KeSetEvent(int /*@  predicates{Event!=0,Event!=1,Event!=10,Event!=11,Event!=12,Event!=13,Event!=15,Event!=16,Event!=17,Event!=18,Event!=19,Event!=2,Event!=20,Event!=23,Event!=3,Event!=4,Event!=5,Event!=6,Event!=7,Event!=8,Event!=9,Event==0,Event==1,Event==10,Event==11,Event==12,Event==13,Event==15,Event==16,Event==17,Event==18,Event==19,Event==2,Event==20,Event==23,Event==3,Event==4,Event==5,Event==6,Event==7,Event==8,Event==9} @*/ Event , int /*@  predicates{Increment==0} @*/ Increment , int /*@  predicates{Wait==0} @*/ Wait)
{ int /*@  predicates{l!=0,l!=1,l!=10,l!=11,l!=12,l!=13,l!=15,l!=16,l!=17,l!=18,l!=19,l!=2,l!=20,l!=23,l!=3,l!=4,l!=5,l!=6,l!=7,l!=8,l!=9,l==0,l==1,l==10,l==11,l==12,l==13,l==15,l==16,l==17,l==18,l==19,l==2,l==20,l==23,l==3,l==4,l==5,l==6,l==7,l==8,l==9} @*/ l = __VERIFIER_nondet_int();

  {
  setEventCalled = 1;
  return(l);
}
}
int KeWaitForSingleObject(int /*@  predicates{Object!=0,Object!=1,Object!=10,Object!=11,Object!=12,Object!=13,Object!=15,Object!=16,Object!=17,Object!=18,Object!=19,Object!=2,Object!=20,Object!=23,Object!=3,Object!=4,Object!=5,Object!=6,Object!=7,Object!=8,Object!=9,Object==0,Object==1,Object==10,Object==11,Object==12,Object==13,Object==15,Object==16,Object==17,Object==18,Object==19,Object==2,Object==20,Object==23,Object==3,Object==4,Object==5,Object==6,Object==7,Object==8,Object==9} @*/ Object , int /*@  predicates{WaitReason==0} @*/ WaitReason , int /*@  predicates{WaitMode==0} @*/ WaitMode , int /*@  predicates{Alertable==0} @*/ Alertable ,
                          int /*@  predicates{Timeout==0} @*/ Timeout)
{

  {
  if(s == MPR3){
    if(setEventCalled == 1){
      s = NP;
      setEventCalled = 0;
    } else {
      goto _L;
    }
  } else {
    _L:
    if(customIrp == 1){
      s = NP;
      customIrp = 0;
    } else {
      if(s == MPR3){
        {
        errorFn();
        }
      }
    }
  }
  int /*@  predicates{tmp_ndt_8!=0,tmp_ndt_8!=1,tmp_ndt_8!=10,tmp_ndt_8!=11,tmp_ndt_8!=12,tmp_ndt_8!=13,tmp_ndt_8!=15,tmp_ndt_8!=16,tmp_ndt_8!=17,tmp_ndt_8!=18,tmp_ndt_8!=19,tmp_ndt_8!=2,tmp_ndt_8!=20,tmp_ndt_8!=23,tmp_ndt_8!=3,tmp_ndt_8!=4,tmp_ndt_8!=5,tmp_ndt_8!=6,tmp_ndt_8!=7,tmp_ndt_8!=8,tmp_ndt_8!=9,tmp_ndt_8==0,tmp_ndt_8==1,tmp_ndt_8==10,tmp_ndt_8==11,tmp_ndt_8==12,tmp_ndt_8==13,tmp_ndt_8==15,tmp_ndt_8==16,tmp_ndt_8==17,tmp_ndt_8==18,tmp_ndt_8==19,tmp_ndt_8==2,tmp_ndt_8==20,tmp_ndt_8==23,tmp_ndt_8==3,tmp_ndt_8==4,tmp_ndt_8==5,tmp_ndt_8==6,tmp_ndt_8==7,tmp_ndt_8==8,tmp_ndt_8==9} @*/ tmp_ndt_8;
  tmp_ndt_8 = __VERIFIER_nondet_int();
  if(tmp_ndt_8 == 0){
    goto switch_3_0;
  } else {
    goto switch_3_default;
    if(0){
      switch_3_0:
      return(0);
      switch_3_default: ;
      return(-1073741823);
    } else {

    }
  }
}
}
int KbFilter_Complete(int /*@  predicates{DeviceObject!=0,DeviceObject!=1,DeviceObject!=10,DeviceObject!=11,DeviceObject!=12,DeviceObject!=13,DeviceObject!=15,DeviceObject!=16,DeviceObject!=17,DeviceObject!=18,DeviceObject!=19,DeviceObject!=2,DeviceObject!=20,DeviceObject!=23,DeviceObject!=3,DeviceObject!=4,DeviceObject!=5,DeviceObject!=6,DeviceObject!=7,DeviceObject!=8,DeviceObject!=9,DeviceObject==0,DeviceObject==1,DeviceObject==10,DeviceObject==11,DeviceObject==12,DeviceObject==13,DeviceObject==15,DeviceObject==16,DeviceObject==17,DeviceObject==18,DeviceObject==19,DeviceObject==2,DeviceObject==20,DeviceObject==23,DeviceObject==3,DeviceObject==4,DeviceObject==5,DeviceObject==6,DeviceObject==7,DeviceObject==8,DeviceObject==9} @*/ DeviceObject , int /*@  predicates{Irp!=0,Irp!=1,Irp!=10,Irp!=11,Irp!=12,Irp!=13,Irp!=15,Irp!=16,Irp!=17,Irp!=18,Irp!=19,Irp!=2,Irp!=20,Irp!=23,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp!=7,Irp!=8,Irp!=9,Irp==0,Irp==1,Irp==10,Irp==11,Irp==12,Irp==13,Irp==15,Irp==16,Irp==17,Irp==18,Irp==19,Irp==2,Irp==20,Irp==23,Irp==3,Irp==4,Irp==5,Irp==6,Irp==7,Irp==8,Irp==9} @*/ Irp , int /*@  predicates{Context!=0,Context!=1,Context!=10,Context!=11,Context!=12,Context!=13,Context!=15,Context!=16,Context!=17,Context!=18,Context!=19,Context!=2,Context!=20,Context!=23,Context!=3,Context!=4,Context!=5,Context!=6,Context!=7,Context!=8,Context!=9,Context==0,Context==1,Context==10,Context==11,Context==12,Context==13,Context==15,Context==16,Context==17,Context==18,Context==19,Context==2,Context==20,Context==23,Context==3,Context==4,Context==5,Context==6,Context==7,Context==8,Context==9} @*/ Context)
{ int /*@  predicates{event!=0,event!=1,event!=10,event!=11,event!=12,event!=13,event!=15,event!=16,event!=17,event!=18,event!=19,event!=2,event!=20,event!=23,event!=3,event!=4,event!=5,event!=6,event!=7,event!=8,event!=9,event==0,event==1,event==10,event==11,event==12,event==13,event==15,event==16,event==17,event==18,event==19,event==2,event==20,event==23,event==3,event==4,event==5,event==6,event==7,event==8,event==9} @*/ event ;

  {
  {
  event = Context;
  KeSetEvent(event, 0, 0);
  }
  return(-1073741802);
}
}
int KbFilter_CreateClose(int /*@  predicates{DeviceObject!=0,DeviceObject!=1,DeviceObject!=10,DeviceObject!=11,DeviceObject!=12,DeviceObject!=13,DeviceObject!=15,DeviceObject!=16,DeviceObject!=17,DeviceObject!=18,DeviceObject!=19,DeviceObject!=2,DeviceObject!=20,DeviceObject!=23,DeviceObject!=3,DeviceObject!=4,DeviceObject!=5,DeviceObject!=6,DeviceObject!=7,DeviceObject!=8,DeviceObject!=9,DeviceObject==0,DeviceObject==1,DeviceObject==10,DeviceObject==11,DeviceObject==12,DeviceObject==13,DeviceObject==15,DeviceObject==16,DeviceObject==17,DeviceObject==18,DeviceObject==19,DeviceObject==2,DeviceObject==20,DeviceObject==23,DeviceObject==3,DeviceObject==4,DeviceObject==5,DeviceObject==6,DeviceObject==7,DeviceObject==8,DeviceObject==9} @*/ DeviceObject , int /*@  predicates{Irp!=0,Irp!=1,Irp!=10,Irp!=11,Irp!=12,Irp!=13,Irp!=15,Irp!=16,Irp!=17,Irp!=18,Irp!=19,Irp!=2,Irp!=20,Irp!=23,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp!=7,Irp!=8,Irp!=9,Irp==0,Irp==1,Irp==10,Irp==11,Irp==12,Irp==13,Irp==15,Irp==16,Irp==17,Irp==18,Irp==19,Irp==2,Irp==20,Irp==23,Irp==3,Irp==4,Irp==5,Irp==6,Irp==7,Irp==8,Irp==9} @*/ Irp)
{ int /*@  predicates{irpStack__MajorFunction!=0,irpStack__MajorFunction!=1,irpStack__MajorFunction!=10,irpStack__MajorFunction!=11,irpStack__MajorFunction!=12,irpStack__MajorFunction!=13,irpStack__MajorFunction!=15,irpStack__MajorFunction!=16,irpStack__MajorFunction!=17,irpStack__MajorFunction!=18,irpStack__MajorFunction!=19,irpStack__MajorFunction!=2,irpStack__MajorFunction!=20,irpStack__MajorFunction!=23,irpStack__MajorFunction!=3,irpStack__MajorFunction!=4,irpStack__MajorFunction!=5,irpStack__MajorFunction!=6,irpStack__MajorFunction!=7,irpStack__MajorFunction!=8,irpStack__MajorFunction!=9,irpStack__MajorFunction==0,irpStack__MajorFunction==1,irpStack__MajorFunction==10,irpStack__MajorFunction==11,irpStack__MajorFunction==12,irpStack__MajorFunction==13,irpStack__MajorFunction==15,irpStack__MajorFunction==16,irpStack__MajorFunction==17,irpStack__MajorFunction==18,irpStack__MajorFunction==19,irpStack__MajorFunction==2,irpStack__MajorFunction==20,irpStack__MajorFunction==23,irpStack__MajorFunction==3,irpStack__MajorFunction==4,irpStack__MajorFunction==5,irpStack__MajorFunction==6,irpStack__MajorFunction==7,irpStack__MajorFunction==8,irpStack__MajorFunction==9} @*/ irpStack__MajorFunction = __VERIFIER_nondet_int();
  int /*@  predicates{devExt__UpperConnectData__ClassService!=0,devExt__UpperConnectData__ClassService!=1,devExt__UpperConnectData__ClassService!=10,devExt__UpperConnectData__ClassService!=11,devExt__UpperConnectData__ClassService!=12,devExt__UpperConnectData__ClassService!=13,devExt__UpperConnectData__ClassService!=15,devExt__UpperConnectData__ClassService!=16,devExt__UpperConnectData__ClassService!=17,devExt__UpperConnectData__ClassService!=18,devExt__UpperConnectData__ClassService!=19,devExt__UpperConnectData__ClassService!=2,devExt__UpperConnectData__ClassService!=20,devExt__UpperConnectData__ClassService!=23,devExt__UpperConnectData__ClassService!=3,devExt__UpperConnectData__ClassService!=4,devExt__UpperConnectData__ClassService!=5,devExt__UpperConnectData__ClassService!=6,devExt__UpperConnectData__ClassService!=7,devExt__UpperConnectData__ClassService!=8,devExt__UpperConnectData__ClassService!=9,devExt__UpperConnectData__ClassService==0,devExt__UpperConnectData__ClassService==1,devExt__UpperConnectData__ClassService==10,devExt__UpperConnectData__ClassService==11,devExt__UpperConnectData__ClassService==12,devExt__UpperConnectData__ClassService==13,devExt__UpperConnectData__ClassService==15,devExt__UpperConnectData__ClassService==16,devExt__UpperConnectData__ClassService==17,devExt__UpperConnectData__ClassService==18,devExt__UpperConnectData__ClassService==19,devExt__UpperConnectData__ClassService==2,devExt__UpperConnectData__ClassService==20,devExt__UpperConnectData__ClassService==23,devExt__UpperConnectData__ClassService==3,devExt__UpperConnectData__ClassService==4,devExt__UpperConnectData__ClassService==5,devExt__UpperConnectData__ClassService==6,devExt__UpperConnectData__ClassService==7,devExt__UpperConnectData__ClassService==8,devExt__UpperConnectData__ClassService==9} @*/ devExt__UpperConnectData__ClassService = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__IoStatus__Status==(-1),Irp__IoStatus__Status==(-1073741436),Irp__IoStatus__Status==(-1073741637),Irp__IoStatus__Status==(-1073741757),Irp__IoStatus__Status==(-1073741811),Irp__IoStatus__Status==(-1073741822),Irp__IoStatus__Status==(-1073741823),Irp__IoStatus__Status==0,Irp__IoStatus__Status==1,Irp__IoStatus__Status==259} @*/ Irp__IoStatus__Status ;
  int /*@  predicates{status==(-1),status==(-1073741436),status==(-1073741637),status==(-1073741757),status==(-1073741811),status==(-1073741822),status==(-1073741823),status==0,status==1,status==259} @*/ status ;
  int /*@  predicates{tmp==(-1),tmp==(-1073741757),tmp==(-1073741811),tmp==(-1073741822),tmp==(-1073741823),tmp==0,tmp==1,tmp==259} @*/ tmp ;

  {
  status = myStatus;
  if(irpStack__MajorFunction == 0){
    goto switch_4_0;
  } else {
    if(irpStack__MajorFunction == 2){
      goto switch_4_2;
    } else {
      if(0){
        switch_4_0: ;
        if(devExt__UpperConnectData__ClassService == 0){
          status = -1073741436;
        }
        goto switch_4_break;
        switch_4_2: ;
        goto switch_4_break;
      } else {
        switch_4_break: ;
      }
    }
  }
  {
  Irp__IoStatus__Status = status;
  myStatus = status;
  tmp = KbFilter_DispatchPassThrough(DeviceObject, Irp);
  }
  return(tmp);
}
}
int KbFilter_DispatchPassThrough(int /*@  predicates{DeviceObject!=0,DeviceObject!=1,DeviceObject!=10,DeviceObject!=11,DeviceObject!=12,DeviceObject!=13,DeviceObject!=15,DeviceObject!=16,DeviceObject!=17,DeviceObject!=18,DeviceObject!=19,DeviceObject!=2,DeviceObject!=20,DeviceObject!=23,DeviceObject!=3,DeviceObject!=4,DeviceObject!=5,DeviceObject!=6,DeviceObject!=7,DeviceObject!=8,DeviceObject!=9,DeviceObject==0,DeviceObject==1,DeviceObject==10,DeviceObject==11,DeviceObject==12,DeviceObject==13,DeviceObject==15,DeviceObject==16,DeviceObject==17,DeviceObject==18,DeviceObject==19,DeviceObject==2,DeviceObject==20,DeviceObject==23,DeviceObject==3,DeviceObject==4,DeviceObject==5,DeviceObject==6,DeviceObject==7,DeviceObject==8,DeviceObject==9} @*/ DeviceObject , int /*@  predicates{Irp!=0,Irp!=1,Irp!=10,Irp!=11,Irp!=12,Irp!=13,Irp!=15,Irp!=16,Irp!=17,Irp!=18,Irp!=19,Irp!=2,Irp!=20,Irp!=23,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp!=7,Irp!=8,Irp!=9,Irp==0,Irp==1,Irp==10,Irp==11,Irp==12,Irp==13,Irp==15,Irp==16,Irp==17,Irp==18,Irp==19,Irp==2,Irp==20,Irp==23,Irp==3,Irp==4,Irp==5,Irp==6,Irp==7,Irp==8,Irp==9} @*/ Irp)
{ int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int();
  int Irp__CurrentLocation = __VERIFIER_nondet_int();
  int /*@  predicates{DeviceObject__DeviceExtension__TopOfStack!=0,DeviceObject__DeviceExtension__TopOfStack!=1,DeviceObject__DeviceExtension__TopOfStack!=10,DeviceObject__DeviceExtension__TopOfStack!=11,DeviceObject__DeviceExtension__TopOfStack!=12,DeviceObject__DeviceExtension__TopOfStack!=13,DeviceObject__DeviceExtension__TopOfStack!=15,DeviceObject__DeviceExtension__TopOfStack!=16,DeviceObject__DeviceExtension__TopOfStack!=17,DeviceObject__DeviceExtension__TopOfStack!=18,DeviceObject__DeviceExtension__TopOfStack!=19,DeviceObject__DeviceExtension__TopOfStack!=2,DeviceObject__DeviceExtension__TopOfStack!=20,DeviceObject__DeviceExtension__TopOfStack!=23,DeviceObject__DeviceExtension__TopOfStack!=3,DeviceObject__DeviceExtension__TopOfStack!=4,DeviceObject__DeviceExtension__TopOfStack!=5,DeviceObject__DeviceExtension__TopOfStack!=6,DeviceObject__DeviceExtension__TopOfStack!=7,DeviceObject__DeviceExtension__TopOfStack!=8,DeviceObject__DeviceExtension__TopOfStack!=9,DeviceObject__DeviceExtension__TopOfStack==0,DeviceObject__DeviceExtension__TopOfStack==1,DeviceObject__DeviceExtension__TopOfStack==10,DeviceObject__DeviceExtension__TopOfStack==11,DeviceObject__DeviceExtension__TopOfStack==12,DeviceObject__DeviceExtension__TopOfStack==13,DeviceObject__DeviceExtension__TopOfStack==15,DeviceObject__DeviceExtension__TopOfStack==16,DeviceObject__DeviceExtension__TopOfStack==17,DeviceObject__DeviceExtension__TopOfStack==18,DeviceObject__DeviceExtension__TopOfStack==19,DeviceObject__DeviceExtension__TopOfStack==2,DeviceObject__DeviceExtension__TopOfStack==20,DeviceObject__DeviceExtension__TopOfStack==23,DeviceObject__DeviceExtension__TopOfStack==3,DeviceObject__DeviceExtension__TopOfStack==4,DeviceObject__DeviceExtension__TopOfStack==5,DeviceObject__DeviceExtension__TopOfStack==6,DeviceObject__DeviceExtension__TopOfStack==7,DeviceObject__DeviceExtension__TopOfStack==8,DeviceObject__DeviceExtension__TopOfStack==9} @*/ DeviceObject__DeviceExtension__TopOfStack = __VERIFIER_nondet_int();
  int irpStack ;
  int /*@  predicates{tmp==(-1),tmp==(-1073741757),tmp==(-1073741811),tmp==(-1073741822),tmp==(-1073741823),tmp==0,tmp==1,tmp==259} @*/ tmp ;

  {
  irpStack = Irp__Tail__Overlay__CurrentStackLocation;
  if(s == NP){
    s = SKIP1;
  } else {
    {
    errorFn();
    }
  }
  {
  Irp__CurrentLocation ++;
  Irp__Tail__Overlay__CurrentStackLocation ++;
  tmp = IofCallDriver(DeviceObject__DeviceExtension__TopOfStack, Irp);
  }
  return(tmp);
}
}
int KbFilter_Power(int /*@  predicates{DeviceObject!=0,DeviceObject!=1,DeviceObject!=10,DeviceObject!=11,DeviceObject!=12,DeviceObject!=13,DeviceObject!=15,DeviceObject!=16,DeviceObject!=17,DeviceObject!=18,DeviceObject!=19,DeviceObject!=2,DeviceObject!=20,DeviceObject!=23,DeviceObject!=3,DeviceObject!=4,DeviceObject!=5,DeviceObject!=6,DeviceObject!=7,DeviceObject!=8,DeviceObject!=9,DeviceObject==0,DeviceObject==1,DeviceObject==10,DeviceObject==11,DeviceObject==12,DeviceObject==13,DeviceObject==15,DeviceObject==16,DeviceObject==17,DeviceObject==18,DeviceObject==19,DeviceObject==2,DeviceObject==20,DeviceObject==23,DeviceObject==3,DeviceObject==4,DeviceObject==5,DeviceObject==6,DeviceObject==7,DeviceObject==8,DeviceObject==9} @*/ DeviceObject , int /*@  predicates{Irp!=0,Irp!=1,Irp!=10,Irp!=11,Irp!=12,Irp!=13,Irp!=15,Irp!=16,Irp!=17,Irp!=18,Irp!=19,Irp!=2,Irp!=20,Irp!=23,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp!=7,Irp!=8,Irp!=9,Irp==0,Irp==1,Irp==10,Irp==11,Irp==12,Irp==13,Irp==15,Irp==16,Irp==17,Irp==18,Irp==19,Irp==2,Irp==20,Irp==23,Irp==3,Irp==4,Irp==5,Irp==6,Irp==7,Irp==8,Irp==9} @*/ Irp)
{ int /*@  predicates{irpStack__MinorFunction!=0,irpStack__MinorFunction!=1,irpStack__MinorFunction!=10,irpStack__MinorFunction!=11,irpStack__MinorFunction!=12,irpStack__MinorFunction!=13,irpStack__MinorFunction!=15,irpStack__MinorFunction!=16,irpStack__MinorFunction!=17,irpStack__MinorFunction!=18,irpStack__MinorFunction!=19,irpStack__MinorFunction!=2,irpStack__MinorFunction!=20,irpStack__MinorFunction!=23,irpStack__MinorFunction!=3,irpStack__MinorFunction!=4,irpStack__MinorFunction!=5,irpStack__MinorFunction!=6,irpStack__MinorFunction!=7,irpStack__MinorFunction!=8,irpStack__MinorFunction!=9,irpStack__MinorFunction==0,irpStack__MinorFunction==1,irpStack__MinorFunction==10,irpStack__MinorFunction==11,irpStack__MinorFunction==12,irpStack__MinorFunction==13,irpStack__MinorFunction==15,irpStack__MinorFunction==16,irpStack__MinorFunction==17,irpStack__MinorFunction==18,irpStack__MinorFunction==19,irpStack__MinorFunction==2,irpStack__MinorFunction==20,irpStack__MinorFunction==23,irpStack__MinorFunction==3,irpStack__MinorFunction==4,irpStack__MinorFunction==5,irpStack__MinorFunction==6,irpStack__MinorFunction==7,irpStack__MinorFunction==8,irpStack__MinorFunction==9} @*/ irpStack__MinorFunction = __VERIFIER_nondet_int();
  int /*@  predicates{devExt__DeviceState!=0,devExt__DeviceState!=1,devExt__DeviceState!=10,devExt__DeviceState!=11,devExt__DeviceState!=12,devExt__DeviceState!=13,devExt__DeviceState!=15,devExt__DeviceState!=16,devExt__DeviceState!=17,devExt__DeviceState!=18,devExt__DeviceState!=19,devExt__DeviceState!=2,devExt__DeviceState!=20,devExt__DeviceState!=23,devExt__DeviceState!=3,devExt__DeviceState!=4,devExt__DeviceState!=5,devExt__DeviceState!=6,devExt__DeviceState!=7,devExt__DeviceState!=8,devExt__DeviceState!=9,devExt__DeviceState==0,devExt__DeviceState==1,devExt__DeviceState==10,devExt__DeviceState==11,devExt__DeviceState==12,devExt__DeviceState==13,devExt__DeviceState==15,devExt__DeviceState==16,devExt__DeviceState==17,devExt__DeviceState==18,devExt__DeviceState==19,devExt__DeviceState==2,devExt__DeviceState==20,devExt__DeviceState==23,devExt__DeviceState==3,devExt__DeviceState==4,devExt__DeviceState==5,devExt__DeviceState==6,devExt__DeviceState==7,devExt__DeviceState==8,devExt__DeviceState==9} @*/ devExt__DeviceState ;
  int /*@  predicates{powerState__DeviceState!=0,powerState__DeviceState!=1,powerState__DeviceState!=10,powerState__DeviceState!=11,powerState__DeviceState!=12,powerState__DeviceState!=13,powerState__DeviceState!=15,powerState__DeviceState!=16,powerState__DeviceState!=17,powerState__DeviceState!=18,powerState__DeviceState!=19,powerState__DeviceState!=2,powerState__DeviceState!=20,powerState__DeviceState!=23,powerState__DeviceState!=3,powerState__DeviceState!=4,powerState__DeviceState!=5,powerState__DeviceState!=6,powerState__DeviceState!=7,powerState__DeviceState!=8,powerState__DeviceState!=9,powerState__DeviceState==0,powerState__DeviceState==1,powerState__DeviceState==10,powerState__DeviceState==11,powerState__DeviceState==12,powerState__DeviceState==13,powerState__DeviceState==15,powerState__DeviceState==16,powerState__DeviceState==17,powerState__DeviceState==18,powerState__DeviceState==19,powerState__DeviceState==2,powerState__DeviceState==20,powerState__DeviceState==23,powerState__DeviceState==3,powerState__DeviceState==4,powerState__DeviceState==5,powerState__DeviceState==6,powerState__DeviceState==7,powerState__DeviceState==8,powerState__DeviceState==9,powerState__DeviceState==devExt__DeviceState} @*/ powerState__DeviceState = __VERIFIER_nondet_int();
  int Irp__CurrentLocation = __VERIFIER_nondet_int();
  int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int();
  int /*@  predicates{devExt__TopOfStack!=0,devExt__TopOfStack!=1,devExt__TopOfStack!=10,devExt__TopOfStack!=11,devExt__TopOfStack!=12,devExt__TopOfStack!=13,devExt__TopOfStack!=15,devExt__TopOfStack!=16,devExt__TopOfStack!=17,devExt__TopOfStack!=18,devExt__TopOfStack!=19,devExt__TopOfStack!=2,devExt__TopOfStack!=20,devExt__TopOfStack!=23,devExt__TopOfStack!=3,devExt__TopOfStack!=4,devExt__TopOfStack!=5,devExt__TopOfStack!=6,devExt__TopOfStack!=7,devExt__TopOfStack!=8,devExt__TopOfStack!=9,devExt__TopOfStack==0,devExt__TopOfStack==1,devExt__TopOfStack==10,devExt__TopOfStack==11,devExt__TopOfStack==12,devExt__TopOfStack==13,devExt__TopOfStack==15,devExt__TopOfStack==16,devExt__TopOfStack==17,devExt__TopOfStack==18,devExt__TopOfStack==19,devExt__TopOfStack==2,devExt__TopOfStack==20,devExt__TopOfStack==23,devExt__TopOfStack==3,devExt__TopOfStack==4,devExt__TopOfStack==5,devExt__TopOfStack==6,devExt__TopOfStack==7,devExt__TopOfStack==8,devExt__TopOfStack==9} @*/ devExt__TopOfStack = __VERIFIER_nondet_int();
  int /*@  predicates{powerType!=0,powerType!=1,powerType!=10,powerType!=11,powerType!=12,powerType!=13,powerType!=15,powerType!=16,powerType!=17,powerType!=18,powerType!=19,powerType!=2,powerType!=20,powerType!=23,powerType!=3,powerType!=4,powerType!=5,powerType!=6,powerType!=7,powerType!=8,powerType!=9,powerType!=DevicePowerState,powerType==0,powerType==1,powerType==10,powerType==11,powerType==12,powerType==13,powerType==15,powerType==16,powerType==17,powerType==18,powerType==19,powerType==2,powerType==20,powerType==23,powerType==3,powerType==4,powerType==5,powerType==6,powerType==7,powerType==8,powerType==9,powerType==DevicePowerState} @*/ powerType = __VERIFIER_nondet_int();
  int /*@  predicates{tmp==(-1),tmp==(-1073741757),tmp==(-1073741811),tmp==(-1073741822),tmp==(-1073741823),tmp==0,tmp==1,tmp==259} @*/ tmp ;

  {
  if(irpStack__MinorFunction == 2){
    goto switch_5_2;
  } else {
    if(irpStack__MinorFunction == 1){
      goto switch_5_1;
    } else {
      if(irpStack__MinorFunction == 0){
        goto switch_5_0;
      } else {
        if(irpStack__MinorFunction == 3){
          goto switch_5_3;
        } else {
          goto switch_5_default;
          if(0){
            switch_5_2: ;
            if(powerType == DevicePowerState){
              devExt__DeviceState = powerState__DeviceState;
            }
            switch_5_1: ;
            switch_5_0: ;
            switch_5_3: ;
            switch_5_default: ;
            goto switch_5_break;
          } else {
            switch_5_break: ;
          }
        }
      }
    }
  }
  if(s == NP){
    s = SKIP1;
  } else {
    {
    errorFn();
    }
  }
  {
  Irp__CurrentLocation ++;
  Irp__Tail__Overlay__CurrentStackLocation ++;
  tmp = PoCallDriver(devExt__TopOfStack, Irp);
  }
  return(tmp);
}
}
int PoCallDriver(int /*@  predicates{DeviceObject!=0,DeviceObject!=1,DeviceObject!=10,DeviceObject!=11,DeviceObject!=12,DeviceObject!=13,DeviceObject!=15,DeviceObject!=16,DeviceObject!=17,DeviceObject!=18,DeviceObject!=19,DeviceObject!=2,DeviceObject!=20,DeviceObject!=23,DeviceObject!=3,DeviceObject!=4,DeviceObject!=5,DeviceObject!=6,DeviceObject!=7,DeviceObject!=8,DeviceObject!=9,DeviceObject==0,DeviceObject==1,DeviceObject==10,DeviceObject==11,DeviceObject==12,DeviceObject==13,DeviceObject==15,DeviceObject==16,DeviceObject==17,DeviceObject==18,DeviceObject==19,DeviceObject==2,DeviceObject==20,DeviceObject==23,DeviceObject==3,DeviceObject==4,DeviceObject==5,DeviceObject==6,DeviceObject==7,DeviceObject==8,DeviceObject==9} @*/ DeviceObject , int /*@  predicates{Irp!=0,Irp!=1,Irp!=10,Irp!=11,Irp!=12,Irp!=13,Irp!=15,Irp!=16,Irp!=17,Irp!=18,Irp!=19,Irp!=2,Irp!=20,Irp!=23,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp!=7,Irp!=8,Irp!=9,Irp==0,Irp==1,Irp==10,Irp==11,Irp==12,Irp==13,Irp==15,Irp==16,Irp==17,Irp==18,Irp==19,Irp==2,Irp==20,Irp==23,Irp==3,Irp==4,Irp==5,Irp==6,Irp==7,Irp==8,Irp==9} @*/ Irp)
{
  int /*@  predicates{compRetStatus==(-1073741802)} @*/ compRetStatus ;
  int /*@  predicates{returnVal==(-1),returnVal==(-1073741757),returnVal==(-1073741811),returnVal==(-1073741822),returnVal==(-1073741823),returnVal==0,returnVal==1,returnVal==259} @*/ returnVal ;
  int /*@  predicates{lcontext!=0,lcontext!=1,lcontext!=10,lcontext!=11,lcontext!=12,lcontext!=13,lcontext!=15,lcontext!=16,lcontext!=17,lcontext!=18,lcontext!=19,lcontext!=2,lcontext!=20,lcontext!=23,lcontext!=3,lcontext!=4,lcontext!=5,lcontext!=6,lcontext!=7,lcontext!=8,lcontext!=9,lcontext==0,lcontext==1,lcontext==10,lcontext==11,lcontext==12,lcontext==13,lcontext==15,lcontext==16,lcontext==17,lcontext==18,lcontext==19,lcontext==2,lcontext==20,lcontext==23,lcontext==3,lcontext==4,lcontext==5,lcontext==6,lcontext==7,lcontext==8,lcontext==9} @*/ lcontext = __VERIFIER_nondet_int();
  unsigned long __cil_tmp7 ;
  long __cil_tmp8 ;

  {
  if(compRegistered){
    {
    compRetStatus = KbFilter_Complete(DeviceObject, Irp, lcontext);
    }
    {
    __cil_tmp7 =(unsigned long)compRetStatus;
    if(__cil_tmp7 == -1073741802){
      {
      stubMoreProcessingRequired();
      }
    }
    }
  }
  int /*@  predicates{tmp_ndt_9!=0,tmp_ndt_9!=1,tmp_ndt_9!=10,tmp_ndt_9!=11,tmp_ndt_9!=12,tmp_ndt_9!=13,tmp_ndt_9!=15,tmp_ndt_9!=16,tmp_ndt_9!=17,tmp_ndt_9!=18,tmp_ndt_9!=19,tmp_ndt_9!=2,tmp_ndt_9!=20,tmp_ndt_9!=23,tmp_ndt_9!=3,tmp_ndt_9!=4,tmp_ndt_9!=5,tmp_ndt_9!=6,tmp_ndt_9!=7,tmp_ndt_9!=8,tmp_ndt_9!=9,tmp_ndt_9==0,tmp_ndt_9==1,tmp_ndt_9==10,tmp_ndt_9==11,tmp_ndt_9==12,tmp_ndt_9==13,tmp_ndt_9==15,tmp_ndt_9==16,tmp_ndt_9==17,tmp_ndt_9==18,tmp_ndt_9==19,tmp_ndt_9==2,tmp_ndt_9==20,tmp_ndt_9==23,tmp_ndt_9==3,tmp_ndt_9==4,tmp_ndt_9==5,tmp_ndt_9==6,tmp_ndt_9==7,tmp_ndt_9==8,tmp_ndt_9==9} @*/ tmp_ndt_9;
  tmp_ndt_9 = __VERIFIER_nondet_int();
  if(tmp_ndt_9 == 0){
    goto switch_6_0;
  } else {
    int /*@  predicates{tmp_ndt_10!=0,tmp_ndt_10!=1,tmp_ndt_10!=10,tmp_ndt_10!=11,tmp_ndt_10!=12,tmp_ndt_10!=13,tmp_ndt_10!=15,tmp_ndt_10!=16,tmp_ndt_10!=17,tmp_ndt_10!=18,tmp_ndt_10!=19,tmp_ndt_10!=2,tmp_ndt_10!=20,tmp_ndt_10!=23,tmp_ndt_10!=3,tmp_ndt_10!=4,tmp_ndt_10!=5,tmp_ndt_10!=6,tmp_ndt_10!=7,tmp_ndt_10!=8,tmp_ndt_10!=9,tmp_ndt_10==0,tmp_ndt_10==1,tmp_ndt_10==10,tmp_ndt_10==11,tmp_ndt_10==12,tmp_ndt_10==13,tmp_ndt_10==15,tmp_ndt_10==16,tmp_ndt_10==17,tmp_ndt_10==18,tmp_ndt_10==19,tmp_ndt_10==2,tmp_ndt_10==20,tmp_ndt_10==23,tmp_ndt_10==3,tmp_ndt_10==4,tmp_ndt_10==5,tmp_ndt_10==6,tmp_ndt_10==7,tmp_ndt_10==8,tmp_ndt_10==9} @*/ tmp_ndt_10;
    tmp_ndt_10 = __VERIFIER_nondet_int();
    if(tmp_ndt_10 == 1){
      goto switch_6_1;
    } else {
      goto switch_6_default;
      if(0){
        switch_6_0:
        returnVal = 0;
        goto switch_6_break;
        switch_6_1:
        returnVal = -1073741823;
        goto switch_6_break;
        switch_6_default:
        returnVal = 259;
        goto switch_6_break;
      } else {
        switch_6_break: ;
      }
    }
  }
  if(s == NP){
    s = IPC;
    lowerDriverReturn = returnVal;
  } else {
    if(s == MPR1){
      {
      __cil_tmp8 =(long)returnVal;
      if(__cil_tmp8 == 259L){
        s = MPR3;
        lowerDriverReturn = returnVal;
      } else {
        s = NP;
        lowerDriverReturn = returnVal;
      }
      }
    } else {
      if(s == SKIP1){
        s = SKIP2;
        lowerDriverReturn = returnVal;
      } else {
        {
        errorFn();
        }
      }
    }
  }
  return(returnVal);
}
}
int KbFilter_InternIoCtl(int /*@  predicates{DeviceObject!=0,DeviceObject!=1,DeviceObject!=10,DeviceObject!=11,DeviceObject!=12,DeviceObject!=13,DeviceObject!=15,DeviceObject!=16,DeviceObject!=17,DeviceObject!=18,DeviceObject!=19,DeviceObject!=2,DeviceObject!=20,DeviceObject!=23,DeviceObject!=3,DeviceObject!=4,DeviceObject!=5,DeviceObject!=6,DeviceObject!=7,DeviceObject!=8,DeviceObject!=9,DeviceObject==0,DeviceObject==1,DeviceObject==10,DeviceObject==11,DeviceObject==12,DeviceObject==13,DeviceObject==15,DeviceObject==16,DeviceObject==17,DeviceObject==18,DeviceObject==19,DeviceObject==2,DeviceObject==20,DeviceObject==23,DeviceObject==3,DeviceObject==4,DeviceObject==5,DeviceObject==6,DeviceObject==7,DeviceObject==8,DeviceObject==9} @*/ DeviceObject , int /*@  predicates{Irp!=0,Irp!=1,Irp!=10,Irp!=11,Irp!=12,Irp!=13,Irp!=15,Irp!=16,Irp!=17,Irp!=18,Irp!=19,Irp!=2,Irp!=20,Irp!=23,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp!=7,Irp!=8,Irp!=9,Irp==0,Irp==1,Irp==10,Irp==11,Irp==12,Irp==13,Irp==15,Irp==16,Irp==17,Irp==18,Irp==19,Irp==2,Irp==20,Irp==23,Irp==3,Irp==4,Irp==5,Irp==6,Irp==7,Irp==8,Irp==9} @*/ Irp)
{ int /*@  predicates{Irp__IoStatus__Information==0} @*/ Irp__IoStatus__Information ;
  int /*@  predicates{irpStack__Parameters__DeviceIoControl__IoControlCode!=0,irpStack__Parameters__DeviceIoControl__IoControlCode!=1,irpStack__Parameters__DeviceIoControl__IoControlCode!=10,irpStack__Parameters__DeviceIoControl__IoControlCode!=11,irpStack__Parameters__DeviceIoControl__IoControlCode!=12,irpStack__Parameters__DeviceIoControl__IoControlCode!=13,irpStack__Parameters__DeviceIoControl__IoControlCode!=15,irpStack__Parameters__DeviceIoControl__IoControlCode!=16,irpStack__Parameters__DeviceIoControl__IoControlCode!=17,irpStack__Parameters__DeviceIoControl__IoControlCode!=18,irpStack__Parameters__DeviceIoControl__IoControlCode!=19,irpStack__Parameters__DeviceIoControl__IoControlCode!=2,irpStack__Parameters__DeviceIoControl__IoControlCode!=20,irpStack__Parameters__DeviceIoControl__IoControlCode!=23,irpStack__Parameters__DeviceIoControl__IoControlCode!=3,irpStack__Parameters__DeviceIoControl__IoControlCode!=4,irpStack__Parameters__DeviceIoControl__IoControlCode!=5,irpStack__Parameters__DeviceIoControl__IoControlCode!=6,irpStack__Parameters__DeviceIoControl__IoControlCode!=7,irpStack__Parameters__DeviceIoControl__IoControlCode!=8,irpStack__Parameters__DeviceIoControl__IoControlCode!=9,irpStack__Parameters__DeviceIoControl__IoControlCode==0,irpStack__Parameters__DeviceIoControl__IoControlCode==1,irpStack__Parameters__DeviceIoControl__IoControlCode==10,irpStack__Parameters__DeviceIoControl__IoControlCode==11,irpStack__Parameters__DeviceIoControl__IoControlCode==12,irpStack__Parameters__DeviceIoControl__IoControlCode==13,irpStack__Parameters__DeviceIoControl__IoControlCode==15,irpStack__Parameters__DeviceIoControl__IoControlCode==16,irpStack__Parameters__DeviceIoControl__IoControlCode==17,irpStack__Parameters__DeviceIoControl__IoControlCode==18,irpStack__Parameters__DeviceIoControl__IoControlCode==19,irpStack__Parameters__DeviceIoControl__IoControlCode==2,irpStack__Parameters__DeviceIoControl__IoControlCode==20,irpStack__Parameters__DeviceIoControl__IoControlCode==23,irpStack__Parameters__DeviceIoControl__IoControlCode==3,irpStack__Parameters__DeviceIoControl__IoControlCode==4,irpStack__Parameters__DeviceIoControl__IoControlCode==5,irpStack__Parameters__DeviceIoControl__IoControlCode==6,irpStack__Parameters__DeviceIoControl__IoControlCode==7,irpStack__Parameters__DeviceIoControl__IoControlCode==8,irpStack__Parameters__DeviceIoControl__IoControlCode==9} @*/ irpStack__Parameters__DeviceIoControl__IoControlCode = __VERIFIER_nondet_int();
  int /*@  predicates{devExt__UpperConnectData__ClassService!=0,devExt__UpperConnectData__ClassService!=1,devExt__UpperConnectData__ClassService!=10,devExt__UpperConnectData__ClassService!=11,devExt__UpperConnectData__ClassService!=12,devExt__UpperConnectData__ClassService!=13,devExt__UpperConnectData__ClassService!=15,devExt__UpperConnectData__ClassService!=16,devExt__UpperConnectData__ClassService!=17,devExt__UpperConnectData__ClassService!=18,devExt__UpperConnectData__ClassService!=19,devExt__UpperConnectData__ClassService!=2,devExt__UpperConnectData__ClassService!=20,devExt__UpperConnectData__ClassService!=23,devExt__UpperConnectData__ClassService!=3,devExt__UpperConnectData__ClassService!=4,devExt__UpperConnectData__ClassService!=5,devExt__UpperConnectData__ClassService!=6,devExt__UpperConnectData__ClassService!=7,devExt__UpperConnectData__ClassService!=8,devExt__UpperConnectData__ClassService!=9,devExt__UpperConnectData__ClassService==0,devExt__UpperConnectData__ClassService==1,devExt__UpperConnectData__ClassService==10,devExt__UpperConnectData__ClassService==11,devExt__UpperConnectData__ClassService==12,devExt__UpperConnectData__ClassService==13,devExt__UpperConnectData__ClassService==15,devExt__UpperConnectData__ClassService==16,devExt__UpperConnectData__ClassService==17,devExt__UpperConnectData__ClassService==18,devExt__UpperConnectData__ClassService==19,devExt__UpperConnectData__ClassService==2,devExt__UpperConnectData__ClassService==20,devExt__UpperConnectData__ClassService==23,devExt__UpperConnectData__ClassService==3,devExt__UpperConnectData__ClassService==4,devExt__UpperConnectData__ClassService==5,devExt__UpperConnectData__ClassService==6,devExt__UpperConnectData__ClassService==7,devExt__UpperConnectData__ClassService==8,devExt__UpperConnectData__ClassService==9} @*/ devExt__UpperConnectData__ClassService = __VERIFIER_nondet_int();
  int /*@  predicates{irpStack__Parameters__DeviceIoControl__InputBufferLength!=0,irpStack__Parameters__DeviceIoControl__InputBufferLength!=1,irpStack__Parameters__DeviceIoControl__InputBufferLength!=10,irpStack__Parameters__DeviceIoControl__InputBufferLength!=11,irpStack__Parameters__DeviceIoControl__InputBufferLength!=12,irpStack__Parameters__DeviceIoControl__InputBufferLength!=13,irpStack__Parameters__DeviceIoControl__InputBufferLength!=15,irpStack__Parameters__DeviceIoControl__InputBufferLength!=16,irpStack__Parameters__DeviceIoControl__InputBufferLength!=17,irpStack__Parameters__DeviceIoControl__InputBufferLength!=18,irpStack__Parameters__DeviceIoControl__InputBufferLength!=19,irpStack__Parameters__DeviceIoControl__InputBufferLength!=2,irpStack__Parameters__DeviceIoControl__InputBufferLength!=20,irpStack__Parameters__DeviceIoControl__InputBufferLength!=23,irpStack__Parameters__DeviceIoControl__InputBufferLength!=3,irpStack__Parameters__DeviceIoControl__InputBufferLength!=4,irpStack__Parameters__DeviceIoControl__InputBufferLength!=5,irpStack__Parameters__DeviceIoControl__InputBufferLength!=6,irpStack__Parameters__DeviceIoControl__InputBufferLength!=7,irpStack__Parameters__DeviceIoControl__InputBufferLength!=8,irpStack__Parameters__DeviceIoControl__InputBufferLength!=9,irpStack__Parameters__DeviceIoControl__InputBufferLength==0,irpStack__Parameters__DeviceIoControl__InputBufferLength==1,irpStack__Parameters__DeviceIoControl__InputBufferLength==10,irpStack__Parameters__DeviceIoControl__InputBufferLength==11,irpStack__Parameters__DeviceIoControl__InputBufferLength==12,irpStack__Parameters__DeviceIoControl__InputBufferLength==13,irpStack__Parameters__DeviceIoControl__InputBufferLength==15,irpStack__Parameters__DeviceIoControl__InputBufferLength==16,irpStack__Parameters__DeviceIoControl__InputBufferLength==17,irpStack__Parameters__DeviceIoControl__InputBufferLength==18,irpStack__Parameters__DeviceIoControl__InputBufferLength==19,irpStack__Parameters__DeviceIoControl__InputBufferLength==2,irpStack__Parameters__DeviceIoControl__InputBufferLength==20,irpStack__Parameters__DeviceIoControl__InputBufferLength==23,irpStack__Parameters__DeviceIoControl__InputBufferLength==3,irpStack__Parameters__DeviceIoControl__InputBufferLength==4,irpStack__Parameters__DeviceIoControl__InputBufferLength==5,irpStack__Parameters__DeviceIoControl__InputBufferLength==6,irpStack__Parameters__DeviceIoControl__InputBufferLength==7,irpStack__Parameters__DeviceIoControl__InputBufferLength==8,irpStack__Parameters__DeviceIoControl__InputBufferLength==9} @*/ irpStack__Parameters__DeviceIoControl__InputBufferLength = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__CONNECT_DATA!=0,sizeof__CONNECT_DATA!=1,sizeof__CONNECT_DATA!=10,sizeof__CONNECT_DATA!=11,sizeof__CONNECT_DATA!=12,sizeof__CONNECT_DATA!=13,sizeof__CONNECT_DATA!=15,sizeof__CONNECT_DATA!=16,sizeof__CONNECT_DATA!=17,sizeof__CONNECT_DATA!=18,sizeof__CONNECT_DATA!=19,sizeof__CONNECT_DATA!=2,sizeof__CONNECT_DATA!=20,sizeof__CONNECT_DATA!=23,sizeof__CONNECT_DATA!=3,sizeof__CONNECT_DATA!=4,sizeof__CONNECT_DATA!=5,sizeof__CONNECT_DATA!=6,sizeof__CONNECT_DATA!=7,sizeof__CONNECT_DATA!=8,sizeof__CONNECT_DATA!=9,sizeof__CONNECT_DATA==0,sizeof__CONNECT_DATA==1,sizeof__CONNECT_DATA==10,sizeof__CONNECT_DATA==11,sizeof__CONNECT_DATA==12,sizeof__CONNECT_DATA==13,sizeof__CONNECT_DATA==15,sizeof__CONNECT_DATA==16,sizeof__CONNECT_DATA==17,sizeof__CONNECT_DATA==18,sizeof__CONNECT_DATA==19,sizeof__CONNECT_DATA==2,sizeof__CONNECT_DATA==20,sizeof__CONNECT_DATA==23,sizeof__CONNECT_DATA==3,sizeof__CONNECT_DATA==4,sizeof__CONNECT_DATA==5,sizeof__CONNECT_DATA==6,sizeof__CONNECT_DATA==7,sizeof__CONNECT_DATA==8,sizeof__CONNECT_DATA==9,sizeof__CONNECT_DATA>irpStack__Parameters__DeviceIoControl__InputBufferLength} @*/ sizeof__CONNECT_DATA = __VERIFIER_nondet_int();
  int /*@  predicates{irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=0,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=1,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=10,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=11,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=12,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=13,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=15,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=16,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=17,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=18,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=19,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=2,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=20,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=23,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=3,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=4,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=5,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=6,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=7,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=8,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=9,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==0,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==1,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==10,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==11,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==12,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==13,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==15,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==16,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==17,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==18,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==19,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==2,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==20,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==23,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==3,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==4,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==5,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==6,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==7,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==8,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==9} @*/ irpStack__Parameters__DeviceIoControl__Type3InputBuffer = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=0,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=1,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=10,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=11,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=12,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=13,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=15,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=16,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=17,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=18,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=19,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=2,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=20,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=23,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=3,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=4,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=5,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=6,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=7,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=8,sizeof__INTERNAL_I8042_HOOK_KEYBOARD!=9,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==0,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==1,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==10,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==11,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==12,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==13,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==15,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==16,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==17,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==18,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==19,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==2,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==20,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==23,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==3,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==4,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==5,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==6,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==7,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==8,sizeof__INTERNAL_I8042_HOOK_KEYBOARD==9,sizeof__INTERNAL_I8042_HOOK_KEYBOARD>irpStack__Parameters__DeviceIoControl__InputBufferLength} @*/ sizeof__INTERNAL_I8042_HOOK_KEYBOARD = __VERIFIER_nondet_int();
  int /*@  predicates{hookKeyboard__InitializationRoutine!=0,hookKeyboard__InitializationRoutine!=1,hookKeyboard__InitializationRoutine!=10,hookKeyboard__InitializationRoutine!=11,hookKeyboard__InitializationRoutine!=12,hookKeyboard__InitializationRoutine!=13,hookKeyboard__InitializationRoutine!=15,hookKeyboard__InitializationRoutine!=16,hookKeyboard__InitializationRoutine!=17,hookKeyboard__InitializationRoutine!=18,hookKeyboard__InitializationRoutine!=19,hookKeyboard__InitializationRoutine!=2,hookKeyboard__InitializationRoutine!=20,hookKeyboard__InitializationRoutine!=23,hookKeyboard__InitializationRoutine!=3,hookKeyboard__InitializationRoutine!=4,hookKeyboard__InitializationRoutine!=5,hookKeyboard__InitializationRoutine!=6,hookKeyboard__InitializationRoutine!=7,hookKeyboard__InitializationRoutine!=8,hookKeyboard__InitializationRoutine!=9,hookKeyboard__InitializationRoutine==0,hookKeyboard__InitializationRoutine==1,hookKeyboard__InitializationRoutine==10,hookKeyboard__InitializationRoutine==11,hookKeyboard__InitializationRoutine==12,hookKeyboard__InitializationRoutine==13,hookKeyboard__InitializationRoutine==15,hookKeyboard__InitializationRoutine==16,hookKeyboard__InitializationRoutine==17,hookKeyboard__InitializationRoutine==18,hookKeyboard__InitializationRoutine==19,hookKeyboard__InitializationRoutine==2,hookKeyboard__InitializationRoutine==20,hookKeyboard__InitializationRoutine==23,hookKeyboard__InitializationRoutine==3,hookKeyboard__InitializationRoutine==4,hookKeyboard__InitializationRoutine==5,hookKeyboard__InitializationRoutine==6,hookKeyboard__InitializationRoutine==7,hookKeyboard__InitializationRoutine==8,hookKeyboard__InitializationRoutine==9} @*/ hookKeyboard__InitializationRoutine = __VERIFIER_nondet_int();
  int /*@  predicates{hookKeyboard__IsrRoutine!=0,hookKeyboard__IsrRoutine!=1,hookKeyboard__IsrRoutine!=10,hookKeyboard__IsrRoutine!=11,hookKeyboard__IsrRoutine!=12,hookKeyboard__IsrRoutine!=13,hookKeyboard__IsrRoutine!=15,hookKeyboard__IsrRoutine!=16,hookKeyboard__IsrRoutine!=17,hookKeyboard__IsrRoutine!=18,hookKeyboard__IsrRoutine!=19,hookKeyboard__IsrRoutine!=2,hookKeyboard__IsrRoutine!=20,hookKeyboard__IsrRoutine!=23,hookKeyboard__IsrRoutine!=3,hookKeyboard__IsrRoutine!=4,hookKeyboard__IsrRoutine!=5,hookKeyboard__IsrRoutine!=6,hookKeyboard__IsrRoutine!=7,hookKeyboard__IsrRoutine!=8,hookKeyboard__IsrRoutine!=9,hookKeyboard__IsrRoutine==0,hookKeyboard__IsrRoutine==1,hookKeyboard__IsrRoutine==10,hookKeyboard__IsrRoutine==11,hookKeyboard__IsrRoutine==12,hookKeyboard__IsrRoutine==13,hookKeyboard__IsrRoutine==15,hookKeyboard__IsrRoutine==16,hookKeyboard__IsrRoutine==17,hookKeyboard__IsrRoutine==18,hookKeyboard__IsrRoutine==19,hookKeyboard__IsrRoutine==2,hookKeyboard__IsrRoutine==20,hookKeyboard__IsrRoutine==23,hookKeyboard__IsrRoutine==3,hookKeyboard__IsrRoutine==4,hookKeyboard__IsrRoutine==5,hookKeyboard__IsrRoutine==6,hookKeyboard__IsrRoutine==7,hookKeyboard__IsrRoutine==8,hookKeyboard__IsrRoutine==9} @*/ hookKeyboard__IsrRoutine = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__IoStatus__Status==(-1),Irp__IoStatus__Status==(-1073741757),Irp__IoStatus__Status==(-1073741811),Irp__IoStatus__Status==(-1073741822),Irp__IoStatus__Status==(-1073741823),Irp__IoStatus__Status==0,Irp__IoStatus__Status==1,Irp__IoStatus__Status==259} @*/ Irp__IoStatus__Status ;
  int /*@  predicates{hookKeyboard!=0,hookKeyboard!=1,hookKeyboard!=10,hookKeyboard!=11,hookKeyboard!=12,hookKeyboard!=13,hookKeyboard!=15,hookKeyboard!=16,hookKeyboard!=17,hookKeyboard!=18,hookKeyboard!=19,hookKeyboard!=2,hookKeyboard!=20,hookKeyboard!=23,hookKeyboard!=3,hookKeyboard!=4,hookKeyboard!=5,hookKeyboard!=6,hookKeyboard!=7,hookKeyboard!=8,hookKeyboard!=9,hookKeyboard==0,hookKeyboard==1,hookKeyboard==10,hookKeyboard==11,hookKeyboard==12,hookKeyboard==13,hookKeyboard==15,hookKeyboard==16,hookKeyboard==17,hookKeyboard==18,hookKeyboard==19,hookKeyboard==2,hookKeyboard==20,hookKeyboard==23,hookKeyboard==3,hookKeyboard==4,hookKeyboard==5,hookKeyboard==6,hookKeyboard==7,hookKeyboard==8,hookKeyboard==9,hookKeyboard==irpStack__Parameters__DeviceIoControl__Type3InputBuffer} @*/ hookKeyboard ;
  int /*@  predicates{connectData!=0,connectData!=1,connectData!=10,connectData!=11,connectData!=12,connectData!=13,connectData!=15,connectData!=16,connectData!=17,connectData!=18,connectData!=19,connectData!=2,connectData!=20,connectData!=23,connectData!=3,connectData!=4,connectData!=5,connectData!=6,connectData!=7,connectData!=8,connectData!=9,connectData==0,connectData==1,connectData==10,connectData==11,connectData==12,connectData==13,connectData==15,connectData==16,connectData==17,connectData==18,connectData==19,connectData==2,connectData==20,connectData==23,connectData==3,connectData==4,connectData==5,connectData==6,connectData==7,connectData==8,connectData==9,connectData==irpStack__Parameters__DeviceIoControl__Type3InputBuffer} @*/ connectData ;
  int /*@  predicates{status<0,status==(-1),status==(-1073741757),status==(-1073741811),status==(-1073741822),status==(-1073741823),status==0,status==1,status==259} @*/ status ;
  int /*@  predicates{tmp==(-1),tmp==(-1073741757),tmp==(-1073741811),tmp==(-1073741822),tmp==(-1073741823),tmp==0,tmp==1,tmp==259} @*/ tmp ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  int /*@  predicates{__cil_tmp20!=0,__cil_tmp20!=1,__cil_tmp20!=10,__cil_tmp20!=11,__cil_tmp20!=12,__cil_tmp20!=13,__cil_tmp20!=15,__cil_tmp20!=16,__cil_tmp20!=17,__cil_tmp20!=18,__cil_tmp20!=19,__cil_tmp20!=2,__cil_tmp20!=20,__cil_tmp20!=23,__cil_tmp20!=3,__cil_tmp20!=4,__cil_tmp20!=5,__cil_tmp20!=6,__cil_tmp20!=7,__cil_tmp20!=8,__cil_tmp20!=9,__cil_tmp20!=irpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp20==0,__cil_tmp20==1,__cil_tmp20==10,__cil_tmp20==11,__cil_tmp20==12,__cil_tmp20==13,__cil_tmp20==15,__cil_tmp20==16,__cil_tmp20==17,__cil_tmp20==18,__cil_tmp20==19,__cil_tmp20==2,__cil_tmp20==20,__cil_tmp20==23,__cil_tmp20==3,__cil_tmp20==4,__cil_tmp20==5,__cil_tmp20==6,__cil_tmp20==7,__cil_tmp20==8,__cil_tmp20==9,__cil_tmp20==irpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp20 = __VERIFIER_nondet_int();
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  int /*@  predicates{__cil_tmp24!=0,__cil_tmp24!=1,__cil_tmp24!=10,__cil_tmp24!=11,__cil_tmp24!=12,__cil_tmp24!=13,__cil_tmp24!=15,__cil_tmp24!=16,__cil_tmp24!=17,__cil_tmp24!=18,__cil_tmp24!=19,__cil_tmp24!=2,__cil_tmp24!=20,__cil_tmp24!=23,__cil_tmp24!=3,__cil_tmp24!=4,__cil_tmp24!=5,__cil_tmp24!=6,__cil_tmp24!=7,__cil_tmp24!=8,__cil_tmp24!=9,__cil_tmp24!=irpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp24==0,__cil_tmp24==1,__cil_tmp24==10,__cil_tmp24==11,__cil_tmp24==12,__cil_tmp24==13,__cil_tmp24==15,__cil_tmp24==16,__cil_tmp24==17,__cil_tmp24==18,__cil_tmp24==19,__cil_tmp24==2,__cil_tmp24==20,__cil_tmp24==23,__cil_tmp24==3,__cil_tmp24==4,__cil_tmp24==5,__cil_tmp24==6,__cil_tmp24==7,__cil_tmp24==8,__cil_tmp24==9,__cil_tmp24==irpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp24 = __VERIFIER_nondet_int();
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  int /*@  predicates{__cil_tmp28!=0,__cil_tmp28!=1,__cil_tmp28!=10,__cil_tmp28!=11,__cil_tmp28!=12,__cil_tmp28!=13,__cil_tmp28!=15,__cil_tmp28!=16,__cil_tmp28!=17,__cil_tmp28!=18,__cil_tmp28!=19,__cil_tmp28!=2,__cil_tmp28!=20,__cil_tmp28!=23,__cil_tmp28!=3,__cil_tmp28!=4,__cil_tmp28!=5,__cil_tmp28!=6,__cil_tmp28!=7,__cil_tmp28!=8,__cil_tmp28!=9,__cil_tmp28!=irpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp28==0,__cil_tmp28==1,__cil_tmp28==10,__cil_tmp28==11,__cil_tmp28==12,__cil_tmp28==13,__cil_tmp28==15,__cil_tmp28==16,__cil_tmp28==17,__cil_tmp28==18,__cil_tmp28==19,__cil_tmp28==2,__cil_tmp28==20,__cil_tmp28==23,__cil_tmp28==3,__cil_tmp28==4,__cil_tmp28==5,__cil_tmp28==6,__cil_tmp28==7,__cil_tmp28==8,__cil_tmp28==9,__cil_tmp28==irpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp28 = __VERIFIER_nondet_int();
  int /*@  predicates{__cil_tmp29!=0,__cil_tmp29!=1,__cil_tmp29!=10,__cil_tmp29!=11,__cil_tmp29!=12,__cil_tmp29!=13,__cil_tmp29!=15,__cil_tmp29!=16,__cil_tmp29!=17,__cil_tmp29!=18,__cil_tmp29!=19,__cil_tmp29!=2,__cil_tmp29!=20,__cil_tmp29!=23,__cil_tmp29!=3,__cil_tmp29!=4,__cil_tmp29!=5,__cil_tmp29!=6,__cil_tmp29!=7,__cil_tmp29!=8,__cil_tmp29!=9,__cil_tmp29!=irpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp29==0,__cil_tmp29==1,__cil_tmp29==10,__cil_tmp29==11,__cil_tmp29==12,__cil_tmp29==13,__cil_tmp29==15,__cil_tmp29==16,__cil_tmp29==17,__cil_tmp29==18,__cil_tmp29==19,__cil_tmp29==2,__cil_tmp29==20,__cil_tmp29==23,__cil_tmp29==3,__cil_tmp29==4,__cil_tmp29==5,__cil_tmp29==6,__cil_tmp29==7,__cil_tmp29==8,__cil_tmp29==9,__cil_tmp29==irpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp29 = __VERIFIER_nondet_int();
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  int /*@  predicates{__cil_tmp32!=0,__cil_tmp32!=1,__cil_tmp32!=10,__cil_tmp32!=11,__cil_tmp32!=12,__cil_tmp32!=13,__cil_tmp32!=15,__cil_tmp32!=16,__cil_tmp32!=17,__cil_tmp32!=18,__cil_tmp32!=19,__cil_tmp32!=2,__cil_tmp32!=20,__cil_tmp32!=23,__cil_tmp32!=3,__cil_tmp32!=4,__cil_tmp32!=5,__cil_tmp32!=6,__cil_tmp32!=7,__cil_tmp32!=8,__cil_tmp32!=9,__cil_tmp32!=irpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp32==0,__cil_tmp32==1,__cil_tmp32==10,__cil_tmp32==11,__cil_tmp32==12,__cil_tmp32==13,__cil_tmp32==15,__cil_tmp32==16,__cil_tmp32==17,__cil_tmp32==18,__cil_tmp32==19,__cil_tmp32==2,__cil_tmp32==20,__cil_tmp32==23,__cil_tmp32==3,__cil_tmp32==4,__cil_tmp32==5,__cil_tmp32==6,__cil_tmp32==7,__cil_tmp32==8,__cil_tmp32==9,__cil_tmp32==irpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp32 = __VERIFIER_nondet_int();
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  int /*@  predicates{__cil_tmp35!=0,__cil_tmp35!=1,__cil_tmp35!=10,__cil_tmp35!=11,__cil_tmp35!=12,__cil_tmp35!=13,__cil_tmp35!=15,__cil_tmp35!=16,__cil_tmp35!=17,__cil_tmp35!=18,__cil_tmp35!=19,__cil_tmp35!=2,__cil_tmp35!=20,__cil_tmp35!=23,__cil_tmp35!=3,__cil_tmp35!=4,__cil_tmp35!=5,__cil_tmp35!=6,__cil_tmp35!=7,__cil_tmp35!=8,__cil_tmp35!=9,__cil_tmp35!=irpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp35==0,__cil_tmp35==1,__cil_tmp35==10,__cil_tmp35==11,__cil_tmp35==12,__cil_tmp35==13,__cil_tmp35==15,__cil_tmp35==16,__cil_tmp35==17,__cil_tmp35==18,__cil_tmp35==19,__cil_tmp35==2,__cil_tmp35==20,__cil_tmp35==23,__cil_tmp35==3,__cil_tmp35==4,__cil_tmp35==5,__cil_tmp35==6,__cil_tmp35==7,__cil_tmp35==8,__cil_tmp35==9,__cil_tmp35==irpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp35 = __VERIFIER_nondet_int();
  int __cil_tmp36 ;
  int __cil_tmp37 ;
  int /*@  predicates{__cil_tmp38!=0,__cil_tmp38!=1,__cil_tmp38!=10,__cil_tmp38!=11,__cil_tmp38!=12,__cil_tmp38!=13,__cil_tmp38!=15,__cil_tmp38!=16,__cil_tmp38!=17,__cil_tmp38!=18,__cil_tmp38!=19,__cil_tmp38!=2,__cil_tmp38!=20,__cil_tmp38!=23,__cil_tmp38!=3,__cil_tmp38!=4,__cil_tmp38!=5,__cil_tmp38!=6,__cil_tmp38!=7,__cil_tmp38!=8,__cil_tmp38!=9,__cil_tmp38!=irpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp38==0,__cil_tmp38==1,__cil_tmp38==10,__cil_tmp38==11,__cil_tmp38==12,__cil_tmp38==13,__cil_tmp38==15,__cil_tmp38==16,__cil_tmp38==17,__cil_tmp38==18,__cil_tmp38==19,__cil_tmp38==2,__cil_tmp38==20,__cil_tmp38==23,__cil_tmp38==3,__cil_tmp38==4,__cil_tmp38==5,__cil_tmp38==6,__cil_tmp38==7,__cil_tmp38==8,__cil_tmp38==9,__cil_tmp38==irpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp38 = __VERIFIER_nondet_int();
  int __cil_tmp39 ;
  int __cil_tmp40 ;
  int /*@  predicates{__cil_tmp41!=0,__cil_tmp41!=1,__cil_tmp41!=10,__cil_tmp41!=11,__cil_tmp41!=12,__cil_tmp41!=13,__cil_tmp41!=15,__cil_tmp41!=16,__cil_tmp41!=17,__cil_tmp41!=18,__cil_tmp41!=19,__cil_tmp41!=2,__cil_tmp41!=20,__cil_tmp41!=23,__cil_tmp41!=3,__cil_tmp41!=4,__cil_tmp41!=5,__cil_tmp41!=6,__cil_tmp41!=7,__cil_tmp41!=8,__cil_tmp41!=9,__cil_tmp41!=irpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp41==0,__cil_tmp41==1,__cil_tmp41==10,__cil_tmp41==11,__cil_tmp41==12,__cil_tmp41==13,__cil_tmp41==15,__cil_tmp41==16,__cil_tmp41==17,__cil_tmp41==18,__cil_tmp41==19,__cil_tmp41==2,__cil_tmp41==20,__cil_tmp41==23,__cil_tmp41==3,__cil_tmp41==4,__cil_tmp41==5,__cil_tmp41==6,__cil_tmp41==7,__cil_tmp41==8,__cil_tmp41==9,__cil_tmp41==irpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp41 = __VERIFIER_nondet_int();
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  int /*@  predicates{__cil_tmp44!=0,__cil_tmp44!=1,__cil_tmp44!=10,__cil_tmp44!=11,__cil_tmp44!=12,__cil_tmp44!=13,__cil_tmp44!=15,__cil_tmp44!=16,__cil_tmp44!=17,__cil_tmp44!=18,__cil_tmp44!=19,__cil_tmp44!=2,__cil_tmp44!=20,__cil_tmp44!=23,__cil_tmp44!=3,__cil_tmp44!=4,__cil_tmp44!=5,__cil_tmp44!=6,__cil_tmp44!=7,__cil_tmp44!=8,__cil_tmp44!=9,__cil_tmp44!=irpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp44==0,__cil_tmp44==1,__cil_tmp44==10,__cil_tmp44==11,__cil_tmp44==12,__cil_tmp44==13,__cil_tmp44==15,__cil_tmp44==16,__cil_tmp44==17,__cil_tmp44==18,__cil_tmp44==19,__cil_tmp44==2,__cil_tmp44==20,__cil_tmp44==23,__cil_tmp44==3,__cil_tmp44==4,__cil_tmp44==5,__cil_tmp44==6,__cil_tmp44==7,__cil_tmp44==8,__cil_tmp44==9,__cil_tmp44==irpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp44 = __VERIFIER_nondet_int();
  int __cil_tmp45 ;

  {
  status = 0;
  Irp__IoStatus__Information = 0;
  {




  if(irpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp20){
    goto switch_7_exp_0;
  } else {
    {




    if(irpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp24){
      goto switch_7_exp_1;
    } else {
      {




      if(irpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp28){
        goto switch_7_exp_2;
      } else {
        {

        if(irpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp29){
          goto switch_7_exp_3;
        } else {
          {



          if(irpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp32){
            goto switch_7_exp_4;
          } else {
            {



            if(irpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp35){
              goto switch_7_exp_5;
            } else {
              {



              if(irpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp38){
                goto switch_7_exp_6;
              } else {
                {



                if(irpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp41){
                  goto switch_7_exp_7;
                } else {
                  {



                  if(irpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp44){
                    goto switch_7_exp_8;
                  } else {
                    if(0){
                      switch_7_exp_0: ;
                      if(devExt__UpperConnectData__ClassService != 0){
                        status = -1073741757;
                        goto switch_7_break;
                      } else {
                        if(irpStack__Parameters__DeviceIoControl__InputBufferLength < sizeof__CONNECT_DATA){
                          status = -1073741811;
                          goto switch_7_break;
                        }
                      }
                      connectData = irpStack__Parameters__DeviceIoControl__Type3InputBuffer;
                      goto switch_7_break;
                      switch_7_exp_1:
                      status = -1073741822;
                      goto switch_7_break;
                      switch_7_exp_2: ;
                      if(irpStack__Parameters__DeviceIoControl__InputBufferLength < sizeof__INTERNAL_I8042_HOOK_KEYBOARD){
                        status = -1073741811;
                        goto switch_7_break;
                      }
                      hookKeyboard = irpStack__Parameters__DeviceIoControl__Type3InputBuffer;
                      if(hookKeyboard__InitializationRoutine){

                      }
                      if(hookKeyboard__IsrRoutine){

                      }
                      status = 0;
                      goto switch_7_break;
                      switch_7_exp_3: ;
                      switch_7_exp_4: ;
                      switch_7_exp_5: ;
                      switch_7_exp_6: ;
                      switch_7_exp_7: ;
                      switch_7_exp_8: ;
                      goto switch_7_break;
                    } else {
                      switch_7_break: ;
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
  {
  if(status < 0){
    {
    Irp__IoStatus__Status = status;
    myStatus = status;
    IofCompleteRequest(Irp, 0);
    }
    return(status);
  }
  }
  {
  tmp = KbFilter_DispatchPassThrough(DeviceObject, Irp);
  }
  return(tmp);
}
}

void errorFn(void)
{

  {
 __VERIFIER_error();
  return;
}
}
