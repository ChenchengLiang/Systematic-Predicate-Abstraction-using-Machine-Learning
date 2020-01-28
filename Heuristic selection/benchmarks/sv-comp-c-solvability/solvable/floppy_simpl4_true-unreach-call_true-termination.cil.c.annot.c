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

void errorFn(void);
void IofCompleteRequest(int /*@  predicates{Irp!=0,Irp!=1,Irp!=2,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp==0,Irp==1,Irp==2,Irp==3,Irp==4,Irp==5,Irp==6} predicates_tpl{0==0} @*/ Irp , int /*@  predicates{PriorityBoost==0} @*/ PriorityBoost);
extern int __VERIFIER_nondet_int();
int /*@  predicates{FloppyThread==0} @*/ FloppyThread ;
int /*@  predicates{KernelMode==0} @*/ KernelMode ;
int /*@  predicates{Suspended==0} @*/ Suspended ;
int /*@  predicates{Executive==0} @*/ Executive ;
int /*@  predicates{DiskController==0} @*/ DiskController ;
int /*@  predicates{FloppyDiskPeripheral==0} @*/ FloppyDiskPeripheral ;
int /*@  predicates{FlConfigCallBack==0} @*/ FlConfigCallBack ;
int /*@  predicates{MaximumInterfaceType<=0,MaximumInterfaceType==0} @*/ MaximumInterfaceType ;
int /*@  predicates{MOUNTDEV_MOUNTED_DEVICE_GUID==0} @*/ MOUNTDEV_MOUNTED_DEVICE_GUID ;
int /*@  predicates{myStatus==(-1),myStatus==(-1073741101),myStatus==(-1073741637),myStatus==(-1073741670),myStatus==(-1073741738),myStatus==(-1073741789),myStatus==(-1073741811),myStatus==(-1073741823),myStatus==(-2147483643),myStatus==0,myStatus==1,myStatus==259} @*/ myStatus ;
int /*@  predicates{s==0,s==1,s==2,s==3,s==4,s==5,s==6,s==7} @*/ s ;
int /*@  predicates{UNLOADED!=s,UNLOADED==0,UNLOADED==1,UNLOADED==2,UNLOADED==3,UNLOADED==4,UNLOADED==5,UNLOADED==6,UNLOADED==7} @*/ UNLOADED ;
int /*@  predicates{NP==0,NP==1,NP==2,NP==3,NP==4,NP==5,NP==6,NP==7,NP==s} @*/ NP ;
int /*@  predicates{DC!=s,DC==0,DC==1,DC==2,DC==3,DC==4,DC==5,DC==6,DC==7} @*/ DC ;
int /*@  predicates{SKIP1==0,SKIP1==1,SKIP1==2,SKIP1==3,SKIP1==4,SKIP1==5,SKIP1==6,SKIP1==7} @*/ SKIP1 ;
int /*@  predicates{SKIP2!=s,SKIP2==0,SKIP2==1,SKIP2==2,SKIP2==3,SKIP2==4,SKIP2==5,SKIP2==6,SKIP2==7} @*/ SKIP2 ;
int /*@  predicates{MPR1==0,MPR1==1,MPR1==2,MPR1==3,MPR1==4,MPR1==5,MPR1==6,MPR1==7} @*/ MPR1 ;
int /*@  predicates{MPR3==0,MPR3==1,MPR3==2,MPR3==3,MPR3==4,MPR3==5,MPR3==6,MPR3==7,MPR3==s} @*/ MPR3 ;
int /*@  predicates{IPC!=s,IPC==0,IPC==1,IPC==2,IPC==3,IPC==4,IPC==5,IPC==6,IPC==7} @*/ IPC ;
int /*@  predicates{pended==(-1),pended==(-1073741101),pended==(-1073741637),pended==(-1073741670),pended==(-1073741738),pended==(-1073741789),pended==(-1073741811),pended==(-1073741823),pended==(-2147483643),pended==0,pended==1,pended==259} @*/ pended ;
int /*@  predicates{compRegistered!=0,compRegistered==(-1),compRegistered==(-1073741101),compRegistered==(-1073741637),compRegistered==(-1073741670),compRegistered==(-1073741738),compRegistered==(-1073741789),compRegistered==(-1073741811),compRegistered==(-1073741823),compRegistered==(-2147483643),compRegistered==0,compRegistered==1,compRegistered==259} @*/ compRegistered ;
int /*@  predicates{lowerDriverReturn==(-1),lowerDriverReturn==(-1073741101),lowerDriverReturn==(-1073741637),lowerDriverReturn==(-1073741670),lowerDriverReturn==(-1073741738),lowerDriverReturn==(-1073741789),lowerDriverReturn==(-1073741811),lowerDriverReturn==(-1073741823),lowerDriverReturn==(-2147483643),lowerDriverReturn==0,lowerDriverReturn==1,lowerDriverReturn==259} @*/ lowerDriverReturn ;
int /*@  predicates{setEventCalled==(-1),setEventCalled==(-1073741101),setEventCalled==(-1073741637),setEventCalled==(-1073741670),setEventCalled==(-1073741738),setEventCalled==(-1073741789),setEventCalled==(-1073741811),setEventCalled==(-1073741823),setEventCalled==(-2147483643),setEventCalled==0,setEventCalled==1,setEventCalled==259} @*/ setEventCalled ;
int /*@  predicates{customIrp==(-1),customIrp==(-1073741101),customIrp==(-1073741637),customIrp==(-1073741670),customIrp==(-1073741738),customIrp==(-1073741789),customIrp==(-1073741811),customIrp==(-1073741823),customIrp==(-2147483643),customIrp==0,customIrp==1,customIrp==259} @*/ customIrp ;

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
  compRegistered = 0;
  lowerDriverReturn = 0;
  setEventCalled = 0;
  customIrp = 0;
  return;
}
}
int /*@  predicates{PagingReferenceCount==0,PagingReferenceCount==1} @*/ PagingReferenceCount = 0;
int PagingMutex = 0;
int FlAcpiConfigureFloppy(int /*@  predicates{DisketteExtension!=0,DisketteExtension!=1,DisketteExtension!=2,DisketteExtension!=3,DisketteExtension!=4,DisketteExtension!=5,DisketteExtension!=6,DisketteExtension==0,DisketteExtension==1,DisketteExtension==2,DisketteExtension==3,DisketteExtension==4,DisketteExtension==5,DisketteExtension==6} @*/ DisketteExtension , int /*@  predicates{FdcInfo!=0,FdcInfo!=1,FdcInfo!=2,FdcInfo!=3,FdcInfo!=4,FdcInfo!=5,FdcInfo!=6,FdcInfo==0,FdcInfo==1,FdcInfo==2,FdcInfo==3,FdcInfo==4,FdcInfo==5,FdcInfo==6} @*/ FdcInfo)
{

  {
  return(0);
}
}
int FlQueueIrpToThread(int /*@  predicates{Irp!=0,Irp!=1,Irp!=2,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp==0,Irp==1,Irp==2,Irp==3,Irp==4,Irp==5,Irp==6} @*/ Irp , int /*@  predicates{DisketteExtension!=0,DisketteExtension!=1,DisketteExtension!=2,DisketteExtension!=3,DisketteExtension!=4,DisketteExtension!=5,DisketteExtension!=6,DisketteExtension==0,DisketteExtension==1,DisketteExtension==2,DisketteExtension==3,DisketteExtension==4,DisketteExtension==5,DisketteExtension==6} @*/ DisketteExtension)
{ int /*@  predicates{status<0,status==(-1),status==(-1073741101),status==(-1073741637),status==(-1073741670),status==(-1073741738),status==(-1073741789),status==(-1073741811),status==(-1073741823),status==(-2147483643),status==0,status==1,status==259} @*/ status ;
  int /*@  predicates{threadHandle!=0,threadHandle!=1,threadHandle!=2,threadHandle!=3,threadHandle!=4,threadHandle!=5,threadHandle!=6,threadHandle==0,threadHandle==1,threadHandle==2,threadHandle==3,threadHandle==4,threadHandle==5,threadHandle==6} @*/ threadHandle = __VERIFIER_nondet_int();
  int /*@  predicates{DisketteExtension__PoweringDown!=0,DisketteExtension__PoweringDown!=1,DisketteExtension__PoweringDown!=2,DisketteExtension__PoweringDown!=3,DisketteExtension__PoweringDown!=4,DisketteExtension__PoweringDown!=5,DisketteExtension__PoweringDown!=6,DisketteExtension__PoweringDown==0,DisketteExtension__PoweringDown==1,DisketteExtension__PoweringDown==2,DisketteExtension__PoweringDown==3,DisketteExtension__PoweringDown==4,DisketteExtension__PoweringDown==5,DisketteExtension__PoweringDown==6} @*/ DisketteExtension__PoweringDown = __VERIFIER_nondet_int();
  int /*@  predicates{DisketteExtension__ThreadReferenceCount==0} @*/ DisketteExtension__ThreadReferenceCount = __VERIFIER_nondet_int();
  int /*@  predicates{DisketteExtension__FloppyThread!=0,DisketteExtension__FloppyThread!=1,DisketteExtension__FloppyThread!=2,DisketteExtension__FloppyThread!=3,DisketteExtension__FloppyThread!=4,DisketteExtension__FloppyThread!=5,DisketteExtension__FloppyThread!=6,DisketteExtension__FloppyThread==0,DisketteExtension__FloppyThread==1,DisketteExtension__FloppyThread==2,DisketteExtension__FloppyThread==3,DisketteExtension__FloppyThread==4,DisketteExtension__FloppyThread==5,DisketteExtension__FloppyThread==6} @*/ DisketteExtension__FloppyThread = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__IoStatus__Status==(-1073741101)} @*/ Irp__IoStatus__Status ;
  int /*@  predicates{Irp__IoStatus__Information==0} @*/ Irp__IoStatus__Information ;
  int Irp__Tail__Overlay__CurrentStackLocation__Control ;
  int /*@  predicates{ObjAttributes!=0,ObjAttributes!=1,ObjAttributes!=2,ObjAttributes!=3,ObjAttributes!=4,ObjAttributes!=5,ObjAttributes!=6,ObjAttributes==0,ObjAttributes==1,ObjAttributes==2,ObjAttributes==3,ObjAttributes==4,ObjAttributes==5,ObjAttributes==6} @*/ ObjAttributes = __VERIFIER_nondet_int();
  int __cil_tmp12 ;
  int __cil_tmp13 ;

  {
  if(DisketteExtension__PoweringDown == 1){
    myStatus = -1073741101;
    Irp__IoStatus__Status = -1073741101;
    Irp__IoStatus__Information = 0;
    return(-1073741101);
  }
  DisketteExtension__ThreadReferenceCount ++;
  if(DisketteExtension__ThreadReferenceCount == 0){
    DisketteExtension__ThreadReferenceCount ++;
    PagingReferenceCount ++;
    if(PagingReferenceCount == 1){

    }
    {
    status = PsCreateSystemThread(threadHandle, 0, ObjAttributes, 0, 0, FloppyThread,
                                  DisketteExtension);
    }
    {
    if(status < 0){
      DisketteExtension__ThreadReferenceCount = -1;
      PagingReferenceCount --;
      if(PagingReferenceCount == 0){

      }
      return(status);
    }
    }
    {
    status = ObReferenceObjectByHandle(threadHandle, 1048576, 0, KernelMode, DisketteExtension__FloppyThread,
                                       0);
    ZwClose(threadHandle);
    }
    {
    if(status < 0){
      return(status);
    }
    }
  }

  if(pended == 0){
    pended = 1;
  } else {
    {
    errorFn();
    }
  }
  return(259);
}
}
int FloppyPnp(int /*@  predicates{DeviceObject!=0,DeviceObject!=1,DeviceObject!=2,DeviceObject!=3,DeviceObject!=4,DeviceObject!=5,DeviceObject!=6,DeviceObject==0,DeviceObject==1,DeviceObject==2,DeviceObject==3,DeviceObject==4,DeviceObject==5,DeviceObject==6} @*/ DeviceObject , int /*@  predicates{Irp!=0,Irp!=1,Irp!=2,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp==0,Irp==1,Irp==2,Irp==3,Irp==4,Irp==5,Irp==6} @*/ Irp)
{ int /*@  predicates{DeviceObject__DeviceExtension!=0,DeviceObject__DeviceExtension!=1,DeviceObject__DeviceExtension!=2,DeviceObject__DeviceExtension!=3,DeviceObject__DeviceExtension!=4,DeviceObject__DeviceExtension!=5,DeviceObject__DeviceExtension!=6,DeviceObject__DeviceExtension==0,DeviceObject__DeviceExtension==1,DeviceObject__DeviceExtension==2,DeviceObject__DeviceExtension==3,DeviceObject__DeviceExtension==4,DeviceObject__DeviceExtension==5,DeviceObject__DeviceExtension==6} @*/ DeviceObject__DeviceExtension = __VERIFIER_nondet_int();
  int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__IoStatus__Information==0} @*/ Irp__IoStatus__Information ;
  int /*@  predicates{Irp__IoStatus__Status==(-1),Irp__IoStatus__Status==(-1073741101),Irp__IoStatus__Status==(-1073741637),Irp__IoStatus__Status==(-1073741670),Irp__IoStatus__Status==(-1073741738),Irp__IoStatus__Status==(-1073741789),Irp__IoStatus__Status==(-1073741811),Irp__IoStatus__Status==(-1073741823),Irp__IoStatus__Status==(-2147483643),Irp__IoStatus__Status==0,Irp__IoStatus__Status==1,Irp__IoStatus__Status==259} @*/ Irp__IoStatus__Status ;
  int Irp__CurrentLocation = __VERIFIER_nondet_int();
  int /*@  predicates{disketteExtension__IsRemoved!=0,disketteExtension__IsRemoved!=1,disketteExtension__IsRemoved!=2,disketteExtension__IsRemoved!=3,disketteExtension__IsRemoved!=4,disketteExtension__IsRemoved!=5,disketteExtension__IsRemoved!=6,disketteExtension__IsRemoved==0,disketteExtension__IsRemoved==1,disketteExtension__IsRemoved==2,disketteExtension__IsRemoved==3,disketteExtension__IsRemoved==4,disketteExtension__IsRemoved==5,disketteExtension__IsRemoved==6} @*/ disketteExtension__IsRemoved = __VERIFIER_nondet_int();
  int /*@  predicates{disketteExtension__IsStarted!=0,disketteExtension__IsStarted!=1,disketteExtension__IsStarted!=2,disketteExtension__IsStarted!=3,disketteExtension__IsStarted!=4,disketteExtension__IsStarted!=5,disketteExtension__IsStarted!=6,disketteExtension__IsStarted==0,disketteExtension__IsStarted==1,disketteExtension__IsStarted==2,disketteExtension__IsStarted==3,disketteExtension__IsStarted==4,disketteExtension__IsStarted==5,disketteExtension__IsStarted==6} @*/ disketteExtension__IsStarted = __VERIFIER_nondet_int();
  int /*@  predicates{disketteExtension__TargetObject!=0,disketteExtension__TargetObject!=1,disketteExtension__TargetObject!=2,disketteExtension__TargetObject!=3,disketteExtension__TargetObject!=4,disketteExtension__TargetObject!=5,disketteExtension__TargetObject!=6,disketteExtension__TargetObject==0,disketteExtension__TargetObject==1,disketteExtension__TargetObject==2,disketteExtension__TargetObject==3,disketteExtension__TargetObject==4,disketteExtension__TargetObject==5,disketteExtension__TargetObject==6} @*/ disketteExtension__TargetObject = __VERIFIER_nondet_int();
  int /*@  predicates{disketteExtension__HoldNewRequests==0,disketteExtension__HoldNewRequests==1} @*/ disketteExtension__HoldNewRequests ;
  int /*@  predicates{disketteExtension__FloppyThread!=0,disketteExtension__FloppyThread!=1,disketteExtension__FloppyThread!=2,disketteExtension__FloppyThread!=3,disketteExtension__FloppyThread!=4,disketteExtension__FloppyThread!=5,disketteExtension__FloppyThread!=6,disketteExtension__FloppyThread==0,disketteExtension__FloppyThread==1,disketteExtension__FloppyThread==2,disketteExtension__FloppyThread==3,disketteExtension__FloppyThread==4,disketteExtension__FloppyThread==5,disketteExtension__FloppyThread==6} @*/ disketteExtension__FloppyThread = __VERIFIER_nondet_int();
  int /*@  predicates{disketteExtension__InterfaceString__Buffer!=0,disketteExtension__InterfaceString__Buffer!=1,disketteExtension__InterfaceString__Buffer!=2,disketteExtension__InterfaceString__Buffer!=3,disketteExtension__InterfaceString__Buffer!=4,disketteExtension__InterfaceString__Buffer!=5,disketteExtension__InterfaceString__Buffer!=6,disketteExtension__InterfaceString__Buffer==0,disketteExtension__InterfaceString__Buffer==1,disketteExtension__InterfaceString__Buffer==2,disketteExtension__InterfaceString__Buffer==3,disketteExtension__InterfaceString__Buffer==4,disketteExtension__InterfaceString__Buffer==5,disketteExtension__InterfaceString__Buffer==6} @*/ disketteExtension__InterfaceString__Buffer = __VERIFIER_nondet_int();
  int /*@  predicates{disketteExtension__InterfaceString!=0,disketteExtension__InterfaceString!=1,disketteExtension__InterfaceString!=2,disketteExtension__InterfaceString!=3,disketteExtension__InterfaceString!=4,disketteExtension__InterfaceString!=5,disketteExtension__InterfaceString!=6,disketteExtension__InterfaceString==0,disketteExtension__InterfaceString==1,disketteExtension__InterfaceString==2,disketteExtension__InterfaceString==3,disketteExtension__InterfaceString==4,disketteExtension__InterfaceString==5,disketteExtension__InterfaceString==6} @*/ disketteExtension__InterfaceString = __VERIFIER_nondet_int();
  int /*@  predicates{disketteExtension__ArcName__Length!=0,disketteExtension__ArcName__Length!=1,disketteExtension__ArcName__Length!=2,disketteExtension__ArcName__Length!=3,disketteExtension__ArcName__Length!=4,disketteExtension__ArcName__Length!=5,disketteExtension__ArcName__Length!=6,disketteExtension__ArcName__Length==0,disketteExtension__ArcName__Length==1,disketteExtension__ArcName__Length==2,disketteExtension__ArcName__Length==3,disketteExtension__ArcName__Length==4,disketteExtension__ArcName__Length==5,disketteExtension__ArcName__Length==6} @*/ disketteExtension__ArcName__Length = __VERIFIER_nondet_int();
  int /*@  predicates{disketteExtension__ArcName!=0,disketteExtension__ArcName!=1,disketteExtension__ArcName!=2,disketteExtension__ArcName!=3,disketteExtension__ArcName!=4,disketteExtension__ArcName!=5,disketteExtension__ArcName!=6,disketteExtension__ArcName==0,disketteExtension__ArcName==1,disketteExtension__ArcName==2,disketteExtension__ArcName==3,disketteExtension__ArcName==4,disketteExtension__ArcName==5,disketteExtension__ArcName==6} @*/ disketteExtension__ArcName = __VERIFIER_nondet_int();
  int /*@  predicates{irpSp__MinorFunction!=0,irpSp__MinorFunction!=1,irpSp__MinorFunction!=2,irpSp__MinorFunction!=3,irpSp__MinorFunction!=4,irpSp__MinorFunction!=5,irpSp__MinorFunction!=6,irpSp__MinorFunction==0,irpSp__MinorFunction==1,irpSp__MinorFunction==2,irpSp__MinorFunction==3,irpSp__MinorFunction==4,irpSp__MinorFunction==5,irpSp__MinorFunction==6} @*/ irpSp__MinorFunction = __VERIFIER_nondet_int();
  int IoGetConfigurationInformation__FloppyCount = __VERIFIER_nondet_int();
  int irpSp ;
  int /*@  predicates{disketteExtension!=0,disketteExtension!=1,disketteExtension!=2,disketteExtension!=3,disketteExtension!=4,disketteExtension!=5,disketteExtension!=6,disketteExtension==0,disketteExtension==1,disketteExtension==2,disketteExtension==3,disketteExtension==4,disketteExtension==5,disketteExtension==6,disketteExtension==DeviceObject__DeviceExtension} @*/ disketteExtension ;
  int /*@  predicates{ntStatus==(-1),ntStatus==(-1073741101),ntStatus==(-1073741637),ntStatus==(-1073741670),ntStatus==(-1073741738),ntStatus==(-1073741789),ntStatus==(-1073741811),ntStatus==(-1073741823),ntStatus==(-2147483643),ntStatus==0,ntStatus==1,ntStatus==259} @*/ ntStatus ;
  int /*@  predicates{doneEvent!=0,doneEvent!=1,doneEvent!=2,doneEvent!=3,doneEvent!=4,doneEvent!=5,doneEvent!=6,doneEvent==0,doneEvent==1,doneEvent==2,doneEvent==3,doneEvent==4,doneEvent==5,doneEvent==6} @*/ doneEvent = __VERIFIER_nondet_int();
  int irpSp___0 ;
  int nextIrpSp ;
  int /*@  predicates{nextIrpSp__Control==0} @*/ nextIrpSp__Control ;
  int irpSp___1 ;
  int /*@  predicates{irpSp__Context!=0,irpSp__Context!=1,irpSp__Context!=2,irpSp__Context!=3,irpSp__Context!=4,irpSp__Context!=5,irpSp__Context!=6,irpSp__Context==0,irpSp__Context==1,irpSp__Context==2,irpSp__Context==3,irpSp__Context==4,irpSp__Context==5,irpSp__Context==6,irpSp__Context==doneEvent} @*/ irpSp__Context ;
  int /*@  predicates{irpSp__Control==224} @*/ irpSp__Control ;
  long __cil_tmp29 ;
  long __cil_tmp30 ;

  {
  ntStatus = 0;
  PagingReferenceCount ++;
  if(PagingReferenceCount == 1){

  }
  disketteExtension = DeviceObject__DeviceExtension;
  irpSp = Irp__Tail__Overlay__CurrentStackLocation;
  if(disketteExtension__IsRemoved){
    {
    Irp__IoStatus__Information = 0;
    Irp__IoStatus__Status = -1073741738;
    myStatus = -1073741738;
    IofCompleteRequest(Irp, 0);
    }
    return(-1073741738);
  }
  if(irpSp__MinorFunction == 0){
    goto switch_0_0;
  } else {
    if(irpSp__MinorFunction == 5){
      goto switch_0_5;
    } else {
      if(irpSp__MinorFunction == 1){
        goto switch_0_5;
      } else {
        if(irpSp__MinorFunction == 6){
          goto switch_0_6;
        } else {
          if(irpSp__MinorFunction == 3){
            goto switch_0_6;
          } else {
            if(irpSp__MinorFunction == 4){
              goto switch_0_4;
            } else {
              if(irpSp__MinorFunction == 2){
                goto switch_0_2;
              } else {
                goto switch_0_default;
                if(0){
                  switch_0_0:
                  {
                  ntStatus = FloppyStartDevice(DeviceObject, Irp);
                  }
                  goto switch_0_break;
                  switch_0_5:
                  if(irpSp__MinorFunction == 5){

                  }
                  if(! disketteExtension__IsStarted){
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
                    ntStatus = IofCallDriver(disketteExtension__TargetObject, Irp);
                    }
                    return(ntStatus);
                  }
                  {
                  disketteExtension__HoldNewRequests = 1;
                  ntStatus = FlQueueIrpToThread(Irp, disketteExtension);
                  }
                  {
                  __cil_tmp29 =(long)ntStatus;
                  if(__cil_tmp29 == 259L){
                    {
                    KeWaitForSingleObject(disketteExtension__FloppyThread, Executive,
                                          KernelMode, 0, 0);
                    }
                    if(disketteExtension__FloppyThread != 0){

                    }
                    disketteExtension__FloppyThread = 0;
                    Irp__IoStatus__Status = 0;
                    myStatus = 0;
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
                    ntStatus = IofCallDriver(disketteExtension__TargetObject, Irp);
                    }
                  } else {
                    {
                    ntStatus = -1073741823;
                    Irp__IoStatus__Status = ntStatus;
                    myStatus = ntStatus;
                    Irp__IoStatus__Information = 0;
                    IofCompleteRequest(Irp, 0);
                    }
                  }
                  }
                  goto switch_0_break;
                  switch_0_6:
                  if(irpSp__MinorFunction == 6){

                  }
                  if(! disketteExtension__IsStarted){
                    Irp__IoStatus__Status = 0;
                    myStatus = 0;
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
                    ntStatus = IofCallDriver(disketteExtension__TargetObject, Irp);
                    }
                  } else {
                    Irp__IoStatus__Status = 0;
                    myStatus = 0;
                    irpSp___0 = Irp__Tail__Overlay__CurrentStackLocation;
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
                    irpSp___1 = Irp__Tail__Overlay__CurrentStackLocation - 1;
                    irpSp__Context = doneEvent;
                    irpSp__Control = 224;
                    ntStatus = IofCallDriver(disketteExtension__TargetObject, Irp);
                    }
                    {
                    __cil_tmp30 =(long)ntStatus;
                    if(__cil_tmp30 == 259L){
                      {
                      KeWaitForSingleObject(doneEvent, Executive, KernelMode, 0, 0);
                      ntStatus = myStatus;
                      }
                    }
                    }
                    {
                    disketteExtension__HoldNewRequests = 0;
                    Irp__IoStatus__Status = ntStatus;
                    myStatus = ntStatus;
                    Irp__IoStatus__Information = 0;
                    IofCompleteRequest(Irp, 0);
                    }
                  }
                  goto switch_0_break;
                  switch_0_4:
                  disketteExtension__IsStarted = 0;
                  Irp__IoStatus__Status = 0;
                  myStatus = 0;
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
                  ntStatus = IofCallDriver(disketteExtension__TargetObject, Irp);
                  }
                  goto switch_0_break;
                  switch_0_2:
                  disketteExtension__HoldNewRequests = 0;
                  disketteExtension__IsStarted = 0;
                  disketteExtension__IsRemoved = 1;
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
                  Irp__IoStatus__Status = 0;
                  myStatus = 0;
                  ntStatus = IofCallDriver(disketteExtension__TargetObject, Irp);
                  }
                  if(disketteExtension__InterfaceString__Buffer != 0){
                    {
                    IoSetDeviceInterfaceState(disketteExtension__InterfaceString,
                                              0);
                    }
                  }
                  if(disketteExtension__ArcName__Length != 0){
                    {
                    IoDeleteSymbolicLink(disketteExtension__ArcName);
                    }
                  }
                  IoGetConfigurationInformation__FloppyCount --;
                  goto switch_0_break;
                  switch_0_default: ;
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
                  ntStatus = IofCallDriver(disketteExtension__TargetObject, Irp);
                  }
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
  PagingReferenceCount --;
  if(PagingReferenceCount == 0){

  }
  return(ntStatus);
}
}
int FloppyStartDevice(int /*@  predicates{DeviceObject!=0,DeviceObject!=1,DeviceObject!=2,DeviceObject!=3,DeviceObject!=4,DeviceObject!=5,DeviceObject!=6,DeviceObject==0,DeviceObject==1,DeviceObject==2,DeviceObject==3,DeviceObject==4,DeviceObject==5,DeviceObject==6} @*/ DeviceObject , int /*@  predicates{Irp!=0,Irp!=1,Irp!=2,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp==0,Irp==1,Irp==2,Irp==3,Irp==4,Irp==5,Irp==6} @*/ Irp)
{ int /*@  predicates{DeviceObject__DeviceExtension!=0,DeviceObject__DeviceExtension!=1,DeviceObject__DeviceExtension!=2,DeviceObject__DeviceExtension!=3,DeviceObject__DeviceExtension!=4,DeviceObject__DeviceExtension!=5,DeviceObject__DeviceExtension!=6,DeviceObject__DeviceExtension==0,DeviceObject__DeviceExtension==1,DeviceObject__DeviceExtension==2,DeviceObject__DeviceExtension==3,DeviceObject__DeviceExtension==4,DeviceObject__DeviceExtension==5,DeviceObject__DeviceExtension==6} @*/ DeviceObject__DeviceExtension = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__Tail__Overlay__CurrentStackLocation!=0,Irp__Tail__Overlay__CurrentStackLocation!=1,Irp__Tail__Overlay__CurrentStackLocation!=2,Irp__Tail__Overlay__CurrentStackLocation!=3,Irp__Tail__Overlay__CurrentStackLocation!=4,Irp__Tail__Overlay__CurrentStackLocation!=5,Irp__Tail__Overlay__CurrentStackLocation!=6,Irp__Tail__Overlay__CurrentStackLocation==0,Irp__Tail__Overlay__CurrentStackLocation==1,Irp__Tail__Overlay__CurrentStackLocation==2,Irp__Tail__Overlay__CurrentStackLocation==3,Irp__Tail__Overlay__CurrentStackLocation==4,Irp__Tail__Overlay__CurrentStackLocation==5,Irp__Tail__Overlay__CurrentStackLocation==6} @*/ Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__IoStatus__Status==(-1),Irp__IoStatus__Status==(-1073741101),Irp__IoStatus__Status==(-1073741637),Irp__IoStatus__Status==(-1073741670),Irp__IoStatus__Status==(-1073741738),Irp__IoStatus__Status==(-1073741789),Irp__IoStatus__Status==(-1073741811),Irp__IoStatus__Status==(-1073741823),Irp__IoStatus__Status==(-2147483643),Irp__IoStatus__Status==0,Irp__IoStatus__Status==1,Irp__IoStatus__Status==259} @*/ Irp__IoStatus__Status ;
  int /*@  predicates{disketteExtension__TargetObject!=0,disketteExtension__TargetObject!=1,disketteExtension__TargetObject!=2,disketteExtension__TargetObject!=3,disketteExtension__TargetObject!=4,disketteExtension__TargetObject!=5,disketteExtension__TargetObject!=6,disketteExtension__TargetObject==0,disketteExtension__TargetObject==1,disketteExtension__TargetObject==2,disketteExtension__TargetObject==3,disketteExtension__TargetObject==4,disketteExtension__TargetObject==5,disketteExtension__TargetObject==6} @*/ disketteExtension__TargetObject = __VERIFIER_nondet_int();
  int /*@  predicates{disketteExtension__MaxTransferSize!=0,disketteExtension__MaxTransferSize!=1,disketteExtension__MaxTransferSize!=2,disketteExtension__MaxTransferSize!=3,disketteExtension__MaxTransferSize!=4,disketteExtension__MaxTransferSize!=5,disketteExtension__MaxTransferSize!=6,disketteExtension__MaxTransferSize==0,disketteExtension__MaxTransferSize==1,disketteExtension__MaxTransferSize==2,disketteExtension__MaxTransferSize==3,disketteExtension__MaxTransferSize==4,disketteExtension__MaxTransferSize==5,disketteExtension__MaxTransferSize==6} @*/ disketteExtension__MaxTransferSize ;
  int /*@  predicates{disketteExtension__DriveType!=0,disketteExtension__DriveType!=1,disketteExtension__DriveType!=2,disketteExtension__DriveType!=3,disketteExtension__DriveType!=4,disketteExtension__DriveType!=5,disketteExtension__DriveType!=6,disketteExtension__DriveType==0,disketteExtension__DriveType==1,disketteExtension__DriveType==2,disketteExtension__DriveType==3,disketteExtension__DriveType==4,disketteExtension__DriveType==5,disketteExtension__DriveType==6} @*/ disketteExtension__DriveType = __VERIFIER_nondet_int();
  int disketteExtension__PerpendicularMode ;
  int /*@  predicates{disketteExtension__DeviceUnit!=0,disketteExtension__DeviceUnit!=1,disketteExtension__DeviceUnit!=2,disketteExtension__DeviceUnit!=3,disketteExtension__DeviceUnit!=4,disketteExtension__DeviceUnit!=5,disketteExtension__DeviceUnit!=6,disketteExtension__DeviceUnit==0,disketteExtension__DeviceUnit==1,disketteExtension__DeviceUnit==2,disketteExtension__DeviceUnit==3,disketteExtension__DeviceUnit==4,disketteExtension__DeviceUnit==5,disketteExtension__DeviceUnit==6} @*/ disketteExtension__DeviceUnit ;
  int /*@  predicates{disketteExtension__DriveOnValue!=0,disketteExtension__DriveOnValue!=1,disketteExtension__DriveOnValue!=2,disketteExtension__DriveOnValue!=3,disketteExtension__DriveOnValue!=4,disketteExtension__DriveOnValue!=5,disketteExtension__DriveOnValue!=6,disketteExtension__DriveOnValue==0,disketteExtension__DriveOnValue==1,disketteExtension__DriveOnValue==2,disketteExtension__DriveOnValue==3,disketteExtension__DriveOnValue==4,disketteExtension__DriveOnValue==5,disketteExtension__DriveOnValue==6} @*/ disketteExtension__DriveOnValue ;
  int /*@  predicates{disketteExtension__UnderlyingPDO!=0,disketteExtension__UnderlyingPDO!=1,disketteExtension__UnderlyingPDO!=2,disketteExtension__UnderlyingPDO!=3,disketteExtension__UnderlyingPDO!=4,disketteExtension__UnderlyingPDO!=5,disketteExtension__UnderlyingPDO!=6,disketteExtension__UnderlyingPDO==0,disketteExtension__UnderlyingPDO==1,disketteExtension__UnderlyingPDO==2,disketteExtension__UnderlyingPDO==3,disketteExtension__UnderlyingPDO==4,disketteExtension__UnderlyingPDO==5,disketteExtension__UnderlyingPDO==6} @*/ disketteExtension__UnderlyingPDO = __VERIFIER_nondet_int();
  int /*@  predicates{disketteExtension__InterfaceString!=0,disketteExtension__InterfaceString!=1,disketteExtension__InterfaceString!=2,disketteExtension__InterfaceString!=3,disketteExtension__InterfaceString!=4,disketteExtension__InterfaceString!=5,disketteExtension__InterfaceString!=6,disketteExtension__InterfaceString==0,disketteExtension__InterfaceString==1,disketteExtension__InterfaceString==2,disketteExtension__InterfaceString==3,disketteExtension__InterfaceString==4,disketteExtension__InterfaceString==5,disketteExtension__InterfaceString==6} @*/ disketteExtension__InterfaceString = __VERIFIER_nondet_int();
  int /*@  predicates{disketteExtension__IsStarted==1} @*/ disketteExtension__IsStarted ;
  int /*@  predicates{disketteExtension__HoldNewRequests==0} @*/ disketteExtension__HoldNewRequests ;
  int /*@  predicates{ntStatus==(-1),ntStatus==(-1073741101),ntStatus==(-1073741637),ntStatus==(-1073741670),ntStatus==(-1073741738),ntStatus==(-1073741789),ntStatus==(-1073741811),ntStatus==(-1073741823),ntStatus==(-2147483643),ntStatus==0,ntStatus==1,ntStatus==259,ntStatus>=0} @*/ ntStatus ;
  int /*@  predicates{pnpStatus==(-1073741808),pnpStatus==(-1073741823),pnpStatus==0} @*/ pnpStatus ;
  int /*@  predicates{doneEvent!=0,doneEvent!=1,doneEvent!=2,doneEvent!=3,doneEvent!=4,doneEvent!=5,doneEvent!=6,doneEvent==0,doneEvent==1,doneEvent==2,doneEvent==3,doneEvent==4,doneEvent==5,doneEvent==6} @*/ doneEvent = __VERIFIER_nondet_int();
  int /*@  predicates{fdcInfo!=0,fdcInfo!=1,fdcInfo!=2,fdcInfo!=3,fdcInfo!=4,fdcInfo!=5,fdcInfo!=6,fdcInfo==0,fdcInfo==1,fdcInfo==2,fdcInfo==3,fdcInfo==4,fdcInfo==5,fdcInfo==6} @*/ fdcInfo = __VERIFIER_nondet_int();
  int /*@  predicates{fdcInfo__BufferCount==0} @*/ fdcInfo__BufferCount ;
  int /*@  predicates{fdcInfo__BufferSize==0} @*/ fdcInfo__BufferSize ;
  int /*@  predicates{fdcInfo__MaxTransferSize!=0,fdcInfo__MaxTransferSize!=1,fdcInfo__MaxTransferSize!=2,fdcInfo__MaxTransferSize!=3,fdcInfo__MaxTransferSize!=4,fdcInfo__MaxTransferSize!=5,fdcInfo__MaxTransferSize!=6,fdcInfo__MaxTransferSize==0,fdcInfo__MaxTransferSize==1,fdcInfo__MaxTransferSize==2,fdcInfo__MaxTransferSize==3,fdcInfo__MaxTransferSize==4,fdcInfo__MaxTransferSize==5,fdcInfo__MaxTransferSize==6,fdcInfo__MaxTransferSize==disketteExtension__MaxTransferSize} @*/ fdcInfo__MaxTransferSize = __VERIFIER_nondet_int();
  int /*@  predicates{fdcInfo__AcpiBios!=0,fdcInfo__AcpiBios!=1,fdcInfo__AcpiBios!=2,fdcInfo__AcpiBios!=3,fdcInfo__AcpiBios!=4,fdcInfo__AcpiBios!=5,fdcInfo__AcpiBios!=6,fdcInfo__AcpiBios==0,fdcInfo__AcpiBios==1,fdcInfo__AcpiBios==2,fdcInfo__AcpiBios==3,fdcInfo__AcpiBios==4,fdcInfo__AcpiBios==5,fdcInfo__AcpiBios==6} @*/ fdcInfo__AcpiBios = __VERIFIER_nondet_int();
  int /*@  predicates{fdcInfo__AcpiFdiSupported!=0,fdcInfo__AcpiFdiSupported!=1,fdcInfo__AcpiFdiSupported!=2,fdcInfo__AcpiFdiSupported!=3,fdcInfo__AcpiFdiSupported!=4,fdcInfo__AcpiFdiSupported!=5,fdcInfo__AcpiFdiSupported!=6,fdcInfo__AcpiFdiSupported==0,fdcInfo__AcpiFdiSupported==1,fdcInfo__AcpiFdiSupported==2,fdcInfo__AcpiFdiSupported==3,fdcInfo__AcpiFdiSupported==4,fdcInfo__AcpiFdiSupported==5,fdcInfo__AcpiFdiSupported==6} @*/ fdcInfo__AcpiFdiSupported = __VERIFIER_nondet_int();
  int /*@  predicates{fdcInfo__PeripheralNumber!=0,fdcInfo__PeripheralNumber!=1,fdcInfo__PeripheralNumber!=2,fdcInfo__PeripheralNumber!=3,fdcInfo__PeripheralNumber!=4,fdcInfo__PeripheralNumber!=5,fdcInfo__PeripheralNumber!=6,fdcInfo__PeripheralNumber==0,fdcInfo__PeripheralNumber==1,fdcInfo__PeripheralNumber==2,fdcInfo__PeripheralNumber==3,fdcInfo__PeripheralNumber==4,fdcInfo__PeripheralNumber==5,fdcInfo__PeripheralNumber==6,fdcInfo__PeripheralNumber==disketteExtension__DeviceUnit} @*/ fdcInfo__PeripheralNumber = __VERIFIER_nondet_int();
  int fdcInfo__BusType ;
  int /*@  predicates{fdcInfo__ControllerNumber!=0,fdcInfo__ControllerNumber!=1,fdcInfo__ControllerNumber!=2,fdcInfo__ControllerNumber!=3,fdcInfo__ControllerNumber!=4,fdcInfo__ControllerNumber!=5,fdcInfo__ControllerNumber!=6,fdcInfo__ControllerNumber==0,fdcInfo__ControllerNumber==1,fdcInfo__ControllerNumber==2,fdcInfo__ControllerNumber==3,fdcInfo__ControllerNumber==4,fdcInfo__ControllerNumber==5,fdcInfo__ControllerNumber==6} @*/ fdcInfo__ControllerNumber = __VERIFIER_nondet_int();
  int /*@  predicates{fdcInfo__UnitNumber!=0,fdcInfo__UnitNumber!=1,fdcInfo__UnitNumber!=2,fdcInfo__UnitNumber!=3,fdcInfo__UnitNumber!=4,fdcInfo__UnitNumber!=5,fdcInfo__UnitNumber!=6,fdcInfo__UnitNumber==0,fdcInfo__UnitNumber==1,fdcInfo__UnitNumber==2,fdcInfo__UnitNumber==3,fdcInfo__UnitNumber==4,fdcInfo__UnitNumber==5,fdcInfo__UnitNumber==6,fdcInfo__UnitNumber==disketteExtension__DeviceUnit,fdcInfo__UnitNumber==disketteExtension__DriveOnValue} @*/ fdcInfo__UnitNumber = __VERIFIER_nondet_int();
  int /*@  predicates{fdcInfo__BusNumber!=0,fdcInfo__BusNumber!=1,fdcInfo__BusNumber!=2,fdcInfo__BusNumber!=3,fdcInfo__BusNumber!=4,fdcInfo__BusNumber!=5,fdcInfo__BusNumber!=6,fdcInfo__BusNumber==0,fdcInfo__BusNumber==1,fdcInfo__BusNumber==2,fdcInfo__BusNumber==3,fdcInfo__BusNumber==4,fdcInfo__BusNumber==5,fdcInfo__BusNumber==6} @*/ fdcInfo__BusNumber = __VERIFIER_nondet_int();
  int /*@  predicates{Dc==0} @*/ Dc ;
  int /*@  predicates{Fp==0} @*/ Fp ;
  int /*@  predicates{disketteExtension!=0,disketteExtension!=1,disketteExtension!=2,disketteExtension!=3,disketteExtension!=4,disketteExtension!=5,disketteExtension!=6,disketteExtension==0,disketteExtension==1,disketteExtension==2,disketteExtension==3,disketteExtension==4,disketteExtension==5,disketteExtension==6,disketteExtension==DeviceObject__DeviceExtension} @*/ disketteExtension ;
  int /*@  predicates{irpSp!=0,irpSp!=1,irpSp!=2,irpSp!=3,irpSp!=4,irpSp!=5,irpSp!=6,irpSp==0,irpSp==1,irpSp==2,irpSp==3,irpSp==4,irpSp==5,irpSp==6,irpSp==Irp__Tail__Overlay__CurrentStackLocation} @*/ irpSp ;
  int /*@  predicates{irpSp___0!=0,irpSp___0!=1,irpSp___0!=2,irpSp___0!=3,irpSp___0!=4,irpSp___0!=5,irpSp___0!=6,irpSp___0==0,irpSp___0==1,irpSp___0==2,irpSp___0==3,irpSp___0==4,irpSp___0==5,irpSp___0==6,irpSp___0==Irp__Tail__Overlay__CurrentStackLocation} @*/ irpSp___0 ;
  int nextIrpSp ;
  int /*@  predicates{nextIrpSp__Control==0} @*/ nextIrpSp__Control ;
  int irpSp___1 ;
  int /*@  predicates{irpSp__Control==224} @*/ irpSp__Control ;
  int /*@  predicates{irpSp__Context!=0,irpSp__Context!=1,irpSp__Context!=2,irpSp__Context!=3,irpSp__Context!=4,irpSp__Context!=5,irpSp__Context!=6,irpSp__Context==0,irpSp__Context==1,irpSp__Context==2,irpSp__Context==3,irpSp__Context==4,irpSp__Context==5,irpSp__Context==6,irpSp__Context==doneEvent} @*/ irpSp__Context ;
  int /*@  predicates{InterfaceType>=0,InterfaceType>=MaximumInterfaceType} @*/ InterfaceType ;
  int /*@  predicates{KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86!=0,KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86!=1,KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86!=2,KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86!=3,KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86!=4,KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86!=5,KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86!=6,KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86==0,KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86==1,KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86==2,KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86==3,KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86==4,KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86==5,KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86==6} @*/ KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86 = __VERIFIER_nondet_int();
  long __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  int /*@  predicates{__cil_tmp46!=0,__cil_tmp46!=1,__cil_tmp46!=2,__cil_tmp46!=3,__cil_tmp46!=4,__cil_tmp46!=5,__cil_tmp46!=6,__cil_tmp46==0,__cil_tmp46==1,__cil_tmp46==2,__cil_tmp46==3,__cil_tmp46==4,__cil_tmp46==5,__cil_tmp46==6} @*/ __cil_tmp46 = __VERIFIER_nondet_int();
  int __cil_tmp47 ;
  int __cil_tmp48 ;
  int __cil_tmp49 ;

  {
  Dc = DiskController;
  Fp = FloppyDiskPeripheral;
  disketteExtension = DeviceObject__DeviceExtension;
  irpSp = Irp__Tail__Overlay__CurrentStackLocation;
  irpSp___0 = Irp__Tail__Overlay__CurrentStackLocation;
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
  irpSp___1 = Irp__Tail__Overlay__CurrentStackLocation - 1;
  irpSp__Context = doneEvent;
  irpSp__Control = 224;
  ntStatus = IofCallDriver(disketteExtension__TargetObject, Irp);
  }
  {
  __cil_tmp42 =(long)ntStatus;
  if(__cil_tmp42 == 259L){
    {
    ntStatus = KeWaitForSingleObject(doneEvent, Executive, KernelMode, 0, 0);
    ntStatus = myStatus;
    }
  }
  }
  {
  fdcInfo__BufferCount = 0;
  fdcInfo__BufferSize = 0;




  ntStatus = FlFdcDeviceIo(disketteExtension__TargetObject, __cil_tmp46, fdcInfo);
  }
  if(ntStatus >= 0){
    disketteExtension__MaxTransferSize = fdcInfo__MaxTransferSize;
    if(fdcInfo__AcpiBios){
      if(fdcInfo__AcpiFdiSupported){
        {
        ntStatus = FlAcpiConfigureFloppy(disketteExtension, fdcInfo);
        }
        if(disketteExtension__DriveType == 4){


        }
      } else {
        goto _L;
      }
    } else {
      _L:
      if(disketteExtension__DriveType == 4){


      }
      InterfaceType = 0;
      {
      while(1){
        while_0_continue: ;

        if(InterfaceType >= MaximumInterfaceType){
          goto while_1_break;
        }
        {
        fdcInfo__BusType = InterfaceType;
        ntStatus = IoQueryDeviceDescription(fdcInfo__BusType, fdcInfo__BusNumber,
                                            Dc, fdcInfo__ControllerNumber, Fp, fdcInfo__PeripheralNumber,
                                            FlConfigCallBack, disketteExtension);
        }
        if(ntStatus >= 0){
          goto while_1_break;
        }
        InterfaceType ++;
      }
      while_0_break: ;
      }
      while_1_break: ;
    }
    if(ntStatus >= 0){
      if(KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86 != 0){
        disketteExtension__DeviceUnit = fdcInfo__UnitNumber;
        disketteExtension__DriveOnValue = fdcInfo__UnitNumber;
      } else {
        disketteExtension__DeviceUnit = fdcInfo__PeripheralNumber;


      }
      {
      pnpStatus = IoRegisterDeviceInterface(disketteExtension__UnderlyingPDO, MOUNTDEV_MOUNTED_DEVICE_GUID,
                                            0, disketteExtension__InterfaceString);
      }
      if(pnpStatus >= 0){
        {
        pnpStatus = IoSetDeviceInterfaceState(disketteExtension__InterfaceString,
                                              1);
        }
      }
      disketteExtension__IsStarted = 1;
      disketteExtension__HoldNewRequests = 0;
    }
  }
  {
  Irp__IoStatus__Status = ntStatus;
  myStatus = ntStatus;
  IofCompleteRequest(Irp, 0);
  }
  return(ntStatus);
}
}
int FloppyPnpComplete(int /*@  predicates{DeviceObject!=0,DeviceObject!=1,DeviceObject!=2,DeviceObject!=3,DeviceObject!=4,DeviceObject!=5,DeviceObject!=6,DeviceObject==0,DeviceObject==1,DeviceObject==2,DeviceObject==3,DeviceObject==4,DeviceObject==5,DeviceObject==6} @*/ DeviceObject , int /*@  predicates{Irp!=0,Irp!=1,Irp!=2,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp==0,Irp==1,Irp==2,Irp==3,Irp==4,Irp==5,Irp==6} @*/ Irp , int /*@  predicates{Context!=0,Context!=1,Context!=2,Context!=3,Context!=4,Context!=5,Context!=6,Context==0,Context==1,Context==2,Context==3,Context==4,Context==5,Context==6} @*/ Context)
{

  {
  {
  KeSetEvent(Context, 1, 0);
  }
  return(-1073741802);
}
}
int FlFdcDeviceIo(int /*@  predicates{DeviceObject!=0,DeviceObject!=1,DeviceObject!=2,DeviceObject!=3,DeviceObject!=4,DeviceObject!=5,DeviceObject!=6,DeviceObject==0,DeviceObject==1,DeviceObject==2,DeviceObject==3,DeviceObject==4,DeviceObject==5,DeviceObject==6} @*/ DeviceObject , int /*@  predicates{Ioctl!=0,Ioctl!=1,Ioctl!=2,Ioctl!=3,Ioctl!=4,Ioctl!=5,Ioctl!=6,Ioctl==0,Ioctl==1,Ioctl==2,Ioctl==3,Ioctl==4,Ioctl==5,Ioctl==6} @*/ Ioctl , int /*@  predicates{Data!=0,Data!=1,Data!=2,Data!=3,Data!=4,Data!=5,Data!=6,Data==0,Data==1,Data==2,Data==3,Data==4,Data==5,Data==6} @*/ Data)
{ int /*@  predicates{ntStatus==(-1),ntStatus==(-1073741101),ntStatus==(-1073741637),ntStatus==(-1073741670),ntStatus==(-1073741738),ntStatus==(-1073741789),ntStatus==(-1073741811),ntStatus==(-1073741823),ntStatus==(-2147483643),ntStatus==0,ntStatus==1,ntStatus==259} @*/ ntStatus ;
  int /*@  predicates{irp!=0,irp!=1,irp!=2,irp!=3,irp!=4,irp!=5,irp!=6,irp==0,irp==1,irp==2,irp==3,irp==4,irp==5,irp==6} @*/ irp ;
  int irpStack ;
  int /*@  predicates{doneEvent!=0,doneEvent!=1,doneEvent!=2,doneEvent!=3,doneEvent!=4,doneEvent!=5,doneEvent!=6,doneEvent==0,doneEvent==1,doneEvent==2,doneEvent==3,doneEvent==4,doneEvent==5,doneEvent==6} @*/ doneEvent = __VERIFIER_nondet_int();
  int /*@  predicates{ioStatus!=0,ioStatus!=1,ioStatus!=2,ioStatus!=3,ioStatus!=4,ioStatus!=5,ioStatus!=6,ioStatus==0,ioStatus==1,ioStatus==2,ioStatus==3,ioStatus==4,ioStatus==5,ioStatus==6} @*/ ioStatus = __VERIFIER_nondet_int();
  int /*@  predicates{irp__Tail__Overlay__CurrentStackLocation!=0,irp__Tail__Overlay__CurrentStackLocation!=1,irp__Tail__Overlay__CurrentStackLocation!=2,irp__Tail__Overlay__CurrentStackLocation!=3,irp__Tail__Overlay__CurrentStackLocation!=4,irp__Tail__Overlay__CurrentStackLocation!=5,irp__Tail__Overlay__CurrentStackLocation!=6,irp__Tail__Overlay__CurrentStackLocation==0,irp__Tail__Overlay__CurrentStackLocation==1,irp__Tail__Overlay__CurrentStackLocation==2,irp__Tail__Overlay__CurrentStackLocation==3,irp__Tail__Overlay__CurrentStackLocation==4,irp__Tail__Overlay__CurrentStackLocation==5,irp__Tail__Overlay__CurrentStackLocation==6} @*/ irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int();
  int /*@  predicates{irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=0,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=1,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=2,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=3,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=4,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=5,irpStack__Parameters__DeviceIoControl__Type3InputBuffer!=6,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==0,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==1,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==2,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==3,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==4,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==5,irpStack__Parameters__DeviceIoControl__Type3InputBuffer==6} @*/ irpStack__Parameters__DeviceIoControl__Type3InputBuffer ;
  long __cil_tmp11 ;

  {
  {
  irp = IoBuildDeviceIoControlRequest(Ioctl, DeviceObject, 0, 0, 0, 0, 1, doneEvent,
                                      ioStatus);
  }
  if(irp == 0){
    return(-1073741670);
  }
  {
  irpStack = irp__Tail__Overlay__CurrentStackLocation - 1;
  irpStack__Parameters__DeviceIoControl__Type3InputBuffer = Data;
  ntStatus = IofCallDriver(DeviceObject, irp);
  }
  {
  __cil_tmp11 =(long)ntStatus;
  if(__cil_tmp11 == 259L){
    {
    KeWaitForSingleObject(doneEvent, Suspended, KernelMode, 0, 0);
    ntStatus = myStatus;
    }
  }
  }
  return(ntStatus);
}
}
void FloppyProcessQueuedRequests(int DisketteExtension)
{

  {
  return;
}
}
void stub_driver_init(void)
{

  {
  s = NP;
  pended = 0;
  compRegistered = 0;
  lowerDriverReturn = 0;
  setEventCalled = 0;
  customIrp = 0;
  return;
}
}
int main(void)
{ int /*@  predicates{(status!=(-1)),status<0,status==(-1),status==(-1073741101),status==(-1073741637),status==(-1073741670),status==(-1073741738),status==(-1073741789),status==(-1073741811),status==(-1073741823),status==(-2147483643),status==0,status==1,status==259,status>=0} @*/ status ;
  int /*@  predicates{irp!=0,irp!=1,irp!=2,irp!=3,irp!=4,irp!=5,irp!=6,irp==0,irp==1,irp==2,irp==3,irp==4,irp==5,irp==6} @*/ irp = __VERIFIER_nondet_int();
  int /*@  predicates{pirp!=0,pirp!=1,pirp!=2,pirp!=3,pirp!=4,pirp!=5,pirp!=6,pirp==0,pirp==1,pirp==2,pirp==3,pirp==4,pirp==5,pirp==6,pirp==irp} @*/ pirp ;
  int /*@  predicates{pirp__IoStatus__Status==(-1073741637),pirp__IoStatus__Status==0} @*/ pirp__IoStatus__Status ;
  int /*@  predicates{irp_choice!=0,irp_choice!=1,irp_choice!=2,irp_choice!=3,irp_choice!=4,irp_choice!=5,irp_choice!=6,irp_choice==0,irp_choice==1,irp_choice==2,irp_choice==3,irp_choice==4,irp_choice==5,irp_choice==6} @*/ irp_choice = __VERIFIER_nondet_int();
  int /*@  predicates{devobj!=0,devobj!=1,devobj!=2,devobj!=3,devobj!=4,devobj!=5,devobj!=6,devobj==0,devobj==1,devobj==2,devobj==3,devobj==4,devobj==5,devobj==6} @*/ devobj = __VERIFIER_nondet_int();
  int __cil_tmp8 ;

 FloppyThread = 0;
 KernelMode = 0;
 Suspended = 0;
 Executive = 0;
 DiskController = 0;
 FloppyDiskPeripheral = 0;
 FlConfigCallBack = 0;
 MaximumInterfaceType = 0;
 MOUNTDEV_MOUNTED_DEVICE_GUID = 0;
 myStatus = 0;
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
 compRegistered = 0;
 lowerDriverReturn = 0;
 setEventCalled = 0;
 customIrp = 0;

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
    int /*@  predicates{tmp_ndt_1!=0,tmp_ndt_1!=1,tmp_ndt_1!=2,tmp_ndt_1!=3,tmp_ndt_1!=4,tmp_ndt_1!=5,tmp_ndt_1!=6,tmp_ndt_1==0,tmp_ndt_1==1,tmp_ndt_1==2,tmp_ndt_1==3,tmp_ndt_1==4,tmp_ndt_1==5,tmp_ndt_1==6} @*/ tmp_ndt_1;
    tmp_ndt_1 = __VERIFIER_nondet_int();
    if(tmp_ndt_1 == 0){
      goto switch_2_0;
    } else {
      int /*@  predicates{tmp_ndt_2!=0,tmp_ndt_2!=1,tmp_ndt_2!=2,tmp_ndt_2!=3,tmp_ndt_2!=4,tmp_ndt_2!=5,tmp_ndt_2!=6,tmp_ndt_2==0,tmp_ndt_2==1,tmp_ndt_2==2,tmp_ndt_2==3,tmp_ndt_2==4,tmp_ndt_2==5,tmp_ndt_2==6} @*/ tmp_ndt_2;
      tmp_ndt_2 = __VERIFIER_nondet_int();
      if(tmp_ndt_2 == 1){
        goto switch_2_1;
      } else {
        int /*@  predicates{tmp_ndt_3!=0,tmp_ndt_3!=1,tmp_ndt_3!=2,tmp_ndt_3!=3,tmp_ndt_3!=4,tmp_ndt_3!=5,tmp_ndt_3!=6,tmp_ndt_3==0,tmp_ndt_3==1,tmp_ndt_3==2,tmp_ndt_3==3,tmp_ndt_3==4,tmp_ndt_3==5,tmp_ndt_3==6} @*/ tmp_ndt_3;
        tmp_ndt_3 = __VERIFIER_nondet_int();
        if(tmp_ndt_3 == 2){
          goto switch_2_2;
        } else {
          int /*@  predicates{tmp_ndt_4!=0,tmp_ndt_4!=1,tmp_ndt_4!=2,tmp_ndt_4!=3,tmp_ndt_4!=4,tmp_ndt_4!=5,tmp_ndt_4!=6,tmp_ndt_4==0,tmp_ndt_4==1,tmp_ndt_4==2,tmp_ndt_4==3,tmp_ndt_4==4,tmp_ndt_4==5,tmp_ndt_4==6} @*/ tmp_ndt_4;
          tmp_ndt_4 = __VERIFIER_nondet_int();
          if(tmp_ndt_4 == 3){
            goto switch_2_3;
          } else {
            goto switch_2_default;
            if(0){
              switch_2_0:
              {
              status = FloppyCreateClose(devobj, pirp);
              }
              goto switch_2_break;
              switch_2_1:
              {
              status = FloppyCreateClose(devobj, pirp);
              }
              goto switch_2_break;
              switch_2_2:
              {
              status = FloppyDeviceControl(devobj, pirp);
              }
              goto switch_2_break;
              switch_2_3:
              {
              status = FloppyPnp(devobj, pirp);
              }
              goto switch_2_break;
              switch_2_default: ;
              return(-1);
            } else {
              switch_2_break: ;
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
              if(s != DC){
                {
                errorFn();
                }
              } else {
                goto _L___0;
              }
            } else {
              goto _L___0;
            }
          } else {
            _L___0:
            if(pended == 1){
              if(status != 259){
                status = 0;
              }
            } else {
              if(s == DC){
                if(status == 259){
                  {
                  errorFn();
                  }
                }
              } else {
                if(status != lowerDriverReturn){
                  {
                  errorFn();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  status = 0;
  return(status);
}
}
int IoBuildDeviceIoControlRequest(int /*@  predicates{IoControlCode!=0,IoControlCode!=1,IoControlCode!=2,IoControlCode!=3,IoControlCode!=4,IoControlCode!=5,IoControlCode!=6,IoControlCode==0,IoControlCode==1,IoControlCode==2,IoControlCode==3,IoControlCode==4,IoControlCode==5,IoControlCode==6} @*/ IoControlCode , int /*@  predicates{DeviceObject!=0,DeviceObject!=1,DeviceObject!=2,DeviceObject!=3,DeviceObject!=4,DeviceObject!=5,DeviceObject!=6,DeviceObject==0,DeviceObject==1,DeviceObject==2,DeviceObject==3,DeviceObject==4,DeviceObject==5,DeviceObject==6} @*/ DeviceObject , int /*@  predicates{InputBuffer==0} @*/ InputBuffer ,
                                  int /*@  predicates{InputBufferLength==0} @*/ InputBufferLength , int /*@  predicates{OutputBuffer==0} @*/ OutputBuffer , int /*@  predicates{OutputBufferLength==0} @*/ OutputBufferLength ,
                                  int /*@  predicates{InternalDeviceIoControl==1} @*/ InternalDeviceIoControl , int /*@  predicates{Event!=0,Event!=1,Event!=2,Event!=3,Event!=4,Event!=5,Event!=6,Event==0,Event==1,Event==2,Event==3,Event==4,Event==5,Event==6} @*/ Event , int /*@  predicates{IoStatusBlock!=0,IoStatusBlock!=1,IoStatusBlock!=2,IoStatusBlock!=3,IoStatusBlock!=4,IoStatusBlock!=5,IoStatusBlock!=6,IoStatusBlock==0,IoStatusBlock==1,IoStatusBlock==2,IoStatusBlock==3,IoStatusBlock==4,IoStatusBlock==5,IoStatusBlock==6} @*/ IoStatusBlock)
{
  int /*@  predicates{malloc!=0,malloc!=1,malloc!=2,malloc!=3,malloc!=4,malloc!=5,malloc!=6,malloc==0,malloc==1,malloc==2,malloc==3,malloc==4,malloc==5,malloc==6} @*/ malloc = __VERIFIER_nondet_int();

  {
  customIrp = 1;
  int /*@  predicates{tmp_ndt_5!=0,tmp_ndt_5!=1,tmp_ndt_5!=2,tmp_ndt_5!=3,tmp_ndt_5!=4,tmp_ndt_5!=5,tmp_ndt_5!=6,tmp_ndt_5==0,tmp_ndt_5==1,tmp_ndt_5==2,tmp_ndt_5==3,tmp_ndt_5==4,tmp_ndt_5==5,tmp_ndt_5==6} @*/ tmp_ndt_5;
  tmp_ndt_5 = __VERIFIER_nondet_int();
  if(tmp_ndt_5 == 0){
    goto switch_3_0;
  } else {
    goto switch_3_default;
    if(0){
      switch_3_0:
      return(malloc);
      switch_3_default: ;
      return(0);
    } else {

    }
  }
}
}
int IoDeleteSymbolicLink(int /*@  predicates{SymbolicLinkName!=0,SymbolicLinkName!=1,SymbolicLinkName!=2,SymbolicLinkName!=3,SymbolicLinkName!=4,SymbolicLinkName!=5,SymbolicLinkName!=6,SymbolicLinkName==0,SymbolicLinkName==1,SymbolicLinkName==2,SymbolicLinkName==3,SymbolicLinkName==4,SymbolicLinkName==5,SymbolicLinkName==6} @*/ SymbolicLinkName)
{

  {
  int /*@  predicates{tmp_ndt_6!=0,tmp_ndt_6!=1,tmp_ndt_6!=2,tmp_ndt_6!=3,tmp_ndt_6!=4,tmp_ndt_6!=5,tmp_ndt_6!=6,tmp_ndt_6==0,tmp_ndt_6==1,tmp_ndt_6==2,tmp_ndt_6==3,tmp_ndt_6==4,tmp_ndt_6==5,tmp_ndt_6==6} @*/ tmp_ndt_6;
  tmp_ndt_6 = __VERIFIER_nondet_int();
  if(tmp_ndt_6 == 0){
    goto switch_4_0;
  } else {
    goto switch_4_default;
    if(0){
      switch_4_0:
      return(0);
      switch_4_default: ;
      return(-1073741823);
    } else {

    }
  }
}
}
int IoQueryDeviceDescription(int BusType , int /*@  predicates{BusNumber!=0,BusNumber!=1,BusNumber!=2,BusNumber!=3,BusNumber!=4,BusNumber!=5,BusNumber!=6,BusNumber==0,BusNumber==1,BusNumber==2,BusNumber==3,BusNumber==4,BusNumber==5,BusNumber==6} @*/ BusNumber , int /*@  predicates{ControllerType==0} @*/ ControllerType , int /*@  predicates{ControllerNumber!=0,ControllerNumber!=1,ControllerNumber!=2,ControllerNumber!=3,ControllerNumber!=4,ControllerNumber!=5,ControllerNumber!=6,ControllerNumber==0,ControllerNumber==1,ControllerNumber==2,ControllerNumber==3,ControllerNumber==4,ControllerNumber==5,ControllerNumber==6} @*/ ControllerNumber ,
                             int /*@  predicates{PeripheralType==0} @*/ PeripheralType , int /*@  predicates{PeripheralNumber!=0,PeripheralNumber!=1,PeripheralNumber!=2,PeripheralNumber!=3,PeripheralNumber!=4,PeripheralNumber!=5,PeripheralNumber!=6,PeripheralNumber==0,PeripheralNumber==1,PeripheralNumber==2,PeripheralNumber==3,PeripheralNumber==4,PeripheralNumber==5,PeripheralNumber==6} @*/ PeripheralNumber , int /*@  predicates{CalloutRoutine==0} @*/ CalloutRoutine ,
                             int /*@  predicates{Context!=0,Context!=1,Context!=2,Context!=3,Context!=4,Context!=5,Context!=6,Context==0,Context==1,Context==2,Context==3,Context==4,Context==5,Context==6} @*/ Context)
{

  {
  int /*@  predicates{tmp_ndt_7!=0,tmp_ndt_7!=1,tmp_ndt_7!=2,tmp_ndt_7!=3,tmp_ndt_7!=4,tmp_ndt_7!=5,tmp_ndt_7!=6,tmp_ndt_7==0,tmp_ndt_7==1,tmp_ndt_7==2,tmp_ndt_7==3,tmp_ndt_7==4,tmp_ndt_7==5,tmp_ndt_7==6} @*/ tmp_ndt_7;
  tmp_ndt_7 = __VERIFIER_nondet_int();
  if(tmp_ndt_7 == 0){
    goto switch_5_0;
  } else {
    goto switch_5_default;
    if(0){
      switch_5_0:
      return(0);
      switch_5_default: ;
      return(-1073741823);
    } else {

    }
  }
}
}
int IoRegisterDeviceInterface(int /*@  predicates{PhysicalDeviceObject!=0,PhysicalDeviceObject!=1,PhysicalDeviceObject!=2,PhysicalDeviceObject!=3,PhysicalDeviceObject!=4,PhysicalDeviceObject!=5,PhysicalDeviceObject!=6,PhysicalDeviceObject==0,PhysicalDeviceObject==1,PhysicalDeviceObject==2,PhysicalDeviceObject==3,PhysicalDeviceObject==4,PhysicalDeviceObject==5,PhysicalDeviceObject==6} @*/ PhysicalDeviceObject , int /*@  predicates{InterfaceClassGuid==0} @*/ InterfaceClassGuid ,
                              int /*@  predicates{ReferenceString==0} @*/ ReferenceString , int /*@  predicates{SymbolicLinkName!=0,SymbolicLinkName!=1,SymbolicLinkName!=2,SymbolicLinkName!=3,SymbolicLinkName!=4,SymbolicLinkName!=5,SymbolicLinkName!=6,SymbolicLinkName==0,SymbolicLinkName==1,SymbolicLinkName==2,SymbolicLinkName==3,SymbolicLinkName==4,SymbolicLinkName==5,SymbolicLinkName==6} @*/ SymbolicLinkName)
{

  {
  int /*@  predicates{tmp_ndt_8!=0,tmp_ndt_8!=1,tmp_ndt_8!=2,tmp_ndt_8!=3,tmp_ndt_8!=4,tmp_ndt_8!=5,tmp_ndt_8!=6,tmp_ndt_8==0,tmp_ndt_8==1,tmp_ndt_8==2,tmp_ndt_8==3,tmp_ndt_8==4,tmp_ndt_8==5,tmp_ndt_8==6} @*/ tmp_ndt_8;
  tmp_ndt_8 = __VERIFIER_nondet_int();
  if(tmp_ndt_8 == 0){
    goto switch_6_0;
  } else {
    goto switch_6_default;
    if(0){
      switch_6_0:
      return(0);
      switch_6_default: ;
      return(-1073741808);
    } else {

    }
  }
}
}
int IoSetDeviceInterfaceState(int /*@  predicates{SymbolicLinkName!=0,SymbolicLinkName!=1,SymbolicLinkName!=2,SymbolicLinkName!=3,SymbolicLinkName!=4,SymbolicLinkName!=5,SymbolicLinkName!=6,SymbolicLinkName==0,SymbolicLinkName==1,SymbolicLinkName==2,SymbolicLinkName==3,SymbolicLinkName==4,SymbolicLinkName==5,SymbolicLinkName==6} @*/ SymbolicLinkName , int /*@  predicates{Enable==0,Enable==1} @*/ Enable)
{

  {
  int /*@  predicates{tmp_ndt_9!=0,tmp_ndt_9!=1,tmp_ndt_9!=2,tmp_ndt_9!=3,tmp_ndt_9!=4,tmp_ndt_9!=5,tmp_ndt_9!=6,tmp_ndt_9==0,tmp_ndt_9==1,tmp_ndt_9==2,tmp_ndt_9==3,tmp_ndt_9==4,tmp_ndt_9==5,tmp_ndt_9==6} @*/ tmp_ndt_9;
  tmp_ndt_9 = __VERIFIER_nondet_int();
  if(tmp_ndt_9 == 0){
    goto switch_7_0;
  } else {
    goto switch_7_default;
    if(0){
      switch_7_0:
      return(0);
      switch_7_default: ;
      return(-1073741823);
    } else {

    }
  }
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
int IofCallDriver(int /*@  predicates{DeviceObject!=0,DeviceObject!=1,DeviceObject!=2,DeviceObject!=3,DeviceObject!=4,DeviceObject!=5,DeviceObject!=6,DeviceObject==0,DeviceObject==1,DeviceObject==2,DeviceObject==3,DeviceObject==4,DeviceObject==5,DeviceObject==6} @*/ DeviceObject , int /*@  predicates{Irp!=0,Irp!=1,Irp!=2,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp==0,Irp==1,Irp==2,Irp==3,Irp==4,Irp==5,Irp==6} @*/ Irp)
{
  int /*@  predicates{returnVal2==(-1),returnVal2==(-1073741101),returnVal2==(-1073741637),returnVal2==(-1073741670),returnVal2==(-1073741738),returnVal2==(-1073741789),returnVal2==(-1073741811),returnVal2==(-1073741823),returnVal2==(-2147483643),returnVal2==0,returnVal2==1,returnVal2==259} @*/ returnVal2 ;
  int /*@  predicates{compRetStatus1==(-1073741802)} @*/ compRetStatus1 ;
  int /*@  predicates{lcontext!=0,lcontext!=1,lcontext!=2,lcontext!=3,lcontext!=4,lcontext!=5,lcontext!=6,lcontext==0,lcontext==1,lcontext==2,lcontext==3,lcontext==4,lcontext==5,lcontext==6} @*/ lcontext = __VERIFIER_nondet_int();
  unsigned long __cil_tmp7 ;

  {
  if(compRegistered){
    {
    compRetStatus1 = FloppyPnpComplete(DeviceObject, Irp, lcontext);
    }
    {
    __cil_tmp7 =(unsigned long)compRetStatus1;
    if(__cil_tmp7 == -1073741802){
      {
      stubMoreProcessingRequired();
      }
    }
    }
  }
  int /*@  predicates{tmp_ndt_10!=0,tmp_ndt_10!=1,tmp_ndt_10!=2,tmp_ndt_10!=3,tmp_ndt_10!=4,tmp_ndt_10!=5,tmp_ndt_10!=6,tmp_ndt_10==0,tmp_ndt_10==1,tmp_ndt_10==2,tmp_ndt_10==3,tmp_ndt_10==4,tmp_ndt_10==5,tmp_ndt_10==6} @*/ tmp_ndt_10;
  tmp_ndt_10 = __VERIFIER_nondet_int();
  if(tmp_ndt_10 == 0){
    goto switch_8_0;
  } else {
    int /*@  predicates{tmp_ndt_11!=0,tmp_ndt_11!=1,tmp_ndt_11!=2,tmp_ndt_11!=3,tmp_ndt_11!=4,tmp_ndt_11!=5,tmp_ndt_11!=6,tmp_ndt_11==0,tmp_ndt_11==1,tmp_ndt_11==2,tmp_ndt_11==3,tmp_ndt_11==4,tmp_ndt_11==5,tmp_ndt_11==6} @*/ tmp_ndt_11;
    tmp_ndt_11 = __VERIFIER_nondet_int();
    if(tmp_ndt_11 == 1){
      goto switch_8_1;
    } else {
      goto switch_8_default;
      if(0){
        switch_8_0:
        returnVal2 = 0;
        goto switch_8_break;
        switch_8_1:
        returnVal2 = -1073741823;
        goto switch_8_break;
        switch_8_default:
        returnVal2 = 259;
        goto switch_8_break;
      } else {
        switch_8_break: ;
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
void IofCompleteRequest(int /*@  predicates{Irp!=0,Irp!=1,Irp!=2,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp==0,Irp==1,Irp==2,Irp==3,Irp==4,Irp==5,Irp==6} @*/ Irp , int /*@  predicates{PriorityBoost==0} @*/ PriorityBoost)
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
int KeSetEvent(int /*@  predicates{Event!=0,Event!=1,Event!=2,Event!=3,Event!=4,Event!=5,Event!=6,Event==0,Event==1,Event==2,Event==3,Event==4,Event==5,Event==6} @*/ Event , int /*@  predicates{Increment==1} @*/ Increment , int /*@  predicates{Wait==0} @*/ Wait)
{ int /*@  predicates{l!=0,l!=1,l!=2,l!=3,l!=4,l!=5,l!=6,l==0,l==1,l==2,l==3,l==4,l==5,l==6} @*/ l = __VERIFIER_nondet_int();

  {
  setEventCalled = 1;
  return(l);
}
}
int KeWaitForSingleObject(int /*@  predicates{Object!=0,Object!=1,Object!=2,Object!=3,Object!=4,Object!=5,Object!=6,Object==0,Object==1,Object==2,Object==3,Object==4,Object==5,Object==6} @*/ Object , int /*@  predicates{WaitReason==0} @*/ WaitReason , int /*@  predicates{WaitMode==0} @*/ WaitMode , int /*@  predicates{Alertable==0} @*/ Alertable ,
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
  int /*@  predicates{tmp_ndt_12!=0,tmp_ndt_12!=1,tmp_ndt_12!=2,tmp_ndt_12!=3,tmp_ndt_12!=4,tmp_ndt_12!=5,tmp_ndt_12!=6,tmp_ndt_12==0,tmp_ndt_12==1,tmp_ndt_12==2,tmp_ndt_12==3,tmp_ndt_12==4,tmp_ndt_12==5,tmp_ndt_12==6} @*/ tmp_ndt_12;
  tmp_ndt_12 = __VERIFIER_nondet_int();
  if(tmp_ndt_12 == 0){
    goto switch_9_0;
  } else {
    goto switch_9_default;
    if(0){
      switch_9_0:
      return(0);
      switch_9_default: ;
      return(-1073741823);
    } else {

    }
  }
}
}
int ObReferenceObjectByHandle(int /*@  predicates{Handle!=0,Handle!=1,Handle!=2,Handle!=3,Handle!=4,Handle!=5,Handle!=6,Handle==0,Handle==1,Handle==2,Handle==3,Handle==4,Handle==5,Handle==6} @*/ Handle , int /*@  predicates{DesiredAccess==1048576} @*/ DesiredAccess , int /*@  predicates{ObjectType==0} @*/ ObjectType , int /*@  predicates{AccessMode==0} @*/ AccessMode ,
                              int /*@  predicates{Object!=0,Object!=1,Object!=2,Object!=3,Object!=4,Object!=5,Object!=6,Object==0,Object==1,Object==2,Object==3,Object==4,Object==5,Object==6} @*/ Object , int /*@  predicates{HandleInformation==0} @*/ HandleInformation)
{

  {
  int /*@  predicates{tmp_ndt_13!=0,tmp_ndt_13!=1,tmp_ndt_13!=2,tmp_ndt_13!=3,tmp_ndt_13!=4,tmp_ndt_13!=5,tmp_ndt_13!=6,tmp_ndt_13==0,tmp_ndt_13==1,tmp_ndt_13==2,tmp_ndt_13==3,tmp_ndt_13==4,tmp_ndt_13==5,tmp_ndt_13==6} @*/ tmp_ndt_13;
  tmp_ndt_13 = __VERIFIER_nondet_int();
  if(tmp_ndt_13 == 0){
    goto switch_10_0;
  } else {
    goto switch_10_default;
    if(0){
      switch_10_0:
      return(0);
      switch_10_default: ;
      return(-1073741823);
    } else {

    }
  }
}
}
int PsCreateSystemThread(int /*@  predicates{ThreadHandle!=0,ThreadHandle!=1,ThreadHandle!=2,ThreadHandle!=3,ThreadHandle!=4,ThreadHandle!=5,ThreadHandle!=6,ThreadHandle==0,ThreadHandle==1,ThreadHandle==2,ThreadHandle==3,ThreadHandle==4,ThreadHandle==5,ThreadHandle==6} @*/ ThreadHandle , int /*@  predicates{DesiredAccess==0} @*/ DesiredAccess , int /*@  predicates{ObjectAttributes!=0,ObjectAttributes!=1,ObjectAttributes!=2,ObjectAttributes!=3,ObjectAttributes!=4,ObjectAttributes!=5,ObjectAttributes!=6,ObjectAttributes==0,ObjectAttributes==1,ObjectAttributes==2,ObjectAttributes==3,ObjectAttributes==4,ObjectAttributes==5,ObjectAttributes==6} @*/ ObjectAttributes ,
                         int /*@  predicates{ProcessHandle==0} @*/ ProcessHandle , int /*@  predicates{ClientId==0} @*/ ClientId , int /*@  predicates{StartRoutine==0} @*/ StartRoutine , int /*@  predicates{StartContext!=0,StartContext!=1,StartContext!=2,StartContext!=3,StartContext!=4,StartContext!=5,StartContext!=6,StartContext==0,StartContext==1,StartContext==2,StartContext==3,StartContext==4,StartContext==5,StartContext==6} @*/ StartContext)
{

  {
  int /*@  predicates{tmp_ndt_14!=0,tmp_ndt_14!=1,tmp_ndt_14!=2,tmp_ndt_14!=3,tmp_ndt_14!=4,tmp_ndt_14!=5,tmp_ndt_14!=6,tmp_ndt_14==0,tmp_ndt_14==1,tmp_ndt_14==2,tmp_ndt_14==3,tmp_ndt_14==4,tmp_ndt_14==5,tmp_ndt_14==6} @*/ tmp_ndt_14;
  tmp_ndt_14 = __VERIFIER_nondet_int();
  if(tmp_ndt_14 == 0){
    goto switch_11_0;
  } else {
    goto switch_11_default;
    if(0){
      switch_11_0:
      return(0);
      switch_11_default: ;
      return(-1073741823);
    } else {

    }
  }
}
}
int ZwClose(int /*@  predicates{Handle!=0,Handle!=1,Handle!=2,Handle!=3,Handle!=4,Handle!=5,Handle!=6,Handle==0,Handle==1,Handle==2,Handle==3,Handle==4,Handle==5,Handle==6} @*/ Handle)
{

  {
  int /*@  predicates{tmp_ndt_15!=0,tmp_ndt_15!=1,tmp_ndt_15!=2,tmp_ndt_15!=3,tmp_ndt_15!=4,tmp_ndt_15!=5,tmp_ndt_15!=6,tmp_ndt_15==0,tmp_ndt_15==1,tmp_ndt_15==2,tmp_ndt_15==3,tmp_ndt_15==4,tmp_ndt_15==5,tmp_ndt_15==6} @*/ tmp_ndt_15;
  tmp_ndt_15 = __VERIFIER_nondet_int();
  if(tmp_ndt_15 == 0){
    goto switch_12_0;
  } else {
    goto switch_12_default;
    if(0){
      switch_12_0:
      return(0);
      switch_12_default: ;
      return(-1073741823);
    } else {

    }
  }
}
}
int FloppyCreateClose(int /*@  predicates{DeviceObject!=0,DeviceObject!=1,DeviceObject!=2,DeviceObject!=3,DeviceObject!=4,DeviceObject!=5,DeviceObject!=6,DeviceObject==0,DeviceObject==1,DeviceObject==2,DeviceObject==3,DeviceObject==4,DeviceObject==5,DeviceObject==6} @*/ DeviceObject , int /*@  predicates{Irp!=0,Irp!=1,Irp!=2,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp==0,Irp==1,Irp==2,Irp==3,Irp==4,Irp==5,Irp==6} @*/ Irp)
{ int /*@  predicates{Irp__IoStatus__Status==0} @*/ Irp__IoStatus__Status ;
  int /*@  predicates{Irp__IoStatus__Information==1} @*/ Irp__IoStatus__Information ;

  {
  {
  myStatus = 0;
  Irp__IoStatus__Status = 0;
  Irp__IoStatus__Information = 1;
  IofCompleteRequest(Irp, 0);
  }
  return(0);
}
}
int FloppyQueueRequest(int /*@  predicates{DisketteExtension!=0,DisketteExtension!=1,DisketteExtension!=2,DisketteExtension!=3,DisketteExtension!=4,DisketteExtension!=5,DisketteExtension!=6,DisketteExtension==0,DisketteExtension==1,DisketteExtension==2,DisketteExtension==3,DisketteExtension==4,DisketteExtension==5,DisketteExtension==6} @*/ DisketteExtension , int /*@  predicates{Irp!=0,Irp!=1,Irp!=2,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp==0,Irp==1,Irp==2,Irp==3,Irp==4,Irp==5,Irp==6} @*/ Irp);
int FloppyDeviceControl(int /*@  predicates{DeviceObject!=0,DeviceObject!=1,DeviceObject!=2,DeviceObject!=3,DeviceObject!=4,DeviceObject!=5,DeviceObject!=6,DeviceObject==0,DeviceObject==1,DeviceObject==2,DeviceObject==3,DeviceObject==4,DeviceObject==5,DeviceObject==6} @*/ DeviceObject , int /*@  predicates{Irp!=0,Irp!=1,Irp!=2,Irp!=3,Irp!=4,Irp!=5,Irp!=6,Irp==0,Irp==1,Irp==2,Irp==3,Irp==4,Irp==5,Irp==6} @*/ Irp)
{ int /*@  predicates{disketteExtension__HoldNewRequests!=0,disketteExtension__HoldNewRequests!=1,disketteExtension__HoldNewRequests!=2,disketteExtension__HoldNewRequests!=3,disketteExtension__HoldNewRequests!=4,disketteExtension__HoldNewRequests!=5,disketteExtension__HoldNewRequests!=6,disketteExtension__HoldNewRequests==0,disketteExtension__HoldNewRequests==1,disketteExtension__HoldNewRequests==2,disketteExtension__HoldNewRequests==3,disketteExtension__HoldNewRequests==4,disketteExtension__HoldNewRequests==5,disketteExtension__HoldNewRequests==6} @*/ disketteExtension__HoldNewRequests = __VERIFIER_nondet_int();
  int /*@  predicates{disketteExtension__IsRemoved!=0,disketteExtension__IsRemoved!=1,disketteExtension__IsRemoved!=2,disketteExtension__IsRemoved!=3,disketteExtension__IsRemoved!=4,disketteExtension__IsRemoved!=5,disketteExtension__IsRemoved!=6,disketteExtension__IsRemoved==0,disketteExtension__IsRemoved==1,disketteExtension__IsRemoved==2,disketteExtension__IsRemoved==3,disketteExtension__IsRemoved==4,disketteExtension__IsRemoved==5,disketteExtension__IsRemoved==6} @*/ disketteExtension__IsRemoved = __VERIFIER_nondet_int();
  int Irp__IoStatus__Information ;
  int /*@  predicates{disketteExtension__IsStarted!=0,disketteExtension__IsStarted!=1,disketteExtension__IsStarted!=2,disketteExtension__IsStarted!=3,disketteExtension__IsStarted!=4,disketteExtension__IsStarted!=5,disketteExtension__IsStarted!=6,disketteExtension__IsStarted==0,disketteExtension__IsStarted==1,disketteExtension__IsStarted==2,disketteExtension__IsStarted==3,disketteExtension__IsStarted==4,disketteExtension__IsStarted==5,disketteExtension__IsStarted==6} @*/ disketteExtension__IsStarted = __VERIFIER_nondet_int();
  int Irp__CurrentLocation = __VERIFIER_nondet_int();
  int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int();
  int /*@  predicates{disketteExtension__TargetObject!=0,disketteExtension__TargetObject!=1,disketteExtension__TargetObject!=2,disketteExtension__TargetObject!=3,disketteExtension__TargetObject!=4,disketteExtension__TargetObject!=5,disketteExtension__TargetObject!=6,disketteExtension__TargetObject==0,disketteExtension__TargetObject==1,disketteExtension__TargetObject==2,disketteExtension__TargetObject==3,disketteExtension__TargetObject==4,disketteExtension__TargetObject==5,disketteExtension__TargetObject==6} @*/ disketteExtension__TargetObject = __VERIFIER_nondet_int();
  int /*@  predicates{irpSp__Parameters__DeviceIoControl__OutputBufferLength!=0,irpSp__Parameters__DeviceIoControl__OutputBufferLength!=1,irpSp__Parameters__DeviceIoControl__OutputBufferLength!=2,irpSp__Parameters__DeviceIoControl__OutputBufferLength!=3,irpSp__Parameters__DeviceIoControl__OutputBufferLength!=4,irpSp__Parameters__DeviceIoControl__OutputBufferLength!=5,irpSp__Parameters__DeviceIoControl__OutputBufferLength!=6,irpSp__Parameters__DeviceIoControl__OutputBufferLength==0,irpSp__Parameters__DeviceIoControl__OutputBufferLength==1,irpSp__Parameters__DeviceIoControl__OutputBufferLength==2,irpSp__Parameters__DeviceIoControl__OutputBufferLength==3,irpSp__Parameters__DeviceIoControl__OutputBufferLength==4,irpSp__Parameters__DeviceIoControl__OutputBufferLength==5,irpSp__Parameters__DeviceIoControl__OutputBufferLength==6} @*/ irpSp__Parameters__DeviceIoControl__OutputBufferLength = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__MOUNTDEV_NAME!=0,sizeof__MOUNTDEV_NAME!=1,sizeof__MOUNTDEV_NAME!=2,sizeof__MOUNTDEV_NAME!=3,sizeof__MOUNTDEV_NAME!=4,sizeof__MOUNTDEV_NAME!=5,sizeof__MOUNTDEV_NAME!=6,sizeof__MOUNTDEV_NAME==0,sizeof__MOUNTDEV_NAME==1,sizeof__MOUNTDEV_NAME==2,sizeof__MOUNTDEV_NAME==3,sizeof__MOUNTDEV_NAME==4,sizeof__MOUNTDEV_NAME==5,sizeof__MOUNTDEV_NAME==6,sizeof__MOUNTDEV_NAME>irpSp__Parameters__DeviceIoControl__OutputBufferLength} @*/ sizeof__MOUNTDEV_NAME = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__AssociatedIrp__SystemBuffer!=0,Irp__AssociatedIrp__SystemBuffer!=1,Irp__AssociatedIrp__SystemBuffer!=2,Irp__AssociatedIrp__SystemBuffer!=3,Irp__AssociatedIrp__SystemBuffer!=4,Irp__AssociatedIrp__SystemBuffer!=5,Irp__AssociatedIrp__SystemBuffer!=6,Irp__AssociatedIrp__SystemBuffer==0,Irp__AssociatedIrp__SystemBuffer==1,Irp__AssociatedIrp__SystemBuffer==2,Irp__AssociatedIrp__SystemBuffer==3,Irp__AssociatedIrp__SystemBuffer==4,Irp__AssociatedIrp__SystemBuffer==5,Irp__AssociatedIrp__SystemBuffer==6} @*/ Irp__AssociatedIrp__SystemBuffer = __VERIFIER_nondet_int();
  int /*@  predicates{mountName__NameLength!=0,mountName__NameLength!=1,mountName__NameLength!=2,mountName__NameLength!=3,mountName__NameLength!=4,mountName__NameLength!=5,mountName__NameLength!=6,mountName__NameLength==0,mountName__NameLength==1,mountName__NameLength==2,mountName__NameLength==3,mountName__NameLength==4,mountName__NameLength==5,mountName__NameLength==6} @*/ mountName__NameLength ;
  int /*@  predicates{disketteExtension__DeviceName__Length!=0,disketteExtension__DeviceName__Length!=1,disketteExtension__DeviceName__Length!=2,disketteExtension__DeviceName__Length!=3,disketteExtension__DeviceName__Length!=4,disketteExtension__DeviceName__Length!=5,disketteExtension__DeviceName__Length!=6,disketteExtension__DeviceName__Length==0,disketteExtension__DeviceName__Length==1,disketteExtension__DeviceName__Length==2,disketteExtension__DeviceName__Length==3,disketteExtension__DeviceName__Length==4,disketteExtension__DeviceName__Length==5,disketteExtension__DeviceName__Length==6,disketteExtension__DeviceName__Length==mountName__NameLength} @*/ disketteExtension__DeviceName__Length = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__USHORT!=0,sizeof__USHORT!=1,sizeof__USHORT!=2,sizeof__USHORT!=3,sizeof__USHORT!=4,sizeof__USHORT!=5,sizeof__USHORT!=6,sizeof__USHORT==0,sizeof__USHORT==1,sizeof__USHORT==2,sizeof__USHORT==3,sizeof__USHORT==4,sizeof__USHORT==5,sizeof__USHORT==6} @*/ sizeof__USHORT = __VERIFIER_nondet_int();
  int /*@  predicates{disketteExtension__InterfaceString__Buffer!=0,disketteExtension__InterfaceString__Buffer!=1,disketteExtension__InterfaceString__Buffer!=2,disketteExtension__InterfaceString__Buffer!=3,disketteExtension__InterfaceString__Buffer!=4,disketteExtension__InterfaceString__Buffer!=5,disketteExtension__InterfaceString__Buffer!=6,disketteExtension__InterfaceString__Buffer==0,disketteExtension__InterfaceString__Buffer==1,disketteExtension__InterfaceString__Buffer==2,disketteExtension__InterfaceString__Buffer==3,disketteExtension__InterfaceString__Buffer==4,disketteExtension__InterfaceString__Buffer==5,disketteExtension__InterfaceString__Buffer==6} @*/ disketteExtension__InterfaceString__Buffer = __VERIFIER_nondet_int();
  int /*@  predicates{uniqueId__UniqueIdLength!=0,uniqueId__UniqueIdLength!=1,uniqueId__UniqueIdLength!=2,uniqueId__UniqueIdLength!=3,uniqueId__UniqueIdLength!=4,uniqueId__UniqueIdLength!=5,uniqueId__UniqueIdLength!=6,uniqueId__UniqueIdLength==0,uniqueId__UniqueIdLength==1,uniqueId__UniqueIdLength==2,uniqueId__UniqueIdLength==3,uniqueId__UniqueIdLength==4,uniqueId__UniqueIdLength==5,uniqueId__UniqueIdLength==6} @*/ uniqueId__UniqueIdLength ;
  int /*@  predicates{disketteExtension__InterfaceString__Length!=0,disketteExtension__InterfaceString__Length!=1,disketteExtension__InterfaceString__Length!=2,disketteExtension__InterfaceString__Length!=3,disketteExtension__InterfaceString__Length!=4,disketteExtension__InterfaceString__Length!=5,disketteExtension__InterfaceString__Length!=6,disketteExtension__InterfaceString__Length==0,disketteExtension__InterfaceString__Length==1,disketteExtension__InterfaceString__Length==2,disketteExtension__InterfaceString__Length==3,disketteExtension__InterfaceString__Length==4,disketteExtension__InterfaceString__Length==5,disketteExtension__InterfaceString__Length==6,disketteExtension__InterfaceString__Length==uniqueId__UniqueIdLength} @*/ disketteExtension__InterfaceString__Length = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__MOUNTDEV_UNIQUE_ID!=0,sizeof__MOUNTDEV_UNIQUE_ID!=1,sizeof__MOUNTDEV_UNIQUE_ID!=2,sizeof__MOUNTDEV_UNIQUE_ID!=3,sizeof__MOUNTDEV_UNIQUE_ID!=4,sizeof__MOUNTDEV_UNIQUE_ID!=5,sizeof__MOUNTDEV_UNIQUE_ID!=6,sizeof__MOUNTDEV_UNIQUE_ID==0,sizeof__MOUNTDEV_UNIQUE_ID==1,sizeof__MOUNTDEV_UNIQUE_ID==2,sizeof__MOUNTDEV_UNIQUE_ID==3,sizeof__MOUNTDEV_UNIQUE_ID==4,sizeof__MOUNTDEV_UNIQUE_ID==5,sizeof__MOUNTDEV_UNIQUE_ID==6,sizeof__MOUNTDEV_UNIQUE_ID>irpSp__Parameters__DeviceIoControl__OutputBufferLength} @*/ sizeof__MOUNTDEV_UNIQUE_ID = __VERIFIER_nondet_int();
  int /*@  predicates{irpSp__Parameters__DeviceIoControl__InputBufferLength!=0,irpSp__Parameters__DeviceIoControl__InputBufferLength!=1,irpSp__Parameters__DeviceIoControl__InputBufferLength!=2,irpSp__Parameters__DeviceIoControl__InputBufferLength!=3,irpSp__Parameters__DeviceIoControl__InputBufferLength!=4,irpSp__Parameters__DeviceIoControl__InputBufferLength!=5,irpSp__Parameters__DeviceIoControl__InputBufferLength!=6,irpSp__Parameters__DeviceIoControl__InputBufferLength==0,irpSp__Parameters__DeviceIoControl__InputBufferLength==1,irpSp__Parameters__DeviceIoControl__InputBufferLength==2,irpSp__Parameters__DeviceIoControl__InputBufferLength==3,irpSp__Parameters__DeviceIoControl__InputBufferLength==4,irpSp__Parameters__DeviceIoControl__InputBufferLength==5,irpSp__Parameters__DeviceIoControl__InputBufferLength==6} @*/ irpSp__Parameters__DeviceIoControl__InputBufferLength = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__FORMAT_PARAMETERS!=0,sizeof__FORMAT_PARAMETERS!=1,sizeof__FORMAT_PARAMETERS!=2,sizeof__FORMAT_PARAMETERS!=3,sizeof__FORMAT_PARAMETERS!=4,sizeof__FORMAT_PARAMETERS!=5,sizeof__FORMAT_PARAMETERS!=6,sizeof__FORMAT_PARAMETERS==0,sizeof__FORMAT_PARAMETERS==1,sizeof__FORMAT_PARAMETERS==2,sizeof__FORMAT_PARAMETERS==3,sizeof__FORMAT_PARAMETERS==4,sizeof__FORMAT_PARAMETERS==5,sizeof__FORMAT_PARAMETERS==6,sizeof__FORMAT_PARAMETERS>irpSp__Parameters__DeviceIoControl__InputBufferLength} @*/ sizeof__FORMAT_PARAMETERS = __VERIFIER_nondet_int();
  int /*@  predicates{irpSp__Parameters__DeviceIoControl__IoControlCode___1!=0,irpSp__Parameters__DeviceIoControl__IoControlCode___1!=1,irpSp__Parameters__DeviceIoControl__IoControlCode___1!=2,irpSp__Parameters__DeviceIoControl__IoControlCode___1!=3,irpSp__Parameters__DeviceIoControl__IoControlCode___1!=4,irpSp__Parameters__DeviceIoControl__IoControlCode___1!=5,irpSp__Parameters__DeviceIoControl__IoControlCode___1!=6,irpSp__Parameters__DeviceIoControl__IoControlCode___1==0,irpSp__Parameters__DeviceIoControl__IoControlCode___1==1,irpSp__Parameters__DeviceIoControl__IoControlCode___1==2,irpSp__Parameters__DeviceIoControl__IoControlCode___1==3,irpSp__Parameters__DeviceIoControl__IoControlCode___1==4,irpSp__Parameters__DeviceIoControl__IoControlCode___1==5,irpSp__Parameters__DeviceIoControl__IoControlCode___1==6} @*/ irpSp__Parameters__DeviceIoControl__IoControlCode___1 = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__FORMAT_EX_PARAMETERS!=0,sizeof__FORMAT_EX_PARAMETERS!=1,sizeof__FORMAT_EX_PARAMETERS!=2,sizeof__FORMAT_EX_PARAMETERS!=3,sizeof__FORMAT_EX_PARAMETERS!=4,sizeof__FORMAT_EX_PARAMETERS!=5,sizeof__FORMAT_EX_PARAMETERS!=6,sizeof__FORMAT_EX_PARAMETERS==0,sizeof__FORMAT_EX_PARAMETERS==1,sizeof__FORMAT_EX_PARAMETERS==2,sizeof__FORMAT_EX_PARAMETERS==3,sizeof__FORMAT_EX_PARAMETERS==4,sizeof__FORMAT_EX_PARAMETERS==5,sizeof__FORMAT_EX_PARAMETERS==6,sizeof__FORMAT_EX_PARAMETERS>irpSp__Parameters__DeviceIoControl__InputBufferLength} @*/ sizeof__FORMAT_EX_PARAMETERS = __VERIFIER_nondet_int();
  int /*@  predicates{formatExParameters__FormatGapLength!=0,formatExParameters__FormatGapLength!=1,formatExParameters__FormatGapLength!=2,formatExParameters__FormatGapLength!=3,formatExParameters__FormatGapLength!=4,formatExParameters__FormatGapLength!=5,formatExParameters__FormatGapLength!=6,formatExParameters__FormatGapLength==0,formatExParameters__FormatGapLength==1,formatExParameters__FormatGapLength==2,formatExParameters__FormatGapLength==3,formatExParameters__FormatGapLength==4,formatExParameters__FormatGapLength==5,formatExParameters__FormatGapLength==6,formatExParameters__FormatGapLength>=256} @*/ formatExParameters__FormatGapLength = __VERIFIER_nondet_int();
  int /*@  predicates{formatExParameters__SectorsPerTrack!=0,formatExParameters__SectorsPerTrack!=1,formatExParameters__SectorsPerTrack!=2,formatExParameters__SectorsPerTrack!=3,formatExParameters__SectorsPerTrack!=4,formatExParameters__SectorsPerTrack!=5,formatExParameters__SectorsPerTrack!=6,formatExParameters__SectorsPerTrack==0,formatExParameters__SectorsPerTrack==1,formatExParameters__SectorsPerTrack==2,formatExParameters__SectorsPerTrack==3,formatExParameters__SectorsPerTrack==4,formatExParameters__SectorsPerTrack==5,formatExParameters__SectorsPerTrack==6,formatExParameters__SectorsPerTrack>=256} @*/ formatExParameters__SectorsPerTrack = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__DISK_GEOMETRY!=0,sizeof__DISK_GEOMETRY!=1,sizeof__DISK_GEOMETRY!=2,sizeof__DISK_GEOMETRY!=3,sizeof__DISK_GEOMETRY!=4,sizeof__DISK_GEOMETRY!=5,sizeof__DISK_GEOMETRY!=6,sizeof__DISK_GEOMETRY==0,sizeof__DISK_GEOMETRY==1,sizeof__DISK_GEOMETRY==2,sizeof__DISK_GEOMETRY==3,sizeof__DISK_GEOMETRY==4,sizeof__DISK_GEOMETRY==5,sizeof__DISK_GEOMETRY==6} @*/ sizeof__DISK_GEOMETRY = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__IoStatus__Status___0==(-1),Irp__IoStatus__Status___0==(-1073741101),Irp__IoStatus__Status___0==(-1073741637),Irp__IoStatus__Status___0==(-1073741670),Irp__IoStatus__Status___0==(-1073741738),Irp__IoStatus__Status___0==(-1073741789),Irp__IoStatus__Status___0==(-1073741811),Irp__IoStatus__Status___0==(-1073741823),Irp__IoStatus__Status___0==(-2147483643),Irp__IoStatus__Status___0==0,Irp__IoStatus__Status___0==1,Irp__IoStatus__Status___0==259} @*/ Irp__IoStatus__Status___0 ;
  int /*@  predicates{disketteExtension!=0,disketteExtension!=1,disketteExtension!=2,disketteExtension!=3,disketteExtension!=4,disketteExtension!=5,disketteExtension!=6,disketteExtension==0,disketteExtension==1,disketteExtension==2,disketteExtension==3,disketteExtension==4,disketteExtension==5,disketteExtension==6} @*/ disketteExtension = __VERIFIER_nondet_int();
  int /*@  predicates{ntStatus==(-1),ntStatus==(-1073741101),ntStatus==(-1073741637),ntStatus==(-1073741670),ntStatus==(-1073741738),ntStatus==(-1073741789),ntStatus==(-1073741811),ntStatus==(-1073741823),ntStatus==(-2147483643),ntStatus==0,ntStatus==1,ntStatus==259} @*/ ntStatus ;
  int /*@  predicates{outputBufferLength!=0,outputBufferLength!=1,outputBufferLength!=2,outputBufferLength!=3,outputBufferLength!=4,outputBufferLength!=5,outputBufferLength!=6,outputBufferLength<sizeof__DISK_GEOMETRY,outputBufferLength==0,outputBufferLength==1,outputBufferLength==2,outputBufferLength==3,outputBufferLength==4,outputBufferLength==5,outputBufferLength==6,outputBufferLength==irpSp__Parameters__DeviceIoControl__OutputBufferLength} @*/ outputBufferLength ;
  int /*@  predicates{lowestDriveMediaType!=0,lowestDriveMediaType!=1,lowestDriveMediaType!=2,lowestDriveMediaType!=3,lowestDriveMediaType!=4,lowestDriveMediaType!=5,lowestDriveMediaType!=6,lowestDriveMediaType==0,lowestDriveMediaType==1,lowestDriveMediaType==2,lowestDriveMediaType==3,lowestDriveMediaType==4,lowestDriveMediaType==5,lowestDriveMediaType==6} @*/ lowestDriveMediaType = __VERIFIER_nondet_int();
  int /*@  predicates{highestDriveMediaType!=0,highestDriveMediaType!=1,highestDriveMediaType!=2,highestDriveMediaType!=3,highestDriveMediaType!=4,highestDriveMediaType!=5,highestDriveMediaType!=6,highestDriveMediaType==0,highestDriveMediaType==1,highestDriveMediaType==2,highestDriveMediaType==3,highestDriveMediaType==4,highestDriveMediaType==5,highestDriveMediaType==6} @*/ highestDriveMediaType = __VERIFIER_nondet_int();
  int /*@  predicates{formatExParametersSize!=0,formatExParametersSize!=1,formatExParametersSize!=2,formatExParametersSize!=3,formatExParametersSize!=4,formatExParametersSize!=5,formatExParametersSize!=6,formatExParametersSize==0,formatExParametersSize==1,formatExParametersSize==2,formatExParametersSize==3,formatExParametersSize==4,formatExParametersSize==5,formatExParametersSize==6,formatExParametersSize>irpSp__Parameters__DeviceIoControl__InputBufferLength} @*/ formatExParametersSize = __VERIFIER_nondet_int();
  int /*@  predicates{formatExParameters!=0,formatExParameters!=1,formatExParameters!=2,formatExParameters!=3,formatExParameters!=4,formatExParameters!=5,formatExParameters!=6,formatExParameters==0,formatExParameters==1,formatExParameters==2,formatExParameters==3,formatExParameters==4,formatExParameters==5,formatExParameters==6,formatExParameters==Irp__AssociatedIrp__SystemBuffer} @*/ formatExParameters ;
  int /*@  predicates{tmp==(-1),tmp==(-1073741101),tmp==(-1073741637),tmp==(-1073741670),tmp==(-1073741738),tmp==(-1073741789),tmp==(-1073741811),tmp==(-1073741823),tmp==(-2147483643),tmp==0,tmp==1,tmp==259} @*/ tmp ;
  int /*@  predicates{mountName!=0,mountName!=1,mountName!=2,mountName!=3,mountName!=4,mountName!=5,mountName!=6,mountName==0,mountName==1,mountName==2,mountName==3,mountName==4,mountName==5,mountName==6,mountName==Irp__AssociatedIrp__SystemBuffer} @*/ mountName ;
  int /*@  predicates{uniqueId!=0,uniqueId!=1,uniqueId!=2,uniqueId!=3,uniqueId!=4,uniqueId!=5,uniqueId!=6,uniqueId==0,uniqueId==1,uniqueId==2,uniqueId==3,uniqueId==4,uniqueId==5,uniqueId==6,uniqueId==Irp__AssociatedIrp__SystemBuffer} @*/ uniqueId ;
  int /*@  predicates{tmp___0==0,tmp___0==1} @*/ tmp___0 ;
  int __cil_tmp39 ;
  int __cil_tmp40 ;
  int /*@  predicates{__cil_tmp41!=0,__cil_tmp41!=1,__cil_tmp41!=2,__cil_tmp41!=3,__cil_tmp41!=4,__cil_tmp41!=5,__cil_tmp41!=6,__cil_tmp41!=irpSp__Parameters__DeviceIoControl__IoControlCode___1,__cil_tmp41==0,__cil_tmp41==1,__cil_tmp41==2,__cil_tmp41==3,__cil_tmp41==4,__cil_tmp41==5,__cil_tmp41==6,__cil_tmp41==irpSp__Parameters__DeviceIoControl__IoControlCode___1} @*/ __cil_tmp41 = __VERIFIER_nondet_int();
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  int /*@  predicates{__cil_tmp44!=0,__cil_tmp44!=1,__cil_tmp44!=2,__cil_tmp44!=3,__cil_tmp44!=4,__cil_tmp44!=5,__cil_tmp44!=6,__cil_tmp44!=irpSp__Parameters__DeviceIoControl__IoControlCode___1,__cil_tmp44==0,__cil_tmp44==1,__cil_tmp44==2,__cil_tmp44==3,__cil_tmp44==4,__cil_tmp44==5,__cil_tmp44==6,__cil_tmp44==irpSp__Parameters__DeviceIoControl__IoControlCode___1} @*/ __cil_tmp44 = __VERIFIER_nondet_int();
  int /*@  predicates{__cil_tmp45!=0,__cil_tmp45!=1,__cil_tmp45!=2,__cil_tmp45!=3,__cil_tmp45!=4,__cil_tmp45!=5,__cil_tmp45!=6,__cil_tmp45!=irpSp__Parameters__DeviceIoControl__IoControlCode___1,__cil_tmp45==0,__cil_tmp45==1,__cil_tmp45==2,__cil_tmp45==3,__cil_tmp45==4,__cil_tmp45==5,__cil_tmp45==6,__cil_tmp45==irpSp__Parameters__DeviceIoControl__IoControlCode___1} @*/ __cil_tmp45 = __VERIFIER_nondet_int();
  int __cil_tmp46 ;
  int __cil_tmp47 ;
  int __cil_tmp48 ;
  int __cil_tmp49 ;
  int /*@  predicates{__cil_tmp50!=0,__cil_tmp50!=1,__cil_tmp50!=2,__cil_tmp50!=3,__cil_tmp50!=4,__cil_tmp50!=5,__cil_tmp50!=6,__cil_tmp50!=irpSp__Parameters__DeviceIoControl__IoControlCode___1,__cil_tmp50==0,__cil_tmp50==1,__cil_tmp50==2,__cil_tmp50==3,__cil_tmp50==4,__cil_tmp50==5,__cil_tmp50==6,__cil_tmp50==irpSp__Parameters__DeviceIoControl__IoControlCode___1} @*/ __cil_tmp50 = __VERIFIER_nondet_int();
  int __cil_tmp51 ;
  int __cil_tmp52 ;
  int __cil_tmp53 ;
  int __cil_tmp54 ;
  int /*@  predicates{__cil_tmp55!=0,__cil_tmp55!=1,__cil_tmp55!=2,__cil_tmp55!=3,__cil_tmp55!=4,__cil_tmp55!=5,__cil_tmp55!=6,__cil_tmp55!=irpSp__Parameters__DeviceIoControl__IoControlCode___1,__cil_tmp55==0,__cil_tmp55==1,__cil_tmp55==2,__cil_tmp55==3,__cil_tmp55==4,__cil_tmp55==5,__cil_tmp55==6,__cil_tmp55==irpSp__Parameters__DeviceIoControl__IoControlCode___1} @*/ __cil_tmp55 = __VERIFIER_nondet_int();
  int __cil_tmp56 ;
  int __cil_tmp57 ;
  int __cil_tmp58 ;
  int __cil_tmp59 ;
  int /*@  predicates{__cil_tmp60!=0,__cil_tmp60!=1,__cil_tmp60!=2,__cil_tmp60!=3,__cil_tmp60!=4,__cil_tmp60!=5,__cil_tmp60!=6,__cil_tmp60!=irpSp__Parameters__DeviceIoControl__IoControlCode___1,__cil_tmp60==0,__cil_tmp60==1,__cil_tmp60==2,__cil_tmp60==3,__cil_tmp60==4,__cil_tmp60==5,__cil_tmp60==6,__cil_tmp60==irpSp__Parameters__DeviceIoControl__IoControlCode___1} @*/ __cil_tmp60 = __VERIFIER_nondet_int();
  int __cil_tmp61 ;
  int __cil_tmp62 ;
  int __cil_tmp63 ;
  int __cil_tmp64 ;
  int /*@  predicates{__cil_tmp65!=0,__cil_tmp65!=1,__cil_tmp65!=2,__cil_tmp65!=3,__cil_tmp65!=4,__cil_tmp65!=5,__cil_tmp65!=6,__cil_tmp65!=irpSp__Parameters__DeviceIoControl__IoControlCode___1,__cil_tmp65==0,__cil_tmp65==1,__cil_tmp65==2,__cil_tmp65==3,__cil_tmp65==4,__cil_tmp65==5,__cil_tmp65==6,__cil_tmp65==irpSp__Parameters__DeviceIoControl__IoControlCode___1} @*/ __cil_tmp65 = __VERIFIER_nondet_int();
  int /*@  predicates{__cil_tmp66!=0,__cil_tmp66!=1,__cil_tmp66!=2,__cil_tmp66!=3,__cil_tmp66!=4,__cil_tmp66!=5,__cil_tmp66!=6,__cil_tmp66!=irpSp__Parameters__DeviceIoControl__IoControlCode___1,__cil_tmp66==0,__cil_tmp66==1,__cil_tmp66==2,__cil_tmp66==3,__cil_tmp66==4,__cil_tmp66==5,__cil_tmp66==6,__cil_tmp66==irpSp__Parameters__DeviceIoControl__IoControlCode___1} @*/ __cil_tmp66 = __VERIFIER_nondet_int();
  int __cil_tmp67 ;
  int __cil_tmp68 ;
  int /*@  predicates{__cil_tmp69!=0,__cil_tmp69!=1,__cil_tmp69!=2,__cil_tmp69!=3,__cil_tmp69!=4,__cil_tmp69!=5,__cil_tmp69!=6,__cil_tmp69!=irpSp__Parameters__DeviceIoControl__IoControlCode___1,__cil_tmp69==0,__cil_tmp69==1,__cil_tmp69==2,__cil_tmp69==3,__cil_tmp69==4,__cil_tmp69==5,__cil_tmp69==6,__cil_tmp69==irpSp__Parameters__DeviceIoControl__IoControlCode___1} @*/ __cil_tmp69 = __VERIFIER_nondet_int();
  int __cil_tmp70 ;
  int __cil_tmp71 ;
  int /*@  predicates{__cil_tmp72!=0,__cil_tmp72!=1,__cil_tmp72!=2,__cil_tmp72!=3,__cil_tmp72!=4,__cil_tmp72!=5,__cil_tmp72!=6,__cil_tmp72!=irpSp__Parameters__DeviceIoControl__IoControlCode___1,__cil_tmp72==0,__cil_tmp72==1,__cil_tmp72==2,__cil_tmp72==3,__cil_tmp72==4,__cil_tmp72==5,__cil_tmp72==6,__cil_tmp72==irpSp__Parameters__DeviceIoControl__IoControlCode___1} @*/ __cil_tmp72 = __VERIFIER_nondet_int();
  int __cil_tmp73 ;
  int __cil_tmp74 ;
  int /*@  predicates{__cil_tmp75!=0,__cil_tmp75!=1,__cil_tmp75!=2,__cil_tmp75!=3,__cil_tmp75!=4,__cil_tmp75!=5,__cil_tmp75!=6,__cil_tmp75!=irpSp__Parameters__DeviceIoControl__IoControlCode___1,__cil_tmp75==0,__cil_tmp75==1,__cil_tmp75==2,__cil_tmp75==3,__cil_tmp75==4,__cil_tmp75==5,__cil_tmp75==6,__cil_tmp75==irpSp__Parameters__DeviceIoControl__IoControlCode___1} @*/ __cil_tmp75 = __VERIFIER_nondet_int();
  int __cil_tmp76 ;
  int __cil_tmp77 ;
  int /*@  predicates{__cil_tmp78!=0,__cil_tmp78!=1,__cil_tmp78!=2,__cil_tmp78!=3,__cil_tmp78!=4,__cil_tmp78!=5,__cil_tmp78!=6,__cil_tmp78!=irpSp__Parameters__DeviceIoControl__IoControlCode___1,__cil_tmp78==0,__cil_tmp78==1,__cil_tmp78==2,__cil_tmp78==3,__cil_tmp78==4,__cil_tmp78==5,__cil_tmp78==6,__cil_tmp78==irpSp__Parameters__DeviceIoControl__IoControlCode___1} @*/ __cil_tmp78 = __VERIFIER_nondet_int();
  int __cil_tmp79 ;
  int __cil_tmp80 ;
  int /*@  predicates{__cil_tmp81!=0,__cil_tmp81!=1,__cil_tmp81!=2,__cil_tmp81!=3,__cil_tmp81!=4,__cil_tmp81!=5,__cil_tmp81!=6,__cil_tmp81!=irpSp__Parameters__DeviceIoControl__IoControlCode___1,__cil_tmp81==0,__cil_tmp81==1,__cil_tmp81==2,__cil_tmp81==3,__cil_tmp81==4,__cil_tmp81==5,__cil_tmp81==6,__cil_tmp81==irpSp__Parameters__DeviceIoControl__IoControlCode___1} @*/ __cil_tmp81 = __VERIFIER_nondet_int();
  int /*@  predicates{__cil_tmp82>irpSp__Parameters__DeviceIoControl__OutputBufferLength} @*/ __cil_tmp82 ;
  int /*@  predicates{__cil_tmp83>irpSp__Parameters__DeviceIoControl__OutputBufferLength} @*/ __cil_tmp83 ;
  int __cil_tmp84 ;
  int __cil_tmp85 ;
  int __cil_tmp86 ;
  int __cil_tmp87 ;
  int /*@  predicates{__cil_tmp88!=0,__cil_tmp88!=1,__cil_tmp88!=2,__cil_tmp88!=3,__cil_tmp88!=4,__cil_tmp88!=5,__cil_tmp88!=6,__cil_tmp88!=irpSp__Parameters__DeviceIoControl__IoControlCode___1,__cil_tmp88==0,__cil_tmp88==1,__cil_tmp88==2,__cil_tmp88==3,__cil_tmp88==4,__cil_tmp88==5,__cil_tmp88==6,__cil_tmp88==irpSp__Parameters__DeviceIoControl__IoControlCode___1} @*/ __cil_tmp88 = __VERIFIER_nondet_int();
  int __cil_tmp89 ;
  int __cil_tmp90 ;
  long __cil_tmp91 ;

  {
  if(disketteExtension__HoldNewRequests){
    {



    if(irpSp__Parameters__DeviceIoControl__IoControlCode___1 != __cil_tmp41){
      {
      ntStatus = FloppyQueueRequest(disketteExtension, Irp);
      }
      return(ntStatus);
    }
    }
  }
  if(disketteExtension__IsRemoved){
    {
    Irp__IoStatus__Information = 0;
    Irp__IoStatus__Status___0 = -1073741738;
    myStatus = -1073741738;
    IofCompleteRequest(Irp, 0);
    }
    return(-1073741738);
  }
  if(! disketteExtension__IsStarted){
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
    tmp = IofCallDriver(disketteExtension__TargetObject, Irp);
    }
    return(tmp);
  }
  {



  if(irpSp__Parameters__DeviceIoControl__IoControlCode___1 == __cil_tmp44){
    goto switch_13_exp_0;
  } else {
    {

    if(irpSp__Parameters__DeviceIoControl__IoControlCode___1 == __cil_tmp45){
      goto switch_13_exp_1;
    } else {
      {





      if(irpSp__Parameters__DeviceIoControl__IoControlCode___1 == __cil_tmp50){
        goto switch_13_exp_2;
      } else {
        {





        if(irpSp__Parameters__DeviceIoControl__IoControlCode___1 == __cil_tmp55){
          goto switch_13_exp_3;
        } else {
          {





          if(irpSp__Parameters__DeviceIoControl__IoControlCode___1 == __cil_tmp60){
            goto switch_13_exp_4;
          } else {
            {





            if(irpSp__Parameters__DeviceIoControl__IoControlCode___1 == __cil_tmp65){
              goto switch_13_exp_5;
            } else {
              {

              if(irpSp__Parameters__DeviceIoControl__IoControlCode___1 == __cil_tmp66){
                goto switch_13_exp_6;
              } else {
                {



                if(irpSp__Parameters__DeviceIoControl__IoControlCode___1 == __cil_tmp69){
                  goto switch_13_exp_7;
                } else {
                  {



                  if(irpSp__Parameters__DeviceIoControl__IoControlCode___1 == __cil_tmp72){
                    goto switch_13_exp_8;
                  } else {
                    {



                    if(irpSp__Parameters__DeviceIoControl__IoControlCode___1 == __cil_tmp75){
                      goto switch_13_exp_9;
                    } else {
                      {



                      if(irpSp__Parameters__DeviceIoControl__IoControlCode___1 == __cil_tmp78){
                        goto switch_13_exp_10;
                      } else {
                        {



                        if(irpSp__Parameters__DeviceIoControl__IoControlCode___1 == __cil_tmp81){
                          goto switch_13_exp_11;
                        } else {
                          goto switch_13_default;
                          if(0){
                            switch_13_exp_0: ;
                            if(irpSp__Parameters__DeviceIoControl__OutputBufferLength < sizeof__MOUNTDEV_NAME){
                              ntStatus = -1073741811;
                              goto switch_13_break;
                            }
                            mountName = Irp__AssociatedIrp__SystemBuffer;
                            mountName__NameLength = disketteExtension__DeviceName__Length;
                            {
                            __cil_tmp82 = sizeof__USHORT + mountName__NameLength;
                            if(irpSp__Parameters__DeviceIoControl__OutputBufferLength < __cil_tmp82){
                              ntStatus = -2147483643;
                              Irp__IoStatus__Information = sizeof__MOUNTDEV_NAME;
                              goto switch_13_break;
                            }
                            }
                            ntStatus = 0;
                            Irp__IoStatus__Information = sizeof__USHORT + mountName__NameLength;
                            goto switch_13_break;
                            switch_13_exp_1: ;
                            if(! disketteExtension__InterfaceString__Buffer){
                              ntStatus = -1073741811;
                              goto switch_13_break;
                            } else {
                              if(irpSp__Parameters__DeviceIoControl__OutputBufferLength < sizeof__MOUNTDEV_UNIQUE_ID){
                                ntStatus = -1073741811;
                                goto switch_13_break;
                              }
                            }
                            uniqueId = Irp__AssociatedIrp__SystemBuffer;
                            uniqueId__UniqueIdLength = disketteExtension__InterfaceString__Length;
                            {
                            __cil_tmp83 = sizeof__USHORT + uniqueId__UniqueIdLength;
                            if(irpSp__Parameters__DeviceIoControl__OutputBufferLength < __cil_tmp83){
                              ntStatus = -2147483643;
                              Irp__IoStatus__Information = sizeof__MOUNTDEV_UNIQUE_ID;
                              goto switch_13_break;
                            }
                            }
                            ntStatus = 0;
                            Irp__IoStatus__Information = sizeof__USHORT + uniqueId__UniqueIdLength;
                            goto switch_13_break;
                            switch_13_exp_2: ;
                            switch_13_exp_3: ;
                            if(irpSp__Parameters__DeviceIoControl__InputBufferLength < sizeof__FORMAT_PARAMETERS){
                              ntStatus = -1073741811;
                              goto switch_13_break;
                            }
                            {
                            tmp___0 = FlCheckFormatParameters(disketteExtension, Irp__AssociatedIrp__SystemBuffer);
                            }
                            if(! tmp___0){
                              ntStatus = -1073741811;
                              goto switch_13_break;
                            }
                            {





                            if(irpSp__Parameters__DeviceIoControl__IoControlCode___1 == __cil_tmp88){
                              if(irpSp__Parameters__DeviceIoControl__InputBufferLength < sizeof__FORMAT_EX_PARAMETERS){
                                ntStatus = -1073741811;
                                goto switch_13_break;
                              }
                              formatExParameters = Irp__AssociatedIrp__SystemBuffer;
                              if(irpSp__Parameters__DeviceIoControl__InputBufferLength < formatExParametersSize){
                                ntStatus = -1073741811;
                                goto switch_13_break;
                              } else {
                                if(formatExParameters__FormatGapLength >= 256){
                                  ntStatus = -1073741811;
                                  goto switch_13_break;
                                } else {
                                  if(formatExParameters__SectorsPerTrack >= 256){
                                    ntStatus = -1073741811;
                                    goto switch_13_break;
                                  }
                                }
                              }
                            }
                            }
                            switch_13_exp_4: ;
                            switch_13_exp_5: ;
                            switch_13_exp_6: ;
                            switch_13_exp_7:
                            {
                            ntStatus = FlQueueIrpToThread(Irp, disketteExtension);
                            }
                            goto switch_13_break;
                            switch_13_exp_8: ;
                            switch_13_exp_9:
                            outputBufferLength = irpSp__Parameters__DeviceIoControl__OutputBufferLength;
                            if(outputBufferLength < sizeof__DISK_GEOMETRY){
                              ntStatus = -1073741789;
                              goto switch_13_break;
                            }
                            ntStatus = 0;
                            {
                            __cil_tmp89 = highestDriveMediaType - lowestDriveMediaType;
                            __cil_tmp90 = __cil_tmp89 + 1;
                            if(outputBufferLength < __cil_tmp90){
                              ntStatus = -2147483643;
                            }
                            }
                            goto switch_13_break;
                            switch_13_exp_10: ;
                            switch_13_exp_11: ;
                            switch_13_default: ;
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
                            ntStatus = IofCallDriver(disketteExtension__TargetObject,
                                                     Irp);
                            }
                            return(ntStatus);
                          } else {
                            switch_13_break: ;
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
  {
  __cil_tmp91 =(long)ntStatus;
  if(__cil_tmp91 != 259L){
    {
    Irp__IoStatus__Status___0 = ntStatus;
    myStatus = ntStatus;
    IofCompleteRequest(Irp, 0);
    }
  }
  }
  return(ntStatus);
}
}
int FlCheckFormatParameters(int /*@  predicates{DisketteExtension!=0,DisketteExtension!=1,DisketteExtension!=2,DisketteExtension!=3,DisketteExtension!=4,DisketteExtension!=5,DisketteExtension!=6,DisketteExtension==0,DisketteExtension==1,DisketteExtension==2,DisketteExtension==3,DisketteExtension==4,DisketteExtension==5,DisketteExtension==6} @*/ DisketteExtension , int /*@  predicates{FormatParameters!=0,FormatParameters!=1,FormatParameters!=2,FormatParameters!=3,FormatParameters!=4,FormatParameters!=5,FormatParameters!=6,FormatParameters==0,FormatParameters==1,FormatParameters==2,FormatParameters==3,FormatParameters==4,FormatParameters==5,FormatParameters==6} @*/ FormatParameters)
{ int /*@  predicates{DriveMediaConstants__driveMediaType__MediaType!=0,DriveMediaConstants__driveMediaType__MediaType!=1,DriveMediaConstants__driveMediaType__MediaType!=2,DriveMediaConstants__driveMediaType__MediaType!=3,DriveMediaConstants__driveMediaType__MediaType!=4,DriveMediaConstants__driveMediaType__MediaType!=5,DriveMediaConstants__driveMediaType__MediaType!=6,DriveMediaConstants__driveMediaType__MediaType==0,DriveMediaConstants__driveMediaType__MediaType==1,DriveMediaConstants__driveMediaType__MediaType==2,DriveMediaConstants__driveMediaType__MediaType==3,DriveMediaConstants__driveMediaType__MediaType==4,DriveMediaConstants__driveMediaType__MediaType==5,DriveMediaConstants__driveMediaType__MediaType==6} @*/ DriveMediaConstants__driveMediaType__MediaType = __VERIFIER_nondet_int();
  int /*@  predicates{FormatParameters__MediaType!=0,FormatParameters__MediaType!=1,FormatParameters__MediaType!=2,FormatParameters__MediaType!=3,FormatParameters__MediaType!=4,FormatParameters__MediaType!=5,FormatParameters__MediaType!=6,FormatParameters__MediaType!=DriveMediaConstants__driveMediaType__MediaType,FormatParameters__MediaType==0,FormatParameters__MediaType==1,FormatParameters__MediaType==2,FormatParameters__MediaType==3,FormatParameters__MediaType==4,FormatParameters__MediaType==5,FormatParameters__MediaType==6,FormatParameters__MediaType==DriveMediaConstants__driveMediaType__MediaType} @*/ FormatParameters__MediaType = __VERIFIER_nondet_int();
  int /*@  predicates{FAKE_CONDITION!=0,FAKE_CONDITION!=1,FAKE_CONDITION!=2,FAKE_CONDITION!=3,FAKE_CONDITION!=4,FAKE_CONDITION!=5,FAKE_CONDITION!=6,FAKE_CONDITION==0,FAKE_CONDITION==1,FAKE_CONDITION==2,FAKE_CONDITION==3,FAKE_CONDITION==4,FAKE_CONDITION==5,FAKE_CONDITION==6} @*/ FAKE_CONDITION = __VERIFIER_nondet_int();

  {
  if(DriveMediaConstants__driveMediaType__MediaType != FormatParameters__MediaType){
    return(0);
  } else {
    if(FAKE_CONDITION){
      return(0);
    } else {
      return(1);
    }
  }
}
}
int FloppyQueueRequest(int DisketteExtension , int Irp)
{ int Irp__IoStatus__Status ;
  int Irp__IoStatus__Information ;
  int Irp__Tail__Overlay__CurrentStackLocation__Control ;
  int ntStatus ;
  int FAKE_CONDITION = __VERIFIER_nondet_int();

  {
  PagingReferenceCount ++;
  if(PagingReferenceCount == 1){

  }
  if(FAKE_CONDITION){
    {
    Irp__IoStatus__Status = -1073741536;
    myStatus = -1073741536;
    Irp__IoStatus__Information = 0;
    IofCompleteRequest(Irp, 0);
    PagingReferenceCount --;
    }
    if(PagingReferenceCount == 0){

    }
    ntStatus = -1073741536;
  } else {
    Irp__IoStatus__Status = 259;
    myStatus = 259;

    if(pended == 0){
      pended = 1;
    } else {
      {
      errorFn();
      }
    }
    ntStatus = 259;
  }
  return(ntStatus);
}
}

void errorFn(void)
{

  {
 __VERIFIER_error();
  return;
}
}
