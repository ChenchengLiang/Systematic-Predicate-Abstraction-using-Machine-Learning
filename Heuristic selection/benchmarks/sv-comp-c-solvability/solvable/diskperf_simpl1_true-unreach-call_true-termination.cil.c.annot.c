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

void IofCompleteRequest(int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741789),Irp!=(-1073741823),Irp!=(-2147483643),Irp!=0,Irp!=1,Irp!=12,Irp!=2,Irp!=259,Irp!=3,Irp!=4,Irp!=458784,Irp!=8,Irp==(-1),Irp==(-1073741637),Irp==(-1073741789),Irp==(-1073741823),Irp==(-2147483643),Irp==0,Irp==1,Irp==12,Irp==2,Irp==259,Irp==3,Irp==4,Irp==458784,Irp==8} predicates_tpl{0==0} @*/ Irp , int /*@  predicates{PriorityBoost==0} @*/ PriorityBoost);
int __VERIFIER_nondet_int();
int /*@  predicates{s==0,s==1,s==2,s==3,s==4,s==5,s==6,s==7} @*/ s ;
int /*@  predicates{UNLOADED!=s,UNLOADED==0,UNLOADED==1,UNLOADED==2,UNLOADED==3,UNLOADED==4,UNLOADED==5,UNLOADED==6,UNLOADED==7} @*/ UNLOADED ;
int /*@  predicates{NP!=s,NP==0,NP==1,NP==2,NP==3,NP==4,NP==5,NP==6,NP==7,NP==s} @*/ NP ;
int /*@  predicates{DC!=s,DC==0,DC==1,DC==2,DC==3,DC==4,DC==5,DC==6,DC==7,DC==s} @*/ DC ;
int /*@  predicates{SKIP1==0,SKIP1==1,SKIP1==2,SKIP1==3,SKIP1==4,SKIP1==5,SKIP1==6,SKIP1==7,SKIP1==s} @*/ SKIP1 ;
int /*@  predicates{SKIP2!=s,SKIP2==0,SKIP2==1,SKIP2==2,SKIP2==3,SKIP2==4,SKIP2==5,SKIP2==6,SKIP2==7} @*/ SKIP2 ;
int /*@  predicates{MPR1==0,MPR1==1,MPR1==2,MPR1==3,MPR1==4,MPR1==5,MPR1==6,MPR1==7,MPR1==s} @*/ MPR1 ;
int /*@  predicates{MPR3==0,MPR3==1,MPR3==2,MPR3==3,MPR3==4,MPR3==5,MPR3==6,MPR3==7,MPR3==s} @*/ MPR3 ;
int /*@  predicates{IPC!=s,IPC==0,IPC==1,IPC==2,IPC==3,IPC==4,IPC==5,IPC==6,IPC==7} @*/ IPC ;
int /*@  predicates{pended==(-1),pended==(-1073741637),pended==(-1073741789),pended==(-1073741823),pended==(-2147483643),pended==0,pended==1,pended==12,pended==2,pended==259,pended==3,pended==4,pended==458784,pended==8} @*/ pended ;
int /*@  predicates{compFptr==(-1),compFptr==(-1073741637),compFptr==(-1073741789),compFptr==(-1073741823),compFptr==(-2147483643),compFptr==0,compFptr==1,compFptr==12,compFptr==2,compFptr==259,compFptr==3,compFptr==4,compFptr==458784,compFptr==8} @*/ compFptr ;
int /*@  predicates{compRegistered!=0,compRegistered==(-1),compRegistered==(-1073741637),compRegistered==(-1073741789),compRegistered==(-1073741823),compRegistered==(-2147483643),compRegistered==0,compRegistered==1,compRegistered==12,compRegistered==2,compRegistered==259,compRegistered==3,compRegistered==4,compRegistered==458784,compRegistered==8} @*/ compRegistered ;
int /*@  predicates{lowerDriverReturn==(-1),lowerDriverReturn==(-1073741637),lowerDriverReturn==(-1073741789),lowerDriverReturn==(-1073741823),lowerDriverReturn==(-2147483643),lowerDriverReturn==0,lowerDriverReturn==1,lowerDriverReturn==12,lowerDriverReturn==2,lowerDriverReturn==259,lowerDriverReturn==3,lowerDriverReturn==4,lowerDriverReturn==458784,lowerDriverReturn==8} @*/ lowerDriverReturn ;
int /*@  predicates{setEventCalled==(-1),setEventCalled==(-1073741637),setEventCalled==(-1073741789),setEventCalled==(-1073741823),setEventCalled==(-2147483643),setEventCalled==0,setEventCalled==1,setEventCalled==12,setEventCalled==2,setEventCalled==259,setEventCalled==3,setEventCalled==4,setEventCalled==458784,setEventCalled==8} @*/ setEventCalled ;
int /*@  predicates{customIrp==(-1),customIrp==(-1073741637),customIrp==(-1073741789),customIrp==(-1073741823),customIrp==(-2147483643),customIrp==0,customIrp==1,customIrp==12,customIrp==2,customIrp==259,customIrp==3,customIrp==4,customIrp==458784,customIrp==8} @*/ customIrp ;
int /*@  predicates{myStatus==(-1),myStatus==(-1073741637),myStatus==(-1073741789),myStatus==(-1073741823),myStatus==(-2147483643),myStatus==0,myStatus==1,myStatus==12,myStatus==2,myStatus==259,myStatus==3,myStatus==4,myStatus==458784,myStatus==8} @*/ myStatus ;
int /*@  predicates{routine==0,routine==1} @*/ routine ;
int /*@  predicates{pirp!=(-1),pirp!=(-1073741637),pirp!=(-1073741789),pirp!=(-1073741823),pirp!=(-2147483643),pirp!=0,pirp!=1,pirp!=12,pirp!=2,pirp!=259,pirp!=3,pirp!=4,pirp!=458784,pirp!=8,pirp==(-1),pirp==(-1073741637),pirp==(-1073741789),pirp==(-1073741823),pirp==(-2147483643),pirp==0,pirp==1,pirp==12,pirp==2,pirp==259,pirp==3,pirp==4,pirp==458784,pirp==8} @*/ pirp ;
int /*@  predicates{Executive==0} @*/ Executive ;
int /*@  predicates{KernelMode==0} @*/ KernelMode ;

void errorFn(void)
{

  {
 __VERIFIER_error();
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
void DiskPerfSyncFilterWithTarget(int /*@  predicates{FilterDevice!=(-1),FilterDevice!=(-1073741637),FilterDevice!=(-1073741789),FilterDevice!=(-1073741823),FilterDevice!=(-2147483643),FilterDevice!=0,FilterDevice!=1,FilterDevice!=12,FilterDevice!=2,FilterDevice!=259,FilterDevice!=3,FilterDevice!=4,FilterDevice!=458784,FilterDevice!=8,FilterDevice==(-1),FilterDevice==(-1073741637),FilterDevice==(-1073741789),FilterDevice==(-1073741823),FilterDevice==(-2147483643),FilterDevice==0,FilterDevice==1,FilterDevice==12,FilterDevice==2,FilterDevice==259,FilterDevice==3,FilterDevice==4,FilterDevice==458784,FilterDevice==8} @*/ FilterDevice , int /*@  predicates{TargetDevice!=(-1),TargetDevice!=(-1073741637),TargetDevice!=(-1073741789),TargetDevice!=(-1073741823),TargetDevice!=(-2147483643),TargetDevice!=0,TargetDevice!=1,TargetDevice!=12,TargetDevice!=2,TargetDevice!=259,TargetDevice!=3,TargetDevice!=4,TargetDevice!=458784,TargetDevice!=8,TargetDevice==(-1),TargetDevice==(-1073741637),TargetDevice==(-1073741789),TargetDevice==(-1073741823),TargetDevice==(-2147483643),TargetDevice==0,TargetDevice==1,TargetDevice==12,TargetDevice==2,TargetDevice==259,TargetDevice==3,TargetDevice==4,TargetDevice==458784,TargetDevice==8} @*/ TargetDevice)
{ int FilterDevice__Flags ;
  int TargetDevice__Characteristics ;
  int FilterDevice__Characteristics ;
  int propFlags ;

  {




  return;
}
}
int DiskPerfDispatchPnp(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741789),DeviceObject!=(-1073741823),DeviceObject!=(-2147483643),DeviceObject!=0,DeviceObject!=1,DeviceObject!=12,DeviceObject!=2,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=458784,DeviceObject!=8,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741789),DeviceObject==(-1073741823),DeviceObject==(-2147483643),DeviceObject==0,DeviceObject==1,DeviceObject==12,DeviceObject==2,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==458784,DeviceObject==8} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741789),Irp!=(-1073741823),Irp!=(-2147483643),Irp!=0,Irp!=1,Irp!=12,Irp!=2,Irp!=259,Irp!=3,Irp!=4,Irp!=458784,Irp!=8,Irp==(-1),Irp==(-1073741637),Irp==(-1073741789),Irp==(-1073741823),Irp==(-2147483643),Irp==0,Irp==1,Irp==12,Irp==2,Irp==259,Irp==3,Irp==4,Irp==458784,Irp==8} @*/ Irp)
{ int /*@  predicates{Irp__Tail__Overlay__CurrentStackLocation!=(-1),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741637),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741789),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741823),Irp__Tail__Overlay__CurrentStackLocation!=(-2147483643),Irp__Tail__Overlay__CurrentStackLocation!=0,Irp__Tail__Overlay__CurrentStackLocation!=1,Irp__Tail__Overlay__CurrentStackLocation!=12,Irp__Tail__Overlay__CurrentStackLocation!=2,Irp__Tail__Overlay__CurrentStackLocation!=259,Irp__Tail__Overlay__CurrentStackLocation!=3,Irp__Tail__Overlay__CurrentStackLocation!=4,Irp__Tail__Overlay__CurrentStackLocation!=458784,Irp__Tail__Overlay__CurrentStackLocation!=8,Irp__Tail__Overlay__CurrentStackLocation==(-1),Irp__Tail__Overlay__CurrentStackLocation==(-1073741637),Irp__Tail__Overlay__CurrentStackLocation==(-1073741789),Irp__Tail__Overlay__CurrentStackLocation==(-1073741823),Irp__Tail__Overlay__CurrentStackLocation==(-2147483643),Irp__Tail__Overlay__CurrentStackLocation==0,Irp__Tail__Overlay__CurrentStackLocation==1,Irp__Tail__Overlay__CurrentStackLocation==12,Irp__Tail__Overlay__CurrentStackLocation==2,Irp__Tail__Overlay__CurrentStackLocation==259,Irp__Tail__Overlay__CurrentStackLocation==3,Irp__Tail__Overlay__CurrentStackLocation==4,Irp__Tail__Overlay__CurrentStackLocation==458784,Irp__Tail__Overlay__CurrentStackLocation==8} @*/ Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int();
  int /*@  predicates{irpSp__MinorFunction!=(-1),irpSp__MinorFunction!=(-1073741637),irpSp__MinorFunction!=(-1073741789),irpSp__MinorFunction!=(-1073741823),irpSp__MinorFunction!=(-2147483643),irpSp__MinorFunction!=0,irpSp__MinorFunction!=1,irpSp__MinorFunction!=12,irpSp__MinorFunction!=2,irpSp__MinorFunction!=259,irpSp__MinorFunction!=3,irpSp__MinorFunction!=4,irpSp__MinorFunction!=458784,irpSp__MinorFunction!=8,irpSp__MinorFunction==(-1),irpSp__MinorFunction==(-1073741637),irpSp__MinorFunction==(-1073741789),irpSp__MinorFunction==(-1073741823),irpSp__MinorFunction==(-2147483643),irpSp__MinorFunction==0,irpSp__MinorFunction==1,irpSp__MinorFunction==12,irpSp__MinorFunction==2,irpSp__MinorFunction==259,irpSp__MinorFunction==3,irpSp__MinorFunction==4,irpSp__MinorFunction==458784,irpSp__MinorFunction==8} @*/ irpSp__MinorFunction = __VERIFIER_nondet_int();
  int /*@  predicates{irpSp!=(-1),irpSp!=(-1073741637),irpSp!=(-1073741789),irpSp!=(-1073741823),irpSp!=(-2147483643),irpSp!=0,irpSp!=1,irpSp!=12,irpSp!=2,irpSp!=259,irpSp!=3,irpSp!=4,irpSp!=458784,irpSp!=8,irpSp==(-1),irpSp==(-1073741637),irpSp==(-1073741789),irpSp==(-1073741823),irpSp==(-2147483643),irpSp==0,irpSp==1,irpSp==12,irpSp==2,irpSp==259,irpSp==3,irpSp==4,irpSp==458784,irpSp==8,irpSp==Irp__Tail__Overlay__CurrentStackLocation} @*/ irpSp ;
  int /*@  predicates{status==(-1),status==(-1073741637),status==(-1073741789),status==(-1073741823),status==(-2147483643),status==0,status==1,status==12,status==2,status==259,status==3,status==4,status==458784,status==8} @*/ status ;
  int /*@  predicates{tmp==(-1),tmp==(-1073741637),tmp==(-1073741789),tmp==(-1073741823),tmp==(-2147483643),tmp==0,tmp==1,tmp==12,tmp==2,tmp==259,tmp==3,tmp==4,tmp==458784,tmp==8} @*/ tmp ;

  {
  irpSp = Irp__Tail__Overlay__CurrentStackLocation;
  if(irpSp__MinorFunction == 0){
    goto switch_0_0;
  } else {
    if(irpSp__MinorFunction == 2){
      goto switch_0_2;
    } else {
      goto switch_0_default;
      if(0){
        switch_0_0:
        {
        status = DiskPerfStartDevice(DeviceObject, Irp);
        }
        goto switch_0_break;
        switch_0_2:
        {
        status = DiskPerfRemoveDevice(DeviceObject, Irp);
        }
        goto switch_0_break;
        switch_0_default:
        {
        tmp = DiskPerfSendToNextDriver(DeviceObject, Irp);
        }
        return(tmp);
      } else {
        switch_0_break: ;
      }
    }
  }
  return(status);
}
}
int DiskPerfIrpCompletion(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741789),DeviceObject!=(-1073741823),DeviceObject!=(-2147483643),DeviceObject!=0,DeviceObject!=1,DeviceObject!=12,DeviceObject!=2,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=458784,DeviceObject!=8,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741789),DeviceObject==(-1073741823),DeviceObject==(-2147483643),DeviceObject==0,DeviceObject==1,DeviceObject==12,DeviceObject==2,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==458784,DeviceObject==8} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741789),Irp!=(-1073741823),Irp!=(-2147483643),Irp!=0,Irp!=1,Irp!=12,Irp!=2,Irp!=259,Irp!=3,Irp!=4,Irp!=458784,Irp!=8,Irp==(-1),Irp==(-1073741637),Irp==(-1073741789),Irp==(-1073741823),Irp==(-2147483643),Irp==0,Irp==1,Irp==12,Irp==2,Irp==259,Irp==3,Irp==4,Irp==458784,Irp==8} @*/ Irp , int /*@  predicates{Context!=(-1),Context!=(-1073741637),Context!=(-1073741789),Context!=(-1073741823),Context!=(-2147483643),Context!=0,Context!=1,Context!=12,Context!=2,Context!=259,Context!=3,Context!=4,Context!=458784,Context!=8,Context==(-1),Context==(-1073741637),Context==(-1073741789),Context==(-1073741823),Context==(-2147483643),Context==0,Context==1,Context==12,Context==2,Context==259,Context==3,Context==4,Context==458784,Context==8} @*/ Context)
{ int /*@  predicates{Event!=(-1),Event!=(-1073741637),Event!=(-1073741789),Event!=(-1073741823),Event!=(-2147483643),Event!=0,Event!=1,Event!=12,Event!=2,Event!=259,Event!=3,Event!=4,Event!=458784,Event!=8,Event==(-1),Event==(-1073741637),Event==(-1073741789),Event==(-1073741823),Event==(-2147483643),Event==0,Event==1,Event==12,Event==2,Event==259,Event==3,Event==4,Event==458784,Event==8} @*/ Event ;

  {
  {
  Event = Context;
  KeSetEvent(Event, 0, 0);
  }
  return(-1073741802);
}
}
int DiskPerfStartDevice(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741789),DeviceObject!=(-1073741823),DeviceObject!=(-2147483643),DeviceObject!=0,DeviceObject!=1,DeviceObject!=12,DeviceObject!=2,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=458784,DeviceObject!=8,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741789),DeviceObject==(-1073741823),DeviceObject==(-2147483643),DeviceObject==0,DeviceObject==1,DeviceObject==12,DeviceObject==2,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==458784,DeviceObject==8} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741789),Irp!=(-1073741823),Irp!=(-2147483643),Irp!=0,Irp!=1,Irp!=12,Irp!=2,Irp!=259,Irp!=3,Irp!=4,Irp!=458784,Irp!=8,Irp==(-1),Irp==(-1073741637),Irp==(-1073741789),Irp==(-1073741823),Irp==(-2147483643),Irp==0,Irp==1,Irp==12,Irp==2,Irp==259,Irp==3,Irp==4,Irp==458784,Irp==8} @*/ Irp)
{ int /*@  predicates{DeviceObject__DeviceExtension!=(-1),DeviceObject__DeviceExtension!=(-1073741637),DeviceObject__DeviceExtension!=(-1073741789),DeviceObject__DeviceExtension!=(-1073741823),DeviceObject__DeviceExtension!=(-2147483643),DeviceObject__DeviceExtension!=0,DeviceObject__DeviceExtension!=1,DeviceObject__DeviceExtension!=12,DeviceObject__DeviceExtension!=2,DeviceObject__DeviceExtension!=259,DeviceObject__DeviceExtension!=3,DeviceObject__DeviceExtension!=4,DeviceObject__DeviceExtension!=458784,DeviceObject__DeviceExtension!=8,DeviceObject__DeviceExtension==(-1),DeviceObject__DeviceExtension==(-1073741637),DeviceObject__DeviceExtension==(-1073741789),DeviceObject__DeviceExtension==(-1073741823),DeviceObject__DeviceExtension==(-2147483643),DeviceObject__DeviceExtension==0,DeviceObject__DeviceExtension==1,DeviceObject__DeviceExtension==12,DeviceObject__DeviceExtension==2,DeviceObject__DeviceExtension==259,DeviceObject__DeviceExtension==3,DeviceObject__DeviceExtension==4,DeviceObject__DeviceExtension==458784,DeviceObject__DeviceExtension==8} @*/ DeviceObject__DeviceExtension = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension__TargetDeviceObject!=(-1),deviceExtension__TargetDeviceObject!=(-1073741637),deviceExtension__TargetDeviceObject!=(-1073741789),deviceExtension__TargetDeviceObject!=(-1073741823),deviceExtension__TargetDeviceObject!=(-2147483643),deviceExtension__TargetDeviceObject!=0,deviceExtension__TargetDeviceObject!=1,deviceExtension__TargetDeviceObject!=12,deviceExtension__TargetDeviceObject!=2,deviceExtension__TargetDeviceObject!=259,deviceExtension__TargetDeviceObject!=3,deviceExtension__TargetDeviceObject!=4,deviceExtension__TargetDeviceObject!=458784,deviceExtension__TargetDeviceObject!=8,deviceExtension__TargetDeviceObject==(-1),deviceExtension__TargetDeviceObject==(-1073741637),deviceExtension__TargetDeviceObject==(-1073741789),deviceExtension__TargetDeviceObject==(-1073741823),deviceExtension__TargetDeviceObject==(-2147483643),deviceExtension__TargetDeviceObject==0,deviceExtension__TargetDeviceObject==1,deviceExtension__TargetDeviceObject==12,deviceExtension__TargetDeviceObject==2,deviceExtension__TargetDeviceObject==259,deviceExtension__TargetDeviceObject==3,deviceExtension__TargetDeviceObject==4,deviceExtension__TargetDeviceObject==458784,deviceExtension__TargetDeviceObject==8} @*/ deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__IoStatus__Status==(-1),Irp__IoStatus__Status==(-1073741637),Irp__IoStatus__Status==(-1073741789),Irp__IoStatus__Status==(-1073741823),Irp__IoStatus__Status==(-2147483643),Irp__IoStatus__Status==0,Irp__IoStatus__Status==1,Irp__IoStatus__Status==12,Irp__IoStatus__Status==2,Irp__IoStatus__Status==259,Irp__IoStatus__Status==3,Irp__IoStatus__Status==4,Irp__IoStatus__Status==458784,Irp__IoStatus__Status==8} @*/ Irp__IoStatus__Status ;
  int /*@  predicates{deviceExtension!=(-1),deviceExtension!=(-1073741637),deviceExtension!=(-1073741789),deviceExtension!=(-1073741823),deviceExtension!=(-2147483643),deviceExtension!=0,deviceExtension!=1,deviceExtension!=12,deviceExtension!=2,deviceExtension!=259,deviceExtension!=3,deviceExtension!=4,deviceExtension!=458784,deviceExtension!=8,deviceExtension==(-1),deviceExtension==(-1073741637),deviceExtension==(-1073741789),deviceExtension==(-1073741823),deviceExtension==(-2147483643),deviceExtension==0,deviceExtension==1,deviceExtension==12,deviceExtension==2,deviceExtension==259,deviceExtension==3,deviceExtension==4,deviceExtension==458784,deviceExtension==8,deviceExtension==DeviceObject__DeviceExtension} @*/ deviceExtension ;
  int /*@  predicates{status==(-1),status==(-1073741637),status==(-1073741789),status==(-1073741823),status==(-2147483643),status==0,status==1,status==12,status==2,status==259,status==3,status==4,status==458784,status==8} @*/ status ;

  {
  {
  deviceExtension = DeviceObject__DeviceExtension;
  status = DiskPerfForwardIrpSynchronous(DeviceObject, Irp);
  DiskPerfSyncFilterWithTarget(DeviceObject, deviceExtension__TargetDeviceObject);
  DiskPerfRegisterDevice(DeviceObject);
  Irp__IoStatus__Status = status;
  myStatus = status;
  IofCompleteRequest(Irp, 0);
  }
  return(status);
}
}
int DiskPerfRemoveDevice(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741789),DeviceObject!=(-1073741823),DeviceObject!=(-2147483643),DeviceObject!=0,DeviceObject!=1,DeviceObject!=12,DeviceObject!=2,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=458784,DeviceObject!=8,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741789),DeviceObject==(-1073741823),DeviceObject==(-2147483643),DeviceObject==0,DeviceObject==1,DeviceObject==12,DeviceObject==2,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==458784,DeviceObject==8} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741789),Irp!=(-1073741823),Irp!=(-2147483643),Irp!=0,Irp!=1,Irp!=12,Irp!=2,Irp!=259,Irp!=3,Irp!=4,Irp!=458784,Irp!=8,Irp==(-1),Irp==(-1073741637),Irp==(-1073741789),Irp==(-1073741823),Irp==(-2147483643),Irp==0,Irp==1,Irp==12,Irp==2,Irp==259,Irp==3,Irp==4,Irp==458784,Irp==8} @*/ Irp)
{ int /*@  predicates{DeviceObject__DeviceExtension!=(-1),DeviceObject__DeviceExtension!=(-1073741637),DeviceObject__DeviceExtension!=(-1073741789),DeviceObject__DeviceExtension!=(-1073741823),DeviceObject__DeviceExtension!=(-2147483643),DeviceObject__DeviceExtension!=0,DeviceObject__DeviceExtension!=1,DeviceObject__DeviceExtension!=12,DeviceObject__DeviceExtension!=2,DeviceObject__DeviceExtension!=259,DeviceObject__DeviceExtension!=3,DeviceObject__DeviceExtension!=4,DeviceObject__DeviceExtension!=458784,DeviceObject__DeviceExtension!=8,DeviceObject__DeviceExtension==(-1),DeviceObject__DeviceExtension==(-1073741637),DeviceObject__DeviceExtension==(-1073741789),DeviceObject__DeviceExtension==(-1073741823),DeviceObject__DeviceExtension==(-2147483643),DeviceObject__DeviceExtension==0,DeviceObject__DeviceExtension==1,DeviceObject__DeviceExtension==12,DeviceObject__DeviceExtension==2,DeviceObject__DeviceExtension==259,DeviceObject__DeviceExtension==3,DeviceObject__DeviceExtension==4,DeviceObject__DeviceExtension==458784,DeviceObject__DeviceExtension==8} @*/ DeviceObject__DeviceExtension = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension__WmilibContext!=(-1),deviceExtension__WmilibContext!=(-1073741637),deviceExtension__WmilibContext!=(-1073741789),deviceExtension__WmilibContext!=(-1073741823),deviceExtension__WmilibContext!=(-2147483643),deviceExtension__WmilibContext!=0,deviceExtension__WmilibContext!=1,deviceExtension__WmilibContext!=12,deviceExtension__WmilibContext!=2,deviceExtension__WmilibContext!=259,deviceExtension__WmilibContext!=3,deviceExtension__WmilibContext!=4,deviceExtension__WmilibContext!=458784,deviceExtension__WmilibContext!=8,deviceExtension__WmilibContext==(-1),deviceExtension__WmilibContext==(-1073741637),deviceExtension__WmilibContext==(-1073741789),deviceExtension__WmilibContext==(-1073741823),deviceExtension__WmilibContext==(-2147483643),deviceExtension__WmilibContext==0,deviceExtension__WmilibContext==1,deviceExtension__WmilibContext==12,deviceExtension__WmilibContext==2,deviceExtension__WmilibContext==259,deviceExtension__WmilibContext==3,deviceExtension__WmilibContext==4,deviceExtension__WmilibContext==458784,deviceExtension__WmilibContext==8} @*/ deviceExtension__WmilibContext = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__IoStatus__Status==(-1),Irp__IoStatus__Status==(-1073741637),Irp__IoStatus__Status==(-1073741789),Irp__IoStatus__Status==(-1073741823),Irp__IoStatus__Status==(-2147483643),Irp__IoStatus__Status==0,Irp__IoStatus__Status==1,Irp__IoStatus__Status==12,Irp__IoStatus__Status==2,Irp__IoStatus__Status==259,Irp__IoStatus__Status==3,Irp__IoStatus__Status==4,Irp__IoStatus__Status==458784,Irp__IoStatus__Status==8} @*/ Irp__IoStatus__Status ;
  int /*@  predicates{status==(-1),status==(-1073741637),status==(-1073741789),status==(-1073741823),status==(-2147483643),status==0,status==1,status==12,status==2,status==259,status==3,status==4,status==458784,status==8} @*/ status ;
  int /*@  predicates{deviceExtension!=(-1),deviceExtension!=(-1073741637),deviceExtension!=(-1073741789),deviceExtension!=(-1073741823),deviceExtension!=(-2147483643),deviceExtension!=0,deviceExtension!=1,deviceExtension!=12,deviceExtension!=2,deviceExtension!=259,deviceExtension!=3,deviceExtension!=4,deviceExtension!=458784,deviceExtension!=8,deviceExtension==(-1),deviceExtension==(-1073741637),deviceExtension==(-1073741789),deviceExtension==(-1073741823),deviceExtension==(-2147483643),deviceExtension==0,deviceExtension==1,deviceExtension==12,deviceExtension==2,deviceExtension==259,deviceExtension==3,deviceExtension==4,deviceExtension==458784,deviceExtension==8,deviceExtension==DeviceObject__DeviceExtension} @*/ deviceExtension ;
  int /*@  predicates{wmilibContext!=(-1),wmilibContext!=(-1073741637),wmilibContext!=(-1073741789),wmilibContext!=(-1073741823),wmilibContext!=(-2147483643),wmilibContext!=0,wmilibContext!=1,wmilibContext!=12,wmilibContext!=2,wmilibContext!=259,wmilibContext!=3,wmilibContext!=4,wmilibContext!=458784,wmilibContext!=8,wmilibContext==(-1),wmilibContext==(-1073741637),wmilibContext==(-1073741789),wmilibContext==(-1073741823),wmilibContext==(-2147483643),wmilibContext==0,wmilibContext==1,wmilibContext==12,wmilibContext==2,wmilibContext==259,wmilibContext==3,wmilibContext==4,wmilibContext==458784,wmilibContext==8,wmilibContext==deviceExtension__WmilibContext} @*/ wmilibContext ;

  {
  {
  deviceExtension = DeviceObject__DeviceExtension;
  wmilibContext = deviceExtension__WmilibContext;
  status = DiskPerfForwardIrpSynchronous(DeviceObject, Irp);
  Irp__IoStatus__Status = status;
  myStatus = status;
  IofCompleteRequest(Irp, 0);
  }
  return(status);
}
}
int DiskPerfSendToNextDriver(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741789),DeviceObject!=(-1073741823),DeviceObject!=(-2147483643),DeviceObject!=0,DeviceObject!=1,DeviceObject!=12,DeviceObject!=2,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=458784,DeviceObject!=8,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741789),DeviceObject==(-1073741823),DeviceObject==(-2147483643),DeviceObject==0,DeviceObject==1,DeviceObject==12,DeviceObject==2,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==458784,DeviceObject==8} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741789),Irp!=(-1073741823),Irp!=(-2147483643),Irp!=0,Irp!=1,Irp!=12,Irp!=2,Irp!=259,Irp!=3,Irp!=4,Irp!=458784,Irp!=8,Irp==(-1),Irp==(-1073741637),Irp==(-1073741789),Irp==(-1073741823),Irp==(-2147483643),Irp==0,Irp==1,Irp==12,Irp==2,Irp==259,Irp==3,Irp==4,Irp==458784,Irp==8} @*/ Irp)
{ int Irp__CurrentLocation = __VERIFIER_nondet_int();
  int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int();
  int /*@  predicates{DeviceObject__DeviceExtension!=(-1),DeviceObject__DeviceExtension!=(-1073741637),DeviceObject__DeviceExtension!=(-1073741789),DeviceObject__DeviceExtension!=(-1073741823),DeviceObject__DeviceExtension!=(-2147483643),DeviceObject__DeviceExtension!=0,DeviceObject__DeviceExtension!=1,DeviceObject__DeviceExtension!=12,DeviceObject__DeviceExtension!=2,DeviceObject__DeviceExtension!=259,DeviceObject__DeviceExtension!=3,DeviceObject__DeviceExtension!=4,DeviceObject__DeviceExtension!=458784,DeviceObject__DeviceExtension!=8,DeviceObject__DeviceExtension==(-1),DeviceObject__DeviceExtension==(-1073741637),DeviceObject__DeviceExtension==(-1073741789),DeviceObject__DeviceExtension==(-1073741823),DeviceObject__DeviceExtension==(-2147483643),DeviceObject__DeviceExtension==0,DeviceObject__DeviceExtension==1,DeviceObject__DeviceExtension==12,DeviceObject__DeviceExtension==2,DeviceObject__DeviceExtension==259,DeviceObject__DeviceExtension==3,DeviceObject__DeviceExtension==4,DeviceObject__DeviceExtension==458784,DeviceObject__DeviceExtension==8} @*/ DeviceObject__DeviceExtension = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension__TargetDeviceObject!=(-1),deviceExtension__TargetDeviceObject!=(-1073741637),deviceExtension__TargetDeviceObject!=(-1073741789),deviceExtension__TargetDeviceObject!=(-1073741823),deviceExtension__TargetDeviceObject!=(-2147483643),deviceExtension__TargetDeviceObject!=0,deviceExtension__TargetDeviceObject!=1,deviceExtension__TargetDeviceObject!=12,deviceExtension__TargetDeviceObject!=2,deviceExtension__TargetDeviceObject!=259,deviceExtension__TargetDeviceObject!=3,deviceExtension__TargetDeviceObject!=4,deviceExtension__TargetDeviceObject!=458784,deviceExtension__TargetDeviceObject!=8,deviceExtension__TargetDeviceObject==(-1),deviceExtension__TargetDeviceObject==(-1073741637),deviceExtension__TargetDeviceObject==(-1073741789),deviceExtension__TargetDeviceObject==(-1073741823),deviceExtension__TargetDeviceObject==(-2147483643),deviceExtension__TargetDeviceObject==0,deviceExtension__TargetDeviceObject==1,deviceExtension__TargetDeviceObject==12,deviceExtension__TargetDeviceObject==2,deviceExtension__TargetDeviceObject==259,deviceExtension__TargetDeviceObject==3,deviceExtension__TargetDeviceObject==4,deviceExtension__TargetDeviceObject==458784,deviceExtension__TargetDeviceObject==8} @*/ deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension!=(-1),deviceExtension!=(-1073741637),deviceExtension!=(-1073741789),deviceExtension!=(-1073741823),deviceExtension!=(-2147483643),deviceExtension!=0,deviceExtension!=1,deviceExtension!=12,deviceExtension!=2,deviceExtension!=259,deviceExtension!=3,deviceExtension!=4,deviceExtension!=458784,deviceExtension!=8,deviceExtension==(-1),deviceExtension==(-1073741637),deviceExtension==(-1073741789),deviceExtension==(-1073741823),deviceExtension==(-2147483643),deviceExtension==0,deviceExtension==1,deviceExtension==12,deviceExtension==2,deviceExtension==259,deviceExtension==3,deviceExtension==4,deviceExtension==458784,deviceExtension==8,deviceExtension==DeviceObject__DeviceExtension} @*/ deviceExtension ;
  int /*@  predicates{tmp==(-1),tmp==(-1073741637),tmp==(-1073741789),tmp==(-1073741823),tmp==(-2147483643),tmp==0,tmp==1,tmp==12,tmp==2,tmp==259,tmp==3,tmp==4,tmp==458784,tmp==8} @*/ tmp ;

  {
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
  deviceExtension = DeviceObject__DeviceExtension;
  tmp = IofCallDriver(deviceExtension__TargetDeviceObject, Irp);
  }
  return(tmp);
}
}
int DiskPerfDispatchPower(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741789),DeviceObject!=(-1073741823),DeviceObject!=(-2147483643),DeviceObject!=0,DeviceObject!=1,DeviceObject!=12,DeviceObject!=2,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=458784,DeviceObject!=8,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741789),DeviceObject==(-1073741823),DeviceObject==(-2147483643),DeviceObject==0,DeviceObject==1,DeviceObject==12,DeviceObject==2,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==458784,DeviceObject==8} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741789),Irp!=(-1073741823),Irp!=(-2147483643),Irp!=0,Irp!=1,Irp!=12,Irp!=2,Irp!=259,Irp!=3,Irp!=4,Irp!=458784,Irp!=8,Irp==(-1),Irp==(-1073741637),Irp==(-1073741789),Irp==(-1073741823),Irp==(-2147483643),Irp==0,Irp==1,Irp==12,Irp==2,Irp==259,Irp==3,Irp==4,Irp==458784,Irp==8} @*/ Irp)
{ int Irp__CurrentLocation = __VERIFIER_nondet_int();
  int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int();
  int /*@  predicates{DeviceObject__DeviceExtension!=(-1),DeviceObject__DeviceExtension!=(-1073741637),DeviceObject__DeviceExtension!=(-1073741789),DeviceObject__DeviceExtension!=(-1073741823),DeviceObject__DeviceExtension!=(-2147483643),DeviceObject__DeviceExtension!=0,DeviceObject__DeviceExtension!=1,DeviceObject__DeviceExtension!=12,DeviceObject__DeviceExtension!=2,DeviceObject__DeviceExtension!=259,DeviceObject__DeviceExtension!=3,DeviceObject__DeviceExtension!=4,DeviceObject__DeviceExtension!=458784,DeviceObject__DeviceExtension!=8,DeviceObject__DeviceExtension==(-1),DeviceObject__DeviceExtension==(-1073741637),DeviceObject__DeviceExtension==(-1073741789),DeviceObject__DeviceExtension==(-1073741823),DeviceObject__DeviceExtension==(-2147483643),DeviceObject__DeviceExtension==0,DeviceObject__DeviceExtension==1,DeviceObject__DeviceExtension==12,DeviceObject__DeviceExtension==2,DeviceObject__DeviceExtension==259,DeviceObject__DeviceExtension==3,DeviceObject__DeviceExtension==4,DeviceObject__DeviceExtension==458784,DeviceObject__DeviceExtension==8} @*/ DeviceObject__DeviceExtension = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension__TargetDeviceObject!=(-1),deviceExtension__TargetDeviceObject!=(-1073741637),deviceExtension__TargetDeviceObject!=(-1073741789),deviceExtension__TargetDeviceObject!=(-1073741823),deviceExtension__TargetDeviceObject!=(-2147483643),deviceExtension__TargetDeviceObject!=0,deviceExtension__TargetDeviceObject!=1,deviceExtension__TargetDeviceObject!=12,deviceExtension__TargetDeviceObject!=2,deviceExtension__TargetDeviceObject!=259,deviceExtension__TargetDeviceObject!=3,deviceExtension__TargetDeviceObject!=4,deviceExtension__TargetDeviceObject!=458784,deviceExtension__TargetDeviceObject!=8,deviceExtension__TargetDeviceObject==(-1),deviceExtension__TargetDeviceObject==(-1073741637),deviceExtension__TargetDeviceObject==(-1073741789),deviceExtension__TargetDeviceObject==(-1073741823),deviceExtension__TargetDeviceObject==(-2147483643),deviceExtension__TargetDeviceObject==0,deviceExtension__TargetDeviceObject==1,deviceExtension__TargetDeviceObject==12,deviceExtension__TargetDeviceObject==2,deviceExtension__TargetDeviceObject==259,deviceExtension__TargetDeviceObject==3,deviceExtension__TargetDeviceObject==4,deviceExtension__TargetDeviceObject==458784,deviceExtension__TargetDeviceObject==8} @*/ deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension!=(-1),deviceExtension!=(-1073741637),deviceExtension!=(-1073741789),deviceExtension!=(-1073741823),deviceExtension!=(-2147483643),deviceExtension!=0,deviceExtension!=1,deviceExtension!=12,deviceExtension!=2,deviceExtension!=259,deviceExtension!=3,deviceExtension!=4,deviceExtension!=458784,deviceExtension!=8,deviceExtension==(-1),deviceExtension==(-1073741637),deviceExtension==(-1073741789),deviceExtension==(-1073741823),deviceExtension==(-2147483643),deviceExtension==0,deviceExtension==1,deviceExtension==12,deviceExtension==2,deviceExtension==259,deviceExtension==3,deviceExtension==4,deviceExtension==458784,deviceExtension==8,deviceExtension==DeviceObject__DeviceExtension} @*/ deviceExtension ;
  int /*@  predicates{tmp==(-1),tmp==(-1073741637),tmp==(-1073741789),tmp==(-1073741823),tmp==(-2147483643),tmp==0,tmp==1,tmp==12,tmp==2,tmp==259,tmp==3,tmp==4,tmp==458784,tmp==8} @*/ tmp ;

  {
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
  deviceExtension = DeviceObject__DeviceExtension;
  tmp = PoCallDriver(deviceExtension__TargetDeviceObject, Irp);
  }
  return(tmp);
}
}
int DiskPerfForwardIrpSynchronous(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741789),DeviceObject!=(-1073741823),DeviceObject!=(-2147483643),DeviceObject!=0,DeviceObject!=1,DeviceObject!=12,DeviceObject!=2,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=458784,DeviceObject!=8,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741789),DeviceObject==(-1073741823),DeviceObject==(-2147483643),DeviceObject==0,DeviceObject==1,DeviceObject==12,DeviceObject==2,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==458784,DeviceObject==8} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741789),Irp!=(-1073741823),Irp!=(-2147483643),Irp!=0,Irp!=1,Irp!=12,Irp!=2,Irp!=259,Irp!=3,Irp!=4,Irp!=458784,Irp!=8,Irp==(-1),Irp==(-1073741637),Irp==(-1073741789),Irp==(-1073741823),Irp==(-2147483643),Irp==0,Irp==1,Irp==12,Irp==2,Irp==259,Irp==3,Irp==4,Irp==458784,Irp==8} @*/ Irp)
{ int /*@  predicates{Irp__Tail__Overlay__CurrentStackLocation!=(-1),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741637),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741789),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741823),Irp__Tail__Overlay__CurrentStackLocation!=(-2147483643),Irp__Tail__Overlay__CurrentStackLocation!=0,Irp__Tail__Overlay__CurrentStackLocation!=1,Irp__Tail__Overlay__CurrentStackLocation!=12,Irp__Tail__Overlay__CurrentStackLocation!=2,Irp__Tail__Overlay__CurrentStackLocation!=259,Irp__Tail__Overlay__CurrentStackLocation!=3,Irp__Tail__Overlay__CurrentStackLocation!=4,Irp__Tail__Overlay__CurrentStackLocation!=458784,Irp__Tail__Overlay__CurrentStackLocation!=8,Irp__Tail__Overlay__CurrentStackLocation==(-1),Irp__Tail__Overlay__CurrentStackLocation==(-1073741637),Irp__Tail__Overlay__CurrentStackLocation==(-1073741789),Irp__Tail__Overlay__CurrentStackLocation==(-1073741823),Irp__Tail__Overlay__CurrentStackLocation==(-2147483643),Irp__Tail__Overlay__CurrentStackLocation==0,Irp__Tail__Overlay__CurrentStackLocation==1,Irp__Tail__Overlay__CurrentStackLocation==12,Irp__Tail__Overlay__CurrentStackLocation==2,Irp__Tail__Overlay__CurrentStackLocation==259,Irp__Tail__Overlay__CurrentStackLocation==3,Irp__Tail__Overlay__CurrentStackLocation==4,Irp__Tail__Overlay__CurrentStackLocation==458784,Irp__Tail__Overlay__CurrentStackLocation==8} @*/ Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int();
  int /*@  predicates{DeviceObject__DeviceExtension!=(-1),DeviceObject__DeviceExtension!=(-1073741637),DeviceObject__DeviceExtension!=(-1073741789),DeviceObject__DeviceExtension!=(-1073741823),DeviceObject__DeviceExtension!=(-2147483643),DeviceObject__DeviceExtension!=0,DeviceObject__DeviceExtension!=1,DeviceObject__DeviceExtension!=12,DeviceObject__DeviceExtension!=2,DeviceObject__DeviceExtension!=259,DeviceObject__DeviceExtension!=3,DeviceObject__DeviceExtension!=4,DeviceObject__DeviceExtension!=458784,DeviceObject__DeviceExtension!=8,DeviceObject__DeviceExtension==(-1),DeviceObject__DeviceExtension==(-1073741637),DeviceObject__DeviceExtension==(-1073741789),DeviceObject__DeviceExtension==(-1073741823),DeviceObject__DeviceExtension==(-2147483643),DeviceObject__DeviceExtension==0,DeviceObject__DeviceExtension==1,DeviceObject__DeviceExtension==12,DeviceObject__DeviceExtension==2,DeviceObject__DeviceExtension==259,DeviceObject__DeviceExtension==3,DeviceObject__DeviceExtension==4,DeviceObject__DeviceExtension==458784,DeviceObject__DeviceExtension==8} @*/ DeviceObject__DeviceExtension = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension__TargetDeviceObject!=(-1),deviceExtension__TargetDeviceObject!=(-1073741637),deviceExtension__TargetDeviceObject!=(-1073741789),deviceExtension__TargetDeviceObject!=(-1073741823),deviceExtension__TargetDeviceObject!=(-2147483643),deviceExtension__TargetDeviceObject!=0,deviceExtension__TargetDeviceObject!=1,deviceExtension__TargetDeviceObject!=12,deviceExtension__TargetDeviceObject!=2,deviceExtension__TargetDeviceObject!=259,deviceExtension__TargetDeviceObject!=3,deviceExtension__TargetDeviceObject!=4,deviceExtension__TargetDeviceObject!=458784,deviceExtension__TargetDeviceObject!=8,deviceExtension__TargetDeviceObject==(-1),deviceExtension__TargetDeviceObject==(-1073741637),deviceExtension__TargetDeviceObject==(-1073741789),deviceExtension__TargetDeviceObject==(-1073741823),deviceExtension__TargetDeviceObject==(-2147483643),deviceExtension__TargetDeviceObject==0,deviceExtension__TargetDeviceObject==1,deviceExtension__TargetDeviceObject==12,deviceExtension__TargetDeviceObject==2,deviceExtension__TargetDeviceObject==259,deviceExtension__TargetDeviceObject==3,deviceExtension__TargetDeviceObject==4,deviceExtension__TargetDeviceObject==458784,deviceExtension__TargetDeviceObject==8} @*/ deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension!=(-1),deviceExtension!=(-1073741637),deviceExtension!=(-1073741789),deviceExtension!=(-1073741823),deviceExtension!=(-2147483643),deviceExtension!=0,deviceExtension!=1,deviceExtension!=12,deviceExtension!=2,deviceExtension!=259,deviceExtension!=3,deviceExtension!=4,deviceExtension!=458784,deviceExtension!=8,deviceExtension==(-1),deviceExtension==(-1073741637),deviceExtension==(-1073741789),deviceExtension==(-1073741823),deviceExtension==(-2147483643),deviceExtension==0,deviceExtension==1,deviceExtension==12,deviceExtension==2,deviceExtension==259,deviceExtension==3,deviceExtension==4,deviceExtension==458784,deviceExtension==8,deviceExtension==DeviceObject__DeviceExtension} @*/ deviceExtension ;
  int /*@  predicates{event!=(-1),event!=(-1073741637),event!=(-1073741789),event!=(-1073741823),event!=(-2147483643),event!=0,event!=1,event!=12,event!=2,event!=259,event!=3,event!=4,event!=458784,event!=8,event==(-1),event==(-1073741637),event==(-1073741789),event==(-1073741823),event==(-2147483643),event==0,event==1,event==12,event==2,event==259,event==3,event==4,event==458784,event==8} @*/ event = __VERIFIER_nondet_int();
  int /*@  predicates{status==(-1),status==(-1073741637),status==(-1073741789),status==(-1073741823),status==(-2147483643),status==0,status==1,status==12,status==2,status==259,status==3,status==4,status==458784,status==8} @*/ status ;
  int /*@  predicates{nextIrpSp__Control==0} @*/ nextIrpSp__Control ;
  int /*@  predicates{irpSp!=(-1),irpSp!=(-1073741637),irpSp!=(-1073741789),irpSp!=(-1073741823),irpSp!=(-2147483643),irpSp!=0,irpSp!=1,irpSp!=12,irpSp!=2,irpSp!=259,irpSp!=3,irpSp!=4,irpSp!=458784,irpSp!=8,irpSp==(-1),irpSp==(-1073741637),irpSp==(-1073741789),irpSp==(-1073741823),irpSp==(-2147483643),irpSp==0,irpSp==1,irpSp==12,irpSp==2,irpSp==259,irpSp==3,irpSp==4,irpSp==458784,irpSp==8,irpSp==Irp__Tail__Overlay__CurrentStackLocation} @*/ irpSp ;
  int nextIrpSp ;
  int /*@  predicates{irpSp__Context!=(-1),irpSp__Context!=(-1073741637),irpSp__Context!=(-1073741789),irpSp__Context!=(-1073741823),irpSp__Context!=(-2147483643),irpSp__Context!=0,irpSp__Context!=1,irpSp__Context!=12,irpSp__Context!=2,irpSp__Context!=259,irpSp__Context!=3,irpSp__Context!=4,irpSp__Context!=458784,irpSp__Context!=8,irpSp__Context==(-1),irpSp__Context==(-1073741637),irpSp__Context==(-1073741789),irpSp__Context==(-1073741823),irpSp__Context==(-2147483643),irpSp__Context==0,irpSp__Context==1,irpSp__Context==12,irpSp__Context==2,irpSp__Context==259,irpSp__Context==3,irpSp__Context==4,irpSp__Context==458784,irpSp__Context==8,irpSp__Context==event} @*/ irpSp__Context ;
  int /*@  predicates{irpSp__Control==224} @*/ irpSp__Control ;
  int irpSp___0 ;
  long __cil_tmp15 ;

  {
  deviceExtension = DeviceObject__DeviceExtension;
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
      routine = 0;
    }
  }
  {
  irpSp___0 = Irp__Tail__Overlay__CurrentStackLocation - 1;
  irpSp__Context = event;
  irpSp__Control = 224;
  status = IofCallDriver(deviceExtension__TargetDeviceObject, Irp);
  }
  {
  __cil_tmp15 =(long)status;
  if(__cil_tmp15 == 259L){
    {
    KeWaitForSingleObject(event, Executive, KernelMode, 0, 0);
    status = myStatus;
    }
  }
  }
  return(status);
}
}
int DiskPerfCreate(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741789),DeviceObject!=(-1073741823),DeviceObject!=(-2147483643),DeviceObject!=0,DeviceObject!=1,DeviceObject!=12,DeviceObject!=2,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=458784,DeviceObject!=8,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741789),DeviceObject==(-1073741823),DeviceObject==(-2147483643),DeviceObject==0,DeviceObject==1,DeviceObject==12,DeviceObject==2,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==458784,DeviceObject==8} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741789),Irp!=(-1073741823),Irp!=(-2147483643),Irp!=0,Irp!=1,Irp!=12,Irp!=2,Irp!=259,Irp!=3,Irp!=4,Irp!=458784,Irp!=8,Irp==(-1),Irp==(-1073741637),Irp==(-1073741789),Irp==(-1073741823),Irp==(-2147483643),Irp==0,Irp==1,Irp==12,Irp==2,Irp==259,Irp==3,Irp==4,Irp==458784,Irp==8} @*/ Irp)
{

  {
  {
  myStatus = 0;
  IofCompleteRequest(Irp, 0);
  }
  return(0);
}
}
int DiskPerfIoCompletion(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741789),DeviceObject!=(-1073741823),DeviceObject!=(-2147483643),DeviceObject!=0,DeviceObject!=1,DeviceObject!=12,DeviceObject!=2,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=458784,DeviceObject!=8,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741789),DeviceObject==(-1073741823),DeviceObject==(-2147483643),DeviceObject==0,DeviceObject==1,DeviceObject==12,DeviceObject==2,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==458784,DeviceObject==8} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741789),Irp!=(-1073741823),Irp!=(-2147483643),Irp!=0,Irp!=1,Irp!=12,Irp!=2,Irp!=259,Irp!=3,Irp!=4,Irp!=458784,Irp!=8,Irp==(-1),Irp==(-1073741637),Irp==(-1073741789),Irp==(-1073741823),Irp==(-2147483643),Irp==0,Irp==1,Irp==12,Irp==2,Irp==259,Irp==3,Irp==4,Irp==458784,Irp==8} @*/ Irp , int /*@  predicates{Context!=(-1),Context!=(-1073741637),Context!=(-1073741789),Context!=(-1073741823),Context!=(-2147483643),Context!=0,Context!=1,Context!=12,Context!=2,Context!=259,Context!=3,Context!=4,Context!=458784,Context!=8,Context==(-1),Context==(-1073741637),Context==(-1073741789),Context==(-1073741823),Context==(-2147483643),Context==0,Context==1,Context==12,Context==2,Context==259,Context==3,Context==4,Context==458784,Context==8} @*/ Context)
{ int /*@  predicates{irpStack__MajorFunction!=(-1),irpStack__MajorFunction!=(-1073741637),irpStack__MajorFunction!=(-1073741789),irpStack__MajorFunction!=(-1073741823),irpStack__MajorFunction!=(-2147483643),irpStack__MajorFunction!=0,irpStack__MajorFunction!=1,irpStack__MajorFunction!=12,irpStack__MajorFunction!=2,irpStack__MajorFunction!=259,irpStack__MajorFunction!=3,irpStack__MajorFunction!=4,irpStack__MajorFunction!=458784,irpStack__MajorFunction!=8,irpStack__MajorFunction==(-1),irpStack__MajorFunction==(-1073741637),irpStack__MajorFunction==(-1073741789),irpStack__MajorFunction==(-1073741823),irpStack__MajorFunction==(-2147483643),irpStack__MajorFunction==0,irpStack__MajorFunction==1,irpStack__MajorFunction==12,irpStack__MajorFunction==2,irpStack__MajorFunction==259,irpStack__MajorFunction==3,irpStack__MajorFunction==4,irpStack__MajorFunction==458784,irpStack__MajorFunction==8} @*/ irpStack__MajorFunction = __VERIFIER_nondet_int();
  int partitionCounters__BytesRead__QuadPart = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__IoStatus__Information!=(-1),Irp__IoStatus__Information!=(-1073741637),Irp__IoStatus__Information!=(-1073741789),Irp__IoStatus__Information!=(-1073741823),Irp__IoStatus__Information!=(-2147483643),Irp__IoStatus__Information!=0,Irp__IoStatus__Information!=1,Irp__IoStatus__Information!=12,Irp__IoStatus__Information!=2,Irp__IoStatus__Information!=259,Irp__IoStatus__Information!=3,Irp__IoStatus__Information!=4,Irp__IoStatus__Information!=458784,Irp__IoStatus__Information!=8,Irp__IoStatus__Information==(-1),Irp__IoStatus__Information==(-1073741637),Irp__IoStatus__Information==(-1073741789),Irp__IoStatus__Information==(-1073741823),Irp__IoStatus__Information==(-2147483643),Irp__IoStatus__Information==0,Irp__IoStatus__Information==1,Irp__IoStatus__Information==12,Irp__IoStatus__Information==2,Irp__IoStatus__Information==259,Irp__IoStatus__Information==3,Irp__IoStatus__Information==4,Irp__IoStatus__Information==458784,Irp__IoStatus__Information==8} @*/ Irp__IoStatus__Information = __VERIFIER_nondet_int();
  int partitionCounters__ReadCount = __VERIFIER_nondet_int();
  int partitionCounters__ReadTime__QuadPart = __VERIFIER_nondet_int();
  int /*@  predicates{difference__QuadPart!=(-1),difference__QuadPart!=(-1073741637),difference__QuadPart!=(-1073741789),difference__QuadPart!=(-1073741823),difference__QuadPart!=(-2147483643),difference__QuadPart!=0,difference__QuadPart!=1,difference__QuadPart!=12,difference__QuadPart!=2,difference__QuadPart!=259,difference__QuadPart!=3,difference__QuadPart!=4,difference__QuadPart!=458784,difference__QuadPart!=8,difference__QuadPart==(-1),difference__QuadPart==(-1073741637),difference__QuadPart==(-1073741789),difference__QuadPart==(-1073741823),difference__QuadPart==(-2147483643),difference__QuadPart==0,difference__QuadPart==1,difference__QuadPart==12,difference__QuadPart==2,difference__QuadPart==259,difference__QuadPart==3,difference__QuadPart==4,difference__QuadPart==458784,difference__QuadPart==8} @*/ difference__QuadPart = __VERIFIER_nondet_int();
  int partitionCounters__BytesWritten__QuadPart = __VERIFIER_nondet_int();
  int partitionCounters__WriteCount = __VERIFIER_nondet_int();
  int partitionCounters__WriteTime__QuadPart = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__Flags!=(-1),Irp__Flags!=(-1073741637),Irp__Flags!=(-1073741789),Irp__Flags!=(-1073741823),Irp__Flags!=(-2147483643),Irp__Flags!=0,Irp__Flags!=1,Irp__Flags!=12,Irp__Flags!=2,Irp__Flags!=259,Irp__Flags!=3,Irp__Flags!=4,Irp__Flags!=458784,Irp__Flags!=8,Irp__Flags==(-1),Irp__Flags==(-1073741637),Irp__Flags==(-1073741789),Irp__Flags==(-1073741823),Irp__Flags==(-2147483643),Irp__Flags==0,Irp__Flags==1,Irp__Flags==12,Irp__Flags==2,Irp__Flags==259,Irp__Flags==3,Irp__Flags==4,Irp__Flags==458784,Irp__Flags==8} @*/ Irp__Flags = __VERIFIER_nondet_int();
  int partitionCounters__SplitCount = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__PendingReturned!=(-1),Irp__PendingReturned!=(-1073741637),Irp__PendingReturned!=(-1073741789),Irp__PendingReturned!=(-1073741823),Irp__PendingReturned!=(-2147483643),Irp__PendingReturned!=0,Irp__PendingReturned!=1,Irp__PendingReturned!=12,Irp__PendingReturned!=2,Irp__PendingReturned!=259,Irp__PendingReturned!=3,Irp__PendingReturned!=4,Irp__PendingReturned!=458784,Irp__PendingReturned!=8,Irp__PendingReturned==(-1),Irp__PendingReturned==(-1073741637),Irp__PendingReturned==(-1073741789),Irp__PendingReturned==(-1073741823),Irp__PendingReturned==(-2147483643),Irp__PendingReturned==0,Irp__PendingReturned==1,Irp__PendingReturned==12,Irp__PendingReturned==2,Irp__PendingReturned==259,Irp__PendingReturned==3,Irp__PendingReturned==4,Irp__PendingReturned==458784,Irp__PendingReturned==8} @*/ Irp__PendingReturned = __VERIFIER_nondet_int();
  int Irp__Tail__Overlay__CurrentStackLocation__Control ;
  int /*@  predicates{partitionCounters!=(-1),partitionCounters!=(-1073741637),partitionCounters!=(-1073741789),partitionCounters!=(-1073741823),partitionCounters!=(-2147483643),partitionCounters!=0,partitionCounters!=1,partitionCounters!=12,partitionCounters!=2,partitionCounters!=259,partitionCounters!=3,partitionCounters!=4,partitionCounters!=458784,partitionCounters!=8,partitionCounters==(-1),partitionCounters==(-1073741637),partitionCounters==(-1073741789),partitionCounters==(-1073741823),partitionCounters==(-2147483643),partitionCounters==0,partitionCounters==1,partitionCounters==12,partitionCounters==2,partitionCounters==259,partitionCounters==3,partitionCounters==4,partitionCounters==458784,partitionCounters==8} @*/ partitionCounters = __VERIFIER_nondet_int();
  int /*@  predicates{queueLen!=(-1),queueLen!=(-1073741637),queueLen!=(-1073741789),queueLen!=(-1073741823),queueLen!=(-2147483643),queueLen!=0,queueLen!=1,queueLen!=12,queueLen!=2,queueLen!=259,queueLen!=3,queueLen!=4,queueLen!=458784,queueLen!=8,queueLen==(-1),queueLen==(-1073741637),queueLen==(-1073741789),queueLen==(-1073741823),queueLen==(-2147483643),queueLen==0,queueLen==1,queueLen==12,queueLen==2,queueLen==259,queueLen==3,queueLen==4,queueLen==458784,queueLen==8} @*/ queueLen = __VERIFIER_nondet_int();

  {
  if(partitionCounters == 0){
    return(0);
  }
  if(queueLen < 0){

  }
  if(queueLen == 0){

  }
  if(irpStack__MajorFunction == 3){
    partitionCounters__BytesRead__QuadPart += Irp__IoStatus__Information;
    partitionCounters__ReadCount ++;
    partitionCounters__ReadTime__QuadPart += difference__QuadPart;
  } else {
    partitionCounters__BytesWritten__QuadPart += Irp__IoStatus__Information;
    partitionCounters__WriteCount ++;
    partitionCounters__WriteTime__QuadPart += difference__QuadPart;
  }
  if(Irp__Flags != 8){
    partitionCounters__SplitCount ++;
  }
  else {
  }
  if(Irp__PendingReturned){
    if(pended == 0){
      pended = 1;
    } else {
      {
      errorFn();
      }
    }

  }
  return(0);
}
}
int DiskPerfDeviceControl(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741789),DeviceObject!=(-1073741823),DeviceObject!=(-2147483643),DeviceObject!=0,DeviceObject!=1,DeviceObject!=12,DeviceObject!=2,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=458784,DeviceObject!=8,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741789),DeviceObject==(-1073741823),DeviceObject==(-2147483643),DeviceObject==0,DeviceObject==1,DeviceObject==12,DeviceObject==2,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==458784,DeviceObject==8} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741789),Irp!=(-1073741823),Irp!=(-2147483643),Irp!=0,Irp!=1,Irp!=12,Irp!=2,Irp!=259,Irp!=3,Irp!=4,Irp!=458784,Irp!=8,Irp==(-1),Irp==(-1073741637),Irp==(-1073741789),Irp==(-1073741823),Irp==(-2147483643),Irp==0,Irp==1,Irp==12,Irp==2,Irp==259,Irp==3,Irp==4,Irp==458784,Irp==8} @*/ Irp)
{ int Irp__CurrentLocation = __VERIFIER_nondet_int();
  int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int();
  int /*@  predicates{DeviceObject__DeviceExtension!=(-1),DeviceObject__DeviceExtension!=(-1073741637),DeviceObject__DeviceExtension!=(-1073741789),DeviceObject__DeviceExtension!=(-1073741823),DeviceObject__DeviceExtension!=(-2147483643),DeviceObject__DeviceExtension!=0,DeviceObject__DeviceExtension!=1,DeviceObject__DeviceExtension!=12,DeviceObject__DeviceExtension!=2,DeviceObject__DeviceExtension!=259,DeviceObject__DeviceExtension!=3,DeviceObject__DeviceExtension!=4,DeviceObject__DeviceExtension!=458784,DeviceObject__DeviceExtension!=8,DeviceObject__DeviceExtension==(-1),DeviceObject__DeviceExtension==(-1073741637),DeviceObject__DeviceExtension==(-1073741789),DeviceObject__DeviceExtension==(-1073741823),DeviceObject__DeviceExtension==(-2147483643),DeviceObject__DeviceExtension==0,DeviceObject__DeviceExtension==1,DeviceObject__DeviceExtension==12,DeviceObject__DeviceExtension==2,DeviceObject__DeviceExtension==259,DeviceObject__DeviceExtension==3,DeviceObject__DeviceExtension==4,DeviceObject__DeviceExtension==458784,DeviceObject__DeviceExtension==8} @*/ DeviceObject__DeviceExtension = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension__TargetDeviceObject!=(-1),deviceExtension__TargetDeviceObject!=(-1073741637),deviceExtension__TargetDeviceObject!=(-1073741789),deviceExtension__TargetDeviceObject!=(-1073741823),deviceExtension__TargetDeviceObject!=(-2147483643),deviceExtension__TargetDeviceObject!=0,deviceExtension__TargetDeviceObject!=1,deviceExtension__TargetDeviceObject!=12,deviceExtension__TargetDeviceObject!=2,deviceExtension__TargetDeviceObject!=259,deviceExtension__TargetDeviceObject!=3,deviceExtension__TargetDeviceObject!=4,deviceExtension__TargetDeviceObject!=458784,deviceExtension__TargetDeviceObject!=8,deviceExtension__TargetDeviceObject==(-1),deviceExtension__TargetDeviceObject==(-1073741637),deviceExtension__TargetDeviceObject==(-1073741789),deviceExtension__TargetDeviceObject==(-1073741823),deviceExtension__TargetDeviceObject==(-2147483643),deviceExtension__TargetDeviceObject==0,deviceExtension__TargetDeviceObject==1,deviceExtension__TargetDeviceObject==12,deviceExtension__TargetDeviceObject==2,deviceExtension__TargetDeviceObject==259,deviceExtension__TargetDeviceObject==3,deviceExtension__TargetDeviceObject==4,deviceExtension__TargetDeviceObject==458784,deviceExtension__TargetDeviceObject==8} @*/ deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int();
  int /*@  predicates{currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741637),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741789),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741823),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-2147483643),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=0,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=1,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=12,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=2,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=259,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=3,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=4,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=458784,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=8,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741637),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741789),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741823),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-2147483643),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==0,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==1,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==12,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==2,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==259,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==3,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==4,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==458784,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==8} @*/ currentIrpStack__Parameters__DeviceIoControl__IoControlCode = __VERIFIER_nondet_int();
  int /*@  predicates{currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741637),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741789),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741823),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-2147483643),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=0,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=1,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=12,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=2,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=259,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=3,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=4,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=458784,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=8,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741637),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741789),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741823),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-2147483643),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==0,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==1,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==12,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==2,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==259,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==3,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==4,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==458784,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==8} @*/ currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__DISK_PERFORMANCE!=(-1),sizeof__DISK_PERFORMANCE!=(-1073741637),sizeof__DISK_PERFORMANCE!=(-1073741789),sizeof__DISK_PERFORMANCE!=(-1073741823),sizeof__DISK_PERFORMANCE!=(-2147483643),sizeof__DISK_PERFORMANCE!=0,sizeof__DISK_PERFORMANCE!=1,sizeof__DISK_PERFORMANCE!=12,sizeof__DISK_PERFORMANCE!=2,sizeof__DISK_PERFORMANCE!=259,sizeof__DISK_PERFORMANCE!=3,sizeof__DISK_PERFORMANCE!=4,sizeof__DISK_PERFORMANCE!=458784,sizeof__DISK_PERFORMANCE!=8,sizeof__DISK_PERFORMANCE==(-1),sizeof__DISK_PERFORMANCE==(-1073741637),sizeof__DISK_PERFORMANCE==(-1073741789),sizeof__DISK_PERFORMANCE==(-1073741823),sizeof__DISK_PERFORMANCE==(-2147483643),sizeof__DISK_PERFORMANCE==0,sizeof__DISK_PERFORMANCE==1,sizeof__DISK_PERFORMANCE==12,sizeof__DISK_PERFORMANCE==2,sizeof__DISK_PERFORMANCE==259,sizeof__DISK_PERFORMANCE==3,sizeof__DISK_PERFORMANCE==4,sizeof__DISK_PERFORMANCE==458784,sizeof__DISK_PERFORMANCE==8,sizeof__DISK_PERFORMANCE>currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength} @*/ sizeof__DISK_PERFORMANCE = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__IoStatus__Information!=(-1),Irp__IoStatus__Information!=(-1073741637),Irp__IoStatus__Information!=(-1073741789),Irp__IoStatus__Information!=(-1073741823),Irp__IoStatus__Information!=(-2147483643),Irp__IoStatus__Information!=0,Irp__IoStatus__Information!=1,Irp__IoStatus__Information!=12,Irp__IoStatus__Information!=2,Irp__IoStatus__Information!=259,Irp__IoStatus__Information!=3,Irp__IoStatus__Information!=4,Irp__IoStatus__Information!=458784,Irp__IoStatus__Information!=8,Irp__IoStatus__Information==(-1),Irp__IoStatus__Information==(-1073741637),Irp__IoStatus__Information==(-1073741789),Irp__IoStatus__Information==(-1073741823),Irp__IoStatus__Information==(-2147483643),Irp__IoStatus__Information==0,Irp__IoStatus__Information==1,Irp__IoStatus__Information==12,Irp__IoStatus__Information==2,Irp__IoStatus__Information==259,Irp__IoStatus__Information==3,Irp__IoStatus__Information==4,Irp__IoStatus__Information==458784,Irp__IoStatus__Information==8,Irp__IoStatus__Information==sizeof__DISK_PERFORMANCE} @*/ Irp__IoStatus__Information ;
  int /*@  predicates{deviceExtension__DiskCounters!=(-1),deviceExtension__DiskCounters!=(-1073741637),deviceExtension__DiskCounters!=(-1073741789),deviceExtension__DiskCounters!=(-1073741823),deviceExtension__DiskCounters!=(-2147483643),deviceExtension__DiskCounters!=0,deviceExtension__DiskCounters!=1,deviceExtension__DiskCounters!=12,deviceExtension__DiskCounters!=2,deviceExtension__DiskCounters!=259,deviceExtension__DiskCounters!=3,deviceExtension__DiskCounters!=4,deviceExtension__DiskCounters!=458784,deviceExtension__DiskCounters!=8,deviceExtension__DiskCounters==(-1),deviceExtension__DiskCounters==(-1073741637),deviceExtension__DiskCounters==(-1073741789),deviceExtension__DiskCounters==(-1073741823),deviceExtension__DiskCounters==(-2147483643),deviceExtension__DiskCounters==0,deviceExtension__DiskCounters==1,deviceExtension__DiskCounters==12,deviceExtension__DiskCounters==2,deviceExtension__DiskCounters==259,deviceExtension__DiskCounters==3,deviceExtension__DiskCounters==4,deviceExtension__DiskCounters==458784,deviceExtension__DiskCounters==8} @*/ deviceExtension__DiskCounters = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__AssociatedIrp__SystemBuffer!=(-1),Irp__AssociatedIrp__SystemBuffer!=(-1073741637),Irp__AssociatedIrp__SystemBuffer!=(-1073741789),Irp__AssociatedIrp__SystemBuffer!=(-1073741823),Irp__AssociatedIrp__SystemBuffer!=(-2147483643),Irp__AssociatedIrp__SystemBuffer!=0,Irp__AssociatedIrp__SystemBuffer!=1,Irp__AssociatedIrp__SystemBuffer!=12,Irp__AssociatedIrp__SystemBuffer!=2,Irp__AssociatedIrp__SystemBuffer!=259,Irp__AssociatedIrp__SystemBuffer!=3,Irp__AssociatedIrp__SystemBuffer!=4,Irp__AssociatedIrp__SystemBuffer!=458784,Irp__AssociatedIrp__SystemBuffer!=8,Irp__AssociatedIrp__SystemBuffer==(-1),Irp__AssociatedIrp__SystemBuffer==(-1073741637),Irp__AssociatedIrp__SystemBuffer==(-1073741789),Irp__AssociatedIrp__SystemBuffer==(-1073741823),Irp__AssociatedIrp__SystemBuffer==(-2147483643),Irp__AssociatedIrp__SystemBuffer==0,Irp__AssociatedIrp__SystemBuffer==1,Irp__AssociatedIrp__SystemBuffer==12,Irp__AssociatedIrp__SystemBuffer==2,Irp__AssociatedIrp__SystemBuffer==259,Irp__AssociatedIrp__SystemBuffer==3,Irp__AssociatedIrp__SystemBuffer==4,Irp__AssociatedIrp__SystemBuffer==458784,Irp__AssociatedIrp__SystemBuffer==8} @*/ Irp__AssociatedIrp__SystemBuffer = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension__Processors!=(-1),deviceExtension__Processors!=(-1073741637),deviceExtension__Processors!=(-1073741789),deviceExtension__Processors!=(-1073741823),deviceExtension__Processors!=(-2147483643),deviceExtension__Processors!=0,deviceExtension__Processors!=1,deviceExtension__Processors!=12,deviceExtension__Processors!=2,deviceExtension__Processors!=259,deviceExtension__Processors!=3,deviceExtension__Processors!=4,deviceExtension__Processors!=458784,deviceExtension__Processors!=8,deviceExtension__Processors==(-1),deviceExtension__Processors==(-1073741637),deviceExtension__Processors==(-1073741789),deviceExtension__Processors==(-1073741823),deviceExtension__Processors==(-2147483643),deviceExtension__Processors==0,deviceExtension__Processors==1,deviceExtension__Processors==12,deviceExtension__Processors==2,deviceExtension__Processors==259,deviceExtension__Processors==3,deviceExtension__Processors==4,deviceExtension__Processors==458784,deviceExtension__Processors==8} @*/ deviceExtension__Processors = __VERIFIER_nondet_int();
  int /*@  predicates{totalCounters__QueueDepth!=(-1),totalCounters__QueueDepth!=(-1073741637),totalCounters__QueueDepth!=(-1073741789),totalCounters__QueueDepth!=(-1073741823),totalCounters__QueueDepth!=(-2147483643),totalCounters__QueueDepth!=0,totalCounters__QueueDepth!=1,totalCounters__QueueDepth!=12,totalCounters__QueueDepth!=2,totalCounters__QueueDepth!=259,totalCounters__QueueDepth!=3,totalCounters__QueueDepth!=4,totalCounters__QueueDepth!=458784,totalCounters__QueueDepth!=8,totalCounters__QueueDepth==(-1),totalCounters__QueueDepth==(-1073741637),totalCounters__QueueDepth==(-1073741789),totalCounters__QueueDepth==(-1073741823),totalCounters__QueueDepth==(-2147483643),totalCounters__QueueDepth==0,totalCounters__QueueDepth==1,totalCounters__QueueDepth==12,totalCounters__QueueDepth==2,totalCounters__QueueDepth==259,totalCounters__QueueDepth==3,totalCounters__QueueDepth==4,totalCounters__QueueDepth==458784,totalCounters__QueueDepth==8} @*/ totalCounters__QueueDepth ;
  int /*@  predicates{deviceExtension__QueueDepth!=(-1),deviceExtension__QueueDepth!=(-1073741637),deviceExtension__QueueDepth!=(-1073741789),deviceExtension__QueueDepth!=(-1073741823),deviceExtension__QueueDepth!=(-2147483643),deviceExtension__QueueDepth!=0,deviceExtension__QueueDepth!=1,deviceExtension__QueueDepth!=12,deviceExtension__QueueDepth!=2,deviceExtension__QueueDepth!=259,deviceExtension__QueueDepth!=3,deviceExtension__QueueDepth!=4,deviceExtension__QueueDepth!=458784,deviceExtension__QueueDepth!=8,deviceExtension__QueueDepth==(-1),deviceExtension__QueueDepth==(-1073741637),deviceExtension__QueueDepth==(-1073741789),deviceExtension__QueueDepth==(-1073741823),deviceExtension__QueueDepth==(-2147483643),deviceExtension__QueueDepth==0,deviceExtension__QueueDepth==1,deviceExtension__QueueDepth==12,deviceExtension__QueueDepth==2,deviceExtension__QueueDepth==259,deviceExtension__QueueDepth==3,deviceExtension__QueueDepth==4,deviceExtension__QueueDepth==458784,deviceExtension__QueueDepth==8,deviceExtension__QueueDepth==totalCounters__QueueDepth} @*/ deviceExtension__QueueDepth = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__IoStatus__Status==(-1),Irp__IoStatus__Status==(-1073741637),Irp__IoStatus__Status==(-1073741789),Irp__IoStatus__Status==(-1073741823),Irp__IoStatus__Status==(-2147483643),Irp__IoStatus__Status==0,Irp__IoStatus__Status==1,Irp__IoStatus__Status==12,Irp__IoStatus__Status==2,Irp__IoStatus__Status==259,Irp__IoStatus__Status==3,Irp__IoStatus__Status==4,Irp__IoStatus__Status==458784,Irp__IoStatus__Status==8} @*/ Irp__IoStatus__Status ;
  int /*@  predicates{deviceExtension!=(-1),deviceExtension!=(-1073741637),deviceExtension!=(-1073741789),deviceExtension!=(-1073741823),deviceExtension!=(-2147483643),deviceExtension!=0,deviceExtension!=1,deviceExtension!=12,deviceExtension!=2,deviceExtension!=259,deviceExtension!=3,deviceExtension!=4,deviceExtension!=458784,deviceExtension!=8,deviceExtension==(-1),deviceExtension==(-1073741637),deviceExtension==(-1073741789),deviceExtension==(-1073741823),deviceExtension==(-2147483643),deviceExtension==0,deviceExtension==1,deviceExtension==12,deviceExtension==2,deviceExtension==259,deviceExtension==3,deviceExtension==4,deviceExtension==458784,deviceExtension==8,deviceExtension==DeviceObject__DeviceExtension} @*/ deviceExtension ;
  int currentIrpStack ;
  int /*@  predicates{status==(-1),status==(-1073741637),status==(-1073741789),status==(-1073741823),status==(-2147483643),status==0,status==1,status==12,status==2,status==259,status==3,status==4,status==458784,status==8} @*/ status ;
  int /*@  predicates{i>=0,i>=deviceExtension__Processors} @*/ i ;
  int /*@  predicates{totalCounters!=(-1),totalCounters!=(-1073741637),totalCounters!=(-1073741789),totalCounters!=(-1073741823),totalCounters!=(-2147483643),totalCounters!=0,totalCounters!=1,totalCounters!=12,totalCounters!=2,totalCounters!=259,totalCounters!=3,totalCounters!=4,totalCounters!=458784,totalCounters!=8,totalCounters==(-1),totalCounters==(-1073741637),totalCounters==(-1073741789),totalCounters==(-1073741823),totalCounters==(-2147483643),totalCounters==0,totalCounters==1,totalCounters==12,totalCounters==2,totalCounters==259,totalCounters==3,totalCounters==4,totalCounters==458784,totalCounters==8,totalCounters==Irp__AssociatedIrp__SystemBuffer} @*/ totalCounters ;
  int /*@  predicates{diskCounters!=(-1),diskCounters!=(-1073741637),diskCounters!=(-1073741789),diskCounters!=(-1073741823),diskCounters!=(-2147483643),diskCounters!=0,diskCounters!=1,diskCounters!=12,diskCounters!=2,diskCounters!=259,diskCounters!=3,diskCounters!=4,diskCounters!=458784,diskCounters!=8,diskCounters==(-1),diskCounters==(-1073741637),diskCounters==(-1073741789),diskCounters==(-1073741823),diskCounters==(-2147483643),diskCounters==0,diskCounters==1,diskCounters==12,diskCounters==2,diskCounters==259,diskCounters==3,diskCounters==4,diskCounters==458784,diskCounters==8,diskCounters==deviceExtension__DiskCounters} @*/ diskCounters ;
  int /*@  predicates{tmp==(-1),tmp==(-1073741637),tmp==(-1073741789),tmp==(-1073741823),tmp==(-2147483643),tmp==0,tmp==1,tmp==12,tmp==2,tmp==259,tmp==3,tmp==4,tmp==458784,tmp==8} @*/ tmp ;
  int /*@  predicates{__cil_tmp24==32} @*/ __cil_tmp24 ;
  int /*@  predicates{__cil_tmp25==458752} @*/ __cil_tmp25 ;
  int /*@  predicates{__cil_tmp26!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp26==458784,__cil_tmp26==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp26 ;

  {
  deviceExtension = DeviceObject__DeviceExtension;
  currentIrpStack = Irp__Tail__Overlay__CurrentStackLocation;
  {
  __cil_tmp24 = 32;
  __cil_tmp25 = 458752;
  __cil_tmp26 = 458784;
  if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp26){
    if(currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength < sizeof__DISK_PERFORMANCE){
      status = -1073741789;
      Irp__IoStatus__Information = 0;
    } else {
      diskCounters = deviceExtension__DiskCounters;
      if(diskCounters == 0){
        {
        Irp__IoStatus__Status = -1073741823;
        myStatus = -1073741823;
        IofCompleteRequest(Irp, 0);
        }
        return(-1073741823);
      }
      totalCounters = Irp__AssociatedIrp__SystemBuffer;
      i = 0;
      {
      while(1){
        while_0_continue: ;

        if(i >= deviceExtension__Processors){
          goto while_1_break;
        }
        i ++;
      }
      while_0_break: ;
      }
      while_1_break:
      totalCounters__QueueDepth = deviceExtension__QueueDepth;
      status = 0;
      Irp__IoStatus__Information = sizeof__DISK_PERFORMANCE;
    }
    {
    Irp__IoStatus__Status = status;
    myStatus = status;
    IofCompleteRequest(Irp, 0);
    }
    return(status);
  } else {
    {
    Irp__CurrentLocation ++;
    Irp__Tail__Overlay__CurrentStackLocation ++;
    tmp = IofCallDriver(deviceExtension__TargetDeviceObject, Irp);
    }
    return(tmp);
  }
  }
}
}
int DiskPerfShutdownFlush(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741789),DeviceObject!=(-1073741823),DeviceObject!=(-2147483643),DeviceObject!=0,DeviceObject!=1,DeviceObject!=12,DeviceObject!=2,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=458784,DeviceObject!=8,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741789),DeviceObject==(-1073741823),DeviceObject==(-2147483643),DeviceObject==0,DeviceObject==1,DeviceObject==12,DeviceObject==2,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==458784,DeviceObject==8} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741789),Irp!=(-1073741823),Irp!=(-2147483643),Irp!=0,Irp!=1,Irp!=12,Irp!=2,Irp!=259,Irp!=3,Irp!=4,Irp!=458784,Irp!=8,Irp==(-1),Irp==(-1073741637),Irp==(-1073741789),Irp==(-1073741823),Irp==(-2147483643),Irp==0,Irp==1,Irp==12,Irp==2,Irp==259,Irp==3,Irp==4,Irp==458784,Irp==8} @*/ Irp)
{ int /*@  predicates{DeviceObject__DeviceExtension!=(-1),DeviceObject__DeviceExtension!=(-1073741637),DeviceObject__DeviceExtension!=(-1073741789),DeviceObject__DeviceExtension!=(-1073741823),DeviceObject__DeviceExtension!=(-2147483643),DeviceObject__DeviceExtension!=0,DeviceObject__DeviceExtension!=1,DeviceObject__DeviceExtension!=12,DeviceObject__DeviceExtension!=2,DeviceObject__DeviceExtension!=259,DeviceObject__DeviceExtension!=3,DeviceObject__DeviceExtension!=4,DeviceObject__DeviceExtension!=458784,DeviceObject__DeviceExtension!=8,DeviceObject__DeviceExtension==(-1),DeviceObject__DeviceExtension==(-1073741637),DeviceObject__DeviceExtension==(-1073741789),DeviceObject__DeviceExtension==(-1073741823),DeviceObject__DeviceExtension==(-2147483643),DeviceObject__DeviceExtension==0,DeviceObject__DeviceExtension==1,DeviceObject__DeviceExtension==12,DeviceObject__DeviceExtension==2,DeviceObject__DeviceExtension==259,DeviceObject__DeviceExtension==3,DeviceObject__DeviceExtension==4,DeviceObject__DeviceExtension==458784,DeviceObject__DeviceExtension==8} @*/ DeviceObject__DeviceExtension = __VERIFIER_nondet_int();
  int Irp__CurrentLocation = __VERIFIER_nondet_int();
  int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension__TargetDeviceObject!=(-1),deviceExtension__TargetDeviceObject!=(-1073741637),deviceExtension__TargetDeviceObject!=(-1073741789),deviceExtension__TargetDeviceObject!=(-1073741823),deviceExtension__TargetDeviceObject!=(-2147483643),deviceExtension__TargetDeviceObject!=0,deviceExtension__TargetDeviceObject!=1,deviceExtension__TargetDeviceObject!=12,deviceExtension__TargetDeviceObject!=2,deviceExtension__TargetDeviceObject!=259,deviceExtension__TargetDeviceObject!=3,deviceExtension__TargetDeviceObject!=4,deviceExtension__TargetDeviceObject!=458784,deviceExtension__TargetDeviceObject!=8,deviceExtension__TargetDeviceObject==(-1),deviceExtension__TargetDeviceObject==(-1073741637),deviceExtension__TargetDeviceObject==(-1073741789),deviceExtension__TargetDeviceObject==(-1073741823),deviceExtension__TargetDeviceObject==(-2147483643),deviceExtension__TargetDeviceObject==0,deviceExtension__TargetDeviceObject==1,deviceExtension__TargetDeviceObject==12,deviceExtension__TargetDeviceObject==2,deviceExtension__TargetDeviceObject==259,deviceExtension__TargetDeviceObject==3,deviceExtension__TargetDeviceObject==4,deviceExtension__TargetDeviceObject==458784,deviceExtension__TargetDeviceObject==8} @*/ deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension!=(-1),deviceExtension!=(-1073741637),deviceExtension!=(-1073741789),deviceExtension!=(-1073741823),deviceExtension!=(-2147483643),deviceExtension!=0,deviceExtension!=1,deviceExtension!=12,deviceExtension!=2,deviceExtension!=259,deviceExtension!=3,deviceExtension!=4,deviceExtension!=458784,deviceExtension!=8,deviceExtension==(-1),deviceExtension==(-1073741637),deviceExtension==(-1073741789),deviceExtension==(-1073741823),deviceExtension==(-2147483643),deviceExtension==0,deviceExtension==1,deviceExtension==12,deviceExtension==2,deviceExtension==259,deviceExtension==3,deviceExtension==4,deviceExtension==458784,deviceExtension==8,deviceExtension==DeviceObject__DeviceExtension} @*/ deviceExtension ;
  int /*@  predicates{tmp==(-1),tmp==(-1073741637),tmp==(-1073741789),tmp==(-1073741823),tmp==(-2147483643),tmp==0,tmp==1,tmp==12,tmp==2,tmp==259,tmp==3,tmp==4,tmp==458784,tmp==8} @*/ tmp ;

  {
  {
  deviceExtension = DeviceObject__DeviceExtension;
  Irp__CurrentLocation ++;
  Irp__Tail__Overlay__CurrentStackLocation ++;
  tmp = IofCallDriver(deviceExtension__TargetDeviceObject, Irp);
  }
  return(tmp);
}
}
void DiskPerfUnload(int /*@  predicates{DriverObject!=(-1),DriverObject!=(-1073741637),DriverObject!=(-1073741789),DriverObject!=(-1073741823),DriverObject!=(-2147483643),DriverObject!=0,DriverObject!=1,DriverObject!=12,DriverObject!=2,DriverObject!=259,DriverObject!=3,DriverObject!=4,DriverObject!=458784,DriverObject!=8,DriverObject==(-1),DriverObject==(-1073741637),DriverObject==(-1073741789),DriverObject==(-1073741823),DriverObject==(-2147483643),DriverObject==0,DriverObject==1,DriverObject==12,DriverObject==2,DriverObject==259,DriverObject==3,DriverObject==4,DriverObject==458784,DriverObject==8} @*/ DriverObject)
{

  {
  return;
}
}
int DiskPerfRegisterDevice(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741789),DeviceObject!=(-1073741823),DeviceObject!=(-2147483643),DeviceObject!=0,DeviceObject!=1,DeviceObject!=12,DeviceObject!=2,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=458784,DeviceObject!=8,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741789),DeviceObject==(-1073741823),DeviceObject==(-2147483643),DeviceObject==0,DeviceObject==1,DeviceObject==12,DeviceObject==2,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==458784,DeviceObject==8} @*/ DeviceObject)
{ int /*@  predicates{DeviceObject__DeviceExtension!=(-1),DeviceObject__DeviceExtension!=(-1073741637),DeviceObject__DeviceExtension!=(-1073741789),DeviceObject__DeviceExtension!=(-1073741823),DeviceObject__DeviceExtension!=(-2147483643),DeviceObject__DeviceExtension!=0,DeviceObject__DeviceExtension!=1,DeviceObject__DeviceExtension!=12,DeviceObject__DeviceExtension!=2,DeviceObject__DeviceExtension!=259,DeviceObject__DeviceExtension!=3,DeviceObject__DeviceExtension!=4,DeviceObject__DeviceExtension!=458784,DeviceObject__DeviceExtension!=8,DeviceObject__DeviceExtension==(-1),DeviceObject__DeviceExtension==(-1073741637),DeviceObject__DeviceExtension==(-1073741789),DeviceObject__DeviceExtension==(-1073741823),DeviceObject__DeviceExtension==(-2147483643),DeviceObject__DeviceExtension==0,DeviceObject__DeviceExtension==1,DeviceObject__DeviceExtension==12,DeviceObject__DeviceExtension==2,DeviceObject__DeviceExtension==259,DeviceObject__DeviceExtension==3,DeviceObject__DeviceExtension==4,DeviceObject__DeviceExtension==458784,DeviceObject__DeviceExtension==8} @*/ DeviceObject__DeviceExtension = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension__TargetDeviceObject!=(-1),deviceExtension__TargetDeviceObject!=(-1073741637),deviceExtension__TargetDeviceObject!=(-1073741789),deviceExtension__TargetDeviceObject!=(-1073741823),deviceExtension__TargetDeviceObject!=(-2147483643),deviceExtension__TargetDeviceObject!=0,deviceExtension__TargetDeviceObject!=1,deviceExtension__TargetDeviceObject!=12,deviceExtension__TargetDeviceObject!=2,deviceExtension__TargetDeviceObject!=259,deviceExtension__TargetDeviceObject!=3,deviceExtension__TargetDeviceObject!=4,deviceExtension__TargetDeviceObject!=458784,deviceExtension__TargetDeviceObject!=8,deviceExtension__TargetDeviceObject==(-1),deviceExtension__TargetDeviceObject==(-1073741637),deviceExtension__TargetDeviceObject==(-1073741789),deviceExtension__TargetDeviceObject==(-1073741823),deviceExtension__TargetDeviceObject==(-2147483643),deviceExtension__TargetDeviceObject==0,deviceExtension__TargetDeviceObject==1,deviceExtension__TargetDeviceObject==12,deviceExtension__TargetDeviceObject==2,deviceExtension__TargetDeviceObject==259,deviceExtension__TargetDeviceObject==3,deviceExtension__TargetDeviceObject==4,deviceExtension__TargetDeviceObject==458784,deviceExtension__TargetDeviceObject==8} @*/ deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__number!=(-1),sizeof__number!=(-1073741637),sizeof__number!=(-1073741789),sizeof__number!=(-1073741823),sizeof__number!=(-2147483643),sizeof__number!=0,sizeof__number!=1,sizeof__number!=12,sizeof__number!=2,sizeof__number!=259,sizeof__number!=3,sizeof__number!=4,sizeof__number!=458784,sizeof__number!=8,sizeof__number==(-1),sizeof__number==(-1073741637),sizeof__number==(-1073741789),sizeof__number==(-1073741823),sizeof__number==(-2147483643),sizeof__number==0,sizeof__number==1,sizeof__number==12,sizeof__number==2,sizeof__number==259,sizeof__number==3,sizeof__number==4,sizeof__number==458784,sizeof__number==8} @*/ sizeof__number = __VERIFIER_nondet_int();
  int /*@  predicates{ioStatus__Status!=(-1),ioStatus__Status!=(-1073741637),ioStatus__Status!=(-1073741789),ioStatus__Status!=(-1073741823),ioStatus__Status!=(-2147483643),ioStatus__Status!=0,ioStatus__Status!=1,ioStatus__Status!=12,ioStatus__Status!=2,ioStatus__Status!=259,ioStatus__Status!=3,ioStatus__Status!=4,ioStatus__Status!=458784,ioStatus__Status!=8,ioStatus__Status==(-1),ioStatus__Status==(-1073741637),ioStatus__Status==(-1073741789),ioStatus__Status==(-1073741823),ioStatus__Status==(-2147483643),ioStatus__Status==0,ioStatus__Status==1,ioStatus__Status==12,ioStatus__Status==2,ioStatus__Status==259,ioStatus__Status==3,ioStatus__Status==4,ioStatus__Status==458784,ioStatus__Status==8} @*/ ioStatus__Status = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__VOLUME_NUMBER!=(-1),sizeof__VOLUME_NUMBER!=(-1073741637),sizeof__VOLUME_NUMBER!=(-1073741789),sizeof__VOLUME_NUMBER!=(-1073741823),sizeof__VOLUME_NUMBER!=(-2147483643),sizeof__VOLUME_NUMBER!=0,sizeof__VOLUME_NUMBER!=1,sizeof__VOLUME_NUMBER!=12,sizeof__VOLUME_NUMBER!=2,sizeof__VOLUME_NUMBER!=259,sizeof__VOLUME_NUMBER!=3,sizeof__VOLUME_NUMBER!=4,sizeof__VOLUME_NUMBER!=458784,sizeof__VOLUME_NUMBER!=8,sizeof__VOLUME_NUMBER==(-1),sizeof__VOLUME_NUMBER==(-1073741637),sizeof__VOLUME_NUMBER==(-1073741789),sizeof__VOLUME_NUMBER==(-1073741823),sizeof__VOLUME_NUMBER==(-2147483643),sizeof__VOLUME_NUMBER==0,sizeof__VOLUME_NUMBER==1,sizeof__VOLUME_NUMBER==12,sizeof__VOLUME_NUMBER==2,sizeof__VOLUME_NUMBER==259,sizeof__VOLUME_NUMBER==3,sizeof__VOLUME_NUMBER==4,sizeof__VOLUME_NUMBER==458784,sizeof__VOLUME_NUMBER==8} @*/ sizeof__VOLUME_NUMBER = __VERIFIER_nondet_int();
  int /*@  predicates{volumeNumber__VolumeManagerName__0!=(-1),volumeNumber__VolumeManagerName__0!=(-1073741637),volumeNumber__VolumeManagerName__0!=(-1073741789),volumeNumber__VolumeManagerName__0!=(-1073741823),volumeNumber__VolumeManagerName__0!=(-2147483643),volumeNumber__VolumeManagerName__0!=0,volumeNumber__VolumeManagerName__0!=1,volumeNumber__VolumeManagerName__0!=12,volumeNumber__VolumeManagerName__0!=2,volumeNumber__VolumeManagerName__0!=259,volumeNumber__VolumeManagerName__0!=3,volumeNumber__VolumeManagerName__0!=4,volumeNumber__VolumeManagerName__0!=458784,volumeNumber__VolumeManagerName__0!=8,volumeNumber__VolumeManagerName__0==(-1),volumeNumber__VolumeManagerName__0==(-1073741637),volumeNumber__VolumeManagerName__0==(-1073741789),volumeNumber__VolumeManagerName__0==(-1073741823),volumeNumber__VolumeManagerName__0==(-2147483643),volumeNumber__VolumeManagerName__0==0,volumeNumber__VolumeManagerName__0==1,volumeNumber__VolumeManagerName__0==12,volumeNumber__VolumeManagerName__0==2,volumeNumber__VolumeManagerName__0==259,volumeNumber__VolumeManagerName__0==3,volumeNumber__VolumeManagerName__0==4,volumeNumber__VolumeManagerName__0==458784,volumeNumber__VolumeManagerName__0==8} @*/ volumeNumber__VolumeManagerName__0 = __VERIFIER_nondet_int();
  int /*@  predicates{status!=(-1),status!=(-1073741637),status!=(-1073741789),status!=(-1073741823),status!=(-2147483643),status!=0,status!=1,status!=12,status!=2,status!=259,status!=3,status!=4,status!=458784,status!=8,status<0,status==(-1),status==(-1073741637),status==(-1073741789),status==(-1073741823),status==(-2147483643),status==0,status==1,status==12,status==2,status==259,status==3,status==4,status==458784,status==8,status==ioStatus__Status} @*/ status ;
  int /*@  predicates{ioStatus!=(-1),ioStatus!=(-1073741637),ioStatus!=(-1073741789),ioStatus!=(-1073741823),ioStatus!=(-2147483643),ioStatus!=0,ioStatus!=1,ioStatus!=12,ioStatus!=2,ioStatus!=259,ioStatus!=3,ioStatus!=4,ioStatus!=458784,ioStatus!=8,ioStatus==(-1),ioStatus==(-1073741637),ioStatus==(-1073741789),ioStatus==(-1073741823),ioStatus==(-2147483643),ioStatus==0,ioStatus==1,ioStatus==12,ioStatus==2,ioStatus==259,ioStatus==3,ioStatus==4,ioStatus==458784,ioStatus==8} @*/ ioStatus = __VERIFIER_nondet_int();
  int /*@  predicates{event!=(-1),event!=(-1073741637),event!=(-1073741789),event!=(-1073741823),event!=(-2147483643),event!=0,event!=1,event!=12,event!=2,event!=259,event!=3,event!=4,event!=458784,event!=8,event==(-1),event==(-1073741637),event==(-1073741789),event==(-1073741823),event==(-2147483643),event==0,event==1,event==12,event==2,event==259,event==3,event==4,event==458784,event==8} @*/ event = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension!=(-1),deviceExtension!=(-1073741637),deviceExtension!=(-1073741789),deviceExtension!=(-1073741823),deviceExtension!=(-2147483643),deviceExtension!=0,deviceExtension!=1,deviceExtension!=12,deviceExtension!=2,deviceExtension!=259,deviceExtension!=3,deviceExtension!=4,deviceExtension!=458784,deviceExtension!=8,deviceExtension==(-1),deviceExtension==(-1073741637),deviceExtension==(-1073741789),deviceExtension==(-1073741823),deviceExtension==(-2147483643),deviceExtension==0,deviceExtension==1,deviceExtension==12,deviceExtension==2,deviceExtension==259,deviceExtension==3,deviceExtension==4,deviceExtension==458784,deviceExtension==8,deviceExtension==DeviceObject__DeviceExtension} @*/ deviceExtension ;
  int /*@  predicates{irp!=(-1),irp!=(-1073741637),irp!=(-1073741789),irp!=(-1073741823),irp!=(-2147483643),irp!=0,irp!=1,irp!=12,irp!=2,irp!=259,irp!=3,irp!=4,irp!=458784,irp!=8,irp==(-1),irp==(-1073741637),irp==(-1073741789),irp==(-1073741823),irp==(-2147483643),irp==0,irp==1,irp==12,irp==2,irp==259,irp==3,irp==4,irp==458784,irp==8} @*/ irp ;
  int /*@  predicates{number!=(-1),number!=(-1073741637),number!=(-1073741789),number!=(-1073741823),number!=(-2147483643),number!=0,number!=1,number!=12,number!=2,number!=259,number!=3,number!=4,number!=458784,number!=8,number==(-1),number==(-1073741637),number==(-1073741789),number==(-1073741823),number==(-2147483643),number==0,number==1,number==12,number==2,number==259,number==3,number==4,number==458784,number==8} @*/ number = __VERIFIER_nondet_int();
  int /*@  predicates{registrationFlag==0} @*/ registrationFlag ;
  int /*@  predicates{sizeof__MOUNTDEV_NAME!=(-1),sizeof__MOUNTDEV_NAME!=(-1073741637),sizeof__MOUNTDEV_NAME!=(-1073741789),sizeof__MOUNTDEV_NAME!=(-1073741823),sizeof__MOUNTDEV_NAME!=(-2147483643),sizeof__MOUNTDEV_NAME!=0,sizeof__MOUNTDEV_NAME!=1,sizeof__MOUNTDEV_NAME!=12,sizeof__MOUNTDEV_NAME!=2,sizeof__MOUNTDEV_NAME!=259,sizeof__MOUNTDEV_NAME!=3,sizeof__MOUNTDEV_NAME!=4,sizeof__MOUNTDEV_NAME!=458784,sizeof__MOUNTDEV_NAME!=8,sizeof__MOUNTDEV_NAME==(-1),sizeof__MOUNTDEV_NAME==(-1073741637),sizeof__MOUNTDEV_NAME==(-1073741789),sizeof__MOUNTDEV_NAME==(-1073741823),sizeof__MOUNTDEV_NAME==(-2147483643),sizeof__MOUNTDEV_NAME==0,sizeof__MOUNTDEV_NAME==1,sizeof__MOUNTDEV_NAME==12,sizeof__MOUNTDEV_NAME==2,sizeof__MOUNTDEV_NAME==259,sizeof__MOUNTDEV_NAME==3,sizeof__MOUNTDEV_NAME==4,sizeof__MOUNTDEV_NAME==458784,sizeof__MOUNTDEV_NAME==8} @*/ sizeof__MOUNTDEV_NAME = __VERIFIER_nondet_int();
  int /*@  predicates{output__NameLength!=(-1),output__NameLength!=(-1073741637),output__NameLength!=(-1073741789),output__NameLength!=(-1073741823),output__NameLength!=(-2147483643),output__NameLength!=0,output__NameLength!=1,output__NameLength!=12,output__NameLength!=2,output__NameLength!=259,output__NameLength!=3,output__NameLength!=4,output__NameLength!=458784,output__NameLength!=8,output__NameLength==(-1),output__NameLength==(-1073741637),output__NameLength==(-1073741789),output__NameLength==(-1073741823),output__NameLength==(-2147483643),output__NameLength==0,output__NameLength==1,output__NameLength==12,output__NameLength==2,output__NameLength==259,output__NameLength==3,output__NameLength==4,output__NameLength==458784,output__NameLength==8} @*/ output__NameLength = __VERIFIER_nondet_int();
  int outputSize ;
  int /*@  predicates{output!=(-1),output!=(-1073741637),output!=(-1073741789),output!=(-1073741823),output!=(-2147483643),output!=0,output!=1,output!=12,output!=2,output!=259,output!=3,output!=4,output!=458784,output!=8,output==(-1),output==(-1073741637),output==(-1073741789),output==(-1073741823),output==(-2147483643),output==0,output==1,output==12,output==2,output==259,output==3,output==4,output==458784,output==8} @*/ output = __VERIFIER_nondet_int();
  int /*@  predicates{volumeNumber!=(-1),volumeNumber!=(-1073741637),volumeNumber!=(-1073741789),volumeNumber!=(-1073741823),volumeNumber!=(-2147483643),volumeNumber!=0,volumeNumber!=1,volumeNumber!=12,volumeNumber!=2,volumeNumber!=259,volumeNumber!=3,volumeNumber!=4,volumeNumber!=458784,volumeNumber!=8,volumeNumber==(-1),volumeNumber==(-1073741637),volumeNumber==(-1073741789),volumeNumber==(-1073741823),volumeNumber==(-2147483643),volumeNumber==0,volumeNumber==1,volumeNumber==12,volumeNumber==2,volumeNumber==259,volumeNumber==3,volumeNumber==4,volumeNumber==458784,volumeNumber==8} @*/ volumeNumber = __VERIFIER_nondet_int();
  int /*@  predicates{__cil_tmp20==4224} @*/ __cil_tmp20 ;
  int /*@  predicates{__cil_tmp21==2949120} @*/ __cil_tmp21 ;
  int /*@  predicates{__cil_tmp22==2953344} @*/ __cil_tmp22 ;
  long __cil_tmp23 ;
  int /*@  predicates{__cil_tmp24==8} @*/ __cil_tmp24 ;
  int /*@  predicates{__cil_tmp25==5046272} @*/ __cil_tmp25 ;
  int /*@  predicates{__cil_tmp26==5046280} @*/ __cil_tmp26 ;
  long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  int /*@  predicates{__cil_tmp29==8} @*/ __cil_tmp29 ;
  int /*@  predicates{__cil_tmp30==5046272} @*/ __cil_tmp30 ;
  int /*@  predicates{__cil_tmp31==5046280} @*/ __cil_tmp31 ;
  long __cil_tmp32 ;
  int __cil_tmp33 ;
  int /*@  predicates{__cil_tmp34==28} @*/ __cil_tmp34 ;
  int /*@  predicates{__cil_tmp35==5636096} @*/ __cil_tmp35 ;
  int /*@  predicates{__cil_tmp36==5636124} @*/ __cil_tmp36 ;
  long __cil_tmp37 ;
  int __cil_tmp38 ;
  int __cil_tmp39 ;

  {
  {
  registrationFlag = 0;
  deviceExtension = DeviceObject__DeviceExtension;
  __cil_tmp20 = 4224;
  __cil_tmp21 = 2949120;
  __cil_tmp22 = 2953344;
  irp = IoBuildDeviceIoControlRequest(__cil_tmp22, deviceExtension__TargetDeviceObject,
                                      0, 0, number, sizeof__number, 0, event, ioStatus);
  }
  if(! irp){
    return(-1073741670);
  }
  {
  status = IofCallDriver(deviceExtension__TargetDeviceObject, irp);
  }
  {
  __cil_tmp23 =(long)status;
  if(__cil_tmp23 == 259L){
    {
    KeWaitForSingleObject(event, Executive, KernelMode, 0, 0);
    status = ioStatus__Status;
    }
  }
  }
  if(status < 0){
    outputSize = sizeof__MOUNTDEV_NAME;
    if(! output){
      return(-1073741670);
    }
    {
    __cil_tmp24 = 8;
    __cil_tmp25 = 5046272;
    __cil_tmp26 = 5046280;
    irp = IoBuildDeviceIoControlRequest(__cil_tmp26, deviceExtension__TargetDeviceObject,
                                        0, 0, output, outputSize, 0, event, ioStatus);
    }
    if(! irp){
      return(-1073741670);
    }
    {
    status = IofCallDriver(deviceExtension__TargetDeviceObject, irp);
    }
    {
    __cil_tmp27 =(long)status;
    if(__cil_tmp27 == 259L){
      {
      KeWaitForSingleObject(event, Executive, KernelMode, 0, 0);
      status = ioStatus__Status;
      }
    }
    }
    {
    __cil_tmp28 =(unsigned long)status;
    if(__cil_tmp28 == -2147483643){
      outputSize = sizeof__MOUNTDEV_NAME + output__NameLength;
      if(! output){
        return(-1073741670);
      }
      {
      __cil_tmp29 = 8;
      __cil_tmp30 = 5046272;
      __cil_tmp31 = 5046280;
      irp = IoBuildDeviceIoControlRequest(__cil_tmp31, deviceExtension__TargetDeviceObject,
                                          0, 0, output, outputSize, 0, event, ioStatus);
      }
      if(! irp){
        return(-1073741670);
      }
      {
      status = IofCallDriver(deviceExtension__TargetDeviceObject, irp);
      }
      {
      __cil_tmp32 =(long)status;
      if(__cil_tmp32 == 259L){
        {
        KeWaitForSingleObject(event, Executive, KernelMode, 0, 0);
        status = ioStatus__Status;
        }
      }
      }
    }
    }
    {
    if(status < 0){
      return(status);
    }
    }
    {
    __cil_tmp34 = 28;
    __cil_tmp35 = 5636096;
    __cil_tmp36 = 5636124;
    irp = IoBuildDeviceIoControlRequest(__cil_tmp36, deviceExtension__TargetDeviceObject,
                                        0, 0, volumeNumber, sizeof__VOLUME_NUMBER,
                                        0, event, ioStatus);
    }
    if(! irp){
      return(-1073741670);
    }
    {
    status = IofCallDriver(deviceExtension__TargetDeviceObject, irp);
    }
    {
    __cil_tmp37 =(long)status;
    if(__cil_tmp37 == 259L){
      {
      KeWaitForSingleObject(event, Executive, KernelMode, 0, 0);
      status = ioStatus__Status;
      }
    }
    }
    {
    if(status < 0){
      goto _L;
    } else {
      if(volumeNumber__VolumeManagerName__0 == 0){
        _L:
        if(status >= 0){

        }
      }
    }
    }
  }
  {
  if(status < 0){

  }
  }
  return(status);
}
}
void stub_driver_init(void)
{

  {
  s = NP;
  customIrp = 0;
  setEventCalled = customIrp;
  lowerDriverReturn = setEventCalled;
  compRegistered = lowerDriverReturn;
  compFptr = compRegistered;
  pended = compFptr;
  return;
}
}
int main(void)
{ int /*@  predicates{d!=(-1),d!=(-1073741637),d!=(-1073741789),d!=(-1073741823),d!=(-2147483643),d!=0,d!=1,d!=12,d!=2,d!=259,d!=3,d!=4,d!=458784,d!=8,d==(-1),d==(-1073741637),d==(-1073741789),d==(-1073741823),d==(-2147483643),d==0,d==1,d==12,d==2,d==259,d==3,d==4,d==458784,d==8} @*/ d = __VERIFIER_nondet_int();
  int /*@  predicates{(status!=(-1)),status!=(-1),status!=(-1073741637),status!=(-1073741789),status!=(-1073741823),status!=(-2147483643),status!=0,status!=1,status!=12,status!=2,status!=259,status!=3,status!=4,status!=458784,status!=8,status!=compFptr,status!=compRegistered,status!=customIrp,status!=lowerDriverReturn,status!=pended,status!=setEventCalled,status<0,status==(-1),status==(-1073741637),status==(-1073741789),status==(-1073741823),status==(-2147483643),status==0,status==1,status==12,status==2,status==259,status==3,status==4,status==458784,status==8,status==compFptr,status==compRegistered,status==customIrp,status==lowerDriverReturn,status==pended,status==setEventCalled,status>=0} @*/ status = __VERIFIER_nondet_int();
  int /*@  predicates{we_should_unload!=(-1),we_should_unload!=(-1073741637),we_should_unload!=(-1073741789),we_should_unload!=(-1073741823),we_should_unload!=(-2147483643),we_should_unload!=0,we_should_unload!=1,we_should_unload!=12,we_should_unload!=2,we_should_unload!=259,we_should_unload!=3,we_should_unload!=4,we_should_unload!=458784,we_should_unload!=8,we_should_unload==(-1),we_should_unload==(-1073741637),we_should_unload==(-1073741789),we_should_unload==(-1073741823),we_should_unload==(-2147483643),we_should_unload==0,we_should_unload==1,we_should_unload==12,we_should_unload==2,we_should_unload==259,we_should_unload==3,we_should_unload==4,we_should_unload==458784,we_should_unload==8} @*/ we_should_unload = __VERIFIER_nondet_int();
  int /*@  predicates{irp!=(-1),irp!=(-1073741637),irp!=(-1073741789),irp!=(-1073741823),irp!=(-2147483643),irp!=0,irp!=1,irp!=12,irp!=2,irp!=259,irp!=3,irp!=4,irp!=458784,irp!=8,irp==(-1),irp==(-1073741637),irp==(-1073741789),irp==(-1073741823),irp==(-2147483643),irp==0,irp==1,irp==12,irp==2,irp==259,irp==3,irp==4,irp==458784,irp==8,irp==pirp} @*/ irp = __VERIFIER_nondet_int();
  int /*@  predicates{pirp__IoStatus__Status==(-1073741637),pirp__IoStatus__Status==0} @*/ pirp__IoStatus__Status ;
  int /*@  predicates{irp_choice!=(-1),irp_choice!=(-1073741637),irp_choice!=(-1073741789),irp_choice!=(-1073741823),irp_choice!=(-2147483643),irp_choice!=0,irp_choice!=1,irp_choice!=12,irp_choice!=2,irp_choice!=259,irp_choice!=3,irp_choice!=4,irp_choice!=458784,irp_choice!=8,irp_choice==(-1),irp_choice==(-1073741637),irp_choice==(-1073741789),irp_choice==(-1073741823),irp_choice==(-2147483643),irp_choice==0,irp_choice==1,irp_choice==12,irp_choice==2,irp_choice==259,irp_choice==3,irp_choice==4,irp_choice==458784,irp_choice==8} @*/ irp_choice = __VERIFIER_nondet_int();
  int /*@  predicates{devobj!=(-1),devobj!=(-1073741637),devobj!=(-1073741789),devobj!=(-1073741823),devobj!=(-2147483643),devobj!=0,devobj!=1,devobj!=12,devobj!=2,devobj!=259,devobj!=3,devobj!=4,devobj!=458784,devobj!=8,devobj==(-1),devobj==(-1073741637),devobj==(-1073741789),devobj==(-1073741823),devobj==(-2147483643),devobj==0,devobj==1,devobj==12,devobj==2,devobj==259,devobj==3,devobj==4,devobj==458784,devobj==8} @*/ devobj = __VERIFIER_nondet_int();
  int __cil_tmp9 ;

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
 routine = 0;
 pirp = 0;
 Executive = 0;
 KernelMode = 0;

  {
  {
  pirp = irp;
  _BLAST_init();
  }
  if(status >= 0){
    s = NP;
    customIrp = 0;
    setEventCalled = customIrp;
    lowerDriverReturn = setEventCalled;
    compRegistered = lowerDriverReturn;
    compFptr = compRegistered;
    pended = compFptr;
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
    int /*@  predicates{tmp_ndt_1!=(-1),tmp_ndt_1!=(-1073741637),tmp_ndt_1!=(-1073741789),tmp_ndt_1!=(-1073741823),tmp_ndt_1!=(-2147483643),tmp_ndt_1!=0,tmp_ndt_1!=1,tmp_ndt_1!=12,tmp_ndt_1!=2,tmp_ndt_1!=259,tmp_ndt_1!=3,tmp_ndt_1!=4,tmp_ndt_1!=458784,tmp_ndt_1!=8,tmp_ndt_1==(-1),tmp_ndt_1==(-1073741637),tmp_ndt_1==(-1073741789),tmp_ndt_1==(-1073741823),tmp_ndt_1==(-2147483643),tmp_ndt_1==0,tmp_ndt_1==1,tmp_ndt_1==12,tmp_ndt_1==2,tmp_ndt_1==259,tmp_ndt_1==3,tmp_ndt_1==4,tmp_ndt_1==458784,tmp_ndt_1==8} @*/ tmp_ndt_1;
    tmp_ndt_1 = __VERIFIER_nondet_int();
    if(tmp_ndt_1 == 0){
      goto switch_2_0;
    } else {
      int /*@  predicates{tmp_ndt_2!=(-1),tmp_ndt_2!=(-1073741637),tmp_ndt_2!=(-1073741789),tmp_ndt_2!=(-1073741823),tmp_ndt_2!=(-2147483643),tmp_ndt_2!=0,tmp_ndt_2!=1,tmp_ndt_2!=12,tmp_ndt_2!=2,tmp_ndt_2!=259,tmp_ndt_2!=3,tmp_ndt_2!=4,tmp_ndt_2!=458784,tmp_ndt_2!=8,tmp_ndt_2==(-1),tmp_ndt_2==(-1073741637),tmp_ndt_2==(-1073741789),tmp_ndt_2==(-1073741823),tmp_ndt_2==(-2147483643),tmp_ndt_2==0,tmp_ndt_2==1,tmp_ndt_2==12,tmp_ndt_2==2,tmp_ndt_2==259,tmp_ndt_2==3,tmp_ndt_2==4,tmp_ndt_2==458784,tmp_ndt_2==8} @*/ tmp_ndt_2;
      tmp_ndt_2 = __VERIFIER_nondet_int();
      if(tmp_ndt_2 == 2){
        goto switch_2_2;
      } else {
        int /*@  predicates{tmp_ndt_3!=(-1),tmp_ndt_3!=(-1073741637),tmp_ndt_3!=(-1073741789),tmp_ndt_3!=(-1073741823),tmp_ndt_3!=(-2147483643),tmp_ndt_3!=0,tmp_ndt_3!=1,tmp_ndt_3!=12,tmp_ndt_3!=2,tmp_ndt_3!=259,tmp_ndt_3!=3,tmp_ndt_3!=4,tmp_ndt_3!=458784,tmp_ndt_3!=8,tmp_ndt_3==(-1),tmp_ndt_3==(-1073741637),tmp_ndt_3==(-1073741789),tmp_ndt_3==(-1073741823),tmp_ndt_3==(-2147483643),tmp_ndt_3==0,tmp_ndt_3==1,tmp_ndt_3==12,tmp_ndt_3==2,tmp_ndt_3==259,tmp_ndt_3==3,tmp_ndt_3==4,tmp_ndt_3==458784,tmp_ndt_3==8} @*/ tmp_ndt_3;
        tmp_ndt_3 = __VERIFIER_nondet_int();
        if(tmp_ndt_3 == 3){
          goto switch_2_3;
        } else {
   int /*@  predicates{tmp_ndt_4!=(-1),tmp_ndt_4!=(-1073741637),tmp_ndt_4!=(-1073741789),tmp_ndt_4!=(-1073741823),tmp_ndt_4!=(-2147483643),tmp_ndt_4!=0,tmp_ndt_4!=1,tmp_ndt_4!=12,tmp_ndt_4!=2,tmp_ndt_4!=259,tmp_ndt_4!=3,tmp_ndt_4!=4,tmp_ndt_4!=458784,tmp_ndt_4!=8,tmp_ndt_4==(-1),tmp_ndt_4==(-1073741637),tmp_ndt_4==(-1073741789),tmp_ndt_4==(-1073741823),tmp_ndt_4==(-2147483643),tmp_ndt_4==0,tmp_ndt_4==1,tmp_ndt_4==12,tmp_ndt_4==2,tmp_ndt_4==259,tmp_ndt_4==3,tmp_ndt_4==4,tmp_ndt_4==458784,tmp_ndt_4==8} @*/ tmp_ndt_4;
   tmp_ndt_4 = __VERIFIER_nondet_int();
          if(tmp_ndt_4 == 4){
            goto switch_2_4;
          } else {
     int /*@  predicates{tmp_ndt_5!=(-1),tmp_ndt_5!=(-1073741637),tmp_ndt_5!=(-1073741789),tmp_ndt_5!=(-1073741823),tmp_ndt_5!=(-2147483643),tmp_ndt_5!=0,tmp_ndt_5!=1,tmp_ndt_5!=12,tmp_ndt_5!=2,tmp_ndt_5!=259,tmp_ndt_5!=3,tmp_ndt_5!=4,tmp_ndt_5!=458784,tmp_ndt_5!=8,tmp_ndt_5==(-1),tmp_ndt_5==(-1073741637),tmp_ndt_5==(-1073741789),tmp_ndt_5==(-1073741823),tmp_ndt_5==(-2147483643),tmp_ndt_5==0,tmp_ndt_5==1,tmp_ndt_5==12,tmp_ndt_5==2,tmp_ndt_5==259,tmp_ndt_5==3,tmp_ndt_5==4,tmp_ndt_5==458784,tmp_ndt_5==8} @*/ tmp_ndt_5;
     tmp_ndt_5 = __VERIFIER_nondet_int();
            if(tmp_ndt_5 == 12){
              goto switch_2_12;
            } else {
              goto switch_2_default;
              if(0){
                switch_2_0:
                {
                status = DiskPerfCreate(devobj, pirp);
                }
                goto switch_2_break;
                switch_2_2:
                {
                status = DiskPerfDeviceControl(devobj, pirp);
                }
                goto switch_2_break;
                switch_2_3:
                {
                status = DiskPerfDispatchPnp(devobj, pirp);
                }
                goto switch_2_break;
                switch_2_4:
                {
                status = DiskPerfDispatchPower(devobj, pirp);
                }
                goto switch_2_break;
                switch_2_12:
                {
                status = DiskPerfShutdownFlush(devobj, pirp);
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
    if(we_should_unload){
      {
      DiskPerfUnload(d);
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
                {
                errorFn();
                }
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
  return(status);
}
}
int IoBuildDeviceIoControlRequest(int /*@  predicates{IoControlCode==2953344,IoControlCode==5046280,IoControlCode==5636124} @*/ IoControlCode , int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741789),DeviceObject!=(-1073741823),DeviceObject!=(-2147483643),DeviceObject!=0,DeviceObject!=1,DeviceObject!=12,DeviceObject!=2,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=458784,DeviceObject!=8,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741789),DeviceObject==(-1073741823),DeviceObject==(-2147483643),DeviceObject==0,DeviceObject==1,DeviceObject==12,DeviceObject==2,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==458784,DeviceObject==8} @*/ DeviceObject , int /*@  predicates{InputBuffer==0} @*/ InputBuffer ,
                                  int /*@  predicates{InputBufferLength==0} @*/ InputBufferLength , int /*@  predicates{OutputBuffer!=(-1),OutputBuffer!=(-1073741637),OutputBuffer!=(-1073741789),OutputBuffer!=(-1073741823),OutputBuffer!=(-2147483643),OutputBuffer!=0,OutputBuffer!=1,OutputBuffer!=12,OutputBuffer!=2,OutputBuffer!=259,OutputBuffer!=3,OutputBuffer!=4,OutputBuffer!=458784,OutputBuffer!=8,OutputBuffer==(-1),OutputBuffer==(-1073741637),OutputBuffer==(-1073741789),OutputBuffer==(-1073741823),OutputBuffer==(-2147483643),OutputBuffer==0,OutputBuffer==1,OutputBuffer==12,OutputBuffer==2,OutputBuffer==259,OutputBuffer==3,OutputBuffer==4,OutputBuffer==458784,OutputBuffer==8} @*/ OutputBuffer , int OutputBufferLength ,
                                  int /*@  predicates{InternalDeviceIoControl==0} @*/ InternalDeviceIoControl , int /*@  predicates{Event!=(-1),Event!=(-1073741637),Event!=(-1073741789),Event!=(-1073741823),Event!=(-2147483643),Event!=0,Event!=1,Event!=12,Event!=2,Event!=259,Event!=3,Event!=4,Event!=458784,Event!=8,Event==(-1),Event==(-1073741637),Event==(-1073741789),Event==(-1073741823),Event==(-2147483643),Event==0,Event==1,Event==12,Event==2,Event==259,Event==3,Event==4,Event==458784,Event==8} @*/ Event , int /*@  predicates{IoStatusBlock!=(-1),IoStatusBlock!=(-1073741637),IoStatusBlock!=(-1073741789),IoStatusBlock!=(-1073741823),IoStatusBlock!=(-2147483643),IoStatusBlock!=0,IoStatusBlock!=1,IoStatusBlock!=12,IoStatusBlock!=2,IoStatusBlock!=259,IoStatusBlock!=3,IoStatusBlock!=4,IoStatusBlock!=458784,IoStatusBlock!=8,IoStatusBlock==(-1),IoStatusBlock==(-1073741637),IoStatusBlock==(-1073741789),IoStatusBlock==(-1073741823),IoStatusBlock==(-2147483643),IoStatusBlock==0,IoStatusBlock==1,IoStatusBlock==12,IoStatusBlock==2,IoStatusBlock==259,IoStatusBlock==3,IoStatusBlock==4,IoStatusBlock==458784,IoStatusBlock==8} @*/ IoStatusBlock)
{
  int /*@  predicates{malloc_ret!=(-1),malloc_ret!=(-1073741637),malloc_ret!=(-1073741789),malloc_ret!=(-1073741823),malloc_ret!=(-2147483643),malloc_ret!=0,malloc_ret!=1,malloc_ret!=12,malloc_ret!=2,malloc_ret!=259,malloc_ret!=3,malloc_ret!=4,malloc_ret!=458784,malloc_ret!=8,malloc_ret==(-1),malloc_ret==(-1073741637),malloc_ret==(-1073741789),malloc_ret==(-1073741823),malloc_ret==(-2147483643),malloc_ret==0,malloc_ret==1,malloc_ret==12,malloc_ret==2,malloc_ret==259,malloc_ret==3,malloc_ret==4,malloc_ret==458784,malloc_ret==8} @*/ malloc_ret = __VERIFIER_nondet_int();

  {
  customIrp = 1;
  int /*@  predicates{tmp_ndt_7!=(-1),tmp_ndt_7!=(-1073741637),tmp_ndt_7!=(-1073741789),tmp_ndt_7!=(-1073741823),tmp_ndt_7!=(-2147483643),tmp_ndt_7!=0,tmp_ndt_7!=1,tmp_ndt_7!=12,tmp_ndt_7!=2,tmp_ndt_7!=259,tmp_ndt_7!=3,tmp_ndt_7!=4,tmp_ndt_7!=458784,tmp_ndt_7!=8,tmp_ndt_7==(-1),tmp_ndt_7==(-1073741637),tmp_ndt_7==(-1073741789),tmp_ndt_7==(-1073741823),tmp_ndt_7==(-2147483643),tmp_ndt_7==0,tmp_ndt_7==1,tmp_ndt_7==12,tmp_ndt_7==2,tmp_ndt_7==259,tmp_ndt_7==3,tmp_ndt_7==4,tmp_ndt_7==458784,tmp_ndt_7==8} @*/ tmp_ndt_7;
  tmp_ndt_7 = __VERIFIER_nondet_int();
  if(tmp_ndt_7 == 0){
    goto switch_3_0;
  } else {
    goto switch_3_default;
    if(0){
      switch_3_0: ;
      return(malloc_ret);
      switch_3_default: ;
      return(0);
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
int IofCallDriver(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741789),DeviceObject!=(-1073741823),DeviceObject!=(-2147483643),DeviceObject!=0,DeviceObject!=1,DeviceObject!=12,DeviceObject!=2,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=458784,DeviceObject!=8,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741789),DeviceObject==(-1073741823),DeviceObject==(-2147483643),DeviceObject==0,DeviceObject==1,DeviceObject==12,DeviceObject==2,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==458784,DeviceObject==8} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741789),Irp!=(-1073741823),Irp!=(-2147483643),Irp!=0,Irp!=1,Irp!=12,Irp!=2,Irp!=259,Irp!=3,Irp!=4,Irp!=458784,Irp!=8,Irp==(-1),Irp==(-1073741637),Irp==(-1073741789),Irp==(-1073741823),Irp==(-2147483643),Irp==0,Irp==1,Irp==12,Irp==2,Irp==259,Irp==3,Irp==4,Irp==458784,Irp==8} @*/ Irp)
{
  int /*@  predicates{returnVal2==(-1),returnVal2==(-1073741637),returnVal2==(-1073741789),returnVal2==(-1073741823),returnVal2==(-2147483643),returnVal2==0,returnVal2==1,returnVal2==12,returnVal2==2,returnVal2==259,returnVal2==3,returnVal2==4,returnVal2==458784,returnVal2==8} @*/ returnVal2 ;
  int /*@  predicates{compRetStatus==(-1073741802),compRetStatus==0} @*/ compRetStatus ;
  int /*@  predicates{lcontext!=(-1),lcontext!=(-1073741637),lcontext!=(-1073741789),lcontext!=(-1073741823),lcontext!=(-2147483643),lcontext!=0,lcontext!=1,lcontext!=12,lcontext!=2,lcontext!=259,lcontext!=3,lcontext!=4,lcontext!=458784,lcontext!=8,lcontext==(-1),lcontext==(-1073741637),lcontext==(-1073741789),lcontext==(-1073741823),lcontext==(-2147483643),lcontext==0,lcontext==1,lcontext==12,lcontext==2,lcontext==259,lcontext==3,lcontext==4,lcontext==458784,lcontext==8} @*/ lcontext = __VERIFIER_nondet_int();
  unsigned long __cil_tmp7 ;

  {
  if(compRegistered){
    if(routine == 0){
      {
      compRetStatus = DiskPerfIrpCompletion(DeviceObject, Irp, lcontext);
      }
    } else {
      {
      compRetStatus = DiskPerfIoCompletion(DeviceObject, Irp, lcontext);
      }
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
  int /*@  predicates{tmp_ndt_8!=(-1),tmp_ndt_8!=(-1073741637),tmp_ndt_8!=(-1073741789),tmp_ndt_8!=(-1073741823),tmp_ndt_8!=(-2147483643),tmp_ndt_8!=0,tmp_ndt_8!=1,tmp_ndt_8!=12,tmp_ndt_8!=2,tmp_ndt_8!=259,tmp_ndt_8!=3,tmp_ndt_8!=4,tmp_ndt_8!=458784,tmp_ndt_8!=8,tmp_ndt_8==(-1),tmp_ndt_8==(-1073741637),tmp_ndt_8==(-1073741789),tmp_ndt_8==(-1073741823),tmp_ndt_8==(-2147483643),tmp_ndt_8==0,tmp_ndt_8==1,tmp_ndt_8==12,tmp_ndt_8==2,tmp_ndt_8==259,tmp_ndt_8==3,tmp_ndt_8==4,tmp_ndt_8==458784,tmp_ndt_8==8} @*/ tmp_ndt_8;
  tmp_ndt_8 = __VERIFIER_nondet_int();
  if(tmp_ndt_8 == 0){
    goto switch_4_0;
  } else {
  int /*@  predicates{tmp_ndt_9!=(-1),tmp_ndt_9!=(-1073741637),tmp_ndt_9!=(-1073741789),tmp_ndt_9!=(-1073741823),tmp_ndt_9!=(-2147483643),tmp_ndt_9!=0,tmp_ndt_9!=1,tmp_ndt_9!=12,tmp_ndt_9!=2,tmp_ndt_9!=259,tmp_ndt_9!=3,tmp_ndt_9!=4,tmp_ndt_9!=458784,tmp_ndt_9!=8,tmp_ndt_9==(-1),tmp_ndt_9==(-1073741637),tmp_ndt_9==(-1073741789),tmp_ndt_9==(-1073741823),tmp_ndt_9==(-2147483643),tmp_ndt_9==0,tmp_ndt_9==1,tmp_ndt_9==12,tmp_ndt_9==2,tmp_ndt_9==259,tmp_ndt_9==3,tmp_ndt_9==4,tmp_ndt_9==458784,tmp_ndt_9==8} @*/ tmp_ndt_9;
  tmp_ndt_9 = __VERIFIER_nondet_int();
    if(tmp_ndt_9 == 1){
      goto switch_4_1;
    } else {
      goto switch_4_default;
      if(0){
        switch_4_0:
        returnVal2 = 0;
        goto switch_4_break;
        switch_4_1:
        returnVal2 = -1073741823;
        goto switch_4_break;
        switch_4_default:
        returnVal2 = 259;
        goto switch_4_break;
      } else {
        switch_4_break: ;
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
void IofCompleteRequest(int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741789),Irp!=(-1073741823),Irp!=(-2147483643),Irp!=0,Irp!=1,Irp!=12,Irp!=2,Irp!=259,Irp!=3,Irp!=4,Irp!=458784,Irp!=8,Irp==(-1),Irp==(-1073741637),Irp==(-1073741789),Irp==(-1073741823),Irp==(-2147483643),Irp==0,Irp==1,Irp==12,Irp==2,Irp==259,Irp==3,Irp==4,Irp==458784,Irp==8} @*/ Irp , int /*@  predicates{PriorityBoost==0} @*/ PriorityBoost)
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
int KeSetEvent(int /*@  predicates{Event!=(-1),Event!=(-1073741637),Event!=(-1073741789),Event!=(-1073741823),Event!=(-2147483643),Event!=0,Event!=1,Event!=12,Event!=2,Event!=259,Event!=3,Event!=4,Event!=458784,Event!=8,Event==(-1),Event==(-1073741637),Event==(-1073741789),Event==(-1073741823),Event==(-2147483643),Event==0,Event==1,Event==12,Event==2,Event==259,Event==3,Event==4,Event==458784,Event==8} @*/ Event , int /*@  predicates{Increment==0} @*/ Increment , int /*@  predicates{Wait==0} @*/ Wait)
{ int /*@  predicates{l!=(-1),l!=(-1073741637),l!=(-1073741789),l!=(-1073741823),l!=(-2147483643),l!=0,l!=1,l!=12,l!=2,l!=259,l!=3,l!=4,l!=458784,l!=8,l==(-1),l==(-1073741637),l==(-1073741789),l==(-1073741823),l==(-2147483643),l==0,l==1,l==12,l==2,l==259,l==3,l==4,l==458784,l==8} @*/ l = __VERIFIER_nondet_int();

  {
  setEventCalled = 1;
  return(l);
}
}
int KeWaitForSingleObject(int /*@  predicates{Object!=(-1),Object!=(-1073741637),Object!=(-1073741789),Object!=(-1073741823),Object!=(-2147483643),Object!=0,Object!=1,Object!=12,Object!=2,Object!=259,Object!=3,Object!=4,Object!=458784,Object!=8,Object==(-1),Object==(-1073741637),Object==(-1073741789),Object==(-1073741823),Object==(-2147483643),Object==0,Object==1,Object==12,Object==2,Object==259,Object==3,Object==4,Object==458784,Object==8} @*/ Object , int /*@  predicates{WaitReason==0} @*/ WaitReason , int /*@  predicates{WaitMode==0} @*/ WaitMode , int /*@  predicates{Alertable==0} @*/ Alertable ,
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
  int /*@  predicates{tmp_ndt_10!=(-1),tmp_ndt_10!=(-1073741637),tmp_ndt_10!=(-1073741789),tmp_ndt_10!=(-1073741823),tmp_ndt_10!=(-2147483643),tmp_ndt_10!=0,tmp_ndt_10!=1,tmp_ndt_10!=12,tmp_ndt_10!=2,tmp_ndt_10!=259,tmp_ndt_10!=3,tmp_ndt_10!=4,tmp_ndt_10!=458784,tmp_ndt_10!=8,tmp_ndt_10==(-1),tmp_ndt_10==(-1073741637),tmp_ndt_10==(-1073741789),tmp_ndt_10==(-1073741823),tmp_ndt_10==(-2147483643),tmp_ndt_10==0,tmp_ndt_10==1,tmp_ndt_10==12,tmp_ndt_10==2,tmp_ndt_10==259,tmp_ndt_10==3,tmp_ndt_10==4,tmp_ndt_10==458784,tmp_ndt_10==8} @*/ tmp_ndt_10;
  tmp_ndt_10 = __VERIFIER_nondet_int();
  if(tmp_ndt_10 == 0){
    goto switch_5_0;
  } else {
    goto switch_5_default;
    if(0){
      switch_5_0: ;
      return(0);
      switch_5_default: ;
      return(-1073741823);
    } else {

    }
  }
}
}
int PoCallDriver(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741789),DeviceObject!=(-1073741823),DeviceObject!=(-2147483643),DeviceObject!=0,DeviceObject!=1,DeviceObject!=12,DeviceObject!=2,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=458784,DeviceObject!=8,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741789),DeviceObject==(-1073741823),DeviceObject==(-2147483643),DeviceObject==0,DeviceObject==1,DeviceObject==12,DeviceObject==2,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==458784,DeviceObject==8} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741789),Irp!=(-1073741823),Irp!=(-2147483643),Irp!=0,Irp!=1,Irp!=12,Irp!=2,Irp!=259,Irp!=3,Irp!=4,Irp!=458784,Irp!=8,Irp==(-1),Irp==(-1073741637),Irp==(-1073741789),Irp==(-1073741823),Irp==(-2147483643),Irp==0,Irp==1,Irp==12,Irp==2,Irp==259,Irp==3,Irp==4,Irp==458784,Irp==8} @*/ Irp)
{
  int /*@  predicates{compRetStatus==(-1073741802),compRetStatus==0} @*/ compRetStatus ;
  int /*@  predicates{returnVal==(-1),returnVal==(-1073741637),returnVal==(-1073741789),returnVal==(-1073741823),returnVal==(-2147483643),returnVal==0,returnVal==1,returnVal==12,returnVal==2,returnVal==259,returnVal==3,returnVal==4,returnVal==458784,returnVal==8} @*/ returnVal ;
  int /*@  predicates{lcontext!=(-1),lcontext!=(-1073741637),lcontext!=(-1073741789),lcontext!=(-1073741823),lcontext!=(-2147483643),lcontext!=0,lcontext!=1,lcontext!=12,lcontext!=2,lcontext!=259,lcontext!=3,lcontext!=4,lcontext!=458784,lcontext!=8,lcontext==(-1),lcontext==(-1073741637),lcontext==(-1073741789),lcontext==(-1073741823),lcontext==(-2147483643),lcontext==0,lcontext==1,lcontext==12,lcontext==2,lcontext==259,lcontext==3,lcontext==4,lcontext==458784,lcontext==8} @*/ lcontext = __VERIFIER_nondet_int();
  unsigned long __cil_tmp7 ;
  long __cil_tmp8 ;

  {
  if(compRegistered){
    if(routine == 0){
      {
      compRetStatus = DiskPerfIrpCompletion(DeviceObject, Irp, lcontext);
      }
    } else {
      if(routine == 1){
        {
        compRetStatus = DiskPerfIoCompletion(DeviceObject, Irp, lcontext);
        }
      }
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
  int /*@  predicates{tmp_ndt_11!=(-1),tmp_ndt_11!=(-1073741637),tmp_ndt_11!=(-1073741789),tmp_ndt_11!=(-1073741823),tmp_ndt_11!=(-2147483643),tmp_ndt_11!=0,tmp_ndt_11!=1,tmp_ndt_11!=12,tmp_ndt_11!=2,tmp_ndt_11!=259,tmp_ndt_11!=3,tmp_ndt_11!=4,tmp_ndt_11!=458784,tmp_ndt_11!=8,tmp_ndt_11==(-1),tmp_ndt_11==(-1073741637),tmp_ndt_11==(-1073741789),tmp_ndt_11==(-1073741823),tmp_ndt_11==(-2147483643),tmp_ndt_11==0,tmp_ndt_11==1,tmp_ndt_11==12,tmp_ndt_11==2,tmp_ndt_11==259,tmp_ndt_11==3,tmp_ndt_11==4,tmp_ndt_11==458784,tmp_ndt_11==8} @*/ tmp_ndt_11;
  tmp_ndt_11 = __VERIFIER_nondet_int();
  if(tmp_ndt_11 == 0){
    goto switch_6_0;
  } else {
  int /*@  predicates{tmp_ndt_12!=(-1),tmp_ndt_12!=(-1073741637),tmp_ndt_12!=(-1073741789),tmp_ndt_12!=(-1073741823),tmp_ndt_12!=(-2147483643),tmp_ndt_12!=0,tmp_ndt_12!=1,tmp_ndt_12!=12,tmp_ndt_12!=2,tmp_ndt_12!=259,tmp_ndt_12!=3,tmp_ndt_12!=4,tmp_ndt_12!=458784,tmp_ndt_12!=8,tmp_ndt_12==(-1),tmp_ndt_12==(-1073741637),tmp_ndt_12==(-1073741789),tmp_ndt_12==(-1073741823),tmp_ndt_12==(-2147483643),tmp_ndt_12==0,tmp_ndt_12==1,tmp_ndt_12==12,tmp_ndt_12==2,tmp_ndt_12==259,tmp_ndt_12==3,tmp_ndt_12==4,tmp_ndt_12==458784,tmp_ndt_12==8} @*/ tmp_ndt_12;
  tmp_ndt_12 = __VERIFIER_nondet_int();
    if(tmp_ndt_12 == 1){
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
