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

void IofCompleteRequest(int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741670),Irp!=(-1073741764),Irp!=(-1073741789),Irp!=(-1073741802),Irp!=(-1073741803),Irp!=(-1073741808),Irp!=(-1073741820),Irp!=(-1073741823),Irp!=(-2147483626),Irp!=(-2147483631),Irp!=0,Irp!=1,Irp!=147456,Irp!=147460,Irp!=147464,Irp!=147468,Irp!=147472,Irp!=147476,Irp!=147480,Irp!=147496,Irp!=147500,Irp!=147508,Irp!=147512,Irp!=149504,Irp!=149512,Irp!=17,Irp!=2,Irp!=22,Irp!=255,Irp!=259,Irp!=3,Irp!=4,Irp!=7,Irp!=71,Irp==(-1),Irp==(-1073741637),Irp==(-1073741670),Irp==(-1073741764),Irp==(-1073741789),Irp==(-1073741802),Irp==(-1073741803),Irp==(-1073741808),Irp==(-1073741820),Irp==(-1073741823),Irp==(-2147483626),Irp==(-2147483631),Irp==0,Irp==1,Irp==147456,Irp==147460,Irp==147464,Irp==147468,Irp==147472,Irp==147476,Irp==147480,Irp==147496,Irp==147500,Irp==147508,Irp==147512,Irp==149504,Irp==149512,Irp==17,Irp==2,Irp==22,Irp==255,Irp==259,Irp==3,Irp==4,Irp==7,Irp==71} predicates_tpl{0==0} @*/ Irp , int /*@  predicates{PriorityBoost==0} @*/ PriorityBoost);
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
int /*@  predicates{pended!=1,pended==(-1),pended==(-1073741637),pended==(-1073741670),pended==(-1073741764),pended==(-1073741789),pended==(-1073741802),pended==(-1073741803),pended==(-1073741808),pended==(-1073741820),pended==(-1073741823),pended==(-2147483626),pended==(-2147483631),pended==0,pended==1,pended==147456,pended==147460,pended==147464,pended==147468,pended==147472,pended==147476,pended==147480,pended==147496,pended==147500,pended==147508,pended==147512,pended==149504,pended==149512,pended==17,pended==2,pended==22,pended==255,pended==259,pended==3,pended==4,pended==7,pended==71} @*/ pended ;
int /*@  predicates{compFptr==(-1),compFptr==(-1073741637),compFptr==(-1073741670),compFptr==(-1073741764),compFptr==(-1073741789),compFptr==(-1073741802),compFptr==(-1073741803),compFptr==(-1073741808),compFptr==(-1073741820),compFptr==(-1073741823),compFptr==(-2147483626),compFptr==(-2147483631),compFptr==0,compFptr==1,compFptr==147456,compFptr==147460,compFptr==147464,compFptr==147468,compFptr==147472,compFptr==147476,compFptr==147480,compFptr==147496,compFptr==147500,compFptr==147508,compFptr==147512,compFptr==149504,compFptr==149512,compFptr==17,compFptr==2,compFptr==22,compFptr==255,compFptr==259,compFptr==3,compFptr==4,compFptr==7,compFptr==71} @*/ compFptr ;
int /*@  predicates{compRegistered!=0,compRegistered==(-1),compRegistered==(-1073741637),compRegistered==(-1073741670),compRegistered==(-1073741764),compRegistered==(-1073741789),compRegistered==(-1073741802),compRegistered==(-1073741803),compRegistered==(-1073741808),compRegistered==(-1073741820),compRegistered==(-1073741823),compRegistered==(-2147483626),compRegistered==(-2147483631),compRegistered==0,compRegistered==1,compRegistered==147456,compRegistered==147460,compRegistered==147464,compRegistered==147468,compRegistered==147472,compRegistered==147476,compRegistered==147480,compRegistered==147496,compRegistered==147500,compRegistered==147508,compRegistered==147512,compRegistered==149504,compRegistered==149512,compRegistered==17,compRegistered==2,compRegistered==22,compRegistered==255,compRegistered==259,compRegistered==3,compRegistered==4,compRegistered==7,compRegistered==71} @*/ compRegistered ;
int /*@  predicates{lowerDriverReturn==(-1),lowerDriverReturn==(-1073741637),lowerDriverReturn==(-1073741670),lowerDriverReturn==(-1073741764),lowerDriverReturn==(-1073741789),lowerDriverReturn==(-1073741802),lowerDriverReturn==(-1073741803),lowerDriverReturn==(-1073741808),lowerDriverReturn==(-1073741820),lowerDriverReturn==(-1073741823),lowerDriverReturn==(-2147483626),lowerDriverReturn==(-2147483631),lowerDriverReturn==0,lowerDriverReturn==1,lowerDriverReturn==147456,lowerDriverReturn==147460,lowerDriverReturn==147464,lowerDriverReturn==147468,lowerDriverReturn==147472,lowerDriverReturn==147476,lowerDriverReturn==147480,lowerDriverReturn==147496,lowerDriverReturn==147500,lowerDriverReturn==147508,lowerDriverReturn==147512,lowerDriverReturn==149504,lowerDriverReturn==149512,lowerDriverReturn==17,lowerDriverReturn==2,lowerDriverReturn==22,lowerDriverReturn==255,lowerDriverReturn==259,lowerDriverReturn==3,lowerDriverReturn==4,lowerDriverReturn==7,lowerDriverReturn==71} @*/ lowerDriverReturn ;
int /*@  predicates{setEventCalled==(-1),setEventCalled==(-1073741637),setEventCalled==(-1073741670),setEventCalled==(-1073741764),setEventCalled==(-1073741789),setEventCalled==(-1073741802),setEventCalled==(-1073741803),setEventCalled==(-1073741808),setEventCalled==(-1073741820),setEventCalled==(-1073741823),setEventCalled==(-2147483626),setEventCalled==(-2147483631),setEventCalled==0,setEventCalled==1,setEventCalled==147456,setEventCalled==147460,setEventCalled==147464,setEventCalled==147468,setEventCalled==147472,setEventCalled==147476,setEventCalled==147480,setEventCalled==147496,setEventCalled==147500,setEventCalled==147508,setEventCalled==147512,setEventCalled==149504,setEventCalled==149512,setEventCalled==17,setEventCalled==2,setEventCalled==22,setEventCalled==255,setEventCalled==259,setEventCalled==3,setEventCalled==4,setEventCalled==7,setEventCalled==71} @*/ setEventCalled ;
int /*@  predicates{customIrp==(-1),customIrp==(-1073741637),customIrp==(-1073741670),customIrp==(-1073741764),customIrp==(-1073741789),customIrp==(-1073741802),customIrp==(-1073741803),customIrp==(-1073741808),customIrp==(-1073741820),customIrp==(-1073741823),customIrp==(-2147483626),customIrp==(-2147483631),customIrp==0,customIrp==1,customIrp==147456,customIrp==147460,customIrp==147464,customIrp==147468,customIrp==147472,customIrp==147476,customIrp==147480,customIrp==147496,customIrp==147500,customIrp==147508,customIrp==147512,customIrp==149504,customIrp==149512,customIrp==17,customIrp==2,customIrp==22,customIrp==255,customIrp==259,customIrp==3,customIrp==4,customIrp==7,customIrp==71} @*/ customIrp ;
int /*@  predicates{routine==0,routine==1} @*/ routine ;
int /*@  predicates{myStatus!=(-1),myStatus!=(-1073741637),myStatus!=(-1073741670),myStatus!=(-1073741764),myStatus!=(-1073741789),myStatus!=(-1073741802),myStatus!=(-1073741803),myStatus!=(-1073741808),myStatus!=(-1073741820),myStatus!=(-1073741823),myStatus!=(-2147483626),myStatus!=(-2147483631),myStatus!=0,myStatus!=1,myStatus!=147456,myStatus!=147460,myStatus!=147464,myStatus!=147468,myStatus!=147472,myStatus!=147476,myStatus!=147480,myStatus!=147496,myStatus!=147500,myStatus!=147508,myStatus!=147512,myStatus!=149504,myStatus!=149512,myStatus!=17,myStatus!=2,myStatus!=22,myStatus!=255,myStatus!=259,myStatus!=3,myStatus!=4,myStatus!=7,myStatus!=71,myStatus==(-1),myStatus==(-1073741637),myStatus==(-1073741670),myStatus==(-1073741764),myStatus==(-1073741789),myStatus==(-1073741802),myStatus==(-1073741803),myStatus==(-1073741808),myStatus==(-1073741820),myStatus==(-1073741823),myStatus==(-2147483626),myStatus==(-2147483631),myStatus==0,myStatus==1,myStatus==147456,myStatus==147460,myStatus==147464,myStatus==147468,myStatus==147472,myStatus==147476,myStatus==147480,myStatus==147496,myStatus==147500,myStatus==147508,myStatus==147512,myStatus==149504,myStatus==149512,myStatus==17,myStatus==2,myStatus==22,myStatus==255,myStatus==259,myStatus==3,myStatus==4,myStatus==7,myStatus==71,myStatus>=0} @*/ myStatus ;
int /*@  predicates{pirp!=(-1),pirp!=(-1073741637),pirp!=(-1073741670),pirp!=(-1073741764),pirp!=(-1073741789),pirp!=(-1073741802),pirp!=(-1073741803),pirp!=(-1073741808),pirp!=(-1073741820),pirp!=(-1073741823),pirp!=(-2147483626),pirp!=(-2147483631),pirp!=0,pirp!=1,pirp!=147456,pirp!=147460,pirp!=147464,pirp!=147468,pirp!=147472,pirp!=147476,pirp!=147480,pirp!=147496,pirp!=147500,pirp!=147508,pirp!=147512,pirp!=149504,pirp!=149512,pirp!=17,pirp!=2,pirp!=22,pirp!=255,pirp!=259,pirp!=3,pirp!=4,pirp!=7,pirp!=71,pirp==(-1),pirp==(-1073741637),pirp==(-1073741670),pirp==(-1073741764),pirp==(-1073741789),pirp==(-1073741802),pirp==(-1073741803),pirp==(-1073741808),pirp==(-1073741820),pirp==(-1073741823),pirp==(-2147483626),pirp==(-2147483631),pirp==0,pirp==1,pirp==147456,pirp==147460,pirp==147464,pirp==147468,pirp==147472,pirp==147476,pirp==147480,pirp==147496,pirp==147500,pirp==147508,pirp==147512,pirp==149504,pirp==149512,pirp==17,pirp==2,pirp==22,pirp==255,pirp==259,pirp==3,pirp==4,pirp==7,pirp==71} @*/ pirp ;
int /*@  predicates{Executive==0} @*/ Executive ;
int /*@  predicates{Suspended==5} @*/ Suspended ;
int /*@  predicates{KernelMode==0} @*/ KernelMode ;
int /*@  predicates{DeviceUsageTypePaging==1} @*/ DeviceUsageTypePaging ;

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
int SendSrbSynchronous(int /*@  predicates{Extension!=(-1),Extension!=(-1073741637),Extension!=(-1073741670),Extension!=(-1073741764),Extension!=(-1073741789),Extension!=(-1073741802),Extension!=(-1073741803),Extension!=(-1073741808),Extension!=(-1073741820),Extension!=(-1073741823),Extension!=(-2147483626),Extension!=(-2147483631),Extension!=0,Extension!=1,Extension!=147456,Extension!=147460,Extension!=147464,Extension!=147468,Extension!=147472,Extension!=147476,Extension!=147480,Extension!=147496,Extension!=147500,Extension!=147508,Extension!=147512,Extension!=149504,Extension!=149512,Extension!=17,Extension!=2,Extension!=22,Extension!=255,Extension!=259,Extension!=3,Extension!=4,Extension!=7,Extension!=71,Extension==(-1),Extension==(-1073741637),Extension==(-1073741670),Extension==(-1073741764),Extension==(-1073741789),Extension==(-1073741802),Extension==(-1073741803),Extension==(-1073741808),Extension==(-1073741820),Extension==(-1073741823),Extension==(-2147483626),Extension==(-2147483631),Extension==0,Extension==1,Extension==147456,Extension==147460,Extension==147464,Extension==147468,Extension==147472,Extension==147476,Extension==147480,Extension==147496,Extension==147500,Extension==147508,Extension==147512,Extension==149504,Extension==149512,Extension==17,Extension==2,Extension==22,Extension==255,Extension==259,Extension==3,Extension==4,Extension==7,Extension==71} @*/ Extension , int /*@  predicates{Srb!=(-1),Srb!=(-1073741637),Srb!=(-1073741670),Srb!=(-1073741764),Srb!=(-1073741789),Srb!=(-1073741802),Srb!=(-1073741803),Srb!=(-1073741808),Srb!=(-1073741820),Srb!=(-1073741823),Srb!=(-2147483626),Srb!=(-2147483631),Srb!=0,Srb!=1,Srb!=147456,Srb!=147460,Srb!=147464,Srb!=147468,Srb!=147472,Srb!=147476,Srb!=147480,Srb!=147496,Srb!=147500,Srb!=147508,Srb!=147512,Srb!=149504,Srb!=149512,Srb!=17,Srb!=2,Srb!=22,Srb!=255,Srb!=259,Srb!=3,Srb!=4,Srb!=7,Srb!=71,Srb==(-1),Srb==(-1073741637),Srb==(-1073741670),Srb==(-1073741764),Srb==(-1073741789),Srb==(-1073741802),Srb==(-1073741803),Srb==(-1073741808),Srb==(-1073741820),Srb==(-1073741823),Srb==(-2147483626),Srb==(-2147483631),Srb==0,Srb==1,Srb==147456,Srb==147460,Srb==147464,Srb==147468,Srb==147472,Srb==147476,Srb==147480,Srb==147496,Srb==147500,Srb==147508,Srb==147512,Srb==149504,Srb==149512,Srb==17,Srb==2,Srb==22,Srb==255,Srb==259,Srb==3,Srb==4,Srb==7,Srb==71} @*/ Srb , int /*@  predicates{Buffer!=(-1),Buffer!=(-1073741637),Buffer!=(-1073741670),Buffer!=(-1073741764),Buffer!=(-1073741789),Buffer!=(-1073741802),Buffer!=(-1073741803),Buffer!=(-1073741808),Buffer!=(-1073741820),Buffer!=(-1073741823),Buffer!=(-2147483626),Buffer!=(-2147483631),Buffer!=0,Buffer!=1,Buffer!=147456,Buffer!=147460,Buffer!=147464,Buffer!=147468,Buffer!=147472,Buffer!=147476,Buffer!=147480,Buffer!=147496,Buffer!=147500,Buffer!=147508,Buffer!=147512,Buffer!=149504,Buffer!=149512,Buffer!=17,Buffer!=2,Buffer!=22,Buffer!=255,Buffer!=259,Buffer!=3,Buffer!=4,Buffer!=7,Buffer!=71,Buffer==(-1),Buffer==(-1073741637),Buffer==(-1073741670),Buffer==(-1073741764),Buffer==(-1073741789),Buffer==(-1073741802),Buffer==(-1073741803),Buffer==(-1073741808),Buffer==(-1073741820),Buffer==(-1073741823),Buffer==(-2147483626),Buffer==(-2147483631),Buffer==0,Buffer==1,Buffer==147456,Buffer==147460,Buffer==147464,Buffer==147468,Buffer==147472,Buffer==147476,Buffer==147480,Buffer==147496,Buffer==147500,Buffer==147508,Buffer==147512,Buffer==149504,Buffer==149512,Buffer==17,Buffer==2,Buffer==22,Buffer==255,Buffer==259,Buffer==3,Buffer==4,Buffer==7,Buffer==71} @*/ Buffer , int /*@  predicates{BufferLength!=(-1),BufferLength!=(-1073741637),BufferLength!=(-1073741670),BufferLength!=(-1073741764),BufferLength!=(-1073741789),BufferLength!=(-1073741802),BufferLength!=(-1073741803),BufferLength!=(-1073741808),BufferLength!=(-1073741820),BufferLength!=(-1073741823),BufferLength!=(-2147483626),BufferLength!=(-2147483631),BufferLength!=0,BufferLength!=1,BufferLength!=147456,BufferLength!=147460,BufferLength!=147464,BufferLength!=147468,BufferLength!=147472,BufferLength!=147476,BufferLength!=147480,BufferLength!=147496,BufferLength!=147500,BufferLength!=147508,BufferLength!=147512,BufferLength!=149504,BufferLength!=149512,BufferLength!=17,BufferLength!=2,BufferLength!=22,BufferLength!=255,BufferLength!=259,BufferLength!=3,BufferLength!=4,BufferLength!=7,BufferLength!=71,BufferLength==(-1),BufferLength==(-1073741637),BufferLength==(-1073741670),BufferLength==(-1073741764),BufferLength==(-1073741789),BufferLength==(-1073741802),BufferLength==(-1073741803),BufferLength==(-1073741808),BufferLength==(-1073741820),BufferLength==(-1073741823),BufferLength==(-2147483626),BufferLength==(-2147483631),BufferLength==0,BufferLength==1,BufferLength==147456,BufferLength==147460,BufferLength==147464,BufferLength==147468,BufferLength==147472,BufferLength==147476,BufferLength==147480,BufferLength==147496,BufferLength==147500,BufferLength==147508,BufferLength==147512,BufferLength==149504,BufferLength==149512,BufferLength==17,BufferLength==2,BufferLength==22,BufferLength==255,BufferLength==259,BufferLength==3,BufferLength==36,BufferLength==4,BufferLength==7,BufferLength==71} @*/ BufferLength)
{ int /*@  predicates{ioStatus__Status!=(-1),ioStatus__Status!=(-1073741637),ioStatus__Status!=(-1073741670),ioStatus__Status!=(-1073741764),ioStatus__Status!=(-1073741789),ioStatus__Status!=(-1073741802),ioStatus__Status!=(-1073741803),ioStatus__Status!=(-1073741808),ioStatus__Status!=(-1073741820),ioStatus__Status!=(-1073741823),ioStatus__Status!=(-2147483626),ioStatus__Status!=(-2147483631),ioStatus__Status!=0,ioStatus__Status!=1,ioStatus__Status!=147456,ioStatus__Status!=147460,ioStatus__Status!=147464,ioStatus__Status!=147468,ioStatus__Status!=147472,ioStatus__Status!=147476,ioStatus__Status!=147480,ioStatus__Status!=147496,ioStatus__Status!=147500,ioStatus__Status!=147508,ioStatus__Status!=147512,ioStatus__Status!=149504,ioStatus__Status!=149512,ioStatus__Status!=17,ioStatus__Status!=2,ioStatus__Status!=22,ioStatus__Status!=255,ioStatus__Status!=259,ioStatus__Status!=3,ioStatus__Status!=4,ioStatus__Status!=7,ioStatus__Status!=71,ioStatus__Status==(-1),ioStatus__Status==(-1073741637),ioStatus__Status==(-1073741670),ioStatus__Status==(-1073741764),ioStatus__Status==(-1073741789),ioStatus__Status==(-1073741802),ioStatus__Status==(-1073741803),ioStatus__Status==(-1073741808),ioStatus__Status==(-1073741820),ioStatus__Status==(-1073741823),ioStatus__Status==(-2147483626),ioStatus__Status==(-2147483631),ioStatus__Status==0,ioStatus__Status==1,ioStatus__Status==147456,ioStatus__Status==147460,ioStatus__Status==147464,ioStatus__Status==147468,ioStatus__Status==147472,ioStatus__Status==147476,ioStatus__Status==147480,ioStatus__Status==147496,ioStatus__Status==147500,ioStatus__Status==147508,ioStatus__Status==147512,ioStatus__Status==149504,ioStatus__Status==149512,ioStatus__Status==17,ioStatus__Status==2,ioStatus__Status==22,ioStatus__Status==255,ioStatus__Status==259,ioStatus__Status==3,ioStatus__Status==4,ioStatus__Status==7,ioStatus__Status==71} @*/ ioStatus__Status = __VERIFIER_nondet_int();
  int /*@  predicates{ioctl==315396,ioctl==315412} @*/ ioctl ;
  int /*@  predicates{event!=(-1),event!=(-1073741637),event!=(-1073741670),event!=(-1073741764),event!=(-1073741789),event!=(-1073741802),event!=(-1073741803),event!=(-1073741808),event!=(-1073741820),event!=(-1073741823),event!=(-2147483626),event!=(-2147483631),event!=0,event!=1,event!=147456,event!=147460,event!=147464,event!=147468,event!=147472,event!=147476,event!=147480,event!=147496,event!=147500,event!=147508,event!=147512,event!=149504,event!=149512,event!=17,event!=2,event!=22,event!=255,event!=259,event!=3,event!=4,event!=7,event!=71,event==(-1),event==(-1073741637),event==(-1073741670),event==(-1073741764),event==(-1073741789),event==(-1073741802),event==(-1073741803),event==(-1073741808),event==(-1073741820),event==(-1073741823),event==(-2147483626),event==(-2147483631),event==0,event==1,event==147456,event==147460,event==147464,event==147468,event==147472,event==147476,event==147480,event==147496,event==147500,event==147508,event==147512,event==149504,event==149512,event==17,event==2,event==22,event==255,event==259,event==3,event==4,event==7,event==71} @*/ event = __VERIFIER_nondet_int();
  int /*@  predicates{irp==0} @*/ irp ;
  int /*@  predicates{status!=(-1),status!=(-1073741637),status!=(-1073741670),status!=(-1073741764),status!=(-1073741789),status!=(-1073741802),status!=(-1073741803),status!=(-1073741808),status!=(-1073741820),status!=(-1073741823),status!=(-2147483626),status!=(-2147483631),status!=0,status!=1,status!=147456,status!=147460,status!=147464,status!=147468,status!=147472,status!=147476,status!=147480,status!=147496,status!=147500,status!=147508,status!=147512,status!=149504,status!=149512,status!=17,status!=2,status!=22,status!=255,status!=259,status!=3,status!=4,status!=7,status!=71,status==(-1),status==(-1073741637),status==(-1073741670),status==(-1073741764),status==(-1073741789),status==(-1073741802),status==(-1073741803),status==(-1073741808),status==(-1073741820),status==(-1073741823),status==(-2147483626),status==(-2147483631),status==0,status==1,status==147456,status==147460,status==147464,status==147468,status==147472,status==147476,status==147480,status==147496,status==147500,status==147508,status==147512,status==149504,status==149512,status==17,status==2,status==22,status==255,status==259,status==3,status==4,status==7,status==71,status==ioStatus__Status} @*/ status = __VERIFIER_nondet_int();
  int /*@  predicates{__cil_tmp10==4116} @*/ __cil_tmp10 ;
  int /*@  predicates{__cil_tmp11==49152} @*/ __cil_tmp11 ;
  int /*@  predicates{__cil_tmp12==262144} @*/ __cil_tmp12 ;
  int /*@  predicates{__cil_tmp13==311296} @*/ __cil_tmp13 ;
  int /*@  predicates{__cil_tmp14==4100} @*/ __cil_tmp14 ;
  int /*@  predicates{__cil_tmp15==49152} @*/ __cil_tmp15 ;
  int /*@  predicates{__cil_tmp16==262144} @*/ __cil_tmp16 ;
  int /*@  predicates{__cil_tmp17==311296} @*/ __cil_tmp17 ;
  long __cil_tmp18 ;

  {
  irp = 0;
  if(Buffer){
    __cil_tmp10 = 4116;
    __cil_tmp11 = 49152;
    __cil_tmp12 = 262144;
    __cil_tmp13 = 311296;
    ioctl = 315412;
  } else {
    __cil_tmp14 = 4100;
    __cil_tmp15 = 49152;
    __cil_tmp16 = 262144;
    __cil_tmp17 = 311296;
    ioctl = 315396;
  }
  if(! irp){
    return(-1073741670);
  }
  {
  __cil_tmp18 =(long)status;
  if(__cil_tmp18 == 259L){
    {
    KeWaitForSingleObject(event, Executive, KernelMode, 0, 0);
    status = ioStatus__Status;
    }
  }
  }
  return(status);
}
}
int CdAudioSignalCompletion(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741670),DeviceObject!=(-1073741764),DeviceObject!=(-1073741789),DeviceObject!=(-1073741802),DeviceObject!=(-1073741803),DeviceObject!=(-1073741808),DeviceObject!=(-1073741820),DeviceObject!=(-1073741823),DeviceObject!=(-2147483626),DeviceObject!=(-2147483631),DeviceObject!=0,DeviceObject!=1,DeviceObject!=147456,DeviceObject!=147460,DeviceObject!=147464,DeviceObject!=147468,DeviceObject!=147472,DeviceObject!=147476,DeviceObject!=147480,DeviceObject!=147496,DeviceObject!=147500,DeviceObject!=147508,DeviceObject!=147512,DeviceObject!=149504,DeviceObject!=149512,DeviceObject!=17,DeviceObject!=2,DeviceObject!=22,DeviceObject!=255,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=7,DeviceObject!=71,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741670),DeviceObject==(-1073741764),DeviceObject==(-1073741789),DeviceObject==(-1073741802),DeviceObject==(-1073741803),DeviceObject==(-1073741808),DeviceObject==(-1073741820),DeviceObject==(-1073741823),DeviceObject==(-2147483626),DeviceObject==(-2147483631),DeviceObject==0,DeviceObject==1,DeviceObject==147456,DeviceObject==147460,DeviceObject==147464,DeviceObject==147468,DeviceObject==147472,DeviceObject==147476,DeviceObject==147480,DeviceObject==147496,DeviceObject==147500,DeviceObject==147508,DeviceObject==147512,DeviceObject==149504,DeviceObject==149512,DeviceObject==17,DeviceObject==2,DeviceObject==22,DeviceObject==255,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==7,DeviceObject==71} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741670),Irp!=(-1073741764),Irp!=(-1073741789),Irp!=(-1073741802),Irp!=(-1073741803),Irp!=(-1073741808),Irp!=(-1073741820),Irp!=(-1073741823),Irp!=(-2147483626),Irp!=(-2147483631),Irp!=0,Irp!=1,Irp!=147456,Irp!=147460,Irp!=147464,Irp!=147468,Irp!=147472,Irp!=147476,Irp!=147480,Irp!=147496,Irp!=147500,Irp!=147508,Irp!=147512,Irp!=149504,Irp!=149512,Irp!=17,Irp!=2,Irp!=22,Irp!=255,Irp!=259,Irp!=3,Irp!=4,Irp!=7,Irp!=71,Irp==(-1),Irp==(-1073741637),Irp==(-1073741670),Irp==(-1073741764),Irp==(-1073741789),Irp==(-1073741802),Irp==(-1073741803),Irp==(-1073741808),Irp==(-1073741820),Irp==(-1073741823),Irp==(-2147483626),Irp==(-2147483631),Irp==0,Irp==1,Irp==147456,Irp==147460,Irp==147464,Irp==147468,Irp==147472,Irp==147476,Irp==147480,Irp==147496,Irp==147500,Irp==147508,Irp==147512,Irp==149504,Irp==149512,Irp==17,Irp==2,Irp==22,Irp==255,Irp==259,Irp==3,Irp==4,Irp==7,Irp==71} @*/ Irp , int /*@  predicates{Event!=(-1),Event!=(-1073741637),Event!=(-1073741670),Event!=(-1073741764),Event!=(-1073741789),Event!=(-1073741802),Event!=(-1073741803),Event!=(-1073741808),Event!=(-1073741820),Event!=(-1073741823),Event!=(-2147483626),Event!=(-2147483631),Event!=0,Event!=1,Event!=147456,Event!=147460,Event!=147464,Event!=147468,Event!=147472,Event!=147476,Event!=147480,Event!=147496,Event!=147500,Event!=147508,Event!=147512,Event!=149504,Event!=149512,Event!=17,Event!=2,Event!=22,Event!=255,Event!=259,Event!=3,Event!=4,Event!=7,Event!=71,Event==(-1),Event==(-1073741637),Event==(-1073741670),Event==(-1073741764),Event==(-1073741789),Event==(-1073741802),Event==(-1073741803),Event==(-1073741808),Event==(-1073741820),Event==(-1073741823),Event==(-2147483626),Event==(-2147483631),Event==0,Event==1,Event==147456,Event==147460,Event==147464,Event==147468,Event==147472,Event==147476,Event==147480,Event==147496,Event==147500,Event==147508,Event==147512,Event==149504,Event==149512,Event==17,Event==2,Event==22,Event==255,Event==259,Event==3,Event==4,Event==7,Event==71} @*/ Event)
{

  {
  {
  KeSetEvent(Event, 0, 0);
  }
  return(-1073741802);
}
}
int CdAudioStartDevice(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741670),DeviceObject!=(-1073741764),DeviceObject!=(-1073741789),DeviceObject!=(-1073741802),DeviceObject!=(-1073741803),DeviceObject!=(-1073741808),DeviceObject!=(-1073741820),DeviceObject!=(-1073741823),DeviceObject!=(-2147483626),DeviceObject!=(-2147483631),DeviceObject!=0,DeviceObject!=1,DeviceObject!=147456,DeviceObject!=147460,DeviceObject!=147464,DeviceObject!=147468,DeviceObject!=147472,DeviceObject!=147476,DeviceObject!=147480,DeviceObject!=147496,DeviceObject!=147500,DeviceObject!=147508,DeviceObject!=147512,DeviceObject!=149504,DeviceObject!=149512,DeviceObject!=17,DeviceObject!=2,DeviceObject!=22,DeviceObject!=255,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=7,DeviceObject!=71,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741670),DeviceObject==(-1073741764),DeviceObject==(-1073741789),DeviceObject==(-1073741802),DeviceObject==(-1073741803),DeviceObject==(-1073741808),DeviceObject==(-1073741820),DeviceObject==(-1073741823),DeviceObject==(-2147483626),DeviceObject==(-2147483631),DeviceObject==0,DeviceObject==1,DeviceObject==147456,DeviceObject==147460,DeviceObject==147464,DeviceObject==147468,DeviceObject==147472,DeviceObject==147476,DeviceObject==147480,DeviceObject==147496,DeviceObject==147500,DeviceObject==147508,DeviceObject==147512,DeviceObject==149504,DeviceObject==149512,DeviceObject==17,DeviceObject==2,DeviceObject==22,DeviceObject==255,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==7,DeviceObject==71} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741670),Irp!=(-1073741764),Irp!=(-1073741789),Irp!=(-1073741802),Irp!=(-1073741803),Irp!=(-1073741808),Irp!=(-1073741820),Irp!=(-1073741823),Irp!=(-2147483626),Irp!=(-2147483631),Irp!=0,Irp!=1,Irp!=147456,Irp!=147460,Irp!=147464,Irp!=147468,Irp!=147472,Irp!=147476,Irp!=147480,Irp!=147496,Irp!=147500,Irp!=147508,Irp!=147512,Irp!=149504,Irp!=149512,Irp!=17,Irp!=2,Irp!=22,Irp!=255,Irp!=259,Irp!=3,Irp!=4,Irp!=7,Irp!=71,Irp==(-1),Irp==(-1073741637),Irp==(-1073741670),Irp==(-1073741764),Irp==(-1073741789),Irp==(-1073741802),Irp==(-1073741803),Irp==(-1073741808),Irp==(-1073741820),Irp==(-1073741823),Irp==(-2147483626),Irp==(-2147483631),Irp==0,Irp==1,Irp==147456,Irp==147460,Irp==147464,Irp==147468,Irp==147472,Irp==147476,Irp==147480,Irp==147496,Irp==147500,Irp==147508,Irp==147512,Irp==149504,Irp==149512,Irp==17,Irp==2,Irp==22,Irp==255,Irp==259,Irp==3,Irp==4,Irp==7,Irp==71} @*/ Irp)
{ int /*@  predicates{deviceExtension__Active!=(-1),deviceExtension__Active!=(-1073741637),deviceExtension__Active!=(-1073741670),deviceExtension__Active!=(-1073741764),deviceExtension__Active!=(-1073741789),deviceExtension__Active!=(-1073741802),deviceExtension__Active!=(-1073741803),deviceExtension__Active!=(-1073741808),deviceExtension__Active!=(-1073741820),deviceExtension__Active!=(-1073741823),deviceExtension__Active!=(-2147483626),deviceExtension__Active!=(-2147483631),deviceExtension__Active!=0,deviceExtension__Active!=1,deviceExtension__Active!=147456,deviceExtension__Active!=147460,deviceExtension__Active!=147464,deviceExtension__Active!=147468,deviceExtension__Active!=147472,deviceExtension__Active!=147476,deviceExtension__Active!=147480,deviceExtension__Active!=147496,deviceExtension__Active!=147500,deviceExtension__Active!=147508,deviceExtension__Active!=147512,deviceExtension__Active!=149504,deviceExtension__Active!=149512,deviceExtension__Active!=17,deviceExtension__Active!=2,deviceExtension__Active!=22,deviceExtension__Active!=255,deviceExtension__Active!=259,deviceExtension__Active!=3,deviceExtension__Active!=4,deviceExtension__Active!=7,deviceExtension__Active!=71,deviceExtension__Active==(-1),deviceExtension__Active==(-1073741637),deviceExtension__Active==(-1073741670),deviceExtension__Active==(-1073741764),deviceExtension__Active==(-1073741789),deviceExtension__Active==(-1073741802),deviceExtension__Active==(-1073741803),deviceExtension__Active==(-1073741808),deviceExtension__Active==(-1073741820),deviceExtension__Active==(-1073741823),deviceExtension__Active==(-2147483626),deviceExtension__Active==(-2147483631),deviceExtension__Active==0,deviceExtension__Active==1,deviceExtension__Active==147456,deviceExtension__Active==147460,deviceExtension__Active==147464,deviceExtension__Active==147468,deviceExtension__Active==147472,deviceExtension__Active==147476,deviceExtension__Active==147480,deviceExtension__Active==147496,deviceExtension__Active==147500,deviceExtension__Active==147508,deviceExtension__Active==147512,deviceExtension__Active==149504,deviceExtension__Active==149512,deviceExtension__Active==17,deviceExtension__Active==2,deviceExtension__Active==22,deviceExtension__Active==255,deviceExtension__Active==259,deviceExtension__Active==3,deviceExtension__Active==4,deviceExtension__Active==7,deviceExtension__Active==71} @*/ deviceExtension__Active = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension!=(-1),deviceExtension!=(-1073741637),deviceExtension!=(-1073741670),deviceExtension!=(-1073741764),deviceExtension!=(-1073741789),deviceExtension!=(-1073741802),deviceExtension!=(-1073741803),deviceExtension!=(-1073741808),deviceExtension!=(-1073741820),deviceExtension!=(-1073741823),deviceExtension!=(-2147483626),deviceExtension!=(-2147483631),deviceExtension!=0,deviceExtension!=1,deviceExtension!=147456,deviceExtension!=147460,deviceExtension!=147464,deviceExtension!=147468,deviceExtension!=147472,deviceExtension!=147476,deviceExtension!=147480,deviceExtension!=147496,deviceExtension!=147500,deviceExtension!=147508,deviceExtension!=147512,deviceExtension!=149504,deviceExtension!=149512,deviceExtension!=17,deviceExtension!=2,deviceExtension!=22,deviceExtension!=255,deviceExtension!=259,deviceExtension!=3,deviceExtension!=4,deviceExtension!=7,deviceExtension!=71,deviceExtension==(-1),deviceExtension==(-1073741637),deviceExtension==(-1073741670),deviceExtension==(-1073741764),deviceExtension==(-1073741789),deviceExtension==(-1073741802),deviceExtension==(-1073741803),deviceExtension==(-1073741808),deviceExtension==(-1073741820),deviceExtension==(-1073741823),deviceExtension==(-2147483626),deviceExtension==(-2147483631),deviceExtension==0,deviceExtension==1,deviceExtension==147456,deviceExtension==147460,deviceExtension==147464,deviceExtension==147468,deviceExtension==147472,deviceExtension==147476,deviceExtension==147480,deviceExtension==147496,deviceExtension==147500,deviceExtension==147508,deviceExtension==147512,deviceExtension==149504,deviceExtension==149512,deviceExtension==17,deviceExtension==2,deviceExtension==22,deviceExtension==255,deviceExtension==259,deviceExtension==3,deviceExtension==4,deviceExtension==7,deviceExtension==71} @*/ deviceExtension = __VERIFIER_nondet_int();
  int /*@  predicates{status!=(-1),status!=(-1073741637),status!=(-1073741670),status!=(-1073741764),status!=(-1073741789),status!=(-1073741802),status!=(-1073741803),status!=(-1073741808),status!=(-1073741820),status!=(-1073741823),status!=(-2147483626),status!=(-2147483631),status!=0,status!=1,status!=147456,status!=147460,status!=147464,status!=147468,status!=147472,status!=147476,status!=147480,status!=147496,status!=147500,status!=147508,status!=147512,status!=149504,status!=149512,status!=17,status!=2,status!=22,status!=255,status!=259,status!=3,status!=4,status!=7,status!=71,status<0,status==(-1),status==(-1073741637),status==(-1073741670),status==(-1073741764),status==(-1073741789),status==(-1073741802),status==(-1073741803),status==(-1073741808),status==(-1073741820),status==(-1073741823),status==(-2147483626),status==(-2147483631),status==0,status==1,status==147456,status==147460,status==147464,status==147468,status==147472,status==147476,status==147480,status==147496,status==147500,status==147508,status==147512,status==149504,status==149512,status==17,status==2,status==22,status==255,status==259,status==3,status==4,status==7,status==71} @*/ status ;
  int /*@  predicates{srb!=(-1),srb!=(-1073741637),srb!=(-1073741670),srb!=(-1073741764),srb!=(-1073741789),srb!=(-1073741802),srb!=(-1073741803),srb!=(-1073741808),srb!=(-1073741820),srb!=(-1073741823),srb!=(-2147483626),srb!=(-2147483631),srb!=0,srb!=1,srb!=147456,srb!=147460,srb!=147464,srb!=147468,srb!=147472,srb!=147476,srb!=147480,srb!=147496,srb!=147500,srb!=147508,srb!=147512,srb!=149504,srb!=149512,srb!=17,srb!=2,srb!=22,srb!=255,srb!=259,srb!=3,srb!=4,srb!=7,srb!=71,srb==(-1),srb==(-1073741637),srb==(-1073741670),srb==(-1073741764),srb==(-1073741789),srb==(-1073741802),srb==(-1073741803),srb==(-1073741808),srb==(-1073741820),srb==(-1073741823),srb==(-2147483626),srb==(-2147483631),srb==0,srb==1,srb==147456,srb==147460,srb==147464,srb==147468,srb==147472,srb==147476,srb==147480,srb==147496,srb==147500,srb==147508,srb==147512,srb==149504,srb==149512,srb==17,srb==2,srb==22,srb==255,srb==259,srb==3,srb==4,srb==7,srb==71} @*/ srb = __VERIFIER_nondet_int();
  int /*@  predicates{srb__Cdb!=(-1),srb__Cdb!=(-1073741637),srb__Cdb!=(-1073741670),srb__Cdb!=(-1073741764),srb__Cdb!=(-1073741789),srb__Cdb!=(-1073741802),srb__Cdb!=(-1073741803),srb__Cdb!=(-1073741808),srb__Cdb!=(-1073741820),srb__Cdb!=(-1073741823),srb__Cdb!=(-2147483626),srb__Cdb!=(-2147483631),srb__Cdb!=0,srb__Cdb!=1,srb__Cdb!=147456,srb__Cdb!=147460,srb__Cdb!=147464,srb__Cdb!=147468,srb__Cdb!=147472,srb__Cdb!=147476,srb__Cdb!=147480,srb__Cdb!=147496,srb__Cdb!=147500,srb__Cdb!=147508,srb__Cdb!=147512,srb__Cdb!=149504,srb__Cdb!=149512,srb__Cdb!=17,srb__Cdb!=2,srb__Cdb!=22,srb__Cdb!=255,srb__Cdb!=259,srb__Cdb!=3,srb__Cdb!=4,srb__Cdb!=7,srb__Cdb!=71,srb__Cdb==(-1),srb__Cdb==(-1073741637),srb__Cdb==(-1073741670),srb__Cdb==(-1073741764),srb__Cdb==(-1073741789),srb__Cdb==(-1073741802),srb__Cdb==(-1073741803),srb__Cdb==(-1073741808),srb__Cdb==(-1073741820),srb__Cdb==(-1073741823),srb__Cdb==(-2147483626),srb__Cdb==(-2147483631),srb__Cdb==0,srb__Cdb==1,srb__Cdb==147456,srb__Cdb==147460,srb__Cdb==147464,srb__Cdb==147468,srb__Cdb==147472,srb__Cdb==147476,srb__Cdb==147480,srb__Cdb==147496,srb__Cdb==147500,srb__Cdb==147508,srb__Cdb==147512,srb__Cdb==149504,srb__Cdb==149512,srb__Cdb==17,srb__Cdb==2,srb__Cdb==22,srb__Cdb==255,srb__Cdb==259,srb__Cdb==3,srb__Cdb==4,srb__Cdb==7,srb__Cdb==71} @*/ srb__Cdb = __VERIFIER_nondet_int();
  int /*@  predicates{cdb!=(-1),cdb!=(-1073741637),cdb!=(-1073741670),cdb!=(-1073741764),cdb!=(-1073741789),cdb!=(-1073741802),cdb!=(-1073741803),cdb!=(-1073741808),cdb!=(-1073741820),cdb!=(-1073741823),cdb!=(-2147483626),cdb!=(-2147483631),cdb!=0,cdb!=1,cdb!=147456,cdb!=147460,cdb!=147464,cdb!=147468,cdb!=147472,cdb!=147476,cdb!=147480,cdb!=147496,cdb!=147500,cdb!=147508,cdb!=147512,cdb!=149504,cdb!=149512,cdb!=17,cdb!=2,cdb!=22,cdb!=255,cdb!=259,cdb!=3,cdb!=4,cdb!=7,cdb!=71,cdb==(-1),cdb==(-1073741637),cdb==(-1073741670),cdb==(-1073741764),cdb==(-1073741789),cdb==(-1073741802),cdb==(-1073741803),cdb==(-1073741808),cdb==(-1073741820),cdb==(-1073741823),cdb==(-2147483626),cdb==(-2147483631),cdb==0,cdb==1,cdb==147456,cdb==147460,cdb==147464,cdb==147468,cdb==147472,cdb==147476,cdb==147480,cdb==147496,cdb==147500,cdb==147508,cdb==147512,cdb==149504,cdb==149512,cdb==17,cdb==2,cdb==22,cdb==255,cdb==259,cdb==3,cdb==4,cdb==7,cdb==71,cdb==srb__Cdb} @*/ cdb ;
  int /*@  predicates{inquiryDataPtr==(-1),inquiryDataPtr==(-1073741637),inquiryDataPtr==(-1073741670),inquiryDataPtr==(-1073741764),inquiryDataPtr==(-1073741789),inquiryDataPtr==(-1073741802),inquiryDataPtr==(-1073741803),inquiryDataPtr==(-1073741808),inquiryDataPtr==(-1073741820),inquiryDataPtr==(-1073741823),inquiryDataPtr==(-2147483626),inquiryDataPtr==(-2147483631),inquiryDataPtr==0,inquiryDataPtr==1,inquiryDataPtr==147456,inquiryDataPtr==147460,inquiryDataPtr==147464,inquiryDataPtr==147468,inquiryDataPtr==147472,inquiryDataPtr==147476,inquiryDataPtr==147480,inquiryDataPtr==147496,inquiryDataPtr==147500,inquiryDataPtr==147508,inquiryDataPtr==147512,inquiryDataPtr==149504,inquiryDataPtr==149512,inquiryDataPtr==17,inquiryDataPtr==2,inquiryDataPtr==22,inquiryDataPtr==255,inquiryDataPtr==259,inquiryDataPtr==3,inquiryDataPtr==4,inquiryDataPtr==7,inquiryDataPtr==71} @*/ inquiryDataPtr ;
  int attempt ;
  int /*@  predicates{tmp>=4} @*/ tmp ;
  int /*@  predicates{deviceParameterHandle!=(-1),deviceParameterHandle!=(-1073741637),deviceParameterHandle!=(-1073741670),deviceParameterHandle!=(-1073741764),deviceParameterHandle!=(-1073741789),deviceParameterHandle!=(-1073741802),deviceParameterHandle!=(-1073741803),deviceParameterHandle!=(-1073741808),deviceParameterHandle!=(-1073741820),deviceParameterHandle!=(-1073741823),deviceParameterHandle!=(-2147483626),deviceParameterHandle!=(-2147483631),deviceParameterHandle!=0,deviceParameterHandle!=1,deviceParameterHandle!=147456,deviceParameterHandle!=147460,deviceParameterHandle!=147464,deviceParameterHandle!=147468,deviceParameterHandle!=147472,deviceParameterHandle!=147476,deviceParameterHandle!=147480,deviceParameterHandle!=147496,deviceParameterHandle!=147500,deviceParameterHandle!=147508,deviceParameterHandle!=147512,deviceParameterHandle!=149504,deviceParameterHandle!=149512,deviceParameterHandle!=17,deviceParameterHandle!=2,deviceParameterHandle!=22,deviceParameterHandle!=255,deviceParameterHandle!=259,deviceParameterHandle!=3,deviceParameterHandle!=4,deviceParameterHandle!=7,deviceParameterHandle!=71,deviceParameterHandle==(-1),deviceParameterHandle==(-1073741637),deviceParameterHandle==(-1073741670),deviceParameterHandle==(-1073741764),deviceParameterHandle==(-1073741789),deviceParameterHandle==(-1073741802),deviceParameterHandle==(-1073741803),deviceParameterHandle==(-1073741808),deviceParameterHandle==(-1073741820),deviceParameterHandle==(-1073741823),deviceParameterHandle==(-2147483626),deviceParameterHandle==(-2147483631),deviceParameterHandle==0,deviceParameterHandle==1,deviceParameterHandle==147456,deviceParameterHandle==147460,deviceParameterHandle==147464,deviceParameterHandle==147468,deviceParameterHandle==147472,deviceParameterHandle==147476,deviceParameterHandle==147480,deviceParameterHandle==147496,deviceParameterHandle==147500,deviceParameterHandle==147508,deviceParameterHandle==147512,deviceParameterHandle==149504,deviceParameterHandle==149512,deviceParameterHandle==17,deviceParameterHandle==2,deviceParameterHandle==22,deviceParameterHandle==255,deviceParameterHandle==259,deviceParameterHandle==3,deviceParameterHandle==4,deviceParameterHandle==7,deviceParameterHandle==71} @*/ deviceParameterHandle = __VERIFIER_nondet_int();
  int /*@  predicates{keyValue!=(-1),keyValue!=(-1073741637),keyValue!=(-1073741670),keyValue!=(-1073741764),keyValue!=(-1073741789),keyValue!=(-1073741802),keyValue!=(-1073741803),keyValue!=(-1073741808),keyValue!=(-1073741820),keyValue!=(-1073741823),keyValue!=(-2147483626),keyValue!=(-2147483631),keyValue!=0,keyValue!=1,keyValue!=147456,keyValue!=147460,keyValue!=147464,keyValue!=147468,keyValue!=147472,keyValue!=147476,keyValue!=147480,keyValue!=147496,keyValue!=147500,keyValue!=147508,keyValue!=147512,keyValue!=149504,keyValue!=149512,keyValue!=17,keyValue!=2,keyValue!=22,keyValue!=255,keyValue!=259,keyValue!=3,keyValue!=4,keyValue!=7,keyValue!=71,keyValue==(-1),keyValue==(-1073741637),keyValue==(-1073741670),keyValue==(-1073741764),keyValue==(-1073741789),keyValue==(-1073741802),keyValue==(-1073741803),keyValue==(-1073741808),keyValue==(-1073741820),keyValue==(-1073741823),keyValue==(-2147483626),keyValue==(-2147483631),keyValue==0,keyValue==1,keyValue==147456,keyValue==147460,keyValue==147464,keyValue==147468,keyValue==147472,keyValue==147476,keyValue==147480,keyValue==147496,keyValue==147500,keyValue==147508,keyValue==147512,keyValue==149504,keyValue==149512,keyValue==17,keyValue==2,keyValue==22,keyValue==255,keyValue==259,keyValue==3,keyValue==4,keyValue==7,keyValue==71} @*/ keyValue ;
  {
  {
  status = CdAudioForwardIrpSynchronous(DeviceObject, Irp);
  }
  {
  if(status < 0){
    return(status);
  }
  }
  if(deviceExtension__Active == 255){
    cdb = srb__Cdb;
    inquiryDataPtr = 0;
    attempt = 0;
    if(! inquiryDataPtr){
      deviceExtension__Active = 0;
      return(0);
    }
    status = -1073741823;
    {
    while(1){
      while_0_continue: ;

      {
      if(status < 0){
        tmp = attempt;
        attempt ++;
        if(tmp >= 4){
          goto while_0_break_1;
        }
      } else {
        goto while_0_break_1;
      }
      }
      {
      status = SendSrbSynchronous(deviceExtension, srb, inquiryDataPtr, 36);
      }
    }
    while_0_break: ;
    }
    while_0_break_1: ;
    {
    if(status < 0){
      deviceExtension__Active = 0;
      return(0);
    }
    }
    deviceExtension__Active = 0;
  }
  keyValue = deviceExtension__Active;
  {
  if(status < 0){
    return(0);
  }
  }
  {
  if(status < 0){

  }
  }
  {
  ZwClose(deviceParameterHandle);
  }
  return(0);
}
}
int CdAudioPnp(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741670),DeviceObject!=(-1073741764),DeviceObject!=(-1073741789),DeviceObject!=(-1073741802),DeviceObject!=(-1073741803),DeviceObject!=(-1073741808),DeviceObject!=(-1073741820),DeviceObject!=(-1073741823),DeviceObject!=(-2147483626),DeviceObject!=(-2147483631),DeviceObject!=0,DeviceObject!=1,DeviceObject!=147456,DeviceObject!=147460,DeviceObject!=147464,DeviceObject!=147468,DeviceObject!=147472,DeviceObject!=147476,DeviceObject!=147480,DeviceObject!=147496,DeviceObject!=147500,DeviceObject!=147508,DeviceObject!=147512,DeviceObject!=149504,DeviceObject!=149512,DeviceObject!=17,DeviceObject!=2,DeviceObject!=22,DeviceObject!=255,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=7,DeviceObject!=71,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741670),DeviceObject==(-1073741764),DeviceObject==(-1073741789),DeviceObject==(-1073741802),DeviceObject==(-1073741803),DeviceObject==(-1073741808),DeviceObject==(-1073741820),DeviceObject==(-1073741823),DeviceObject==(-2147483626),DeviceObject==(-2147483631),DeviceObject==0,DeviceObject==1,DeviceObject==147456,DeviceObject==147460,DeviceObject==147464,DeviceObject==147468,DeviceObject==147472,DeviceObject==147476,DeviceObject==147480,DeviceObject==147496,DeviceObject==147500,DeviceObject==147508,DeviceObject==147512,DeviceObject==149504,DeviceObject==149512,DeviceObject==17,DeviceObject==2,DeviceObject==22,DeviceObject==255,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==7,DeviceObject==71} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741670),Irp!=(-1073741764),Irp!=(-1073741789),Irp!=(-1073741802),Irp!=(-1073741803),Irp!=(-1073741808),Irp!=(-1073741820),Irp!=(-1073741823),Irp!=(-2147483626),Irp!=(-2147483631),Irp!=0,Irp!=1,Irp!=147456,Irp!=147460,Irp!=147464,Irp!=147468,Irp!=147472,Irp!=147476,Irp!=147480,Irp!=147496,Irp!=147500,Irp!=147508,Irp!=147512,Irp!=149504,Irp!=149512,Irp!=17,Irp!=2,Irp!=22,Irp!=255,Irp!=259,Irp!=3,Irp!=4,Irp!=7,Irp!=71,Irp==(-1),Irp==(-1073741637),Irp==(-1073741670),Irp==(-1073741764),Irp==(-1073741789),Irp==(-1073741802),Irp==(-1073741803),Irp==(-1073741808),Irp==(-1073741820),Irp==(-1073741823),Irp==(-2147483626),Irp==(-2147483631),Irp==0,Irp==1,Irp==147456,Irp==147460,Irp==147464,Irp==147468,Irp==147472,Irp==147476,Irp==147480,Irp==147496,Irp==147500,Irp==147508,Irp==147512,Irp==149504,Irp==149512,Irp==17,Irp==2,Irp==22,Irp==255,Irp==259,Irp==3,Irp==4,Irp==7,Irp==71} @*/ Irp)
{ int /*@  predicates{Irp__Tail__Overlay__CurrentStackLocation!=(-1),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741637),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741670),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741764),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741789),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741802),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741803),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741808),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741820),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741823),Irp__Tail__Overlay__CurrentStackLocation!=(-2147483626),Irp__Tail__Overlay__CurrentStackLocation!=(-2147483631),Irp__Tail__Overlay__CurrentStackLocation!=0,Irp__Tail__Overlay__CurrentStackLocation!=1,Irp__Tail__Overlay__CurrentStackLocation!=147456,Irp__Tail__Overlay__CurrentStackLocation!=147460,Irp__Tail__Overlay__CurrentStackLocation!=147464,Irp__Tail__Overlay__CurrentStackLocation!=147468,Irp__Tail__Overlay__CurrentStackLocation!=147472,Irp__Tail__Overlay__CurrentStackLocation!=147476,Irp__Tail__Overlay__CurrentStackLocation!=147480,Irp__Tail__Overlay__CurrentStackLocation!=147496,Irp__Tail__Overlay__CurrentStackLocation!=147500,Irp__Tail__Overlay__CurrentStackLocation!=147508,Irp__Tail__Overlay__CurrentStackLocation!=147512,Irp__Tail__Overlay__CurrentStackLocation!=149504,Irp__Tail__Overlay__CurrentStackLocation!=149512,Irp__Tail__Overlay__CurrentStackLocation!=17,Irp__Tail__Overlay__CurrentStackLocation!=2,Irp__Tail__Overlay__CurrentStackLocation!=22,Irp__Tail__Overlay__CurrentStackLocation!=255,Irp__Tail__Overlay__CurrentStackLocation!=259,Irp__Tail__Overlay__CurrentStackLocation!=3,Irp__Tail__Overlay__CurrentStackLocation!=4,Irp__Tail__Overlay__CurrentStackLocation!=7,Irp__Tail__Overlay__CurrentStackLocation!=71,Irp__Tail__Overlay__CurrentStackLocation==(-1),Irp__Tail__Overlay__CurrentStackLocation==(-1073741637),Irp__Tail__Overlay__CurrentStackLocation==(-1073741670),Irp__Tail__Overlay__CurrentStackLocation==(-1073741764),Irp__Tail__Overlay__CurrentStackLocation==(-1073741789),Irp__Tail__Overlay__CurrentStackLocation==(-1073741802),Irp__Tail__Overlay__CurrentStackLocation==(-1073741803),Irp__Tail__Overlay__CurrentStackLocation==(-1073741808),Irp__Tail__Overlay__CurrentStackLocation==(-1073741820),Irp__Tail__Overlay__CurrentStackLocation==(-1073741823),Irp__Tail__Overlay__CurrentStackLocation==(-2147483626),Irp__Tail__Overlay__CurrentStackLocation==(-2147483631),Irp__Tail__Overlay__CurrentStackLocation==0,Irp__Tail__Overlay__CurrentStackLocation==1,Irp__Tail__Overlay__CurrentStackLocation==147456,Irp__Tail__Overlay__CurrentStackLocation==147460,Irp__Tail__Overlay__CurrentStackLocation==147464,Irp__Tail__Overlay__CurrentStackLocation==147468,Irp__Tail__Overlay__CurrentStackLocation==147472,Irp__Tail__Overlay__CurrentStackLocation==147476,Irp__Tail__Overlay__CurrentStackLocation==147480,Irp__Tail__Overlay__CurrentStackLocation==147496,Irp__Tail__Overlay__CurrentStackLocation==147500,Irp__Tail__Overlay__CurrentStackLocation==147508,Irp__Tail__Overlay__CurrentStackLocation==147512,Irp__Tail__Overlay__CurrentStackLocation==149504,Irp__Tail__Overlay__CurrentStackLocation==149512,Irp__Tail__Overlay__CurrentStackLocation==17,Irp__Tail__Overlay__CurrentStackLocation==2,Irp__Tail__Overlay__CurrentStackLocation==22,Irp__Tail__Overlay__CurrentStackLocation==255,Irp__Tail__Overlay__CurrentStackLocation==259,Irp__Tail__Overlay__CurrentStackLocation==3,Irp__Tail__Overlay__CurrentStackLocation==4,Irp__Tail__Overlay__CurrentStackLocation==7,Irp__Tail__Overlay__CurrentStackLocation==71} @*/ Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int();
  int /*@  predicates{irpSp__MinorFunction!=(-1),irpSp__MinorFunction!=(-1073741637),irpSp__MinorFunction!=(-1073741670),irpSp__MinorFunction!=(-1073741764),irpSp__MinorFunction!=(-1073741789),irpSp__MinorFunction!=(-1073741802),irpSp__MinorFunction!=(-1073741803),irpSp__MinorFunction!=(-1073741808),irpSp__MinorFunction!=(-1073741820),irpSp__MinorFunction!=(-1073741823),irpSp__MinorFunction!=(-2147483626),irpSp__MinorFunction!=(-2147483631),irpSp__MinorFunction!=0,irpSp__MinorFunction!=1,irpSp__MinorFunction!=147456,irpSp__MinorFunction!=147460,irpSp__MinorFunction!=147464,irpSp__MinorFunction!=147468,irpSp__MinorFunction!=147472,irpSp__MinorFunction!=147476,irpSp__MinorFunction!=147480,irpSp__MinorFunction!=147496,irpSp__MinorFunction!=147500,irpSp__MinorFunction!=147508,irpSp__MinorFunction!=147512,irpSp__MinorFunction!=149504,irpSp__MinorFunction!=149512,irpSp__MinorFunction!=17,irpSp__MinorFunction!=2,irpSp__MinorFunction!=22,irpSp__MinorFunction!=255,irpSp__MinorFunction!=259,irpSp__MinorFunction!=3,irpSp__MinorFunction!=4,irpSp__MinorFunction!=7,irpSp__MinorFunction!=71,irpSp__MinorFunction==(-1),irpSp__MinorFunction==(-1073741637),irpSp__MinorFunction==(-1073741670),irpSp__MinorFunction==(-1073741764),irpSp__MinorFunction==(-1073741789),irpSp__MinorFunction==(-1073741802),irpSp__MinorFunction==(-1073741803),irpSp__MinorFunction==(-1073741808),irpSp__MinorFunction==(-1073741820),irpSp__MinorFunction==(-1073741823),irpSp__MinorFunction==(-2147483626),irpSp__MinorFunction==(-2147483631),irpSp__MinorFunction==0,irpSp__MinorFunction==1,irpSp__MinorFunction==147456,irpSp__MinorFunction==147460,irpSp__MinorFunction==147464,irpSp__MinorFunction==147468,irpSp__MinorFunction==147472,irpSp__MinorFunction==147476,irpSp__MinorFunction==147480,irpSp__MinorFunction==147496,irpSp__MinorFunction==147500,irpSp__MinorFunction==147508,irpSp__MinorFunction==147512,irpSp__MinorFunction==149504,irpSp__MinorFunction==149512,irpSp__MinorFunction==17,irpSp__MinorFunction==2,irpSp__MinorFunction==22,irpSp__MinorFunction==255,irpSp__MinorFunction==259,irpSp__MinorFunction==3,irpSp__MinorFunction==4,irpSp__MinorFunction==7,irpSp__MinorFunction==71} @*/ irpSp__MinorFunction = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__IoStatus__Status!=(-1),Irp__IoStatus__Status!=(-1073741637),Irp__IoStatus__Status!=(-1073741670),Irp__IoStatus__Status!=(-1073741764),Irp__IoStatus__Status!=(-1073741789),Irp__IoStatus__Status!=(-1073741802),Irp__IoStatus__Status!=(-1073741803),Irp__IoStatus__Status!=(-1073741808),Irp__IoStatus__Status!=(-1073741820),Irp__IoStatus__Status!=(-1073741823),Irp__IoStatus__Status!=(-2147483626),Irp__IoStatus__Status!=(-2147483631),Irp__IoStatus__Status!=0,Irp__IoStatus__Status!=1,Irp__IoStatus__Status!=147456,Irp__IoStatus__Status!=147460,Irp__IoStatus__Status!=147464,Irp__IoStatus__Status!=147468,Irp__IoStatus__Status!=147472,Irp__IoStatus__Status!=147476,Irp__IoStatus__Status!=147480,Irp__IoStatus__Status!=147496,Irp__IoStatus__Status!=147500,Irp__IoStatus__Status!=147508,Irp__IoStatus__Status!=147512,Irp__IoStatus__Status!=149504,Irp__IoStatus__Status!=149512,Irp__IoStatus__Status!=17,Irp__IoStatus__Status!=2,Irp__IoStatus__Status!=22,Irp__IoStatus__Status!=255,Irp__IoStatus__Status!=259,Irp__IoStatus__Status!=3,Irp__IoStatus__Status!=4,Irp__IoStatus__Status!=7,Irp__IoStatus__Status!=71,Irp__IoStatus__Status==(-1),Irp__IoStatus__Status==(-1073741637),Irp__IoStatus__Status==(-1073741670),Irp__IoStatus__Status==(-1073741764),Irp__IoStatus__Status==(-1073741789),Irp__IoStatus__Status==(-1073741802),Irp__IoStatus__Status==(-1073741803),Irp__IoStatus__Status==(-1073741808),Irp__IoStatus__Status==(-1073741820),Irp__IoStatus__Status==(-1073741823),Irp__IoStatus__Status==(-2147483626),Irp__IoStatus__Status==(-2147483631),Irp__IoStatus__Status==0,Irp__IoStatus__Status==1,Irp__IoStatus__Status==147456,Irp__IoStatus__Status==147460,Irp__IoStatus__Status==147464,Irp__IoStatus__Status==147468,Irp__IoStatus__Status==147472,Irp__IoStatus__Status==147476,Irp__IoStatus__Status==147480,Irp__IoStatus__Status==147496,Irp__IoStatus__Status==147500,Irp__IoStatus__Status==147508,Irp__IoStatus__Status==147512,Irp__IoStatus__Status==149504,Irp__IoStatus__Status==149512,Irp__IoStatus__Status==17,Irp__IoStatus__Status==2,Irp__IoStatus__Status==22,Irp__IoStatus__Status==255,Irp__IoStatus__Status==259,Irp__IoStatus__Status==3,Irp__IoStatus__Status==4,Irp__IoStatus__Status==7,Irp__IoStatus__Status==71} @*/ Irp__IoStatus__Status ;
  int /*@  predicates{irpSp__Parameters__UsageNotification__Type!=(-1),irpSp__Parameters__UsageNotification__Type!=(-1073741637),irpSp__Parameters__UsageNotification__Type!=(-1073741670),irpSp__Parameters__UsageNotification__Type!=(-1073741764),irpSp__Parameters__UsageNotification__Type!=(-1073741789),irpSp__Parameters__UsageNotification__Type!=(-1073741802),irpSp__Parameters__UsageNotification__Type!=(-1073741803),irpSp__Parameters__UsageNotification__Type!=(-1073741808),irpSp__Parameters__UsageNotification__Type!=(-1073741820),irpSp__Parameters__UsageNotification__Type!=(-1073741823),irpSp__Parameters__UsageNotification__Type!=(-2147483626),irpSp__Parameters__UsageNotification__Type!=(-2147483631),irpSp__Parameters__UsageNotification__Type!=0,irpSp__Parameters__UsageNotification__Type!=1,irpSp__Parameters__UsageNotification__Type!=147456,irpSp__Parameters__UsageNotification__Type!=147460,irpSp__Parameters__UsageNotification__Type!=147464,irpSp__Parameters__UsageNotification__Type!=147468,irpSp__Parameters__UsageNotification__Type!=147472,irpSp__Parameters__UsageNotification__Type!=147476,irpSp__Parameters__UsageNotification__Type!=147480,irpSp__Parameters__UsageNotification__Type!=147496,irpSp__Parameters__UsageNotification__Type!=147500,irpSp__Parameters__UsageNotification__Type!=147508,irpSp__Parameters__UsageNotification__Type!=147512,irpSp__Parameters__UsageNotification__Type!=149504,irpSp__Parameters__UsageNotification__Type!=149512,irpSp__Parameters__UsageNotification__Type!=17,irpSp__Parameters__UsageNotification__Type!=2,irpSp__Parameters__UsageNotification__Type!=22,irpSp__Parameters__UsageNotification__Type!=255,irpSp__Parameters__UsageNotification__Type!=259,irpSp__Parameters__UsageNotification__Type!=3,irpSp__Parameters__UsageNotification__Type!=4,irpSp__Parameters__UsageNotification__Type!=7,irpSp__Parameters__UsageNotification__Type!=71,irpSp__Parameters__UsageNotification__Type!=DeviceUsageTypePaging,irpSp__Parameters__UsageNotification__Type==(-1),irpSp__Parameters__UsageNotification__Type==(-1073741637),irpSp__Parameters__UsageNotification__Type==(-1073741670),irpSp__Parameters__UsageNotification__Type==(-1073741764),irpSp__Parameters__UsageNotification__Type==(-1073741789),irpSp__Parameters__UsageNotification__Type==(-1073741802),irpSp__Parameters__UsageNotification__Type==(-1073741803),irpSp__Parameters__UsageNotification__Type==(-1073741808),irpSp__Parameters__UsageNotification__Type==(-1073741820),irpSp__Parameters__UsageNotification__Type==(-1073741823),irpSp__Parameters__UsageNotification__Type==(-2147483626),irpSp__Parameters__UsageNotification__Type==(-2147483631),irpSp__Parameters__UsageNotification__Type==0,irpSp__Parameters__UsageNotification__Type==1,irpSp__Parameters__UsageNotification__Type==147456,irpSp__Parameters__UsageNotification__Type==147460,irpSp__Parameters__UsageNotification__Type==147464,irpSp__Parameters__UsageNotification__Type==147468,irpSp__Parameters__UsageNotification__Type==147472,irpSp__Parameters__UsageNotification__Type==147476,irpSp__Parameters__UsageNotification__Type==147480,irpSp__Parameters__UsageNotification__Type==147496,irpSp__Parameters__UsageNotification__Type==147500,irpSp__Parameters__UsageNotification__Type==147508,irpSp__Parameters__UsageNotification__Type==147512,irpSp__Parameters__UsageNotification__Type==149504,irpSp__Parameters__UsageNotification__Type==149512,irpSp__Parameters__UsageNotification__Type==17,irpSp__Parameters__UsageNotification__Type==2,irpSp__Parameters__UsageNotification__Type==22,irpSp__Parameters__UsageNotification__Type==255,irpSp__Parameters__UsageNotification__Type==259,irpSp__Parameters__UsageNotification__Type==3,irpSp__Parameters__UsageNotification__Type==4,irpSp__Parameters__UsageNotification__Type==7,irpSp__Parameters__UsageNotification__Type==71,irpSp__Parameters__UsageNotification__Type==DeviceUsageTypePaging} @*/ irpSp__Parameters__UsageNotification__Type = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension__PagingPathCountEvent!=(-1),deviceExtension__PagingPathCountEvent!=(-1073741637),deviceExtension__PagingPathCountEvent!=(-1073741670),deviceExtension__PagingPathCountEvent!=(-1073741764),deviceExtension__PagingPathCountEvent!=(-1073741789),deviceExtension__PagingPathCountEvent!=(-1073741802),deviceExtension__PagingPathCountEvent!=(-1073741803),deviceExtension__PagingPathCountEvent!=(-1073741808),deviceExtension__PagingPathCountEvent!=(-1073741820),deviceExtension__PagingPathCountEvent!=(-1073741823),deviceExtension__PagingPathCountEvent!=(-2147483626),deviceExtension__PagingPathCountEvent!=(-2147483631),deviceExtension__PagingPathCountEvent!=0,deviceExtension__PagingPathCountEvent!=1,deviceExtension__PagingPathCountEvent!=147456,deviceExtension__PagingPathCountEvent!=147460,deviceExtension__PagingPathCountEvent!=147464,deviceExtension__PagingPathCountEvent!=147468,deviceExtension__PagingPathCountEvent!=147472,deviceExtension__PagingPathCountEvent!=147476,deviceExtension__PagingPathCountEvent!=147480,deviceExtension__PagingPathCountEvent!=147496,deviceExtension__PagingPathCountEvent!=147500,deviceExtension__PagingPathCountEvent!=147508,deviceExtension__PagingPathCountEvent!=147512,deviceExtension__PagingPathCountEvent!=149504,deviceExtension__PagingPathCountEvent!=149512,deviceExtension__PagingPathCountEvent!=17,deviceExtension__PagingPathCountEvent!=2,deviceExtension__PagingPathCountEvent!=22,deviceExtension__PagingPathCountEvent!=255,deviceExtension__PagingPathCountEvent!=259,deviceExtension__PagingPathCountEvent!=3,deviceExtension__PagingPathCountEvent!=4,deviceExtension__PagingPathCountEvent!=7,deviceExtension__PagingPathCountEvent!=71,deviceExtension__PagingPathCountEvent==(-1),deviceExtension__PagingPathCountEvent==(-1073741637),deviceExtension__PagingPathCountEvent==(-1073741670),deviceExtension__PagingPathCountEvent==(-1073741764),deviceExtension__PagingPathCountEvent==(-1073741789),deviceExtension__PagingPathCountEvent==(-1073741802),deviceExtension__PagingPathCountEvent==(-1073741803),deviceExtension__PagingPathCountEvent==(-1073741808),deviceExtension__PagingPathCountEvent==(-1073741820),deviceExtension__PagingPathCountEvent==(-1073741823),deviceExtension__PagingPathCountEvent==(-2147483626),deviceExtension__PagingPathCountEvent==(-2147483631),deviceExtension__PagingPathCountEvent==0,deviceExtension__PagingPathCountEvent==1,deviceExtension__PagingPathCountEvent==147456,deviceExtension__PagingPathCountEvent==147460,deviceExtension__PagingPathCountEvent==147464,deviceExtension__PagingPathCountEvent==147468,deviceExtension__PagingPathCountEvent==147472,deviceExtension__PagingPathCountEvent==147476,deviceExtension__PagingPathCountEvent==147480,deviceExtension__PagingPathCountEvent==147496,deviceExtension__PagingPathCountEvent==147500,deviceExtension__PagingPathCountEvent==147508,deviceExtension__PagingPathCountEvent==147512,deviceExtension__PagingPathCountEvent==149504,deviceExtension__PagingPathCountEvent==149512,deviceExtension__PagingPathCountEvent==17,deviceExtension__PagingPathCountEvent==2,deviceExtension__PagingPathCountEvent==22,deviceExtension__PagingPathCountEvent==255,deviceExtension__PagingPathCountEvent==259,deviceExtension__PagingPathCountEvent==3,deviceExtension__PagingPathCountEvent==4,deviceExtension__PagingPathCountEvent==7,deviceExtension__PagingPathCountEvent==71} @*/ deviceExtension__PagingPathCountEvent = __VERIFIER_nondet_int();
  int /*@  predicates{irpSp__Parameters__UsageNotification__InPath!=(-1),irpSp__Parameters__UsageNotification__InPath!=(-1073741637),irpSp__Parameters__UsageNotification__InPath!=(-1073741670),irpSp__Parameters__UsageNotification__InPath!=(-1073741764),irpSp__Parameters__UsageNotification__InPath!=(-1073741789),irpSp__Parameters__UsageNotification__InPath!=(-1073741802),irpSp__Parameters__UsageNotification__InPath!=(-1073741803),irpSp__Parameters__UsageNotification__InPath!=(-1073741808),irpSp__Parameters__UsageNotification__InPath!=(-1073741820),irpSp__Parameters__UsageNotification__InPath!=(-1073741823),irpSp__Parameters__UsageNotification__InPath!=(-2147483626),irpSp__Parameters__UsageNotification__InPath!=(-2147483631),irpSp__Parameters__UsageNotification__InPath!=0,irpSp__Parameters__UsageNotification__InPath!=1,irpSp__Parameters__UsageNotification__InPath!=147456,irpSp__Parameters__UsageNotification__InPath!=147460,irpSp__Parameters__UsageNotification__InPath!=147464,irpSp__Parameters__UsageNotification__InPath!=147468,irpSp__Parameters__UsageNotification__InPath!=147472,irpSp__Parameters__UsageNotification__InPath!=147476,irpSp__Parameters__UsageNotification__InPath!=147480,irpSp__Parameters__UsageNotification__InPath!=147496,irpSp__Parameters__UsageNotification__InPath!=147500,irpSp__Parameters__UsageNotification__InPath!=147508,irpSp__Parameters__UsageNotification__InPath!=147512,irpSp__Parameters__UsageNotification__InPath!=149504,irpSp__Parameters__UsageNotification__InPath!=149512,irpSp__Parameters__UsageNotification__InPath!=17,irpSp__Parameters__UsageNotification__InPath!=2,irpSp__Parameters__UsageNotification__InPath!=22,irpSp__Parameters__UsageNotification__InPath!=255,irpSp__Parameters__UsageNotification__InPath!=259,irpSp__Parameters__UsageNotification__InPath!=3,irpSp__Parameters__UsageNotification__InPath!=4,irpSp__Parameters__UsageNotification__InPath!=7,irpSp__Parameters__UsageNotification__InPath!=71,irpSp__Parameters__UsageNotification__InPath==(-1),irpSp__Parameters__UsageNotification__InPath==(-1073741637),irpSp__Parameters__UsageNotification__InPath==(-1073741670),irpSp__Parameters__UsageNotification__InPath==(-1073741764),irpSp__Parameters__UsageNotification__InPath==(-1073741789),irpSp__Parameters__UsageNotification__InPath==(-1073741802),irpSp__Parameters__UsageNotification__InPath==(-1073741803),irpSp__Parameters__UsageNotification__InPath==(-1073741808),irpSp__Parameters__UsageNotification__InPath==(-1073741820),irpSp__Parameters__UsageNotification__InPath==(-1073741823),irpSp__Parameters__UsageNotification__InPath==(-2147483626),irpSp__Parameters__UsageNotification__InPath==(-2147483631),irpSp__Parameters__UsageNotification__InPath==0,irpSp__Parameters__UsageNotification__InPath==1,irpSp__Parameters__UsageNotification__InPath==147456,irpSp__Parameters__UsageNotification__InPath==147460,irpSp__Parameters__UsageNotification__InPath==147464,irpSp__Parameters__UsageNotification__InPath==147468,irpSp__Parameters__UsageNotification__InPath==147472,irpSp__Parameters__UsageNotification__InPath==147476,irpSp__Parameters__UsageNotification__InPath==147480,irpSp__Parameters__UsageNotification__InPath==147496,irpSp__Parameters__UsageNotification__InPath==147500,irpSp__Parameters__UsageNotification__InPath==147508,irpSp__Parameters__UsageNotification__InPath==147512,irpSp__Parameters__UsageNotification__InPath==149504,irpSp__Parameters__UsageNotification__InPath==149512,irpSp__Parameters__UsageNotification__InPath==17,irpSp__Parameters__UsageNotification__InPath==2,irpSp__Parameters__UsageNotification__InPath==22,irpSp__Parameters__UsageNotification__InPath==255,irpSp__Parameters__UsageNotification__InPath==259,irpSp__Parameters__UsageNotification__InPath==3,irpSp__Parameters__UsageNotification__InPath==4,irpSp__Parameters__UsageNotification__InPath==7,irpSp__Parameters__UsageNotification__InPath==71} @*/ irpSp__Parameters__UsageNotification__InPath = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension__PagingPathCount!=(-1),deviceExtension__PagingPathCount!=(-1073741637),deviceExtension__PagingPathCount!=(-1073741670),deviceExtension__PagingPathCount!=(-1073741764),deviceExtension__PagingPathCount!=(-1073741789),deviceExtension__PagingPathCount!=(-1073741802),deviceExtension__PagingPathCount!=(-1073741803),deviceExtension__PagingPathCount!=(-1073741808),deviceExtension__PagingPathCount!=(-1073741820),deviceExtension__PagingPathCount!=(-1073741823),deviceExtension__PagingPathCount!=(-2147483626),deviceExtension__PagingPathCount!=(-2147483631),deviceExtension__PagingPathCount!=0,deviceExtension__PagingPathCount!=1,deviceExtension__PagingPathCount!=147456,deviceExtension__PagingPathCount!=147460,deviceExtension__PagingPathCount!=147464,deviceExtension__PagingPathCount!=147468,deviceExtension__PagingPathCount!=147472,deviceExtension__PagingPathCount!=147476,deviceExtension__PagingPathCount!=147480,deviceExtension__PagingPathCount!=147496,deviceExtension__PagingPathCount!=147500,deviceExtension__PagingPathCount!=147508,deviceExtension__PagingPathCount!=147512,deviceExtension__PagingPathCount!=149504,deviceExtension__PagingPathCount!=149512,deviceExtension__PagingPathCount!=17,deviceExtension__PagingPathCount!=2,deviceExtension__PagingPathCount!=22,deviceExtension__PagingPathCount!=255,deviceExtension__PagingPathCount!=259,deviceExtension__PagingPathCount!=3,deviceExtension__PagingPathCount!=4,deviceExtension__PagingPathCount!=7,deviceExtension__PagingPathCount!=71,deviceExtension__PagingPathCount==(-1),deviceExtension__PagingPathCount==(-1073741637),deviceExtension__PagingPathCount==(-1073741670),deviceExtension__PagingPathCount==(-1073741764),deviceExtension__PagingPathCount==(-1073741789),deviceExtension__PagingPathCount==(-1073741802),deviceExtension__PagingPathCount==(-1073741803),deviceExtension__PagingPathCount==(-1073741808),deviceExtension__PagingPathCount==(-1073741820),deviceExtension__PagingPathCount==(-1073741823),deviceExtension__PagingPathCount==(-2147483626),deviceExtension__PagingPathCount==(-2147483631),deviceExtension__PagingPathCount==0,deviceExtension__PagingPathCount==1,deviceExtension__PagingPathCount==147456,deviceExtension__PagingPathCount==147460,deviceExtension__PagingPathCount==147464,deviceExtension__PagingPathCount==147468,deviceExtension__PagingPathCount==147472,deviceExtension__PagingPathCount==147476,deviceExtension__PagingPathCount==147480,deviceExtension__PagingPathCount==147496,deviceExtension__PagingPathCount==147500,deviceExtension__PagingPathCount==147508,deviceExtension__PagingPathCount==147512,deviceExtension__PagingPathCount==149504,deviceExtension__PagingPathCount==149512,deviceExtension__PagingPathCount==17,deviceExtension__PagingPathCount==2,deviceExtension__PagingPathCount==22,deviceExtension__PagingPathCount==255,deviceExtension__PagingPathCount==259,deviceExtension__PagingPathCount==3,deviceExtension__PagingPathCount==4,deviceExtension__PagingPathCount==7,deviceExtension__PagingPathCount==71} @*/ deviceExtension__PagingPathCount = __VERIFIER_nondet_int();
  int DeviceObject__Flags ;
  int /*@  predicates{irpSp!=(-1),irpSp!=(-1073741637),irpSp!=(-1073741670),irpSp!=(-1073741764),irpSp!=(-1073741789),irpSp!=(-1073741802),irpSp!=(-1073741803),irpSp!=(-1073741808),irpSp!=(-1073741820),irpSp!=(-1073741823),irpSp!=(-2147483626),irpSp!=(-2147483631),irpSp!=0,irpSp!=1,irpSp!=147456,irpSp!=147460,irpSp!=147464,irpSp!=147468,irpSp!=147472,irpSp!=147476,irpSp!=147480,irpSp!=147496,irpSp!=147500,irpSp!=147508,irpSp!=147512,irpSp!=149504,irpSp!=149512,irpSp!=17,irpSp!=2,irpSp!=22,irpSp!=255,irpSp!=259,irpSp!=3,irpSp!=4,irpSp!=7,irpSp!=71,irpSp==(-1),irpSp==(-1073741637),irpSp==(-1073741670),irpSp==(-1073741764),irpSp==(-1073741789),irpSp==(-1073741802),irpSp==(-1073741803),irpSp==(-1073741808),irpSp==(-1073741820),irpSp==(-1073741823),irpSp==(-2147483626),irpSp==(-2147483631),irpSp==0,irpSp==1,irpSp==147456,irpSp==147460,irpSp==147464,irpSp==147468,irpSp==147472,irpSp==147476,irpSp==147480,irpSp==147496,irpSp==147500,irpSp==147508,irpSp==147512,irpSp==149504,irpSp==149512,irpSp==17,irpSp==2,irpSp==22,irpSp==255,irpSp==259,irpSp==3,irpSp==4,irpSp==7,irpSp==71,irpSp==Irp__Tail__Overlay__CurrentStackLocation} @*/ irpSp ;
  int /*@  predicates{status!=(-1),status!=(-1073741637),status!=(-1073741670),status!=(-1073741764),status!=(-1073741789),status!=(-1073741802),status!=(-1073741803),status!=(-1073741808),status!=(-1073741820),status!=(-1073741823),status!=(-2147483626),status!=(-2147483631),status!=0,status!=1,status!=147456,status!=147460,status!=147464,status!=147468,status!=147472,status!=147476,status!=147480,status!=147496,status!=147500,status!=147508,status!=147512,status!=149504,status!=149512,status!=17,status!=2,status!=22,status!=255,status!=259,status!=3,status!=4,status!=7,status!=71,status!=Irp__IoStatus__Status,status!=myStatus,status!=status,status==(-1),status==(-1073741637),status==(-1073741670),status==(-1073741764),status==(-1073741789),status==(-1073741802),status==(-1073741803),status==(-1073741808),status==(-1073741820),status==(-1073741823),status==(-2147483626),status==(-2147483631),status==0,status==1,status==147456,status==147460,status==147464,status==147468,status==147472,status==147476,status==147480,status==147496,status==147500,status==147508,status==147512,status==149504,status==149512,status==17,status==2,status==22,status==255,status==259,status==3,status==4,status==7,status==71,status==Irp__IoStatus__Status,status==myStatus,status==status} @*/ status ;
  int /*@  predicates{setPagable==0,setPagable==1} @*/ setPagable ;
  int /*@  predicates{tmp==(-1),tmp==(-1073741637),tmp==(-1073741670),tmp==(-1073741764),tmp==(-1073741789),tmp==(-1073741802),tmp==(-1073741803),tmp==(-1073741808),tmp==(-1073741820),tmp==(-1073741823),tmp==(-2147483626),tmp==(-2147483631),tmp==0,tmp==1,tmp==147456,tmp==147460,tmp==147464,tmp==147468,tmp==147472,tmp==147476,tmp==147480,tmp==147496,tmp==147500,tmp==147508,tmp==147512,tmp==149504,tmp==149512,tmp==17,tmp==2,tmp==22,tmp==255,tmp==259,tmp==3,tmp==4,tmp==7,tmp==71} @*/ tmp ;
  int /*@  predicates{tmp___0==(-1),tmp___0==(-1073741637),tmp___0==(-1073741670),tmp___0==(-1073741764),tmp___0==(-1073741789),tmp___0==(-1073741802),tmp___0==(-1073741803),tmp___0==(-1073741808),tmp___0==(-1073741820),tmp___0==(-1073741823),tmp___0==(-2147483626),tmp___0==(-2147483631),tmp___0==0,tmp___0==1,tmp___0==147456,tmp___0==147460,tmp___0==147464,tmp___0==147468,tmp___0==147472,tmp___0==147476,tmp___0==147480,tmp___0==147496,tmp___0==147500,tmp___0==147508,tmp___0==147512,tmp___0==149504,tmp___0==149512,tmp___0==17,tmp___0==2,tmp___0==22,tmp___0==255,tmp___0==259,tmp___0==3,tmp___0==4,tmp___0==7,tmp___0==71} @*/ tmp___0 ;

  {
  irpSp = Irp__Tail__Overlay__CurrentStackLocation;
  status = -1073741637;
  if(irpSp__MinorFunction == 0){
    goto switch_1_0;
  } else {
    if(irpSp__MinorFunction == 22){
      goto switch_1_22;
    } else {
      goto switch_1_default;
      if(0){
        switch_1_0:
        {
        status = CdAudioStartDevice(DeviceObject, Irp);
        Irp__IoStatus__Status = status;
        myStatus = status;
        IofCompleteRequest(Irp, 0);
        }
        return(status);
        switch_1_22: ;
        if(irpSp__Parameters__UsageNotification__Type != DeviceUsageTypePaging){
          {
          tmp = CdAudioSendToNextDriver(DeviceObject, Irp);
          }
          return(tmp);
        }
        {
        status = KeWaitForSingleObject(deviceExtension__PagingPathCountEvent, Executive,
                                       KernelMode, 0, 0);
        setPagable = 0;
        }
        if(irpSp__Parameters__UsageNotification__InPath){
          if(deviceExtension__PagingPathCount != 1){
            goto _L;
          }
        } else {
          _L:
          if(status == status){

            setPagable = 1;
          }
        }
        {
        status = CdAudioForwardIrpSynchronous(DeviceObject, Irp);
        }
        if(status >= 0){
          if(irpSp__Parameters__UsageNotification__InPath){

          }
          if(irpSp__Parameters__UsageNotification__InPath){
            if(deviceExtension__PagingPathCount == 1){

            }
          }
        } else {
          if(setPagable == 1){

            setPagable = 0;
          }
        }
        {
        KeSetEvent(deviceExtension__PagingPathCountEvent, 0, 0);
        IofCompleteRequest(Irp, 0);
        }
        return(status);
        goto switch_1_break;
        switch_1_default:
        {
        tmp___0 = CdAudioSendToNextDriver(DeviceObject, Irp);
        }
        return(tmp___0);
      } else {
        switch_1_break: ;
      }
    }
  }
  return(0);
}
}
int CdAudioDeviceControl(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741670),DeviceObject!=(-1073741764),DeviceObject!=(-1073741789),DeviceObject!=(-1073741802),DeviceObject!=(-1073741803),DeviceObject!=(-1073741808),DeviceObject!=(-1073741820),DeviceObject!=(-1073741823),DeviceObject!=(-2147483626),DeviceObject!=(-2147483631),DeviceObject!=0,DeviceObject!=1,DeviceObject!=147456,DeviceObject!=147460,DeviceObject!=147464,DeviceObject!=147468,DeviceObject!=147472,DeviceObject!=147476,DeviceObject!=147480,DeviceObject!=147496,DeviceObject!=147500,DeviceObject!=147508,DeviceObject!=147512,DeviceObject!=149504,DeviceObject!=149512,DeviceObject!=17,DeviceObject!=2,DeviceObject!=22,DeviceObject!=255,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=7,DeviceObject!=71,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741670),DeviceObject==(-1073741764),DeviceObject==(-1073741789),DeviceObject==(-1073741802),DeviceObject==(-1073741803),DeviceObject==(-1073741808),DeviceObject==(-1073741820),DeviceObject==(-1073741823),DeviceObject==(-2147483626),DeviceObject==(-2147483631),DeviceObject==0,DeviceObject==1,DeviceObject==147456,DeviceObject==147460,DeviceObject==147464,DeviceObject==147468,DeviceObject==147472,DeviceObject==147476,DeviceObject==147480,DeviceObject==147496,DeviceObject==147500,DeviceObject==147508,DeviceObject==147512,DeviceObject==149504,DeviceObject==149512,DeviceObject==17,DeviceObject==2,DeviceObject==22,DeviceObject==255,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==7,DeviceObject==71} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741670),Irp!=(-1073741764),Irp!=(-1073741789),Irp!=(-1073741802),Irp!=(-1073741803),Irp!=(-1073741808),Irp!=(-1073741820),Irp!=(-1073741823),Irp!=(-2147483626),Irp!=(-2147483631),Irp!=0,Irp!=1,Irp!=147456,Irp!=147460,Irp!=147464,Irp!=147468,Irp!=147472,Irp!=147476,Irp!=147480,Irp!=147496,Irp!=147500,Irp!=147508,Irp!=147512,Irp!=149504,Irp!=149512,Irp!=17,Irp!=2,Irp!=22,Irp!=255,Irp!=259,Irp!=3,Irp!=4,Irp!=7,Irp!=71,Irp==(-1),Irp==(-1073741637),Irp==(-1073741670),Irp==(-1073741764),Irp==(-1073741789),Irp==(-1073741802),Irp==(-1073741803),Irp==(-1073741808),Irp==(-1073741820),Irp==(-1073741823),Irp==(-2147483626),Irp==(-2147483631),Irp==0,Irp==1,Irp==147456,Irp==147460,Irp==147464,Irp==147468,Irp==147472,Irp==147476,Irp==147480,Irp==147496,Irp==147500,Irp==147508,Irp==147512,Irp==149504,Irp==149512,Irp==17,Irp==2,Irp==22,Irp==255,Irp==259,Irp==3,Irp==4,Irp==7,Irp==71} @*/ Irp)
{ int /*@  predicates{deviceExtension__Active!=(-1),deviceExtension__Active!=(-1073741637),deviceExtension__Active!=(-1073741670),deviceExtension__Active!=(-1073741764),deviceExtension__Active!=(-1073741789),deviceExtension__Active!=(-1073741802),deviceExtension__Active!=(-1073741803),deviceExtension__Active!=(-1073741808),deviceExtension__Active!=(-1073741820),deviceExtension__Active!=(-1073741823),deviceExtension__Active!=(-2147483626),deviceExtension__Active!=(-2147483631),deviceExtension__Active!=0,deviceExtension__Active!=1,deviceExtension__Active!=147456,deviceExtension__Active!=147460,deviceExtension__Active!=147464,deviceExtension__Active!=147468,deviceExtension__Active!=147472,deviceExtension__Active!=147476,deviceExtension__Active!=147480,deviceExtension__Active!=147496,deviceExtension__Active!=147500,deviceExtension__Active!=147508,deviceExtension__Active!=147512,deviceExtension__Active!=149504,deviceExtension__Active!=149512,deviceExtension__Active!=17,deviceExtension__Active!=2,deviceExtension__Active!=22,deviceExtension__Active!=255,deviceExtension__Active!=259,deviceExtension__Active!=3,deviceExtension__Active!=4,deviceExtension__Active!=7,deviceExtension__Active!=71,deviceExtension__Active==(-1),deviceExtension__Active==(-1073741637),deviceExtension__Active==(-1073741670),deviceExtension__Active==(-1073741764),deviceExtension__Active==(-1073741789),deviceExtension__Active==(-1073741802),deviceExtension__Active==(-1073741803),deviceExtension__Active==(-1073741808),deviceExtension__Active==(-1073741820),deviceExtension__Active==(-1073741823),deviceExtension__Active==(-2147483626),deviceExtension__Active==(-2147483631),deviceExtension__Active==0,deviceExtension__Active==1,deviceExtension__Active==147456,deviceExtension__Active==147460,deviceExtension__Active==147464,deviceExtension__Active==147468,deviceExtension__Active==147472,deviceExtension__Active==147476,deviceExtension__Active==147480,deviceExtension__Active==147496,deviceExtension__Active==147500,deviceExtension__Active==147508,deviceExtension__Active==147512,deviceExtension__Active==149504,deviceExtension__Active==149512,deviceExtension__Active==17,deviceExtension__Active==2,deviceExtension__Active==22,deviceExtension__Active==255,deviceExtension__Active==259,deviceExtension__Active==3,deviceExtension__Active==4,deviceExtension__Active==7,deviceExtension__Active==71} @*/ deviceExtension__Active = __VERIFIER_nondet_int();
  int /*@  predicates{status!=(-1),status!=(-1073741637),status!=(-1073741670),status!=(-1073741764),status!=(-1073741789),status!=(-1073741802),status!=(-1073741803),status!=(-1073741808),status!=(-1073741820),status!=(-1073741823),status!=(-2147483626),status!=(-2147483631),status!=0,status!=1,status!=147456,status!=147460,status!=147464,status!=147468,status!=147472,status!=147476,status!=147480,status!=147496,status!=147500,status!=147508,status!=147512,status!=149504,status!=149512,status!=17,status!=2,status!=22,status!=255,status!=259,status!=3,status!=4,status!=7,status!=71,status==(-1),status==(-1073741637),status==(-1073741670),status==(-1073741764),status==(-1073741789),status==(-1073741802),status==(-1073741803),status==(-1073741808),status==(-1073741820),status==(-1073741823),status==(-2147483626),status==(-2147483631),status==0,status==1,status==147456,status==147460,status==147464,status==147468,status==147472,status==147476,status==147480,status==147496,status==147500,status==147508,status==147512,status==149504,status==149512,status==17,status==2,status==22,status==255,status==259,status==3,status==4,status==7,status==71} @*/ status ;

  {
  if(deviceExtension__Active == 2){
    goto switch_2_2;
  } else {
    if(deviceExtension__Active == 3){
      goto switch_2_3;
    } else {
      if(deviceExtension__Active == 1){
        goto switch_2_1;
      } else {
        if(deviceExtension__Active == 7){
          goto switch_2_7;
        } else {
          goto switch_2_default;
          if(0){
            switch_2_2:
            {
            status = CdAudio535DeviceControl(DeviceObject, Irp);
            }
            goto switch_2_break;
            switch_2_3:
            {
            status = CdAudio435DeviceControl(DeviceObject, Irp);
            }
            goto switch_2_break;
            switch_2_1:
            {
            status = CdAudioAtapiDeviceControl(DeviceObject, Irp);
            }
            goto switch_2_break;
            switch_2_7:
            {
            status = CdAudioHPCdrDeviceControl(DeviceObject, Irp);
            }
            goto switch_2_break;
            switch_2_default:
            {
            deviceExtension__Active = 0;
            status = CdAudioSendToNextDriver(DeviceObject, Irp);
            }
          } else {
            switch_2_break: ;
          }
        }
      }
    }
  }
  return(status);
}
}
int CdAudioSendToNextDriver(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741670),DeviceObject!=(-1073741764),DeviceObject!=(-1073741789),DeviceObject!=(-1073741802),DeviceObject!=(-1073741803),DeviceObject!=(-1073741808),DeviceObject!=(-1073741820),DeviceObject!=(-1073741823),DeviceObject!=(-2147483626),DeviceObject!=(-2147483631),DeviceObject!=0,DeviceObject!=1,DeviceObject!=147456,DeviceObject!=147460,DeviceObject!=147464,DeviceObject!=147468,DeviceObject!=147472,DeviceObject!=147476,DeviceObject!=147480,DeviceObject!=147496,DeviceObject!=147500,DeviceObject!=147508,DeviceObject!=147512,DeviceObject!=149504,DeviceObject!=149512,DeviceObject!=17,DeviceObject!=2,DeviceObject!=22,DeviceObject!=255,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=7,DeviceObject!=71,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741670),DeviceObject==(-1073741764),DeviceObject==(-1073741789),DeviceObject==(-1073741802),DeviceObject==(-1073741803),DeviceObject==(-1073741808),DeviceObject==(-1073741820),DeviceObject==(-1073741823),DeviceObject==(-2147483626),DeviceObject==(-2147483631),DeviceObject==0,DeviceObject==1,DeviceObject==147456,DeviceObject==147460,DeviceObject==147464,DeviceObject==147468,DeviceObject==147472,DeviceObject==147476,DeviceObject==147480,DeviceObject==147496,DeviceObject==147500,DeviceObject==147508,DeviceObject==147512,DeviceObject==149504,DeviceObject==149512,DeviceObject==17,DeviceObject==2,DeviceObject==22,DeviceObject==255,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==7,DeviceObject==71} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741670),Irp!=(-1073741764),Irp!=(-1073741789),Irp!=(-1073741802),Irp!=(-1073741803),Irp!=(-1073741808),Irp!=(-1073741820),Irp!=(-1073741823),Irp!=(-2147483626),Irp!=(-2147483631),Irp!=0,Irp!=1,Irp!=147456,Irp!=147460,Irp!=147464,Irp!=147468,Irp!=147472,Irp!=147476,Irp!=147480,Irp!=147496,Irp!=147500,Irp!=147508,Irp!=147512,Irp!=149504,Irp!=149512,Irp!=17,Irp!=2,Irp!=22,Irp!=255,Irp!=259,Irp!=3,Irp!=4,Irp!=7,Irp!=71,Irp==(-1),Irp==(-1073741637),Irp==(-1073741670),Irp==(-1073741764),Irp==(-1073741789),Irp==(-1073741802),Irp==(-1073741803),Irp==(-1073741808),Irp==(-1073741820),Irp==(-1073741823),Irp==(-2147483626),Irp==(-2147483631),Irp==0,Irp==1,Irp==147456,Irp==147460,Irp==147464,Irp==147468,Irp==147472,Irp==147476,Irp==147480,Irp==147496,Irp==147500,Irp==147508,Irp==147512,Irp==149504,Irp==149512,Irp==17,Irp==2,Irp==22,Irp==255,Irp==259,Irp==3,Irp==4,Irp==7,Irp==71} @*/ Irp)
{ int Irp__CurrentLocation = __VERIFIER_nondet_int();
  int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension__TargetDeviceObject!=(-1),deviceExtension__TargetDeviceObject!=(-1073741637),deviceExtension__TargetDeviceObject!=(-1073741670),deviceExtension__TargetDeviceObject!=(-1073741764),deviceExtension__TargetDeviceObject!=(-1073741789),deviceExtension__TargetDeviceObject!=(-1073741802),deviceExtension__TargetDeviceObject!=(-1073741803),deviceExtension__TargetDeviceObject!=(-1073741808),deviceExtension__TargetDeviceObject!=(-1073741820),deviceExtension__TargetDeviceObject!=(-1073741823),deviceExtension__TargetDeviceObject!=(-2147483626),deviceExtension__TargetDeviceObject!=(-2147483631),deviceExtension__TargetDeviceObject!=0,deviceExtension__TargetDeviceObject!=1,deviceExtension__TargetDeviceObject!=147456,deviceExtension__TargetDeviceObject!=147460,deviceExtension__TargetDeviceObject!=147464,deviceExtension__TargetDeviceObject!=147468,deviceExtension__TargetDeviceObject!=147472,deviceExtension__TargetDeviceObject!=147476,deviceExtension__TargetDeviceObject!=147480,deviceExtension__TargetDeviceObject!=147496,deviceExtension__TargetDeviceObject!=147500,deviceExtension__TargetDeviceObject!=147508,deviceExtension__TargetDeviceObject!=147512,deviceExtension__TargetDeviceObject!=149504,deviceExtension__TargetDeviceObject!=149512,deviceExtension__TargetDeviceObject!=17,deviceExtension__TargetDeviceObject!=2,deviceExtension__TargetDeviceObject!=22,deviceExtension__TargetDeviceObject!=255,deviceExtension__TargetDeviceObject!=259,deviceExtension__TargetDeviceObject!=3,deviceExtension__TargetDeviceObject!=4,deviceExtension__TargetDeviceObject!=7,deviceExtension__TargetDeviceObject!=71,deviceExtension__TargetDeviceObject==(-1),deviceExtension__TargetDeviceObject==(-1073741637),deviceExtension__TargetDeviceObject==(-1073741670),deviceExtension__TargetDeviceObject==(-1073741764),deviceExtension__TargetDeviceObject==(-1073741789),deviceExtension__TargetDeviceObject==(-1073741802),deviceExtension__TargetDeviceObject==(-1073741803),deviceExtension__TargetDeviceObject==(-1073741808),deviceExtension__TargetDeviceObject==(-1073741820),deviceExtension__TargetDeviceObject==(-1073741823),deviceExtension__TargetDeviceObject==(-2147483626),deviceExtension__TargetDeviceObject==(-2147483631),deviceExtension__TargetDeviceObject==0,deviceExtension__TargetDeviceObject==1,deviceExtension__TargetDeviceObject==147456,deviceExtension__TargetDeviceObject==147460,deviceExtension__TargetDeviceObject==147464,deviceExtension__TargetDeviceObject==147468,deviceExtension__TargetDeviceObject==147472,deviceExtension__TargetDeviceObject==147476,deviceExtension__TargetDeviceObject==147480,deviceExtension__TargetDeviceObject==147496,deviceExtension__TargetDeviceObject==147500,deviceExtension__TargetDeviceObject==147508,deviceExtension__TargetDeviceObject==147512,deviceExtension__TargetDeviceObject==149504,deviceExtension__TargetDeviceObject==149512,deviceExtension__TargetDeviceObject==17,deviceExtension__TargetDeviceObject==2,deviceExtension__TargetDeviceObject==22,deviceExtension__TargetDeviceObject==255,deviceExtension__TargetDeviceObject==259,deviceExtension__TargetDeviceObject==3,deviceExtension__TargetDeviceObject==4,deviceExtension__TargetDeviceObject==7,deviceExtension__TargetDeviceObject==71} @*/ deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int();
  int /*@  predicates{tmp==(-1),tmp==(-1073741637),tmp==(-1073741670),tmp==(-1073741764),tmp==(-1073741789),tmp==(-1073741802),tmp==(-1073741803),tmp==(-1073741808),tmp==(-1073741820),tmp==(-1073741823),tmp==(-2147483626),tmp==(-2147483631),tmp==0,tmp==1,tmp==147456,tmp==147460,tmp==147464,tmp==147468,tmp==147472,tmp==147476,tmp==147480,tmp==147496,tmp==147500,tmp==147508,tmp==147512,tmp==149504,tmp==149512,tmp==17,tmp==2,tmp==22,tmp==255,tmp==259,tmp==3,tmp==4,tmp==7,tmp==71} @*/ tmp ;

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
  tmp = IofCallDriver(deviceExtension__TargetDeviceObject, Irp);
  }
  return(tmp);
}
}
int CdAudioIsPlayActive(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741670),DeviceObject!=(-1073741764),DeviceObject!=(-1073741789),DeviceObject!=(-1073741802),DeviceObject!=(-1073741803),DeviceObject!=(-1073741808),DeviceObject!=(-1073741820),DeviceObject!=(-1073741823),DeviceObject!=(-2147483626),DeviceObject!=(-2147483631),DeviceObject!=0,DeviceObject!=1,DeviceObject!=147456,DeviceObject!=147460,DeviceObject!=147464,DeviceObject!=147468,DeviceObject!=147472,DeviceObject!=147476,DeviceObject!=147480,DeviceObject!=147496,DeviceObject!=147500,DeviceObject!=147508,DeviceObject!=147512,DeviceObject!=149504,DeviceObject!=149512,DeviceObject!=17,DeviceObject!=2,DeviceObject!=22,DeviceObject!=255,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=7,DeviceObject!=71,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741670),DeviceObject==(-1073741764),DeviceObject==(-1073741789),DeviceObject==(-1073741802),DeviceObject==(-1073741803),DeviceObject==(-1073741808),DeviceObject==(-1073741820),DeviceObject==(-1073741823),DeviceObject==(-2147483626),DeviceObject==(-2147483631),DeviceObject==0,DeviceObject==1,DeviceObject==147456,DeviceObject==147460,DeviceObject==147464,DeviceObject==147468,DeviceObject==147472,DeviceObject==147476,DeviceObject==147480,DeviceObject==147496,DeviceObject==147500,DeviceObject==147508,DeviceObject==147512,DeviceObject==149504,DeviceObject==149512,DeviceObject==17,DeviceObject==2,DeviceObject==22,DeviceObject==255,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==7,DeviceObject==71} @*/ DeviceObject)
{ int /*@  predicates{deviceExtension__PlayActive!=(-1),deviceExtension__PlayActive!=(-1073741637),deviceExtension__PlayActive!=(-1073741670),deviceExtension__PlayActive!=(-1073741764),deviceExtension__PlayActive!=(-1073741789),deviceExtension__PlayActive!=(-1073741802),deviceExtension__PlayActive!=(-1073741803),deviceExtension__PlayActive!=(-1073741808),deviceExtension__PlayActive!=(-1073741820),deviceExtension__PlayActive!=(-1073741823),deviceExtension__PlayActive!=(-2147483626),deviceExtension__PlayActive!=(-2147483631),deviceExtension__PlayActive!=0,deviceExtension__PlayActive!=1,deviceExtension__PlayActive!=147456,deviceExtension__PlayActive!=147460,deviceExtension__PlayActive!=147464,deviceExtension__PlayActive!=147468,deviceExtension__PlayActive!=147472,deviceExtension__PlayActive!=147476,deviceExtension__PlayActive!=147480,deviceExtension__PlayActive!=147496,deviceExtension__PlayActive!=147500,deviceExtension__PlayActive!=147508,deviceExtension__PlayActive!=147512,deviceExtension__PlayActive!=149504,deviceExtension__PlayActive!=149512,deviceExtension__PlayActive!=17,deviceExtension__PlayActive!=2,deviceExtension__PlayActive!=22,deviceExtension__PlayActive!=255,deviceExtension__PlayActive!=259,deviceExtension__PlayActive!=3,deviceExtension__PlayActive!=4,deviceExtension__PlayActive!=7,deviceExtension__PlayActive!=71,deviceExtension__PlayActive==(-1),deviceExtension__PlayActive==(-1073741637),deviceExtension__PlayActive==(-1073741670),deviceExtension__PlayActive==(-1073741764),deviceExtension__PlayActive==(-1073741789),deviceExtension__PlayActive==(-1073741802),deviceExtension__PlayActive==(-1073741803),deviceExtension__PlayActive==(-1073741808),deviceExtension__PlayActive==(-1073741820),deviceExtension__PlayActive==(-1073741823),deviceExtension__PlayActive==(-2147483626),deviceExtension__PlayActive==(-2147483631),deviceExtension__PlayActive==0,deviceExtension__PlayActive==1,deviceExtension__PlayActive==147456,deviceExtension__PlayActive==147460,deviceExtension__PlayActive==147464,deviceExtension__PlayActive==147468,deviceExtension__PlayActive==147472,deviceExtension__PlayActive==147476,deviceExtension__PlayActive==147480,deviceExtension__PlayActive==147496,deviceExtension__PlayActive==147500,deviceExtension__PlayActive==147508,deviceExtension__PlayActive==147512,deviceExtension__PlayActive==149504,deviceExtension__PlayActive==149512,deviceExtension__PlayActive==17,deviceExtension__PlayActive==2,deviceExtension__PlayActive==22,deviceExtension__PlayActive==255,deviceExtension__PlayActive==259,deviceExtension__PlayActive==3,deviceExtension__PlayActive==4,deviceExtension__PlayActive==7,deviceExtension__PlayActive==71} @*/ deviceExtension__PlayActive = __VERIFIER_nondet_int();
  int /*@  predicates{ioStatus__Status!=(-1),ioStatus__Status!=(-1073741637),ioStatus__Status!=(-1073741670),ioStatus__Status!=(-1073741764),ioStatus__Status!=(-1073741789),ioStatus__Status!=(-1073741802),ioStatus__Status!=(-1073741803),ioStatus__Status!=(-1073741808),ioStatus__Status!=(-1073741820),ioStatus__Status!=(-1073741823),ioStatus__Status!=(-2147483626),ioStatus__Status!=(-2147483631),ioStatus__Status!=0,ioStatus__Status!=1,ioStatus__Status!=147456,ioStatus__Status!=147460,ioStatus__Status!=147464,ioStatus__Status!=147468,ioStatus__Status!=147472,ioStatus__Status!=147476,ioStatus__Status!=147480,ioStatus__Status!=147496,ioStatus__Status!=147500,ioStatus__Status!=147508,ioStatus__Status!=147512,ioStatus__Status!=149504,ioStatus__Status!=149512,ioStatus__Status!=17,ioStatus__Status!=2,ioStatus__Status!=22,ioStatus__Status!=255,ioStatus__Status!=259,ioStatus__Status!=3,ioStatus__Status!=4,ioStatus__Status!=7,ioStatus__Status!=71,ioStatus__Status==(-1),ioStatus__Status==(-1073741637),ioStatus__Status==(-1073741670),ioStatus__Status==(-1073741764),ioStatus__Status==(-1073741789),ioStatus__Status==(-1073741802),ioStatus__Status==(-1073741803),ioStatus__Status==(-1073741808),ioStatus__Status==(-1073741820),ioStatus__Status==(-1073741823),ioStatus__Status==(-2147483626),ioStatus__Status==(-2147483631),ioStatus__Status==0,ioStatus__Status==1,ioStatus__Status==147456,ioStatus__Status==147460,ioStatus__Status==147464,ioStatus__Status==147468,ioStatus__Status==147472,ioStatus__Status==147476,ioStatus__Status==147480,ioStatus__Status==147496,ioStatus__Status==147500,ioStatus__Status==147508,ioStatus__Status==147512,ioStatus__Status==149504,ioStatus__Status==149512,ioStatus__Status==17,ioStatus__Status==2,ioStatus__Status==22,ioStatus__Status==255,ioStatus__Status==259,ioStatus__Status==3,ioStatus__Status==4,ioStatus__Status==7,ioStatus__Status==71} @*/ ioStatus__Status = __VERIFIER_nondet_int();
  int /*@  predicates{currentBuffer__Header__AudioStatus!=(-1),currentBuffer__Header__AudioStatus!=(-1073741637),currentBuffer__Header__AudioStatus!=(-1073741670),currentBuffer__Header__AudioStatus!=(-1073741764),currentBuffer__Header__AudioStatus!=(-1073741789),currentBuffer__Header__AudioStatus!=(-1073741802),currentBuffer__Header__AudioStatus!=(-1073741803),currentBuffer__Header__AudioStatus!=(-1073741808),currentBuffer__Header__AudioStatus!=(-1073741820),currentBuffer__Header__AudioStatus!=(-1073741823),currentBuffer__Header__AudioStatus!=(-2147483626),currentBuffer__Header__AudioStatus!=(-2147483631),currentBuffer__Header__AudioStatus!=0,currentBuffer__Header__AudioStatus!=1,currentBuffer__Header__AudioStatus!=147456,currentBuffer__Header__AudioStatus!=147460,currentBuffer__Header__AudioStatus!=147464,currentBuffer__Header__AudioStatus!=147468,currentBuffer__Header__AudioStatus!=147472,currentBuffer__Header__AudioStatus!=147476,currentBuffer__Header__AudioStatus!=147480,currentBuffer__Header__AudioStatus!=147496,currentBuffer__Header__AudioStatus!=147500,currentBuffer__Header__AudioStatus!=147508,currentBuffer__Header__AudioStatus!=147512,currentBuffer__Header__AudioStatus!=149504,currentBuffer__Header__AudioStatus!=149512,currentBuffer__Header__AudioStatus!=17,currentBuffer__Header__AudioStatus!=2,currentBuffer__Header__AudioStatus!=22,currentBuffer__Header__AudioStatus!=255,currentBuffer__Header__AudioStatus!=259,currentBuffer__Header__AudioStatus!=3,currentBuffer__Header__AudioStatus!=4,currentBuffer__Header__AudioStatus!=7,currentBuffer__Header__AudioStatus!=71,currentBuffer__Header__AudioStatus==(-1),currentBuffer__Header__AudioStatus==(-1073741637),currentBuffer__Header__AudioStatus==(-1073741670),currentBuffer__Header__AudioStatus==(-1073741764),currentBuffer__Header__AudioStatus==(-1073741789),currentBuffer__Header__AudioStatus==(-1073741802),currentBuffer__Header__AudioStatus==(-1073741803),currentBuffer__Header__AudioStatus==(-1073741808),currentBuffer__Header__AudioStatus==(-1073741820),currentBuffer__Header__AudioStatus==(-1073741823),currentBuffer__Header__AudioStatus==(-2147483626),currentBuffer__Header__AudioStatus==(-2147483631),currentBuffer__Header__AudioStatus==0,currentBuffer__Header__AudioStatus==1,currentBuffer__Header__AudioStatus==147456,currentBuffer__Header__AudioStatus==147460,currentBuffer__Header__AudioStatus==147464,currentBuffer__Header__AudioStatus==147468,currentBuffer__Header__AudioStatus==147472,currentBuffer__Header__AudioStatus==147476,currentBuffer__Header__AudioStatus==147480,currentBuffer__Header__AudioStatus==147496,currentBuffer__Header__AudioStatus==147500,currentBuffer__Header__AudioStatus==147508,currentBuffer__Header__AudioStatus==147512,currentBuffer__Header__AudioStatus==149504,currentBuffer__Header__AudioStatus==149512,currentBuffer__Header__AudioStatus==17,currentBuffer__Header__AudioStatus==2,currentBuffer__Header__AudioStatus==22,currentBuffer__Header__AudioStatus==255,currentBuffer__Header__AudioStatus==259,currentBuffer__Header__AudioStatus==3,currentBuffer__Header__AudioStatus==4,currentBuffer__Header__AudioStatus==7,currentBuffer__Header__AudioStatus==71} @*/ currentBuffer__Header__AudioStatus = __VERIFIER_nondet_int();
  int /*@  predicates{irp_CdAudioIsPlayActive!=(-1),irp_CdAudioIsPlayActive!=(-1073741637),irp_CdAudioIsPlayActive!=(-1073741670),irp_CdAudioIsPlayActive!=(-1073741764),irp_CdAudioIsPlayActive!=(-1073741789),irp_CdAudioIsPlayActive!=(-1073741802),irp_CdAudioIsPlayActive!=(-1073741803),irp_CdAudioIsPlayActive!=(-1073741808),irp_CdAudioIsPlayActive!=(-1073741820),irp_CdAudioIsPlayActive!=(-1073741823),irp_CdAudioIsPlayActive!=(-2147483626),irp_CdAudioIsPlayActive!=(-2147483631),irp_CdAudioIsPlayActive!=0,irp_CdAudioIsPlayActive!=1,irp_CdAudioIsPlayActive!=147456,irp_CdAudioIsPlayActive!=147460,irp_CdAudioIsPlayActive!=147464,irp_CdAudioIsPlayActive!=147468,irp_CdAudioIsPlayActive!=147472,irp_CdAudioIsPlayActive!=147476,irp_CdAudioIsPlayActive!=147480,irp_CdAudioIsPlayActive!=147496,irp_CdAudioIsPlayActive!=147500,irp_CdAudioIsPlayActive!=147508,irp_CdAudioIsPlayActive!=147512,irp_CdAudioIsPlayActive!=149504,irp_CdAudioIsPlayActive!=149512,irp_CdAudioIsPlayActive!=17,irp_CdAudioIsPlayActive!=2,irp_CdAudioIsPlayActive!=22,irp_CdAudioIsPlayActive!=255,irp_CdAudioIsPlayActive!=259,irp_CdAudioIsPlayActive!=3,irp_CdAudioIsPlayActive!=4,irp_CdAudioIsPlayActive!=7,irp_CdAudioIsPlayActive!=71,irp_CdAudioIsPlayActive==(-1),irp_CdAudioIsPlayActive==(-1073741637),irp_CdAudioIsPlayActive==(-1073741670),irp_CdAudioIsPlayActive==(-1073741764),irp_CdAudioIsPlayActive==(-1073741789),irp_CdAudioIsPlayActive==(-1073741802),irp_CdAudioIsPlayActive==(-1073741803),irp_CdAudioIsPlayActive==(-1073741808),irp_CdAudioIsPlayActive==(-1073741820),irp_CdAudioIsPlayActive==(-1073741823),irp_CdAudioIsPlayActive==(-2147483626),irp_CdAudioIsPlayActive==(-2147483631),irp_CdAudioIsPlayActive==0,irp_CdAudioIsPlayActive==1,irp_CdAudioIsPlayActive==147456,irp_CdAudioIsPlayActive==147460,irp_CdAudioIsPlayActive==147464,irp_CdAudioIsPlayActive==147468,irp_CdAudioIsPlayActive==147472,irp_CdAudioIsPlayActive==147476,irp_CdAudioIsPlayActive==147480,irp_CdAudioIsPlayActive==147496,irp_CdAudioIsPlayActive==147500,irp_CdAudioIsPlayActive==147508,irp_CdAudioIsPlayActive==147512,irp_CdAudioIsPlayActive==149504,irp_CdAudioIsPlayActive==149512,irp_CdAudioIsPlayActive==17,irp_CdAudioIsPlayActive==2,irp_CdAudioIsPlayActive==22,irp_CdAudioIsPlayActive==255,irp_CdAudioIsPlayActive==259,irp_CdAudioIsPlayActive==3,irp_CdAudioIsPlayActive==4,irp_CdAudioIsPlayActive==7,irp_CdAudioIsPlayActive==71} @*/ irp_CdAudioIsPlayActive = __VERIFIER_nondet_int();
  int /*@  predicates{event!=(-1),event!=(-1073741637),event!=(-1073741670),event!=(-1073741764),event!=(-1073741789),event!=(-1073741802),event!=(-1073741803),event!=(-1073741808),event!=(-1073741820),event!=(-1073741823),event!=(-2147483626),event!=(-2147483631),event!=0,event!=1,event!=147456,event!=147460,event!=147464,event!=147468,event!=147472,event!=147476,event!=147480,event!=147496,event!=147500,event!=147508,event!=147512,event!=149504,event!=149512,event!=17,event!=2,event!=22,event!=255,event!=259,event!=3,event!=4,event!=7,event!=71,event==(-1),event==(-1073741637),event==(-1073741670),event==(-1073741764),event==(-1073741789),event==(-1073741802),event==(-1073741803),event==(-1073741808),event==(-1073741820),event==(-1073741823),event==(-2147483626),event==(-2147483631),event==0,event==1,event==147456,event==147460,event==147464,event==147468,event==147472,event==147476,event==147480,event==147496,event==147500,event==147508,event==147512,event==149504,event==149512,event==17,event==2,event==22,event==255,event==259,event==3,event==4,event==7,event==71} @*/ event = __VERIFIER_nondet_int();
  int /*@  predicates{status!=(-1),status!=(-1073741637),status!=(-1073741670),status!=(-1073741764),status!=(-1073741789),status!=(-1073741802),status!=(-1073741803),status!=(-1073741808),status!=(-1073741820),status!=(-1073741823),status!=(-2147483626),status!=(-2147483631),status!=0,status!=1,status!=147456,status!=147460,status!=147464,status!=147468,status!=147472,status!=147476,status!=147480,status!=147496,status!=147500,status!=147508,status!=147512,status!=149504,status!=149512,status!=17,status!=2,status!=22,status!=255,status!=259,status!=3,status!=4,status!=7,status!=71,status<0,status==(-1),status==(-1073741637),status==(-1073741670),status==(-1073741764),status==(-1073741789),status==(-1073741802),status==(-1073741803),status==(-1073741808),status==(-1073741820),status==(-1073741823),status==(-2147483626),status==(-2147483631),status==0,status==1,status==147456,status==147460,status==147464,status==147468,status==147472,status==147476,status==147480,status==147496,status==147500,status==147508,status==147512,status==149504,status==149512,status==17,status==2,status==22,status==255,status==259,status==3,status==4,status==7,status==71,status==ioStatus__Status} @*/ status = __VERIFIER_nondet_int();
  int /*@  predicates{currentBuffer!=(-1),currentBuffer!=(-1073741637),currentBuffer!=(-1073741670),currentBuffer!=(-1073741764),currentBuffer!=(-1073741789),currentBuffer!=(-1073741802),currentBuffer!=(-1073741803),currentBuffer!=(-1073741808),currentBuffer!=(-1073741820),currentBuffer!=(-1073741823),currentBuffer!=(-2147483626),currentBuffer!=(-2147483631),currentBuffer!=0,currentBuffer!=1,currentBuffer!=147456,currentBuffer!=147460,currentBuffer!=147464,currentBuffer!=147468,currentBuffer!=147472,currentBuffer!=147476,currentBuffer!=147480,currentBuffer!=147496,currentBuffer!=147500,currentBuffer!=147508,currentBuffer!=147512,currentBuffer!=149504,currentBuffer!=149512,currentBuffer!=17,currentBuffer!=2,currentBuffer!=22,currentBuffer!=255,currentBuffer!=259,currentBuffer!=3,currentBuffer!=4,currentBuffer!=7,currentBuffer!=71,currentBuffer==(-1),currentBuffer==(-1073741637),currentBuffer==(-1073741670),currentBuffer==(-1073741764),currentBuffer==(-1073741789),currentBuffer==(-1073741802),currentBuffer==(-1073741803),currentBuffer==(-1073741808),currentBuffer==(-1073741820),currentBuffer==(-1073741823),currentBuffer==(-2147483626),currentBuffer==(-2147483631),currentBuffer==0,currentBuffer==1,currentBuffer==147456,currentBuffer==147460,currentBuffer==147464,currentBuffer==147468,currentBuffer==147472,currentBuffer==147476,currentBuffer==147480,currentBuffer==147496,currentBuffer==147500,currentBuffer==147508,currentBuffer==147512,currentBuffer==149504,currentBuffer==149512,currentBuffer==17,currentBuffer==2,currentBuffer==22,currentBuffer==255,currentBuffer==259,currentBuffer==3,currentBuffer==4,currentBuffer==7,currentBuffer==71} @*/ currentBuffer = __VERIFIER_nondet_int();
  int /*@  predicates{returnValue==0,returnValue==1} @*/ returnValue ;
  long __cil_tmp10 ;
  int __cil_tmp11 ;

  {
  if(! deviceExtension__PlayActive){
    return(0);
  }
  if(currentBuffer == 0){
    return(0);
  }
  if(irp_CdAudioIsPlayActive == 0){
    return(0);
  }
  {
  __cil_tmp10 =(long)status;
  if(__cil_tmp10 == 259L){
    {
    KeWaitForSingleObject(event, Suspended, KernelMode, 0, 0);
    status = ioStatus__Status;
    }
  }
  }
  {
  if(status < 0){
    return(0);
  }
  }
  if(currentBuffer__Header__AudioStatus == 17){
    returnValue = 1;
  } else {
    returnValue = 0;
    deviceExtension__PlayActive = 0;
  }
  return(returnValue);
}
}
int CdAudio535DeviceControl(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741670),DeviceObject!=(-1073741764),DeviceObject!=(-1073741789),DeviceObject!=(-1073741802),DeviceObject!=(-1073741803),DeviceObject!=(-1073741808),DeviceObject!=(-1073741820),DeviceObject!=(-1073741823),DeviceObject!=(-2147483626),DeviceObject!=(-2147483631),DeviceObject!=0,DeviceObject!=1,DeviceObject!=147456,DeviceObject!=147460,DeviceObject!=147464,DeviceObject!=147468,DeviceObject!=147472,DeviceObject!=147476,DeviceObject!=147480,DeviceObject!=147496,DeviceObject!=147500,DeviceObject!=147508,DeviceObject!=147512,DeviceObject!=149504,DeviceObject!=149512,DeviceObject!=17,DeviceObject!=2,DeviceObject!=22,DeviceObject!=255,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=7,DeviceObject!=71,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741670),DeviceObject==(-1073741764),DeviceObject==(-1073741789),DeviceObject==(-1073741802),DeviceObject==(-1073741803),DeviceObject==(-1073741808),DeviceObject==(-1073741820),DeviceObject==(-1073741823),DeviceObject==(-2147483626),DeviceObject==(-2147483631),DeviceObject==0,DeviceObject==1,DeviceObject==147456,DeviceObject==147460,DeviceObject==147464,DeviceObject==147468,DeviceObject==147472,DeviceObject==147476,DeviceObject==147480,DeviceObject==147496,DeviceObject==147500,DeviceObject==147508,DeviceObject==147512,DeviceObject==149504,DeviceObject==149512,DeviceObject==17,DeviceObject==2,DeviceObject==22,DeviceObject==255,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==7,DeviceObject==71} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741670),Irp!=(-1073741764),Irp!=(-1073741789),Irp!=(-1073741802),Irp!=(-1073741803),Irp!=(-1073741808),Irp!=(-1073741820),Irp!=(-1073741823),Irp!=(-2147483626),Irp!=(-2147483631),Irp!=0,Irp!=1,Irp!=147456,Irp!=147460,Irp!=147464,Irp!=147468,Irp!=147472,Irp!=147476,Irp!=147480,Irp!=147496,Irp!=147500,Irp!=147508,Irp!=147512,Irp!=149504,Irp!=149512,Irp!=17,Irp!=2,Irp!=22,Irp!=255,Irp!=259,Irp!=3,Irp!=4,Irp!=7,Irp!=71,Irp==(-1),Irp==(-1073741637),Irp==(-1073741670),Irp==(-1073741764),Irp==(-1073741789),Irp==(-1073741802),Irp==(-1073741803),Irp==(-1073741808),Irp==(-1073741820),Irp==(-1073741823),Irp==(-2147483626),Irp==(-2147483631),Irp==0,Irp==1,Irp==147456,Irp==147460,Irp==147464,Irp==147468,Irp==147472,Irp==147476,Irp==147480,Irp==147496,Irp==147500,Irp==147508,Irp==147512,Irp==149504,Irp==149512,Irp==17,Irp==2,Irp==22,Irp==255,Irp==259,Irp==3,Irp==4,Irp==7,Irp==71} @*/ Irp)
{ int /*@  predicates{Irp__Tail__Overlay__CurrentStackLocation!=(-1),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741637),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741670),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741764),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741789),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741802),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741803),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741808),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741820),Irp__Tail__Overlay__CurrentStackLocation!=(-1073741823),Irp__Tail__Overlay__CurrentStackLocation!=(-2147483626),Irp__Tail__Overlay__CurrentStackLocation!=(-2147483631),Irp__Tail__Overlay__CurrentStackLocation!=0,Irp__Tail__Overlay__CurrentStackLocation!=1,Irp__Tail__Overlay__CurrentStackLocation!=147456,Irp__Tail__Overlay__CurrentStackLocation!=147460,Irp__Tail__Overlay__CurrentStackLocation!=147464,Irp__Tail__Overlay__CurrentStackLocation!=147468,Irp__Tail__Overlay__CurrentStackLocation!=147472,Irp__Tail__Overlay__CurrentStackLocation!=147476,Irp__Tail__Overlay__CurrentStackLocation!=147480,Irp__Tail__Overlay__CurrentStackLocation!=147496,Irp__Tail__Overlay__CurrentStackLocation!=147500,Irp__Tail__Overlay__CurrentStackLocation!=147508,Irp__Tail__Overlay__CurrentStackLocation!=147512,Irp__Tail__Overlay__CurrentStackLocation!=149504,Irp__Tail__Overlay__CurrentStackLocation!=149512,Irp__Tail__Overlay__CurrentStackLocation!=17,Irp__Tail__Overlay__CurrentStackLocation!=2,Irp__Tail__Overlay__CurrentStackLocation!=22,Irp__Tail__Overlay__CurrentStackLocation!=255,Irp__Tail__Overlay__CurrentStackLocation!=259,Irp__Tail__Overlay__CurrentStackLocation!=3,Irp__Tail__Overlay__CurrentStackLocation!=4,Irp__Tail__Overlay__CurrentStackLocation!=7,Irp__Tail__Overlay__CurrentStackLocation!=71,Irp__Tail__Overlay__CurrentStackLocation==(-1),Irp__Tail__Overlay__CurrentStackLocation==(-1073741637),Irp__Tail__Overlay__CurrentStackLocation==(-1073741670),Irp__Tail__Overlay__CurrentStackLocation==(-1073741764),Irp__Tail__Overlay__CurrentStackLocation==(-1073741789),Irp__Tail__Overlay__CurrentStackLocation==(-1073741802),Irp__Tail__Overlay__CurrentStackLocation==(-1073741803),Irp__Tail__Overlay__CurrentStackLocation==(-1073741808),Irp__Tail__Overlay__CurrentStackLocation==(-1073741820),Irp__Tail__Overlay__CurrentStackLocation==(-1073741823),Irp__Tail__Overlay__CurrentStackLocation==(-2147483626),Irp__Tail__Overlay__CurrentStackLocation==(-2147483631),Irp__Tail__Overlay__CurrentStackLocation==0,Irp__Tail__Overlay__CurrentStackLocation==1,Irp__Tail__Overlay__CurrentStackLocation==147456,Irp__Tail__Overlay__CurrentStackLocation==147460,Irp__Tail__Overlay__CurrentStackLocation==147464,Irp__Tail__Overlay__CurrentStackLocation==147468,Irp__Tail__Overlay__CurrentStackLocation==147472,Irp__Tail__Overlay__CurrentStackLocation==147476,Irp__Tail__Overlay__CurrentStackLocation==147480,Irp__Tail__Overlay__CurrentStackLocation==147496,Irp__Tail__Overlay__CurrentStackLocation==147500,Irp__Tail__Overlay__CurrentStackLocation==147508,Irp__Tail__Overlay__CurrentStackLocation==147512,Irp__Tail__Overlay__CurrentStackLocation==149504,Irp__Tail__Overlay__CurrentStackLocation==149512,Irp__Tail__Overlay__CurrentStackLocation==17,Irp__Tail__Overlay__CurrentStackLocation==2,Irp__Tail__Overlay__CurrentStackLocation==22,Irp__Tail__Overlay__CurrentStackLocation==255,Irp__Tail__Overlay__CurrentStackLocation==259,Irp__Tail__Overlay__CurrentStackLocation==3,Irp__Tail__Overlay__CurrentStackLocation==4,Irp__Tail__Overlay__CurrentStackLocation==7,Irp__Tail__Overlay__CurrentStackLocation==71} @*/ Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int();
  int /*@  predicates{DeviceObject__DeviceExtension!=(-1),DeviceObject__DeviceExtension!=(-1073741637),DeviceObject__DeviceExtension!=(-1073741670),DeviceObject__DeviceExtension!=(-1073741764),DeviceObject__DeviceExtension!=(-1073741789),DeviceObject__DeviceExtension!=(-1073741802),DeviceObject__DeviceExtension!=(-1073741803),DeviceObject__DeviceExtension!=(-1073741808),DeviceObject__DeviceExtension!=(-1073741820),DeviceObject__DeviceExtension!=(-1073741823),DeviceObject__DeviceExtension!=(-2147483626),DeviceObject__DeviceExtension!=(-2147483631),DeviceObject__DeviceExtension!=0,DeviceObject__DeviceExtension!=1,DeviceObject__DeviceExtension!=147456,DeviceObject__DeviceExtension!=147460,DeviceObject__DeviceExtension!=147464,DeviceObject__DeviceExtension!=147468,DeviceObject__DeviceExtension!=147472,DeviceObject__DeviceExtension!=147476,DeviceObject__DeviceExtension!=147480,DeviceObject__DeviceExtension!=147496,DeviceObject__DeviceExtension!=147500,DeviceObject__DeviceExtension!=147508,DeviceObject__DeviceExtension!=147512,DeviceObject__DeviceExtension!=149504,DeviceObject__DeviceExtension!=149512,DeviceObject__DeviceExtension!=17,DeviceObject__DeviceExtension!=2,DeviceObject__DeviceExtension!=22,DeviceObject__DeviceExtension!=255,DeviceObject__DeviceExtension!=259,DeviceObject__DeviceExtension!=3,DeviceObject__DeviceExtension!=4,DeviceObject__DeviceExtension!=7,DeviceObject__DeviceExtension!=71,DeviceObject__DeviceExtension==(-1),DeviceObject__DeviceExtension==(-1073741637),DeviceObject__DeviceExtension==(-1073741670),DeviceObject__DeviceExtension==(-1073741764),DeviceObject__DeviceExtension==(-1073741789),DeviceObject__DeviceExtension==(-1073741802),DeviceObject__DeviceExtension==(-1073741803),DeviceObject__DeviceExtension==(-1073741808),DeviceObject__DeviceExtension==(-1073741820),DeviceObject__DeviceExtension==(-1073741823),DeviceObject__DeviceExtension==(-2147483626),DeviceObject__DeviceExtension==(-2147483631),DeviceObject__DeviceExtension==0,DeviceObject__DeviceExtension==1,DeviceObject__DeviceExtension==147456,DeviceObject__DeviceExtension==147460,DeviceObject__DeviceExtension==147464,DeviceObject__DeviceExtension==147468,DeviceObject__DeviceExtension==147472,DeviceObject__DeviceExtension==147476,DeviceObject__DeviceExtension==147480,DeviceObject__DeviceExtension==147496,DeviceObject__DeviceExtension==147500,DeviceObject__DeviceExtension==147508,DeviceObject__DeviceExtension==147512,DeviceObject__DeviceExtension==149504,DeviceObject__DeviceExtension==149512,DeviceObject__DeviceExtension==17,DeviceObject__DeviceExtension==2,DeviceObject__DeviceExtension==22,DeviceObject__DeviceExtension==255,DeviceObject__DeviceExtension==259,DeviceObject__DeviceExtension==3,DeviceObject__DeviceExtension==4,DeviceObject__DeviceExtension==7,DeviceObject__DeviceExtension==71} @*/ DeviceObject__DeviceExtension = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension__TargetDeviceObject!=(-1),deviceExtension__TargetDeviceObject!=(-1073741637),deviceExtension__TargetDeviceObject!=(-1073741670),deviceExtension__TargetDeviceObject!=(-1073741764),deviceExtension__TargetDeviceObject!=(-1073741789),deviceExtension__TargetDeviceObject!=(-1073741802),deviceExtension__TargetDeviceObject!=(-1073741803),deviceExtension__TargetDeviceObject!=(-1073741808),deviceExtension__TargetDeviceObject!=(-1073741820),deviceExtension__TargetDeviceObject!=(-1073741823),deviceExtension__TargetDeviceObject!=(-2147483626),deviceExtension__TargetDeviceObject!=(-2147483631),deviceExtension__TargetDeviceObject!=0,deviceExtension__TargetDeviceObject!=1,deviceExtension__TargetDeviceObject!=147456,deviceExtension__TargetDeviceObject!=147460,deviceExtension__TargetDeviceObject!=147464,deviceExtension__TargetDeviceObject!=147468,deviceExtension__TargetDeviceObject!=147472,deviceExtension__TargetDeviceObject!=147476,deviceExtension__TargetDeviceObject!=147480,deviceExtension__TargetDeviceObject!=147496,deviceExtension__TargetDeviceObject!=147500,deviceExtension__TargetDeviceObject!=147508,deviceExtension__TargetDeviceObject!=147512,deviceExtension__TargetDeviceObject!=149504,deviceExtension__TargetDeviceObject!=149512,deviceExtension__TargetDeviceObject!=17,deviceExtension__TargetDeviceObject!=2,deviceExtension__TargetDeviceObject!=22,deviceExtension__TargetDeviceObject!=255,deviceExtension__TargetDeviceObject!=259,deviceExtension__TargetDeviceObject!=3,deviceExtension__TargetDeviceObject!=4,deviceExtension__TargetDeviceObject!=7,deviceExtension__TargetDeviceObject!=71,deviceExtension__TargetDeviceObject==(-1),deviceExtension__TargetDeviceObject==(-1073741637),deviceExtension__TargetDeviceObject==(-1073741670),deviceExtension__TargetDeviceObject==(-1073741764),deviceExtension__TargetDeviceObject==(-1073741789),deviceExtension__TargetDeviceObject==(-1073741802),deviceExtension__TargetDeviceObject==(-1073741803),deviceExtension__TargetDeviceObject==(-1073741808),deviceExtension__TargetDeviceObject==(-1073741820),deviceExtension__TargetDeviceObject==(-1073741823),deviceExtension__TargetDeviceObject==(-2147483626),deviceExtension__TargetDeviceObject==(-2147483631),deviceExtension__TargetDeviceObject==0,deviceExtension__TargetDeviceObject==1,deviceExtension__TargetDeviceObject==147456,deviceExtension__TargetDeviceObject==147460,deviceExtension__TargetDeviceObject==147464,deviceExtension__TargetDeviceObject==147468,deviceExtension__TargetDeviceObject==147472,deviceExtension__TargetDeviceObject==147476,deviceExtension__TargetDeviceObject==147480,deviceExtension__TargetDeviceObject==147496,deviceExtension__TargetDeviceObject==147500,deviceExtension__TargetDeviceObject==147508,deviceExtension__TargetDeviceObject==147512,deviceExtension__TargetDeviceObject==149504,deviceExtension__TargetDeviceObject==149512,deviceExtension__TargetDeviceObject==17,deviceExtension__TargetDeviceObject==2,deviceExtension__TargetDeviceObject==22,deviceExtension__TargetDeviceObject==255,deviceExtension__TargetDeviceObject==259,deviceExtension__TargetDeviceObject==3,deviceExtension__TargetDeviceObject==4,deviceExtension__TargetDeviceObject==7,deviceExtension__TargetDeviceObject==71} @*/ deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__AssociatedIrp__SystemBuffer!=(-1),Irp__AssociatedIrp__SystemBuffer!=(-1073741637),Irp__AssociatedIrp__SystemBuffer!=(-1073741670),Irp__AssociatedIrp__SystemBuffer!=(-1073741764),Irp__AssociatedIrp__SystemBuffer!=(-1073741789),Irp__AssociatedIrp__SystemBuffer!=(-1073741802),Irp__AssociatedIrp__SystemBuffer!=(-1073741803),Irp__AssociatedIrp__SystemBuffer!=(-1073741808),Irp__AssociatedIrp__SystemBuffer!=(-1073741820),Irp__AssociatedIrp__SystemBuffer!=(-1073741823),Irp__AssociatedIrp__SystemBuffer!=(-2147483626),Irp__AssociatedIrp__SystemBuffer!=(-2147483631),Irp__AssociatedIrp__SystemBuffer!=0,Irp__AssociatedIrp__SystemBuffer!=1,Irp__AssociatedIrp__SystemBuffer!=147456,Irp__AssociatedIrp__SystemBuffer!=147460,Irp__AssociatedIrp__SystemBuffer!=147464,Irp__AssociatedIrp__SystemBuffer!=147468,Irp__AssociatedIrp__SystemBuffer!=147472,Irp__AssociatedIrp__SystemBuffer!=147476,Irp__AssociatedIrp__SystemBuffer!=147480,Irp__AssociatedIrp__SystemBuffer!=147496,Irp__AssociatedIrp__SystemBuffer!=147500,Irp__AssociatedIrp__SystemBuffer!=147508,Irp__AssociatedIrp__SystemBuffer!=147512,Irp__AssociatedIrp__SystemBuffer!=149504,Irp__AssociatedIrp__SystemBuffer!=149512,Irp__AssociatedIrp__SystemBuffer!=17,Irp__AssociatedIrp__SystemBuffer!=2,Irp__AssociatedIrp__SystemBuffer!=22,Irp__AssociatedIrp__SystemBuffer!=255,Irp__AssociatedIrp__SystemBuffer!=259,Irp__AssociatedIrp__SystemBuffer!=3,Irp__AssociatedIrp__SystemBuffer!=4,Irp__AssociatedIrp__SystemBuffer!=7,Irp__AssociatedIrp__SystemBuffer!=71,Irp__AssociatedIrp__SystemBuffer==(-1),Irp__AssociatedIrp__SystemBuffer==(-1073741637),Irp__AssociatedIrp__SystemBuffer==(-1073741670),Irp__AssociatedIrp__SystemBuffer==(-1073741764),Irp__AssociatedIrp__SystemBuffer==(-1073741789),Irp__AssociatedIrp__SystemBuffer==(-1073741802),Irp__AssociatedIrp__SystemBuffer==(-1073741803),Irp__AssociatedIrp__SystemBuffer==(-1073741808),Irp__AssociatedIrp__SystemBuffer==(-1073741820),Irp__AssociatedIrp__SystemBuffer==(-1073741823),Irp__AssociatedIrp__SystemBuffer==(-2147483626),Irp__AssociatedIrp__SystemBuffer==(-2147483631),Irp__AssociatedIrp__SystemBuffer==0,Irp__AssociatedIrp__SystemBuffer==1,Irp__AssociatedIrp__SystemBuffer==147456,Irp__AssociatedIrp__SystemBuffer==147460,Irp__AssociatedIrp__SystemBuffer==147464,Irp__AssociatedIrp__SystemBuffer==147468,Irp__AssociatedIrp__SystemBuffer==147472,Irp__AssociatedIrp__SystemBuffer==147476,Irp__AssociatedIrp__SystemBuffer==147480,Irp__AssociatedIrp__SystemBuffer==147496,Irp__AssociatedIrp__SystemBuffer==147500,Irp__AssociatedIrp__SystemBuffer==147508,Irp__AssociatedIrp__SystemBuffer==147512,Irp__AssociatedIrp__SystemBuffer==149504,Irp__AssociatedIrp__SystemBuffer==149512,Irp__AssociatedIrp__SystemBuffer==17,Irp__AssociatedIrp__SystemBuffer==2,Irp__AssociatedIrp__SystemBuffer==22,Irp__AssociatedIrp__SystemBuffer==255,Irp__AssociatedIrp__SystemBuffer==259,Irp__AssociatedIrp__SystemBuffer==3,Irp__AssociatedIrp__SystemBuffer==4,Irp__AssociatedIrp__SystemBuffer==7,Irp__AssociatedIrp__SystemBuffer==71} @*/ Irp__AssociatedIrp__SystemBuffer = __VERIFIER_nondet_int();
  int /*@  predicates{srb__Cdb!=(-1),srb__Cdb!=(-1073741637),srb__Cdb!=(-1073741670),srb__Cdb!=(-1073741764),srb__Cdb!=(-1073741789),srb__Cdb!=(-1073741802),srb__Cdb!=(-1073741803),srb__Cdb!=(-1073741808),srb__Cdb!=(-1073741820),srb__Cdb!=(-1073741823),srb__Cdb!=(-2147483626),srb__Cdb!=(-2147483631),srb__Cdb!=0,srb__Cdb!=1,srb__Cdb!=147456,srb__Cdb!=147460,srb__Cdb!=147464,srb__Cdb!=147468,srb__Cdb!=147472,srb__Cdb!=147476,srb__Cdb!=147480,srb__Cdb!=147496,srb__Cdb!=147500,srb__Cdb!=147508,srb__Cdb!=147512,srb__Cdb!=149504,srb__Cdb!=149512,srb__Cdb!=17,srb__Cdb!=2,srb__Cdb!=22,srb__Cdb!=255,srb__Cdb!=259,srb__Cdb!=3,srb__Cdb!=4,srb__Cdb!=7,srb__Cdb!=71,srb__Cdb==(-1),srb__Cdb==(-1073741637),srb__Cdb==(-1073741670),srb__Cdb==(-1073741764),srb__Cdb==(-1073741789),srb__Cdb==(-1073741802),srb__Cdb==(-1073741803),srb__Cdb==(-1073741808),srb__Cdb==(-1073741820),srb__Cdb==(-1073741823),srb__Cdb==(-2147483626),srb__Cdb==(-2147483631),srb__Cdb==0,srb__Cdb==1,srb__Cdb==147456,srb__Cdb==147460,srb__Cdb==147464,srb__Cdb==147468,srb__Cdb==147472,srb__Cdb==147476,srb__Cdb==147480,srb__Cdb==147496,srb__Cdb==147500,srb__Cdb==147508,srb__Cdb==147512,srb__Cdb==149504,srb__Cdb==149512,srb__Cdb==17,srb__Cdb==2,srb__Cdb==22,srb__Cdb==255,srb__Cdb==259,srb__Cdb==3,srb__Cdb==4,srb__Cdb==7,srb__Cdb==71} @*/ srb__Cdb = __VERIFIER_nondet_int();
  int /*@  predicates{currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741637),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741670),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741764),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741789),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741802),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741803),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741808),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741820),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741823),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-2147483626),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-2147483631),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=0,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=1,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147456,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147460,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147464,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147468,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147472,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147476,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147480,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147496,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147500,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147508,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147512,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=149504,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=149512,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=17,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=2,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=22,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=255,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=259,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=3,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=4,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=7,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=71,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741637),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741670),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741764),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741789),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741802),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741803),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741808),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741820),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741823),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-2147483626),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-2147483631),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==0,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==1,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147456,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147460,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147464,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147468,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147472,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147476,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147480,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147496,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147500,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147508,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147512,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==149504,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==149512,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==17,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==2,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==22,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==255,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==259,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==3,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==4,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==7,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==71} @*/ currentIrpStack__Parameters__DeviceIoControl__IoControlCode = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__IoStatus__Information!=(-1),Irp__IoStatus__Information!=(-1073741637),Irp__IoStatus__Information!=(-1073741670),Irp__IoStatus__Information!=(-1073741764),Irp__IoStatus__Information!=(-1073741789),Irp__IoStatus__Information!=(-1073741802),Irp__IoStatus__Information!=(-1073741803),Irp__IoStatus__Information!=(-1073741808),Irp__IoStatus__Information!=(-1073741820),Irp__IoStatus__Information!=(-1073741823),Irp__IoStatus__Information!=(-2147483626),Irp__IoStatus__Information!=(-2147483631),Irp__IoStatus__Information!=0,Irp__IoStatus__Information!=1,Irp__IoStatus__Information!=147456,Irp__IoStatus__Information!=147460,Irp__IoStatus__Information!=147464,Irp__IoStatus__Information!=147468,Irp__IoStatus__Information!=147472,Irp__IoStatus__Information!=147476,Irp__IoStatus__Information!=147480,Irp__IoStatus__Information!=147496,Irp__IoStatus__Information!=147500,Irp__IoStatus__Information!=147508,Irp__IoStatus__Information!=147512,Irp__IoStatus__Information!=149504,Irp__IoStatus__Information!=149512,Irp__IoStatus__Information!=17,Irp__IoStatus__Information!=2,Irp__IoStatus__Information!=22,Irp__IoStatus__Information!=255,Irp__IoStatus__Information!=259,Irp__IoStatus__Information!=3,Irp__IoStatus__Information!=4,Irp__IoStatus__Information!=7,Irp__IoStatus__Information!=71,Irp__IoStatus__Information==(-1),Irp__IoStatus__Information==(-1073741637),Irp__IoStatus__Information==(-1073741670),Irp__IoStatus__Information==(-1073741764),Irp__IoStatus__Information==(-1073741789),Irp__IoStatus__Information==(-1073741802),Irp__IoStatus__Information==(-1073741803),Irp__IoStatus__Information==(-1073741808),Irp__IoStatus__Information==(-1073741820),Irp__IoStatus__Information==(-1073741823),Irp__IoStatus__Information==(-2147483626),Irp__IoStatus__Information==(-2147483631),Irp__IoStatus__Information==0,Irp__IoStatus__Information==1,Irp__IoStatus__Information==147456,Irp__IoStatus__Information==147460,Irp__IoStatus__Information==147464,Irp__IoStatus__Information==147468,Irp__IoStatus__Information==147472,Irp__IoStatus__Information==147476,Irp__IoStatus__Information==147480,Irp__IoStatus__Information==147496,Irp__IoStatus__Information==147500,Irp__IoStatus__Information==147508,Irp__IoStatus__Information==147512,Irp__IoStatus__Information==149504,Irp__IoStatus__Information==149512,Irp__IoStatus__Information==17,Irp__IoStatus__Information==2,Irp__IoStatus__Information==22,Irp__IoStatus__Information==255,Irp__IoStatus__Information==259,Irp__IoStatus__Information==3,Irp__IoStatus__Information==4,Irp__IoStatus__Information==7,Irp__IoStatus__Information==71} @*/ Irp__IoStatus__Information ;
  int /*@  predicates{currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741637),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741670),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741764),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741789),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741802),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741803),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741808),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741820),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741823),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-2147483626),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-2147483631),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=0,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=1,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147456,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147460,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147464,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147468,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147472,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147476,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147480,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147496,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147500,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147508,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147512,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=149504,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=149512,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=17,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=2,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=22,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=255,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=259,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=3,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=4,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=7,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=71,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741637),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741670),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741764),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741789),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741802),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741803),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741808),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741820),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741823),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-2147483626),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-2147483631),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==0,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==1,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147456,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147460,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147464,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147468,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147472,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147476,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147480,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147496,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147500,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147508,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147512,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==149504,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==149512,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==17,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==2,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==22,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==255,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==259,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==3,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==4,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==7,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==71} @*/ currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength = __VERIFIER_nondet_int();
  int /*@  predicates{currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741637),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741670),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741764),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741789),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741802),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741803),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741808),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741820),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741823),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-2147483626),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-2147483631),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=0,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=1,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147456,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147460,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147464,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147468,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147472,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147476,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147480,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147496,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147500,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147508,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147512,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=149504,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=149512,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=17,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=2,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=22,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=255,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=259,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=3,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=4,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=7,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=71,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741637),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741670),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741764),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741789),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741802),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741803),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741808),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741820),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741823),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-2147483626),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-2147483631),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==0,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==1,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147456,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147460,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147464,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147468,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147472,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147476,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147480,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147496,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147500,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147508,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147512,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==149504,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==149512,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==17,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==2,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==22,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==255,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==259,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==3,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==4,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==7,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==71} @*/ currentIrpStack__Parameters__DeviceIoControl__InputBufferLength = __VERIFIER_nondet_int();
  int /*@  predicates{srb__CdbLength==10} @*/ srb__CdbLength ;
  int /*@  predicates{cdb__CDB10__OperationCode==38} @*/ cdb__CDB10__OperationCode ;
  int /*@  predicates{srb__TimeOutValue==10} @*/ srb__TimeOutValue ;
  int /*@  predicates{sizeof__READ_CAPACITY_DATA!=(-1),sizeof__READ_CAPACITY_DATA!=(-1073741637),sizeof__READ_CAPACITY_DATA!=(-1073741670),sizeof__READ_CAPACITY_DATA!=(-1073741764),sizeof__READ_CAPACITY_DATA!=(-1073741789),sizeof__READ_CAPACITY_DATA!=(-1073741802),sizeof__READ_CAPACITY_DATA!=(-1073741803),sizeof__READ_CAPACITY_DATA!=(-1073741808),sizeof__READ_CAPACITY_DATA!=(-1073741820),sizeof__READ_CAPACITY_DATA!=(-1073741823),sizeof__READ_CAPACITY_DATA!=(-2147483626),sizeof__READ_CAPACITY_DATA!=(-2147483631),sizeof__READ_CAPACITY_DATA!=0,sizeof__READ_CAPACITY_DATA!=1,sizeof__READ_CAPACITY_DATA!=147456,sizeof__READ_CAPACITY_DATA!=147460,sizeof__READ_CAPACITY_DATA!=147464,sizeof__READ_CAPACITY_DATA!=147468,sizeof__READ_CAPACITY_DATA!=147472,sizeof__READ_CAPACITY_DATA!=147476,sizeof__READ_CAPACITY_DATA!=147480,sizeof__READ_CAPACITY_DATA!=147496,sizeof__READ_CAPACITY_DATA!=147500,sizeof__READ_CAPACITY_DATA!=147508,sizeof__READ_CAPACITY_DATA!=147512,sizeof__READ_CAPACITY_DATA!=149504,sizeof__READ_CAPACITY_DATA!=149512,sizeof__READ_CAPACITY_DATA!=17,sizeof__READ_CAPACITY_DATA!=2,sizeof__READ_CAPACITY_DATA!=22,sizeof__READ_CAPACITY_DATA!=255,sizeof__READ_CAPACITY_DATA!=259,sizeof__READ_CAPACITY_DATA!=3,sizeof__READ_CAPACITY_DATA!=4,sizeof__READ_CAPACITY_DATA!=7,sizeof__READ_CAPACITY_DATA!=71,sizeof__READ_CAPACITY_DATA==(-1),sizeof__READ_CAPACITY_DATA==(-1073741637),sizeof__READ_CAPACITY_DATA==(-1073741670),sizeof__READ_CAPACITY_DATA==(-1073741764),sizeof__READ_CAPACITY_DATA==(-1073741789),sizeof__READ_CAPACITY_DATA==(-1073741802),sizeof__READ_CAPACITY_DATA==(-1073741803),sizeof__READ_CAPACITY_DATA==(-1073741808),sizeof__READ_CAPACITY_DATA==(-1073741820),sizeof__READ_CAPACITY_DATA==(-1073741823),sizeof__READ_CAPACITY_DATA==(-2147483626),sizeof__READ_CAPACITY_DATA==(-2147483631),sizeof__READ_CAPACITY_DATA==0,sizeof__READ_CAPACITY_DATA==1,sizeof__READ_CAPACITY_DATA==147456,sizeof__READ_CAPACITY_DATA==147460,sizeof__READ_CAPACITY_DATA==147464,sizeof__READ_CAPACITY_DATA==147468,sizeof__READ_CAPACITY_DATA==147472,sizeof__READ_CAPACITY_DATA==147476,sizeof__READ_CAPACITY_DATA==147480,sizeof__READ_CAPACITY_DATA==147496,sizeof__READ_CAPACITY_DATA==147500,sizeof__READ_CAPACITY_DATA==147508,sizeof__READ_CAPACITY_DATA==147512,sizeof__READ_CAPACITY_DATA==149504,sizeof__READ_CAPACITY_DATA==149512,sizeof__READ_CAPACITY_DATA==17,sizeof__READ_CAPACITY_DATA==2,sizeof__READ_CAPACITY_DATA==22,sizeof__READ_CAPACITY_DATA==255,sizeof__READ_CAPACITY_DATA==259,sizeof__READ_CAPACITY_DATA==3,sizeof__READ_CAPACITY_DATA==4,sizeof__READ_CAPACITY_DATA==7,sizeof__READ_CAPACITY_DATA==71} @*/ sizeof__READ_CAPACITY_DATA = __VERIFIER_nondet_int();
  int /*@  predicates{lastSession__LogicalBlockAddress!=(-1),lastSession__LogicalBlockAddress!=(-1073741637),lastSession__LogicalBlockAddress!=(-1073741670),lastSession__LogicalBlockAddress!=(-1073741764),lastSession__LogicalBlockAddress!=(-1073741789),lastSession__LogicalBlockAddress!=(-1073741802),lastSession__LogicalBlockAddress!=(-1073741803),lastSession__LogicalBlockAddress!=(-1073741808),lastSession__LogicalBlockAddress!=(-1073741820),lastSession__LogicalBlockAddress!=(-1073741823),lastSession__LogicalBlockAddress!=(-2147483626),lastSession__LogicalBlockAddress!=(-2147483631),lastSession__LogicalBlockAddress!=0,lastSession__LogicalBlockAddress!=1,lastSession__LogicalBlockAddress!=147456,lastSession__LogicalBlockAddress!=147460,lastSession__LogicalBlockAddress!=147464,lastSession__LogicalBlockAddress!=147468,lastSession__LogicalBlockAddress!=147472,lastSession__LogicalBlockAddress!=147476,lastSession__LogicalBlockAddress!=147480,lastSession__LogicalBlockAddress!=147496,lastSession__LogicalBlockAddress!=147500,lastSession__LogicalBlockAddress!=147508,lastSession__LogicalBlockAddress!=147512,lastSession__LogicalBlockAddress!=149504,lastSession__LogicalBlockAddress!=149512,lastSession__LogicalBlockAddress!=17,lastSession__LogicalBlockAddress!=2,lastSession__LogicalBlockAddress!=22,lastSession__LogicalBlockAddress!=255,lastSession__LogicalBlockAddress!=259,lastSession__LogicalBlockAddress!=3,lastSession__LogicalBlockAddress!=4,lastSession__LogicalBlockAddress!=7,lastSession__LogicalBlockAddress!=71,lastSession__LogicalBlockAddress==(-1),lastSession__LogicalBlockAddress==(-1073741637),lastSession__LogicalBlockAddress==(-1073741670),lastSession__LogicalBlockAddress==(-1073741764),lastSession__LogicalBlockAddress==(-1073741789),lastSession__LogicalBlockAddress==(-1073741802),lastSession__LogicalBlockAddress==(-1073741803),lastSession__LogicalBlockAddress==(-1073741808),lastSession__LogicalBlockAddress==(-1073741820),lastSession__LogicalBlockAddress==(-1073741823),lastSession__LogicalBlockAddress==(-2147483626),lastSession__LogicalBlockAddress==(-2147483631),lastSession__LogicalBlockAddress==0,lastSession__LogicalBlockAddress==1,lastSession__LogicalBlockAddress==147456,lastSession__LogicalBlockAddress==147460,lastSession__LogicalBlockAddress==147464,lastSession__LogicalBlockAddress==147468,lastSession__LogicalBlockAddress==147472,lastSession__LogicalBlockAddress==147476,lastSession__LogicalBlockAddress==147480,lastSession__LogicalBlockAddress==147496,lastSession__LogicalBlockAddress==147500,lastSession__LogicalBlockAddress==147508,lastSession__LogicalBlockAddress==147512,lastSession__LogicalBlockAddress==149504,lastSession__LogicalBlockAddress==149512,lastSession__LogicalBlockAddress==17,lastSession__LogicalBlockAddress==2,lastSession__LogicalBlockAddress==22,lastSession__LogicalBlockAddress==255,lastSession__LogicalBlockAddress==259,lastSession__LogicalBlockAddress==3,lastSession__LogicalBlockAddress==4,lastSession__LogicalBlockAddress==7,lastSession__LogicalBlockAddress==71} @*/ lastSession__LogicalBlockAddress = __VERIFIER_nondet_int();
  int /*@  predicates{cdaudioDataOut__FirstTrack!=(-1),cdaudioDataOut__FirstTrack!=(-1073741637),cdaudioDataOut__FirstTrack!=(-1073741670),cdaudioDataOut__FirstTrack!=(-1073741764),cdaudioDataOut__FirstTrack!=(-1073741789),cdaudioDataOut__FirstTrack!=(-1073741802),cdaudioDataOut__FirstTrack!=(-1073741803),cdaudioDataOut__FirstTrack!=(-1073741808),cdaudioDataOut__FirstTrack!=(-1073741820),cdaudioDataOut__FirstTrack!=(-1073741823),cdaudioDataOut__FirstTrack!=(-2147483626),cdaudioDataOut__FirstTrack!=(-2147483631),cdaudioDataOut__FirstTrack!=0,cdaudioDataOut__FirstTrack!=1,cdaudioDataOut__FirstTrack!=147456,cdaudioDataOut__FirstTrack!=147460,cdaudioDataOut__FirstTrack!=147464,cdaudioDataOut__FirstTrack!=147468,cdaudioDataOut__FirstTrack!=147472,cdaudioDataOut__FirstTrack!=147476,cdaudioDataOut__FirstTrack!=147480,cdaudioDataOut__FirstTrack!=147496,cdaudioDataOut__FirstTrack!=147500,cdaudioDataOut__FirstTrack!=147508,cdaudioDataOut__FirstTrack!=147512,cdaudioDataOut__FirstTrack!=149504,cdaudioDataOut__FirstTrack!=149512,cdaudioDataOut__FirstTrack!=17,cdaudioDataOut__FirstTrack!=2,cdaudioDataOut__FirstTrack!=22,cdaudioDataOut__FirstTrack!=255,cdaudioDataOut__FirstTrack!=259,cdaudioDataOut__FirstTrack!=3,cdaudioDataOut__FirstTrack!=4,cdaudioDataOut__FirstTrack!=7,cdaudioDataOut__FirstTrack!=71,cdaudioDataOut__FirstTrack==(-1),cdaudioDataOut__FirstTrack==(-1073741637),cdaudioDataOut__FirstTrack==(-1073741670),cdaudioDataOut__FirstTrack==(-1073741764),cdaudioDataOut__FirstTrack==(-1073741789),cdaudioDataOut__FirstTrack==(-1073741802),cdaudioDataOut__FirstTrack==(-1073741803),cdaudioDataOut__FirstTrack==(-1073741808),cdaudioDataOut__FirstTrack==(-1073741820),cdaudioDataOut__FirstTrack==(-1073741823),cdaudioDataOut__FirstTrack==(-2147483626),cdaudioDataOut__FirstTrack==(-2147483631),cdaudioDataOut__FirstTrack==0,cdaudioDataOut__FirstTrack==1,cdaudioDataOut__FirstTrack==147456,cdaudioDataOut__FirstTrack==147460,cdaudioDataOut__FirstTrack==147464,cdaudioDataOut__FirstTrack==147468,cdaudioDataOut__FirstTrack==147472,cdaudioDataOut__FirstTrack==147476,cdaudioDataOut__FirstTrack==147480,cdaudioDataOut__FirstTrack==147496,cdaudioDataOut__FirstTrack==147500,cdaudioDataOut__FirstTrack==147508,cdaudioDataOut__FirstTrack==147512,cdaudioDataOut__FirstTrack==149504,cdaudioDataOut__FirstTrack==149512,cdaudioDataOut__FirstTrack==17,cdaudioDataOut__FirstTrack==2,cdaudioDataOut__FirstTrack==22,cdaudioDataOut__FirstTrack==255,cdaudioDataOut__FirstTrack==259,cdaudioDataOut__FirstTrack==3,cdaudioDataOut__FirstTrack==4,cdaudioDataOut__FirstTrack==7,cdaudioDataOut__FirstTrack==71} @*/ cdaudioDataOut__FirstTrack = __VERIFIER_nondet_int();
  int /*@  predicates{cdaudioDataOut__LastTrack!=(-1),cdaudioDataOut__LastTrack!=(-1073741637),cdaudioDataOut__LastTrack!=(-1073741670),cdaudioDataOut__LastTrack!=(-1073741764),cdaudioDataOut__LastTrack!=(-1073741789),cdaudioDataOut__LastTrack!=(-1073741802),cdaudioDataOut__LastTrack!=(-1073741803),cdaudioDataOut__LastTrack!=(-1073741808),cdaudioDataOut__LastTrack!=(-1073741820),cdaudioDataOut__LastTrack!=(-1073741823),cdaudioDataOut__LastTrack!=(-2147483626),cdaudioDataOut__LastTrack!=(-2147483631),cdaudioDataOut__LastTrack!=0,cdaudioDataOut__LastTrack!=1,cdaudioDataOut__LastTrack!=147456,cdaudioDataOut__LastTrack!=147460,cdaudioDataOut__LastTrack!=147464,cdaudioDataOut__LastTrack!=147468,cdaudioDataOut__LastTrack!=147472,cdaudioDataOut__LastTrack!=147476,cdaudioDataOut__LastTrack!=147480,cdaudioDataOut__LastTrack!=147496,cdaudioDataOut__LastTrack!=147500,cdaudioDataOut__LastTrack!=147508,cdaudioDataOut__LastTrack!=147512,cdaudioDataOut__LastTrack!=149504,cdaudioDataOut__LastTrack!=149512,cdaudioDataOut__LastTrack!=17,cdaudioDataOut__LastTrack!=2,cdaudioDataOut__LastTrack!=22,cdaudioDataOut__LastTrack!=255,cdaudioDataOut__LastTrack!=259,cdaudioDataOut__LastTrack!=3,cdaudioDataOut__LastTrack!=4,cdaudioDataOut__LastTrack!=7,cdaudioDataOut__LastTrack!=71,cdaudioDataOut__LastTrack==(-1),cdaudioDataOut__LastTrack==(-1073741637),cdaudioDataOut__LastTrack==(-1073741670),cdaudioDataOut__LastTrack==(-1073741764),cdaudioDataOut__LastTrack==(-1073741789),cdaudioDataOut__LastTrack==(-1073741802),cdaudioDataOut__LastTrack==(-1073741803),cdaudioDataOut__LastTrack==(-1073741808),cdaudioDataOut__LastTrack==(-1073741820),cdaudioDataOut__LastTrack==(-1073741823),cdaudioDataOut__LastTrack==(-2147483626),cdaudioDataOut__LastTrack==(-2147483631),cdaudioDataOut__LastTrack==0,cdaudioDataOut__LastTrack==1,cdaudioDataOut__LastTrack==147456,cdaudioDataOut__LastTrack==147460,cdaudioDataOut__LastTrack==147464,cdaudioDataOut__LastTrack==147468,cdaudioDataOut__LastTrack==147472,cdaudioDataOut__LastTrack==147476,cdaudioDataOut__LastTrack==147480,cdaudioDataOut__LastTrack==147496,cdaudioDataOut__LastTrack==147500,cdaudioDataOut__LastTrack==147508,cdaudioDataOut__LastTrack==147512,cdaudioDataOut__LastTrack==149504,cdaudioDataOut__LastTrack==149512,cdaudioDataOut__LastTrack==17,cdaudioDataOut__LastTrack==2,cdaudioDataOut__LastTrack==22,cdaudioDataOut__LastTrack==255,cdaudioDataOut__LastTrack==259,cdaudioDataOut__LastTrack==3,cdaudioDataOut__LastTrack==4,cdaudioDataOut__LastTrack==7,cdaudioDataOut__LastTrack==71} @*/ cdaudioDataOut__LastTrack = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__CDROM_TOC!=(-1),sizeof__CDROM_TOC!=(-1073741637),sizeof__CDROM_TOC!=(-1073741670),sizeof__CDROM_TOC!=(-1073741764),sizeof__CDROM_TOC!=(-1073741789),sizeof__CDROM_TOC!=(-1073741802),sizeof__CDROM_TOC!=(-1073741803),sizeof__CDROM_TOC!=(-1073741808),sizeof__CDROM_TOC!=(-1073741820),sizeof__CDROM_TOC!=(-1073741823),sizeof__CDROM_TOC!=(-2147483626),sizeof__CDROM_TOC!=(-2147483631),sizeof__CDROM_TOC!=0,sizeof__CDROM_TOC!=1,sizeof__CDROM_TOC!=147456,sizeof__CDROM_TOC!=147460,sizeof__CDROM_TOC!=147464,sizeof__CDROM_TOC!=147468,sizeof__CDROM_TOC!=147472,sizeof__CDROM_TOC!=147476,sizeof__CDROM_TOC!=147480,sizeof__CDROM_TOC!=147496,sizeof__CDROM_TOC!=147500,sizeof__CDROM_TOC!=147508,sizeof__CDROM_TOC!=147512,sizeof__CDROM_TOC!=149504,sizeof__CDROM_TOC!=149512,sizeof__CDROM_TOC!=17,sizeof__CDROM_TOC!=2,sizeof__CDROM_TOC!=22,sizeof__CDROM_TOC!=255,sizeof__CDROM_TOC!=259,sizeof__CDROM_TOC!=3,sizeof__CDROM_TOC!=4,sizeof__CDROM_TOC!=7,sizeof__CDROM_TOC!=71,sizeof__CDROM_TOC==(-1),sizeof__CDROM_TOC==(-1073741637),sizeof__CDROM_TOC==(-1073741670),sizeof__CDROM_TOC==(-1073741764),sizeof__CDROM_TOC==(-1073741789),sizeof__CDROM_TOC==(-1073741802),sizeof__CDROM_TOC==(-1073741803),sizeof__CDROM_TOC==(-1073741808),sizeof__CDROM_TOC==(-1073741820),sizeof__CDROM_TOC==(-1073741823),sizeof__CDROM_TOC==(-2147483626),sizeof__CDROM_TOC==(-2147483631),sizeof__CDROM_TOC==0,sizeof__CDROM_TOC==1,sizeof__CDROM_TOC==147456,sizeof__CDROM_TOC==147460,sizeof__CDROM_TOC==147464,sizeof__CDROM_TOC==147468,sizeof__CDROM_TOC==147472,sizeof__CDROM_TOC==147476,sizeof__CDROM_TOC==147480,sizeof__CDROM_TOC==147496,sizeof__CDROM_TOC==147500,sizeof__CDROM_TOC==147508,sizeof__CDROM_TOC==147512,sizeof__CDROM_TOC==149504,sizeof__CDROM_TOC==149512,sizeof__CDROM_TOC==17,sizeof__CDROM_TOC==2,sizeof__CDROM_TOC==22,sizeof__CDROM_TOC==255,sizeof__CDROM_TOC==259,sizeof__CDROM_TOC==3,sizeof__CDROM_TOC==4,sizeof__CDROM_TOC==7,sizeof__CDROM_TOC==71} @*/ sizeof__CDROM_TOC = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__SUB_Q_CURRENT_POSITION!=(-1),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741637),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741670),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741764),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741789),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741802),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741803),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741808),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741820),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741823),sizeof__SUB_Q_CURRENT_POSITION!=(-2147483626),sizeof__SUB_Q_CURRENT_POSITION!=(-2147483631),sizeof__SUB_Q_CURRENT_POSITION!=0,sizeof__SUB_Q_CURRENT_POSITION!=1,sizeof__SUB_Q_CURRENT_POSITION!=147456,sizeof__SUB_Q_CURRENT_POSITION!=147460,sizeof__SUB_Q_CURRENT_POSITION!=147464,sizeof__SUB_Q_CURRENT_POSITION!=147468,sizeof__SUB_Q_CURRENT_POSITION!=147472,sizeof__SUB_Q_CURRENT_POSITION!=147476,sizeof__SUB_Q_CURRENT_POSITION!=147480,sizeof__SUB_Q_CURRENT_POSITION!=147496,sizeof__SUB_Q_CURRENT_POSITION!=147500,sizeof__SUB_Q_CURRENT_POSITION!=147508,sizeof__SUB_Q_CURRENT_POSITION!=147512,sizeof__SUB_Q_CURRENT_POSITION!=149504,sizeof__SUB_Q_CURRENT_POSITION!=149512,sizeof__SUB_Q_CURRENT_POSITION!=17,sizeof__SUB_Q_CURRENT_POSITION!=2,sizeof__SUB_Q_CURRENT_POSITION!=22,sizeof__SUB_Q_CURRENT_POSITION!=255,sizeof__SUB_Q_CURRENT_POSITION!=259,sizeof__SUB_Q_CURRENT_POSITION!=3,sizeof__SUB_Q_CURRENT_POSITION!=4,sizeof__SUB_Q_CURRENT_POSITION!=7,sizeof__SUB_Q_CURRENT_POSITION!=71,sizeof__SUB_Q_CURRENT_POSITION==(-1),sizeof__SUB_Q_CURRENT_POSITION==(-1073741637),sizeof__SUB_Q_CURRENT_POSITION==(-1073741670),sizeof__SUB_Q_CURRENT_POSITION==(-1073741764),sizeof__SUB_Q_CURRENT_POSITION==(-1073741789),sizeof__SUB_Q_CURRENT_POSITION==(-1073741802),sizeof__SUB_Q_CURRENT_POSITION==(-1073741803),sizeof__SUB_Q_CURRENT_POSITION==(-1073741808),sizeof__SUB_Q_CURRENT_POSITION==(-1073741820),sizeof__SUB_Q_CURRENT_POSITION==(-1073741823),sizeof__SUB_Q_CURRENT_POSITION==(-2147483626),sizeof__SUB_Q_CURRENT_POSITION==(-2147483631),sizeof__SUB_Q_CURRENT_POSITION==0,sizeof__SUB_Q_CURRENT_POSITION==1,sizeof__SUB_Q_CURRENT_POSITION==147456,sizeof__SUB_Q_CURRENT_POSITION==147460,sizeof__SUB_Q_CURRENT_POSITION==147464,sizeof__SUB_Q_CURRENT_POSITION==147468,sizeof__SUB_Q_CURRENT_POSITION==147472,sizeof__SUB_Q_CURRENT_POSITION==147476,sizeof__SUB_Q_CURRENT_POSITION==147480,sizeof__SUB_Q_CURRENT_POSITION==147496,sizeof__SUB_Q_CURRENT_POSITION==147500,sizeof__SUB_Q_CURRENT_POSITION==147508,sizeof__SUB_Q_CURRENT_POSITION==147512,sizeof__SUB_Q_CURRENT_POSITION==149504,sizeof__SUB_Q_CURRENT_POSITION==149512,sizeof__SUB_Q_CURRENT_POSITION==17,sizeof__SUB_Q_CURRENT_POSITION==2,sizeof__SUB_Q_CURRENT_POSITION==22,sizeof__SUB_Q_CURRENT_POSITION==255,sizeof__SUB_Q_CURRENT_POSITION==259,sizeof__SUB_Q_CURRENT_POSITION==3,sizeof__SUB_Q_CURRENT_POSITION==4,sizeof__SUB_Q_CURRENT_POSITION==7,sizeof__SUB_Q_CURRENT_POSITION==71,sizeof__SUB_Q_CURRENT_POSITION==Irp__IoStatus__Information,sizeof__SUB_Q_CURRENT_POSITION>currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength} @*/ sizeof__SUB_Q_CURRENT_POSITION = __VERIFIER_nondet_int();
  int /*@  predicates{userPtr__Format!=(-1),userPtr__Format!=(-1073741637),userPtr__Format!=(-1073741670),userPtr__Format!=(-1073741764),userPtr__Format!=(-1073741789),userPtr__Format!=(-1073741802),userPtr__Format!=(-1073741803),userPtr__Format!=(-1073741808),userPtr__Format!=(-1073741820),userPtr__Format!=(-1073741823),userPtr__Format!=(-2147483626),userPtr__Format!=(-2147483631),userPtr__Format!=0,userPtr__Format!=1,userPtr__Format!=147456,userPtr__Format!=147460,userPtr__Format!=147464,userPtr__Format!=147468,userPtr__Format!=147472,userPtr__Format!=147476,userPtr__Format!=147480,userPtr__Format!=147496,userPtr__Format!=147500,userPtr__Format!=147508,userPtr__Format!=147512,userPtr__Format!=149504,userPtr__Format!=149512,userPtr__Format!=17,userPtr__Format!=2,userPtr__Format!=22,userPtr__Format!=255,userPtr__Format!=259,userPtr__Format!=3,userPtr__Format!=4,userPtr__Format!=7,userPtr__Format!=71,userPtr__Format==(-1),userPtr__Format==(-1073741637),userPtr__Format==(-1073741670),userPtr__Format==(-1073741764),userPtr__Format==(-1073741789),userPtr__Format==(-1073741802),userPtr__Format==(-1073741803),userPtr__Format==(-1073741808),userPtr__Format==(-1073741820),userPtr__Format==(-1073741823),userPtr__Format==(-2147483626),userPtr__Format==(-2147483631),userPtr__Format==0,userPtr__Format==1,userPtr__Format==147456,userPtr__Format==147460,userPtr__Format==147464,userPtr__Format==147468,userPtr__Format==147472,userPtr__Format==147476,userPtr__Format==147480,userPtr__Format==147496,userPtr__Format==147500,userPtr__Format==147508,userPtr__Format==147512,userPtr__Format==149504,userPtr__Format==149512,userPtr__Format==17,userPtr__Format==2,userPtr__Format==22,userPtr__Format==255,userPtr__Format==259,userPtr__Format==3,userPtr__Format==4,userPtr__Format==7,userPtr__Format==71} @*/ userPtr__Format = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__CDROM_PLAY_AUDIO_MSF!=(-1),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741637),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741670),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741764),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741789),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741802),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741803),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741808),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741820),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741823),sizeof__CDROM_PLAY_AUDIO_MSF!=(-2147483626),sizeof__CDROM_PLAY_AUDIO_MSF!=(-2147483631),sizeof__CDROM_PLAY_AUDIO_MSF!=0,sizeof__CDROM_PLAY_AUDIO_MSF!=1,sizeof__CDROM_PLAY_AUDIO_MSF!=147456,sizeof__CDROM_PLAY_AUDIO_MSF!=147460,sizeof__CDROM_PLAY_AUDIO_MSF!=147464,sizeof__CDROM_PLAY_AUDIO_MSF!=147468,sizeof__CDROM_PLAY_AUDIO_MSF!=147472,sizeof__CDROM_PLAY_AUDIO_MSF!=147476,sizeof__CDROM_PLAY_AUDIO_MSF!=147480,sizeof__CDROM_PLAY_AUDIO_MSF!=147496,sizeof__CDROM_PLAY_AUDIO_MSF!=147500,sizeof__CDROM_PLAY_AUDIO_MSF!=147508,sizeof__CDROM_PLAY_AUDIO_MSF!=147512,sizeof__CDROM_PLAY_AUDIO_MSF!=149504,sizeof__CDROM_PLAY_AUDIO_MSF!=149512,sizeof__CDROM_PLAY_AUDIO_MSF!=17,sizeof__CDROM_PLAY_AUDIO_MSF!=2,sizeof__CDROM_PLAY_AUDIO_MSF!=22,sizeof__CDROM_PLAY_AUDIO_MSF!=255,sizeof__CDROM_PLAY_AUDIO_MSF!=259,sizeof__CDROM_PLAY_AUDIO_MSF!=3,sizeof__CDROM_PLAY_AUDIO_MSF!=4,sizeof__CDROM_PLAY_AUDIO_MSF!=7,sizeof__CDROM_PLAY_AUDIO_MSF!=71,sizeof__CDROM_PLAY_AUDIO_MSF==(-1),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741637),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741670),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741764),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741789),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741802),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741803),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741808),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741820),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741823),sizeof__CDROM_PLAY_AUDIO_MSF==(-2147483626),sizeof__CDROM_PLAY_AUDIO_MSF==(-2147483631),sizeof__CDROM_PLAY_AUDIO_MSF==0,sizeof__CDROM_PLAY_AUDIO_MSF==1,sizeof__CDROM_PLAY_AUDIO_MSF==147456,sizeof__CDROM_PLAY_AUDIO_MSF==147460,sizeof__CDROM_PLAY_AUDIO_MSF==147464,sizeof__CDROM_PLAY_AUDIO_MSF==147468,sizeof__CDROM_PLAY_AUDIO_MSF==147472,sizeof__CDROM_PLAY_AUDIO_MSF==147476,sizeof__CDROM_PLAY_AUDIO_MSF==147480,sizeof__CDROM_PLAY_AUDIO_MSF==147496,sizeof__CDROM_PLAY_AUDIO_MSF==147500,sizeof__CDROM_PLAY_AUDIO_MSF==147508,sizeof__CDROM_PLAY_AUDIO_MSF==147512,sizeof__CDROM_PLAY_AUDIO_MSF==149504,sizeof__CDROM_PLAY_AUDIO_MSF==149512,sizeof__CDROM_PLAY_AUDIO_MSF==17,sizeof__CDROM_PLAY_AUDIO_MSF==2,sizeof__CDROM_PLAY_AUDIO_MSF==22,sizeof__CDROM_PLAY_AUDIO_MSF==255,sizeof__CDROM_PLAY_AUDIO_MSF==259,sizeof__CDROM_PLAY_AUDIO_MSF==3,sizeof__CDROM_PLAY_AUDIO_MSF==4,sizeof__CDROM_PLAY_AUDIO_MSF==7,sizeof__CDROM_PLAY_AUDIO_MSF==71,sizeof__CDROM_PLAY_AUDIO_MSF>currentIrpStack__Parameters__DeviceIoControl__InputBufferLength} @*/ sizeof__CDROM_PLAY_AUDIO_MSF = __VERIFIER_nondet_int();
  int /*@  predicates{inputBuffer__StartingM!=(-1),inputBuffer__StartingM!=(-1073741637),inputBuffer__StartingM!=(-1073741670),inputBuffer__StartingM!=(-1073741764),inputBuffer__StartingM!=(-1073741789),inputBuffer__StartingM!=(-1073741802),inputBuffer__StartingM!=(-1073741803),inputBuffer__StartingM!=(-1073741808),inputBuffer__StartingM!=(-1073741820),inputBuffer__StartingM!=(-1073741823),inputBuffer__StartingM!=(-2147483626),inputBuffer__StartingM!=(-2147483631),inputBuffer__StartingM!=0,inputBuffer__StartingM!=1,inputBuffer__StartingM!=147456,inputBuffer__StartingM!=147460,inputBuffer__StartingM!=147464,inputBuffer__StartingM!=147468,inputBuffer__StartingM!=147472,inputBuffer__StartingM!=147476,inputBuffer__StartingM!=147480,inputBuffer__StartingM!=147496,inputBuffer__StartingM!=147500,inputBuffer__StartingM!=147508,inputBuffer__StartingM!=147512,inputBuffer__StartingM!=149504,inputBuffer__StartingM!=149512,inputBuffer__StartingM!=17,inputBuffer__StartingM!=2,inputBuffer__StartingM!=22,inputBuffer__StartingM!=255,inputBuffer__StartingM!=259,inputBuffer__StartingM!=3,inputBuffer__StartingM!=4,inputBuffer__StartingM!=7,inputBuffer__StartingM!=71,inputBuffer__StartingM==(-1),inputBuffer__StartingM==(-1073741637),inputBuffer__StartingM==(-1073741670),inputBuffer__StartingM==(-1073741764),inputBuffer__StartingM==(-1073741789),inputBuffer__StartingM==(-1073741802),inputBuffer__StartingM==(-1073741803),inputBuffer__StartingM==(-1073741808),inputBuffer__StartingM==(-1073741820),inputBuffer__StartingM==(-1073741823),inputBuffer__StartingM==(-2147483626),inputBuffer__StartingM==(-2147483631),inputBuffer__StartingM==0,inputBuffer__StartingM==1,inputBuffer__StartingM==147456,inputBuffer__StartingM==147460,inputBuffer__StartingM==147464,inputBuffer__StartingM==147468,inputBuffer__StartingM==147472,inputBuffer__StartingM==147476,inputBuffer__StartingM==147480,inputBuffer__StartingM==147496,inputBuffer__StartingM==147500,inputBuffer__StartingM==147508,inputBuffer__StartingM==147512,inputBuffer__StartingM==149504,inputBuffer__StartingM==149512,inputBuffer__StartingM==17,inputBuffer__StartingM==2,inputBuffer__StartingM==22,inputBuffer__StartingM==255,inputBuffer__StartingM==259,inputBuffer__StartingM==3,inputBuffer__StartingM==4,inputBuffer__StartingM==7,inputBuffer__StartingM==71} @*/ inputBuffer__StartingM = __VERIFIER_nondet_int();
  int /*@  predicates{inputBuffer__EndingM!=(-1),inputBuffer__EndingM!=(-1073741637),inputBuffer__EndingM!=(-1073741670),inputBuffer__EndingM!=(-1073741764),inputBuffer__EndingM!=(-1073741789),inputBuffer__EndingM!=(-1073741802),inputBuffer__EndingM!=(-1073741803),inputBuffer__EndingM!=(-1073741808),inputBuffer__EndingM!=(-1073741820),inputBuffer__EndingM!=(-1073741823),inputBuffer__EndingM!=(-2147483626),inputBuffer__EndingM!=(-2147483631),inputBuffer__EndingM!=0,inputBuffer__EndingM!=1,inputBuffer__EndingM!=147456,inputBuffer__EndingM!=147460,inputBuffer__EndingM!=147464,inputBuffer__EndingM!=147468,inputBuffer__EndingM!=147472,inputBuffer__EndingM!=147476,inputBuffer__EndingM!=147480,inputBuffer__EndingM!=147496,inputBuffer__EndingM!=147500,inputBuffer__EndingM!=147508,inputBuffer__EndingM!=147512,inputBuffer__EndingM!=149504,inputBuffer__EndingM!=149512,inputBuffer__EndingM!=17,inputBuffer__EndingM!=2,inputBuffer__EndingM!=22,inputBuffer__EndingM!=255,inputBuffer__EndingM!=259,inputBuffer__EndingM!=3,inputBuffer__EndingM!=4,inputBuffer__EndingM!=7,inputBuffer__EndingM!=71,inputBuffer__EndingM!=inputBuffer__StartingM,inputBuffer__EndingM==(-1),inputBuffer__EndingM==(-1073741637),inputBuffer__EndingM==(-1073741670),inputBuffer__EndingM==(-1073741764),inputBuffer__EndingM==(-1073741789),inputBuffer__EndingM==(-1073741802),inputBuffer__EndingM==(-1073741803),inputBuffer__EndingM==(-1073741808),inputBuffer__EndingM==(-1073741820),inputBuffer__EndingM==(-1073741823),inputBuffer__EndingM==(-2147483626),inputBuffer__EndingM==(-2147483631),inputBuffer__EndingM==0,inputBuffer__EndingM==1,inputBuffer__EndingM==147456,inputBuffer__EndingM==147460,inputBuffer__EndingM==147464,inputBuffer__EndingM==147468,inputBuffer__EndingM==147472,inputBuffer__EndingM==147476,inputBuffer__EndingM==147480,inputBuffer__EndingM==147496,inputBuffer__EndingM==147500,inputBuffer__EndingM==147508,inputBuffer__EndingM==147512,inputBuffer__EndingM==149504,inputBuffer__EndingM==149512,inputBuffer__EndingM==17,inputBuffer__EndingM==2,inputBuffer__EndingM==22,inputBuffer__EndingM==255,inputBuffer__EndingM==259,inputBuffer__EndingM==3,inputBuffer__EndingM==4,inputBuffer__EndingM==7,inputBuffer__EndingM==71,inputBuffer__EndingM==inputBuffer__StartingM} @*/ inputBuffer__EndingM = __VERIFIER_nondet_int();
  int /*@  predicates{inputBuffer__StartingS!=(-1),inputBuffer__StartingS!=(-1073741637),inputBuffer__StartingS!=(-1073741670),inputBuffer__StartingS!=(-1073741764),inputBuffer__StartingS!=(-1073741789),inputBuffer__StartingS!=(-1073741802),inputBuffer__StartingS!=(-1073741803),inputBuffer__StartingS!=(-1073741808),inputBuffer__StartingS!=(-1073741820),inputBuffer__StartingS!=(-1073741823),inputBuffer__StartingS!=(-2147483626),inputBuffer__StartingS!=(-2147483631),inputBuffer__StartingS!=0,inputBuffer__StartingS!=1,inputBuffer__StartingS!=147456,inputBuffer__StartingS!=147460,inputBuffer__StartingS!=147464,inputBuffer__StartingS!=147468,inputBuffer__StartingS!=147472,inputBuffer__StartingS!=147476,inputBuffer__StartingS!=147480,inputBuffer__StartingS!=147496,inputBuffer__StartingS!=147500,inputBuffer__StartingS!=147508,inputBuffer__StartingS!=147512,inputBuffer__StartingS!=149504,inputBuffer__StartingS!=149512,inputBuffer__StartingS!=17,inputBuffer__StartingS!=2,inputBuffer__StartingS!=22,inputBuffer__StartingS!=255,inputBuffer__StartingS!=259,inputBuffer__StartingS!=3,inputBuffer__StartingS!=4,inputBuffer__StartingS!=7,inputBuffer__StartingS!=71,inputBuffer__StartingS==(-1),inputBuffer__StartingS==(-1073741637),inputBuffer__StartingS==(-1073741670),inputBuffer__StartingS==(-1073741764),inputBuffer__StartingS==(-1073741789),inputBuffer__StartingS==(-1073741802),inputBuffer__StartingS==(-1073741803),inputBuffer__StartingS==(-1073741808),inputBuffer__StartingS==(-1073741820),inputBuffer__StartingS==(-1073741823),inputBuffer__StartingS==(-2147483626),inputBuffer__StartingS==(-2147483631),inputBuffer__StartingS==0,inputBuffer__StartingS==1,inputBuffer__StartingS==147456,inputBuffer__StartingS==147460,inputBuffer__StartingS==147464,inputBuffer__StartingS==147468,inputBuffer__StartingS==147472,inputBuffer__StartingS==147476,inputBuffer__StartingS==147480,inputBuffer__StartingS==147496,inputBuffer__StartingS==147500,inputBuffer__StartingS==147508,inputBuffer__StartingS==147512,inputBuffer__StartingS==149504,inputBuffer__StartingS==149512,inputBuffer__StartingS==17,inputBuffer__StartingS==2,inputBuffer__StartingS==22,inputBuffer__StartingS==255,inputBuffer__StartingS==259,inputBuffer__StartingS==3,inputBuffer__StartingS==4,inputBuffer__StartingS==7,inputBuffer__StartingS==71} @*/ inputBuffer__StartingS = __VERIFIER_nondet_int();
  int /*@  predicates{inputBuffer__EndingS!=(-1),inputBuffer__EndingS!=(-1073741637),inputBuffer__EndingS!=(-1073741670),inputBuffer__EndingS!=(-1073741764),inputBuffer__EndingS!=(-1073741789),inputBuffer__EndingS!=(-1073741802),inputBuffer__EndingS!=(-1073741803),inputBuffer__EndingS!=(-1073741808),inputBuffer__EndingS!=(-1073741820),inputBuffer__EndingS!=(-1073741823),inputBuffer__EndingS!=(-2147483626),inputBuffer__EndingS!=(-2147483631),inputBuffer__EndingS!=0,inputBuffer__EndingS!=1,inputBuffer__EndingS!=147456,inputBuffer__EndingS!=147460,inputBuffer__EndingS!=147464,inputBuffer__EndingS!=147468,inputBuffer__EndingS!=147472,inputBuffer__EndingS!=147476,inputBuffer__EndingS!=147480,inputBuffer__EndingS!=147496,inputBuffer__EndingS!=147500,inputBuffer__EndingS!=147508,inputBuffer__EndingS!=147512,inputBuffer__EndingS!=149504,inputBuffer__EndingS!=149512,inputBuffer__EndingS!=17,inputBuffer__EndingS!=2,inputBuffer__EndingS!=22,inputBuffer__EndingS!=255,inputBuffer__EndingS!=259,inputBuffer__EndingS!=3,inputBuffer__EndingS!=4,inputBuffer__EndingS!=7,inputBuffer__EndingS!=71,inputBuffer__EndingS!=inputBuffer__StartingS,inputBuffer__EndingS==(-1),inputBuffer__EndingS==(-1073741637),inputBuffer__EndingS==(-1073741670),inputBuffer__EndingS==(-1073741764),inputBuffer__EndingS==(-1073741789),inputBuffer__EndingS==(-1073741802),inputBuffer__EndingS==(-1073741803),inputBuffer__EndingS==(-1073741808),inputBuffer__EndingS==(-1073741820),inputBuffer__EndingS==(-1073741823),inputBuffer__EndingS==(-2147483626),inputBuffer__EndingS==(-2147483631),inputBuffer__EndingS==0,inputBuffer__EndingS==1,inputBuffer__EndingS==147456,inputBuffer__EndingS==147460,inputBuffer__EndingS==147464,inputBuffer__EndingS==147468,inputBuffer__EndingS==147472,inputBuffer__EndingS==147476,inputBuffer__EndingS==147480,inputBuffer__EndingS==147496,inputBuffer__EndingS==147500,inputBuffer__EndingS==147508,inputBuffer__EndingS==147512,inputBuffer__EndingS==149504,inputBuffer__EndingS==149512,inputBuffer__EndingS==17,inputBuffer__EndingS==2,inputBuffer__EndingS==22,inputBuffer__EndingS==255,inputBuffer__EndingS==259,inputBuffer__EndingS==3,inputBuffer__EndingS==4,inputBuffer__EndingS==7,inputBuffer__EndingS==71,inputBuffer__EndingS==inputBuffer__StartingS} @*/ inputBuffer__EndingS = __VERIFIER_nondet_int();
  int /*@  predicates{inputBuffer__StartingF!=(-1),inputBuffer__StartingF!=(-1073741637),inputBuffer__StartingF!=(-1073741670),inputBuffer__StartingF!=(-1073741764),inputBuffer__StartingF!=(-1073741789),inputBuffer__StartingF!=(-1073741802),inputBuffer__StartingF!=(-1073741803),inputBuffer__StartingF!=(-1073741808),inputBuffer__StartingF!=(-1073741820),inputBuffer__StartingF!=(-1073741823),inputBuffer__StartingF!=(-2147483626),inputBuffer__StartingF!=(-2147483631),inputBuffer__StartingF!=0,inputBuffer__StartingF!=1,inputBuffer__StartingF!=147456,inputBuffer__StartingF!=147460,inputBuffer__StartingF!=147464,inputBuffer__StartingF!=147468,inputBuffer__StartingF!=147472,inputBuffer__StartingF!=147476,inputBuffer__StartingF!=147480,inputBuffer__StartingF!=147496,inputBuffer__StartingF!=147500,inputBuffer__StartingF!=147508,inputBuffer__StartingF!=147512,inputBuffer__StartingF!=149504,inputBuffer__StartingF!=149512,inputBuffer__StartingF!=17,inputBuffer__StartingF!=2,inputBuffer__StartingF!=22,inputBuffer__StartingF!=255,inputBuffer__StartingF!=259,inputBuffer__StartingF!=3,inputBuffer__StartingF!=4,inputBuffer__StartingF!=7,inputBuffer__StartingF!=71,inputBuffer__StartingF==(-1),inputBuffer__StartingF==(-1073741637),inputBuffer__StartingF==(-1073741670),inputBuffer__StartingF==(-1073741764),inputBuffer__StartingF==(-1073741789),inputBuffer__StartingF==(-1073741802),inputBuffer__StartingF==(-1073741803),inputBuffer__StartingF==(-1073741808),inputBuffer__StartingF==(-1073741820),inputBuffer__StartingF==(-1073741823),inputBuffer__StartingF==(-2147483626),inputBuffer__StartingF==(-2147483631),inputBuffer__StartingF==0,inputBuffer__StartingF==1,inputBuffer__StartingF==147456,inputBuffer__StartingF==147460,inputBuffer__StartingF==147464,inputBuffer__StartingF==147468,inputBuffer__StartingF==147472,inputBuffer__StartingF==147476,inputBuffer__StartingF==147480,inputBuffer__StartingF==147496,inputBuffer__StartingF==147500,inputBuffer__StartingF==147508,inputBuffer__StartingF==147512,inputBuffer__StartingF==149504,inputBuffer__StartingF==149512,inputBuffer__StartingF==17,inputBuffer__StartingF==2,inputBuffer__StartingF==22,inputBuffer__StartingF==255,inputBuffer__StartingF==259,inputBuffer__StartingF==3,inputBuffer__StartingF==4,inputBuffer__StartingF==7,inputBuffer__StartingF==71} @*/ inputBuffer__StartingF = __VERIFIER_nondet_int();
  int /*@  predicates{inputBuffer__EndingF!=(-1),inputBuffer__EndingF!=(-1073741637),inputBuffer__EndingF!=(-1073741670),inputBuffer__EndingF!=(-1073741764),inputBuffer__EndingF!=(-1073741789),inputBuffer__EndingF!=(-1073741802),inputBuffer__EndingF!=(-1073741803),inputBuffer__EndingF!=(-1073741808),inputBuffer__EndingF!=(-1073741820),inputBuffer__EndingF!=(-1073741823),inputBuffer__EndingF!=(-2147483626),inputBuffer__EndingF!=(-2147483631),inputBuffer__EndingF!=0,inputBuffer__EndingF!=1,inputBuffer__EndingF!=147456,inputBuffer__EndingF!=147460,inputBuffer__EndingF!=147464,inputBuffer__EndingF!=147468,inputBuffer__EndingF!=147472,inputBuffer__EndingF!=147476,inputBuffer__EndingF!=147480,inputBuffer__EndingF!=147496,inputBuffer__EndingF!=147500,inputBuffer__EndingF!=147508,inputBuffer__EndingF!=147512,inputBuffer__EndingF!=149504,inputBuffer__EndingF!=149512,inputBuffer__EndingF!=17,inputBuffer__EndingF!=2,inputBuffer__EndingF!=22,inputBuffer__EndingF!=255,inputBuffer__EndingF!=259,inputBuffer__EndingF!=3,inputBuffer__EndingF!=4,inputBuffer__EndingF!=7,inputBuffer__EndingF!=71,inputBuffer__EndingF!=inputBuffer__StartingF,inputBuffer__EndingF==(-1),inputBuffer__EndingF==(-1073741637),inputBuffer__EndingF==(-1073741670),inputBuffer__EndingF==(-1073741764),inputBuffer__EndingF==(-1073741789),inputBuffer__EndingF==(-1073741802),inputBuffer__EndingF==(-1073741803),inputBuffer__EndingF==(-1073741808),inputBuffer__EndingF==(-1073741820),inputBuffer__EndingF==(-1073741823),inputBuffer__EndingF==(-2147483626),inputBuffer__EndingF==(-2147483631),inputBuffer__EndingF==0,inputBuffer__EndingF==1,inputBuffer__EndingF==147456,inputBuffer__EndingF==147460,inputBuffer__EndingF==147464,inputBuffer__EndingF==147468,inputBuffer__EndingF==147472,inputBuffer__EndingF==147476,inputBuffer__EndingF==147480,inputBuffer__EndingF==147496,inputBuffer__EndingF==147500,inputBuffer__EndingF==147508,inputBuffer__EndingF==147512,inputBuffer__EndingF==149504,inputBuffer__EndingF==149512,inputBuffer__EndingF==17,inputBuffer__EndingF==2,inputBuffer__EndingF==22,inputBuffer__EndingF==255,inputBuffer__EndingF==259,inputBuffer__EndingF==3,inputBuffer__EndingF==4,inputBuffer__EndingF==7,inputBuffer__EndingF==71,inputBuffer__EndingF==inputBuffer__StartingF} @*/ inputBuffer__EndingF = __VERIFIER_nondet_int();
  int /*@  predicates{cdb__PLAY_AUDIO_MSF__OperationCode!=(-1),cdb__PLAY_AUDIO_MSF__OperationCode!=(-1073741637),cdb__PLAY_AUDIO_MSF__OperationCode!=(-1073741670),cdb__PLAY_AUDIO_MSF__OperationCode!=(-1073741764),cdb__PLAY_AUDIO_MSF__OperationCode!=(-1073741789),cdb__PLAY_AUDIO_MSF__OperationCode!=(-1073741802),cdb__PLAY_AUDIO_MSF__OperationCode!=(-1073741803),cdb__PLAY_AUDIO_MSF__OperationCode!=(-1073741808),cdb__PLAY_AUDIO_MSF__OperationCode!=(-1073741820),cdb__PLAY_AUDIO_MSF__OperationCode!=(-1073741823),cdb__PLAY_AUDIO_MSF__OperationCode!=(-2147483626),cdb__PLAY_AUDIO_MSF__OperationCode!=(-2147483631),cdb__PLAY_AUDIO_MSF__OperationCode!=0,cdb__PLAY_AUDIO_MSF__OperationCode!=1,cdb__PLAY_AUDIO_MSF__OperationCode!=147456,cdb__PLAY_AUDIO_MSF__OperationCode!=147460,cdb__PLAY_AUDIO_MSF__OperationCode!=147464,cdb__PLAY_AUDIO_MSF__OperationCode!=147468,cdb__PLAY_AUDIO_MSF__OperationCode!=147472,cdb__PLAY_AUDIO_MSF__OperationCode!=147476,cdb__PLAY_AUDIO_MSF__OperationCode!=147480,cdb__PLAY_AUDIO_MSF__OperationCode!=147496,cdb__PLAY_AUDIO_MSF__OperationCode!=147500,cdb__PLAY_AUDIO_MSF__OperationCode!=147508,cdb__PLAY_AUDIO_MSF__OperationCode!=147512,cdb__PLAY_AUDIO_MSF__OperationCode!=149504,cdb__PLAY_AUDIO_MSF__OperationCode!=149512,cdb__PLAY_AUDIO_MSF__OperationCode!=17,cdb__PLAY_AUDIO_MSF__OperationCode!=2,cdb__PLAY_AUDIO_MSF__OperationCode!=22,cdb__PLAY_AUDIO_MSF__OperationCode!=255,cdb__PLAY_AUDIO_MSF__OperationCode!=259,cdb__PLAY_AUDIO_MSF__OperationCode!=3,cdb__PLAY_AUDIO_MSF__OperationCode!=4,cdb__PLAY_AUDIO_MSF__OperationCode!=7,cdb__PLAY_AUDIO_MSF__OperationCode!=71,cdb__PLAY_AUDIO_MSF__OperationCode==(-1),cdb__PLAY_AUDIO_MSF__OperationCode==(-1073741637),cdb__PLAY_AUDIO_MSF__OperationCode==(-1073741670),cdb__PLAY_AUDIO_MSF__OperationCode==(-1073741764),cdb__PLAY_AUDIO_MSF__OperationCode==(-1073741789),cdb__PLAY_AUDIO_MSF__OperationCode==(-1073741802),cdb__PLAY_AUDIO_MSF__OperationCode==(-1073741803),cdb__PLAY_AUDIO_MSF__OperationCode==(-1073741808),cdb__PLAY_AUDIO_MSF__OperationCode==(-1073741820),cdb__PLAY_AUDIO_MSF__OperationCode==(-1073741823),cdb__PLAY_AUDIO_MSF__OperationCode==(-2147483626),cdb__PLAY_AUDIO_MSF__OperationCode==(-2147483631),cdb__PLAY_AUDIO_MSF__OperationCode==0,cdb__PLAY_AUDIO_MSF__OperationCode==1,cdb__PLAY_AUDIO_MSF__OperationCode==147456,cdb__PLAY_AUDIO_MSF__OperationCode==147460,cdb__PLAY_AUDIO_MSF__OperationCode==147464,cdb__PLAY_AUDIO_MSF__OperationCode==147468,cdb__PLAY_AUDIO_MSF__OperationCode==147472,cdb__PLAY_AUDIO_MSF__OperationCode==147476,cdb__PLAY_AUDIO_MSF__OperationCode==147480,cdb__PLAY_AUDIO_MSF__OperationCode==147496,cdb__PLAY_AUDIO_MSF__OperationCode==147500,cdb__PLAY_AUDIO_MSF__OperationCode==147508,cdb__PLAY_AUDIO_MSF__OperationCode==147512,cdb__PLAY_AUDIO_MSF__OperationCode==149504,cdb__PLAY_AUDIO_MSF__OperationCode==149512,cdb__PLAY_AUDIO_MSF__OperationCode==17,cdb__PLAY_AUDIO_MSF__OperationCode==2,cdb__PLAY_AUDIO_MSF__OperationCode==22,cdb__PLAY_AUDIO_MSF__OperationCode==255,cdb__PLAY_AUDIO_MSF__OperationCode==259,cdb__PLAY_AUDIO_MSF__OperationCode==3,cdb__PLAY_AUDIO_MSF__OperationCode==4,cdb__PLAY_AUDIO_MSF__OperationCode==7,cdb__PLAY_AUDIO_MSF__OperationCode==71} @*/ cdb__PLAY_AUDIO_MSF__OperationCode = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__CDROM_SEEK_AUDIO_MSF!=(-1),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741637),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741670),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741764),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741789),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741802),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741803),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741808),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741820),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741823),sizeof__CDROM_SEEK_AUDIO_MSF!=(-2147483626),sizeof__CDROM_SEEK_AUDIO_MSF!=(-2147483631),sizeof__CDROM_SEEK_AUDIO_MSF!=0,sizeof__CDROM_SEEK_AUDIO_MSF!=1,sizeof__CDROM_SEEK_AUDIO_MSF!=147456,sizeof__CDROM_SEEK_AUDIO_MSF!=147460,sizeof__CDROM_SEEK_AUDIO_MSF!=147464,sizeof__CDROM_SEEK_AUDIO_MSF!=147468,sizeof__CDROM_SEEK_AUDIO_MSF!=147472,sizeof__CDROM_SEEK_AUDIO_MSF!=147476,sizeof__CDROM_SEEK_AUDIO_MSF!=147480,sizeof__CDROM_SEEK_AUDIO_MSF!=147496,sizeof__CDROM_SEEK_AUDIO_MSF!=147500,sizeof__CDROM_SEEK_AUDIO_MSF!=147508,sizeof__CDROM_SEEK_AUDIO_MSF!=147512,sizeof__CDROM_SEEK_AUDIO_MSF!=149504,sizeof__CDROM_SEEK_AUDIO_MSF!=149512,sizeof__CDROM_SEEK_AUDIO_MSF!=17,sizeof__CDROM_SEEK_AUDIO_MSF!=2,sizeof__CDROM_SEEK_AUDIO_MSF!=22,sizeof__CDROM_SEEK_AUDIO_MSF!=255,sizeof__CDROM_SEEK_AUDIO_MSF!=259,sizeof__CDROM_SEEK_AUDIO_MSF!=3,sizeof__CDROM_SEEK_AUDIO_MSF!=4,sizeof__CDROM_SEEK_AUDIO_MSF!=7,sizeof__CDROM_SEEK_AUDIO_MSF!=71,sizeof__CDROM_SEEK_AUDIO_MSF==(-1),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741637),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741670),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741764),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741789),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741802),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741803),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741808),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741820),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741823),sizeof__CDROM_SEEK_AUDIO_MSF==(-2147483626),sizeof__CDROM_SEEK_AUDIO_MSF==(-2147483631),sizeof__CDROM_SEEK_AUDIO_MSF==0,sizeof__CDROM_SEEK_AUDIO_MSF==1,sizeof__CDROM_SEEK_AUDIO_MSF==147456,sizeof__CDROM_SEEK_AUDIO_MSF==147460,sizeof__CDROM_SEEK_AUDIO_MSF==147464,sizeof__CDROM_SEEK_AUDIO_MSF==147468,sizeof__CDROM_SEEK_AUDIO_MSF==147472,sizeof__CDROM_SEEK_AUDIO_MSF==147476,sizeof__CDROM_SEEK_AUDIO_MSF==147480,sizeof__CDROM_SEEK_AUDIO_MSF==147496,sizeof__CDROM_SEEK_AUDIO_MSF==147500,sizeof__CDROM_SEEK_AUDIO_MSF==147508,sizeof__CDROM_SEEK_AUDIO_MSF==147512,sizeof__CDROM_SEEK_AUDIO_MSF==149504,sizeof__CDROM_SEEK_AUDIO_MSF==149512,sizeof__CDROM_SEEK_AUDIO_MSF==17,sizeof__CDROM_SEEK_AUDIO_MSF==2,sizeof__CDROM_SEEK_AUDIO_MSF==22,sizeof__CDROM_SEEK_AUDIO_MSF==255,sizeof__CDROM_SEEK_AUDIO_MSF==259,sizeof__CDROM_SEEK_AUDIO_MSF==3,sizeof__CDROM_SEEK_AUDIO_MSF==4,sizeof__CDROM_SEEK_AUDIO_MSF==7,sizeof__CDROM_SEEK_AUDIO_MSF==71,sizeof__CDROM_SEEK_AUDIO_MSF>currentIrpStack__Parameters__DeviceIoControl__InputBufferLength} @*/ sizeof__CDROM_SEEK_AUDIO_MSF = __VERIFIER_nondet_int();
  int /*@  predicates{currentIrpStack!=(-1),currentIrpStack!=(-1073741637),currentIrpStack!=(-1073741670),currentIrpStack!=(-1073741764),currentIrpStack!=(-1073741789),currentIrpStack!=(-1073741802),currentIrpStack!=(-1073741803),currentIrpStack!=(-1073741808),currentIrpStack!=(-1073741820),currentIrpStack!=(-1073741823),currentIrpStack!=(-2147483626),currentIrpStack!=(-2147483631),currentIrpStack!=0,currentIrpStack!=1,currentIrpStack!=147456,currentIrpStack!=147460,currentIrpStack!=147464,currentIrpStack!=147468,currentIrpStack!=147472,currentIrpStack!=147476,currentIrpStack!=147480,currentIrpStack!=147496,currentIrpStack!=147500,currentIrpStack!=147508,currentIrpStack!=147512,currentIrpStack!=149504,currentIrpStack!=149512,currentIrpStack!=17,currentIrpStack!=2,currentIrpStack!=22,currentIrpStack!=255,currentIrpStack!=259,currentIrpStack!=3,currentIrpStack!=4,currentIrpStack!=7,currentIrpStack!=71,currentIrpStack==(-1),currentIrpStack==(-1073741637),currentIrpStack==(-1073741670),currentIrpStack==(-1073741764),currentIrpStack==(-1073741789),currentIrpStack==(-1073741802),currentIrpStack==(-1073741803),currentIrpStack==(-1073741808),currentIrpStack==(-1073741820),currentIrpStack==(-1073741823),currentIrpStack==(-2147483626),currentIrpStack==(-2147483631),currentIrpStack==0,currentIrpStack==1,currentIrpStack==147456,currentIrpStack==147460,currentIrpStack==147464,currentIrpStack==147468,currentIrpStack==147472,currentIrpStack==147476,currentIrpStack==147480,currentIrpStack==147496,currentIrpStack==147500,currentIrpStack==147508,currentIrpStack==147512,currentIrpStack==149504,currentIrpStack==149512,currentIrpStack==17,currentIrpStack==2,currentIrpStack==22,currentIrpStack==255,currentIrpStack==259,currentIrpStack==3,currentIrpStack==4,currentIrpStack==7,currentIrpStack==71,currentIrpStack==Irp__Tail__Overlay__CurrentStackLocation} @*/ currentIrpStack ;
  int /*@  predicates{deviceExtension!=(-1),deviceExtension!=(-1073741637),deviceExtension!=(-1073741670),deviceExtension!=(-1073741764),deviceExtension!=(-1073741789),deviceExtension!=(-1073741802),deviceExtension!=(-1073741803),deviceExtension!=(-1073741808),deviceExtension!=(-1073741820),deviceExtension!=(-1073741823),deviceExtension!=(-2147483626),deviceExtension!=(-2147483631),deviceExtension!=0,deviceExtension!=1,deviceExtension!=147456,deviceExtension!=147460,deviceExtension!=147464,deviceExtension!=147468,deviceExtension!=147472,deviceExtension!=147476,deviceExtension!=147480,deviceExtension!=147496,deviceExtension!=147500,deviceExtension!=147508,deviceExtension!=147512,deviceExtension!=149504,deviceExtension!=149512,deviceExtension!=17,deviceExtension!=2,deviceExtension!=22,deviceExtension!=255,deviceExtension!=259,deviceExtension!=3,deviceExtension!=4,deviceExtension!=7,deviceExtension!=71,deviceExtension==(-1),deviceExtension==(-1073741637),deviceExtension==(-1073741670),deviceExtension==(-1073741764),deviceExtension==(-1073741789),deviceExtension==(-1073741802),deviceExtension==(-1073741803),deviceExtension==(-1073741808),deviceExtension==(-1073741820),deviceExtension==(-1073741823),deviceExtension==(-2147483626),deviceExtension==(-2147483631),deviceExtension==0,deviceExtension==1,deviceExtension==147456,deviceExtension==147460,deviceExtension==147464,deviceExtension==147468,deviceExtension==147472,deviceExtension==147476,deviceExtension==147480,deviceExtension==147496,deviceExtension==147500,deviceExtension==147508,deviceExtension==147512,deviceExtension==149504,deviceExtension==149512,deviceExtension==17,deviceExtension==2,deviceExtension==22,deviceExtension==255,deviceExtension==259,deviceExtension==3,deviceExtension==4,deviceExtension==7,deviceExtension==71,deviceExtension==DeviceObject__DeviceExtension} @*/ deviceExtension ;
  int /*@  predicates{cdaudioDataOut!=(-1),cdaudioDataOut!=(-1073741637),cdaudioDataOut!=(-1073741670),cdaudioDataOut!=(-1073741764),cdaudioDataOut!=(-1073741789),cdaudioDataOut!=(-1073741802),cdaudioDataOut!=(-1073741803),cdaudioDataOut!=(-1073741808),cdaudioDataOut!=(-1073741820),cdaudioDataOut!=(-1073741823),cdaudioDataOut!=(-2147483626),cdaudioDataOut!=(-2147483631),cdaudioDataOut!=0,cdaudioDataOut!=1,cdaudioDataOut!=147456,cdaudioDataOut!=147460,cdaudioDataOut!=147464,cdaudioDataOut!=147468,cdaudioDataOut!=147472,cdaudioDataOut!=147476,cdaudioDataOut!=147480,cdaudioDataOut!=147496,cdaudioDataOut!=147500,cdaudioDataOut!=147508,cdaudioDataOut!=147512,cdaudioDataOut!=149504,cdaudioDataOut!=149512,cdaudioDataOut!=17,cdaudioDataOut!=2,cdaudioDataOut!=22,cdaudioDataOut!=255,cdaudioDataOut!=259,cdaudioDataOut!=3,cdaudioDataOut!=4,cdaudioDataOut!=7,cdaudioDataOut!=71,cdaudioDataOut==(-1),cdaudioDataOut==(-1073741637),cdaudioDataOut==(-1073741670),cdaudioDataOut==(-1073741764),cdaudioDataOut==(-1073741789),cdaudioDataOut==(-1073741802),cdaudioDataOut==(-1073741803),cdaudioDataOut==(-1073741808),cdaudioDataOut==(-1073741820),cdaudioDataOut==(-1073741823),cdaudioDataOut==(-2147483626),cdaudioDataOut==(-2147483631),cdaudioDataOut==0,cdaudioDataOut==1,cdaudioDataOut==147456,cdaudioDataOut==147460,cdaudioDataOut==147464,cdaudioDataOut==147468,cdaudioDataOut==147472,cdaudioDataOut==147476,cdaudioDataOut==147480,cdaudioDataOut==147496,cdaudioDataOut==147500,cdaudioDataOut==147508,cdaudioDataOut==147512,cdaudioDataOut==149504,cdaudioDataOut==149512,cdaudioDataOut==17,cdaudioDataOut==2,cdaudioDataOut==22,cdaudioDataOut==255,cdaudioDataOut==259,cdaudioDataOut==3,cdaudioDataOut==4,cdaudioDataOut==7,cdaudioDataOut==71,cdaudioDataOut==Irp__AssociatedIrp__SystemBuffer} @*/ cdaudioDataOut ;
  int /*@  predicates{srb!=(-1),srb!=(-1073741637),srb!=(-1073741670),srb!=(-1073741764),srb!=(-1073741789),srb!=(-1073741802),srb!=(-1073741803),srb!=(-1073741808),srb!=(-1073741820),srb!=(-1073741823),srb!=(-2147483626),srb!=(-2147483631),srb!=0,srb!=1,srb!=147456,srb!=147460,srb!=147464,srb!=147468,srb!=147472,srb!=147476,srb!=147480,srb!=147496,srb!=147500,srb!=147508,srb!=147512,srb!=149504,srb!=149512,srb!=17,srb!=2,srb!=22,srb!=255,srb!=259,srb!=3,srb!=4,srb!=7,srb!=71,srb==(-1),srb==(-1073741637),srb==(-1073741670),srb==(-1073741764),srb==(-1073741789),srb==(-1073741802),srb==(-1073741803),srb==(-1073741808),srb==(-1073741820),srb==(-1073741823),srb==(-2147483626),srb==(-2147483631),srb==0,srb==1,srb==147456,srb==147460,srb==147464,srb==147468,srb==147472,srb==147476,srb==147480,srb==147496,srb==147500,srb==147508,srb==147512,srb==149504,srb==149512,srb==17,srb==2,srb==22,srb==255,srb==259,srb==3,srb==4,srb==7,srb==71} @*/ srb = __VERIFIER_nondet_int();
  int /*@  predicates{lastSession!=(-1),lastSession!=(-1073741637),lastSession!=(-1073741670),lastSession!=(-1073741764),lastSession!=(-1073741789),lastSession!=(-1073741802),lastSession!=(-1073741803),lastSession!=(-1073741808),lastSession!=(-1073741820),lastSession!=(-1073741823),lastSession!=(-2147483626),lastSession!=(-2147483631),lastSession!=0,lastSession!=1,lastSession!=147456,lastSession!=147460,lastSession!=147464,lastSession!=147468,lastSession!=147472,lastSession!=147476,lastSession!=147480,lastSession!=147496,lastSession!=147500,lastSession!=147508,lastSession!=147512,lastSession!=149504,lastSession!=149512,lastSession!=17,lastSession!=2,lastSession!=22,lastSession!=255,lastSession!=259,lastSession!=3,lastSession!=4,lastSession!=7,lastSession!=71,lastSession==(-1),lastSession==(-1073741637),lastSession==(-1073741670),lastSession==(-1073741764),lastSession==(-1073741789),lastSession==(-1073741802),lastSession==(-1073741803),lastSession==(-1073741808),lastSession==(-1073741820),lastSession==(-1073741823),lastSession==(-2147483626),lastSession==(-2147483631),lastSession==0,lastSession==1,lastSession==147456,lastSession==147460,lastSession==147464,lastSession==147468,lastSession==147472,lastSession==147476,lastSession==147480,lastSession==147496,lastSession==147500,lastSession==147508,lastSession==147512,lastSession==149504,lastSession==149512,lastSession==17,lastSession==2,lastSession==22,lastSession==255,lastSession==259,lastSession==3,lastSession==4,lastSession==7,lastSession==71} @*/ lastSession = __VERIFIER_nondet_int();
  int /*@  predicates{cdb!=(-1),cdb!=(-1073741637),cdb!=(-1073741670),cdb!=(-1073741764),cdb!=(-1073741789),cdb!=(-1073741802),cdb!=(-1073741803),cdb!=(-1073741808),cdb!=(-1073741820),cdb!=(-1073741823),cdb!=(-2147483626),cdb!=(-2147483631),cdb!=0,cdb!=1,cdb!=147456,cdb!=147460,cdb!=147464,cdb!=147468,cdb!=147472,cdb!=147476,cdb!=147480,cdb!=147496,cdb!=147500,cdb!=147508,cdb!=147512,cdb!=149504,cdb!=149512,cdb!=17,cdb!=2,cdb!=22,cdb!=255,cdb!=259,cdb!=3,cdb!=4,cdb!=7,cdb!=71,cdb==(-1),cdb==(-1073741637),cdb==(-1073741670),cdb==(-1073741764),cdb==(-1073741789),cdb==(-1073741802),cdb==(-1073741803),cdb==(-1073741808),cdb==(-1073741820),cdb==(-1073741823),cdb==(-2147483626),cdb==(-2147483631),cdb==0,cdb==1,cdb==147456,cdb==147460,cdb==147464,cdb==147468,cdb==147472,cdb==147476,cdb==147480,cdb==147496,cdb==147500,cdb==147508,cdb==147512,cdb==149504,cdb==149512,cdb==17,cdb==2,cdb==22,cdb==255,cdb==259,cdb==3,cdb==4,cdb==7,cdb==71,cdb==srb__Cdb} @*/ cdb ;
  int /*@  predicates{status!=(-1),status!=(-1073741637),status!=(-1073741670),status!=(-1073741764),status!=(-1073741789),status!=(-1073741802),status!=(-1073741803),status!=(-1073741808),status!=(-1073741820),status!=(-1073741823),status!=(-2147483626),status!=(-2147483631),status!=0,status!=1,status!=147456,status!=147460,status!=147464,status!=147468,status!=147472,status!=147476,status!=147480,status!=147496,status!=147500,status!=147508,status!=147512,status!=149504,status!=149512,status!=17,status!=2,status!=22,status!=255,status!=259,status!=3,status!=4,status!=7,status!=71,status<0,status<status,status==(-1),status==(-1073741637),status==(-1073741670),status==(-1073741764),status==(-1073741789),status==(-1073741802),status==(-1073741803),status==(-1073741808),status==(-1073741820),status==(-1073741823),status==(-2147483626),status==(-2147483631),status==0,status==1,status==147456,status==147460,status==147464,status==147468,status==147472,status==147476,status==147480,status==147496,status==147500,status==147508,status==147512,status==149504,status==149512,status==17,status==2,status==22,status==255,status==259,status==3,status==4,status==7,status==71,status==myStatus,status>=0} @*/ status ;
  int i = __VERIFIER_nondet_int();
  int /*@  predicates{bytesTransfered!=(-1),bytesTransfered!=(-1073741637),bytesTransfered!=(-1073741670),bytesTransfered!=(-1073741764),bytesTransfered!=(-1073741789),bytesTransfered!=(-1073741802),bytesTransfered!=(-1073741803),bytesTransfered!=(-1073741808),bytesTransfered!=(-1073741820),bytesTransfered!=(-1073741823),bytesTransfered!=(-2147483626),bytesTransfered!=(-2147483631),bytesTransfered!=0,bytesTransfered!=1,bytesTransfered!=147456,bytesTransfered!=147460,bytesTransfered!=147464,bytesTransfered!=147468,bytesTransfered!=147472,bytesTransfered!=147476,bytesTransfered!=147480,bytesTransfered!=147496,bytesTransfered!=147500,bytesTransfered!=147508,bytesTransfered!=147512,bytesTransfered!=149504,bytesTransfered!=149512,bytesTransfered!=17,bytesTransfered!=2,bytesTransfered!=22,bytesTransfered!=255,bytesTransfered!=259,bytesTransfered!=3,bytesTransfered!=4,bytesTransfered!=7,bytesTransfered!=71,bytesTransfered<sizeof__SUB_Q_CURRENT_POSITION,bytesTransfered==(-1),bytesTransfered==(-1073741637),bytesTransfered==(-1073741670),bytesTransfered==(-1073741764),bytesTransfered==(-1073741789),bytesTransfered==(-1073741802),bytesTransfered==(-1073741803),bytesTransfered==(-1073741808),bytesTransfered==(-1073741820),bytesTransfered==(-1073741823),bytesTransfered==(-2147483626),bytesTransfered==(-2147483631),bytesTransfered==0,bytesTransfered==1,bytesTransfered==147456,bytesTransfered==147460,bytesTransfered==147464,bytesTransfered==147468,bytesTransfered==147472,bytesTransfered==147476,bytesTransfered==147480,bytesTransfered==147496,bytesTransfered==147500,bytesTransfered==147508,bytesTransfered==147512,bytesTransfered==149504,bytesTransfered==149512,bytesTransfered==17,bytesTransfered==2,bytesTransfered==22,bytesTransfered==255,bytesTransfered==259,bytesTransfered==3,bytesTransfered==4,bytesTransfered==7,bytesTransfered==71,bytesTransfered==Irp__IoStatus__Information,bytesTransfered>sizeof__SUB_Q_CURRENT_POSITION} @*/ bytesTransfered = __VERIFIER_nondet_int();
  int /*@  predicates{Toc!=(-1),Toc!=(-1073741637),Toc!=(-1073741670),Toc!=(-1073741764),Toc!=(-1073741789),Toc!=(-1073741802),Toc!=(-1073741803),Toc!=(-1073741808),Toc!=(-1073741820),Toc!=(-1073741823),Toc!=(-2147483626),Toc!=(-2147483631),Toc!=0,Toc!=1,Toc!=147456,Toc!=147460,Toc!=147464,Toc!=147468,Toc!=147472,Toc!=147476,Toc!=147480,Toc!=147496,Toc!=147500,Toc!=147508,Toc!=147512,Toc!=149504,Toc!=149512,Toc!=17,Toc!=2,Toc!=22,Toc!=255,Toc!=259,Toc!=3,Toc!=4,Toc!=7,Toc!=71,Toc==(-1),Toc==(-1073741637),Toc==(-1073741670),Toc==(-1073741764),Toc==(-1073741789),Toc==(-1073741802),Toc==(-1073741803),Toc==(-1073741808),Toc==(-1073741820),Toc==(-1073741823),Toc==(-2147483626),Toc==(-2147483631),Toc==0,Toc==1,Toc==147456,Toc==147460,Toc==147464,Toc==147468,Toc==147472,Toc==147476,Toc==147480,Toc==147496,Toc==147500,Toc==147508,Toc==147512,Toc==149504,Toc==149512,Toc==17,Toc==2,Toc==22,Toc==255,Toc==259,Toc==3,Toc==4,Toc==7,Toc==71} @*/ Toc = __VERIFIER_nondet_int();
  int /*@  predicates{tmp!=0,tmp==0,tmp==1} @*/ tmp ;
  int /*@  predicates{tmp___0!=(-1),tmp___0!=(-1073741637),tmp___0!=(-1073741670),tmp___0!=(-1073741764),tmp___0!=(-1073741789),tmp___0!=(-1073741802),tmp___0!=(-1073741803),tmp___0!=(-1073741808),tmp___0!=(-1073741820),tmp___0!=(-1073741823),tmp___0!=(-2147483626),tmp___0!=(-2147483631),tmp___0!=0,tmp___0!=1,tmp___0!=147456,tmp___0!=147460,tmp___0!=147464,tmp___0!=147468,tmp___0!=147472,tmp___0!=147476,tmp___0!=147480,tmp___0!=147496,tmp___0!=147500,tmp___0!=147508,tmp___0!=147512,tmp___0!=149504,tmp___0!=149512,tmp___0!=17,tmp___0!=2,tmp___0!=22,tmp___0!=255,tmp___0!=259,tmp___0!=3,tmp___0!=4,tmp___0!=7,tmp___0!=71,tmp___0==(-1),tmp___0==(-1073741637),tmp___0==(-1073741670),tmp___0==(-1073741764),tmp___0==(-1073741789),tmp___0==(-1073741802),tmp___0==(-1073741803),tmp___0==(-1073741808),tmp___0==(-1073741820),tmp___0==(-1073741823),tmp___0==(-2147483626),tmp___0==(-2147483631),tmp___0==0,tmp___0==1,tmp___0==147456,tmp___0==147460,tmp___0==147464,tmp___0==147468,tmp___0==147472,tmp___0==147476,tmp___0==147480,tmp___0==147496,tmp___0==147500,tmp___0==147508,tmp___0==147512,tmp___0==149504,tmp___0==149512,tmp___0==17,tmp___0==2,tmp___0==22,tmp___0==255,tmp___0==259,tmp___0==3,tmp___0==4,tmp___0==7,tmp___0==71} @*/ tmp___0 ;
  int /*@  predicates{tmp___1!=(-1),tmp___1!=(-1073741637),tmp___1!=(-1073741670),tmp___1!=(-1073741764),tmp___1!=(-1073741789),tmp___1!=(-1073741802),tmp___1!=(-1073741803),tmp___1!=(-1073741808),tmp___1!=(-1073741820),tmp___1!=(-1073741823),tmp___1!=(-2147483626),tmp___1!=(-2147483631),tmp___1!=0,tmp___1!=1,tmp___1!=147456,tmp___1!=147460,tmp___1!=147464,tmp___1!=147468,tmp___1!=147472,tmp___1!=147476,tmp___1!=147480,tmp___1!=147496,tmp___1!=147500,tmp___1!=147508,tmp___1!=147512,tmp___1!=149504,tmp___1!=149512,tmp___1!=17,tmp___1!=2,tmp___1!=22,tmp___1!=255,tmp___1!=259,tmp___1!=3,tmp___1!=4,tmp___1!=7,tmp___1!=71,tmp___1==(-1),tmp___1==(-1073741637),tmp___1==(-1073741670),tmp___1==(-1073741764),tmp___1==(-1073741789),tmp___1==(-1073741802),tmp___1==(-1073741803),tmp___1==(-1073741808),tmp___1==(-1073741820),tmp___1==(-1073741823),tmp___1==(-2147483626),tmp___1==(-2147483631),tmp___1==0,tmp___1==1,tmp___1==147456,tmp___1==147460,tmp___1==147464,tmp___1==147468,tmp___1==147472,tmp___1==147476,tmp___1==147480,tmp___1==147496,tmp___1==147500,tmp___1==147508,tmp___1==147512,tmp___1==149504,tmp___1==149512,tmp___1==17,tmp___1==2,tmp___1==22,tmp___1==255,tmp___1==259,tmp___1==3,tmp___1==4,tmp___1==7,tmp___1==71} @*/ tmp___1 ;
  int /*@  predicates{tmp___2!=0,tmp___2==0,tmp___2==1} @*/ tmp___2 ;
  int /*@  predicates{tmp___3!=(-1),tmp___3!=(-1073741637),tmp___3!=(-1073741670),tmp___3!=(-1073741764),tmp___3!=(-1073741789),tmp___3!=(-1073741802),tmp___3!=(-1073741803),tmp___3!=(-1073741808),tmp___3!=(-1073741820),tmp___3!=(-1073741823),tmp___3!=(-2147483626),tmp___3!=(-2147483631),tmp___3!=0,tmp___3!=1,tmp___3!=147456,tmp___3!=147460,tmp___3!=147464,tmp___3!=147468,tmp___3!=147472,tmp___3!=147476,tmp___3!=147480,tmp___3!=147496,tmp___3!=147500,tmp___3!=147508,tmp___3!=147512,tmp___3!=149504,tmp___3!=149512,tmp___3!=17,tmp___3!=2,tmp___3!=22,tmp___3!=255,tmp___3!=259,tmp___3!=3,tmp___3!=4,tmp___3!=7,tmp___3!=71,tmp___3==(-1),tmp___3==(-1073741637),tmp___3==(-1073741670),tmp___3==(-1073741764),tmp___3==(-1073741789),tmp___3==(-1073741802),tmp___3==(-1073741803),tmp___3==(-1073741808),tmp___3==(-1073741820),tmp___3==(-1073741823),tmp___3==(-2147483626),tmp___3==(-2147483631),tmp___3==0,tmp___3==1,tmp___3==147456,tmp___3==147460,tmp___3==147464,tmp___3==147468,tmp___3==147472,tmp___3==147476,tmp___3==147480,tmp___3==147496,tmp___3==147500,tmp___3==147508,tmp___3==147512,tmp___3==149504,tmp___3==149512,tmp___3==17,tmp___3==2,tmp___3==22,tmp___3==255,tmp___3==259,tmp___3==3,tmp___3==4,tmp___3==7,tmp___3==71} @*/ tmp___3 ;
  int /*@  predicates{tmp___4!=(-1),tmp___4!=(-1073741637),tmp___4!=(-1073741670),tmp___4!=(-1073741764),tmp___4!=(-1073741789),tmp___4!=(-1073741802),tmp___4!=(-1073741803),tmp___4!=(-1073741808),tmp___4!=(-1073741820),tmp___4!=(-1073741823),tmp___4!=(-2147483626),tmp___4!=(-2147483631),tmp___4!=0,tmp___4!=1,tmp___4!=147456,tmp___4!=147460,tmp___4!=147464,tmp___4!=147468,tmp___4!=147472,tmp___4!=147476,tmp___4!=147480,tmp___4!=147496,tmp___4!=147500,tmp___4!=147508,tmp___4!=147512,tmp___4!=149504,tmp___4!=149512,tmp___4!=17,tmp___4!=2,tmp___4!=22,tmp___4!=255,tmp___4!=259,tmp___4!=3,tmp___4!=4,tmp___4!=7,tmp___4!=71,tmp___4==(-1),tmp___4==(-1073741637),tmp___4==(-1073741670),tmp___4==(-1073741764),tmp___4==(-1073741789),tmp___4==(-1073741802),tmp___4==(-1073741803),tmp___4==(-1073741808),tmp___4==(-1073741820),tmp___4==(-1073741823),tmp___4==(-2147483626),tmp___4==(-2147483631),tmp___4==0,tmp___4==1,tmp___4==147456,tmp___4==147460,tmp___4==147464,tmp___4==147468,tmp___4==147472,tmp___4==147476,tmp___4==147480,tmp___4==147496,tmp___4==147500,tmp___4==147508,tmp___4==147512,tmp___4==149504,tmp___4==149512,tmp___4==17,tmp___4==2,tmp___4==22,tmp___4==255,tmp___4==259,tmp___4==3,tmp___4==4,tmp___4==7,tmp___4==71} @*/ tmp___4 ;
  int tracksToReturn ;
  int tracksOnCd ;
  int /*@  predicates{tracksInBuffer!=(-1),tracksInBuffer!=(-1073741637),tracksInBuffer!=(-1073741670),tracksInBuffer!=(-1073741764),tracksInBuffer!=(-1073741789),tracksInBuffer!=(-1073741802),tracksInBuffer!=(-1073741803),tracksInBuffer!=(-1073741808),tracksInBuffer!=(-1073741820),tracksInBuffer!=(-1073741823),tracksInBuffer!=(-2147483626),tracksInBuffer!=(-2147483631),tracksInBuffer!=0,tracksInBuffer!=1,tracksInBuffer!=147456,tracksInBuffer!=147460,tracksInBuffer!=147464,tracksInBuffer!=147468,tracksInBuffer!=147472,tracksInBuffer!=147476,tracksInBuffer!=147480,tracksInBuffer!=147496,tracksInBuffer!=147500,tracksInBuffer!=147508,tracksInBuffer!=147512,tracksInBuffer!=149504,tracksInBuffer!=149512,tracksInBuffer!=17,tracksInBuffer!=2,tracksInBuffer!=22,tracksInBuffer!=255,tracksInBuffer!=259,tracksInBuffer!=3,tracksInBuffer!=4,tracksInBuffer!=7,tracksInBuffer!=71,tracksInBuffer==(-1),tracksInBuffer==(-1073741637),tracksInBuffer==(-1073741670),tracksInBuffer==(-1073741764),tracksInBuffer==(-1073741789),tracksInBuffer==(-1073741802),tracksInBuffer==(-1073741803),tracksInBuffer==(-1073741808),tracksInBuffer==(-1073741820),tracksInBuffer==(-1073741823),tracksInBuffer==(-2147483626),tracksInBuffer==(-2147483631),tracksInBuffer==0,tracksInBuffer==1,tracksInBuffer==147456,tracksInBuffer==147460,tracksInBuffer==147464,tracksInBuffer==147468,tracksInBuffer==147472,tracksInBuffer==147476,tracksInBuffer==147480,tracksInBuffer==147496,tracksInBuffer==147500,tracksInBuffer==147508,tracksInBuffer==147512,tracksInBuffer==149504,tracksInBuffer==149512,tracksInBuffer==17,tracksInBuffer==2,tracksInBuffer==22,tracksInBuffer==255,tracksInBuffer==259,tracksInBuffer==3,tracksInBuffer==4,tracksInBuffer==7,tracksInBuffer==71,tracksInBuffer==currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength} @*/ tracksInBuffer ;
  int /*@  predicates{userPtr!=(-1),userPtr!=(-1073741637),userPtr!=(-1073741670),userPtr!=(-1073741764),userPtr!=(-1073741789),userPtr!=(-1073741802),userPtr!=(-1073741803),userPtr!=(-1073741808),userPtr!=(-1073741820),userPtr!=(-1073741823),userPtr!=(-2147483626),userPtr!=(-2147483631),userPtr!=0,userPtr!=1,userPtr!=147456,userPtr!=147460,userPtr!=147464,userPtr!=147468,userPtr!=147472,userPtr!=147476,userPtr!=147480,userPtr!=147496,userPtr!=147500,userPtr!=147508,userPtr!=147512,userPtr!=149504,userPtr!=149512,userPtr!=17,userPtr!=2,userPtr!=22,userPtr!=255,userPtr!=259,userPtr!=3,userPtr!=4,userPtr!=7,userPtr!=71,userPtr==(-1),userPtr==(-1073741637),userPtr==(-1073741670),userPtr==(-1073741764),userPtr==(-1073741789),userPtr==(-1073741802),userPtr==(-1073741803),userPtr==(-1073741808),userPtr==(-1073741820),userPtr==(-1073741823),userPtr==(-2147483626),userPtr==(-2147483631),userPtr==0,userPtr==1,userPtr==147456,userPtr==147460,userPtr==147464,userPtr==147468,userPtr==147472,userPtr==147476,userPtr==147480,userPtr==147496,userPtr==147500,userPtr==147508,userPtr==147512,userPtr==149504,userPtr==149512,userPtr==17,userPtr==2,userPtr==22,userPtr==255,userPtr==259,userPtr==3,userPtr==4,userPtr==7,userPtr==71,userPtr==Irp__AssociatedIrp__SystemBuffer} @*/ userPtr ;
  int /*@  predicates{SubQPtr!=(-1),SubQPtr!=(-1073741637),SubQPtr!=(-1073741670),SubQPtr!=(-1073741764),SubQPtr!=(-1073741789),SubQPtr!=(-1073741802),SubQPtr!=(-1073741803),SubQPtr!=(-1073741808),SubQPtr!=(-1073741820),SubQPtr!=(-1073741823),SubQPtr!=(-2147483626),SubQPtr!=(-2147483631),SubQPtr!=0,SubQPtr!=1,SubQPtr!=147456,SubQPtr!=147460,SubQPtr!=147464,SubQPtr!=147468,SubQPtr!=147472,SubQPtr!=147476,SubQPtr!=147480,SubQPtr!=147496,SubQPtr!=147500,SubQPtr!=147508,SubQPtr!=147512,SubQPtr!=149504,SubQPtr!=149512,SubQPtr!=17,SubQPtr!=2,SubQPtr!=22,SubQPtr!=255,SubQPtr!=259,SubQPtr!=3,SubQPtr!=4,SubQPtr!=7,SubQPtr!=71,SubQPtr==(-1),SubQPtr==(-1073741637),SubQPtr==(-1073741670),SubQPtr==(-1073741764),SubQPtr==(-1073741789),SubQPtr==(-1073741802),SubQPtr==(-1073741803),SubQPtr==(-1073741808),SubQPtr==(-1073741820),SubQPtr==(-1073741823),SubQPtr==(-2147483626),SubQPtr==(-2147483631),SubQPtr==0,SubQPtr==1,SubQPtr==147456,SubQPtr==147460,SubQPtr==147464,SubQPtr==147468,SubQPtr==147472,SubQPtr==147476,SubQPtr==147480,SubQPtr==147496,SubQPtr==147500,SubQPtr==147508,SubQPtr==147512,SubQPtr==149504,SubQPtr==149512,SubQPtr==17,SubQPtr==2,SubQPtr==22,SubQPtr==255,SubQPtr==259,SubQPtr==3,SubQPtr==4,SubQPtr==7,SubQPtr==71} @*/ SubQPtr = __VERIFIER_nondet_int();
  int /*@  predicates{tmp___5!=(-1),tmp___5!=(-1073741637),tmp___5!=(-1073741670),tmp___5!=(-1073741764),tmp___5!=(-1073741789),tmp___5!=(-1073741802),tmp___5!=(-1073741803),tmp___5!=(-1073741808),tmp___5!=(-1073741820),tmp___5!=(-1073741823),tmp___5!=(-2147483626),tmp___5!=(-2147483631),tmp___5!=0,tmp___5!=1,tmp___5!=147456,tmp___5!=147460,tmp___5!=147464,tmp___5!=147468,tmp___5!=147472,tmp___5!=147476,tmp___5!=147480,tmp___5!=147496,tmp___5!=147500,tmp___5!=147508,tmp___5!=147512,tmp___5!=149504,tmp___5!=149512,tmp___5!=17,tmp___5!=2,tmp___5!=22,tmp___5!=255,tmp___5!=259,tmp___5!=3,tmp___5!=4,tmp___5!=7,tmp___5!=71,tmp___5==(-1),tmp___5==(-1073741637),tmp___5==(-1073741670),tmp___5==(-1073741764),tmp___5==(-1073741789),tmp___5==(-1073741802),tmp___5==(-1073741803),tmp___5==(-1073741808),tmp___5==(-1073741820),tmp___5==(-1073741823),tmp___5==(-2147483626),tmp___5==(-2147483631),tmp___5==0,tmp___5==1,tmp___5==147456,tmp___5==147460,tmp___5==147464,tmp___5==147468,tmp___5==147472,tmp___5==147476,tmp___5==147480,tmp___5==147496,tmp___5==147500,tmp___5==147508,tmp___5==147512,tmp___5==149504,tmp___5==149512,tmp___5==17,tmp___5==2,tmp___5==22,tmp___5==255,tmp___5==259,tmp___5==3,tmp___5==4,tmp___5==7,tmp___5==71} @*/ tmp___5 ;
  int /*@  predicates{tmp___6!=(-1),tmp___6!=(-1073741637),tmp___6!=(-1073741670),tmp___6!=(-1073741764),tmp___6!=(-1073741789),tmp___6!=(-1073741802),tmp___6!=(-1073741803),tmp___6!=(-1073741808),tmp___6!=(-1073741820),tmp___6!=(-1073741823),tmp___6!=(-2147483626),tmp___6!=(-2147483631),tmp___6!=0,tmp___6!=1,tmp___6!=147456,tmp___6!=147460,tmp___6!=147464,tmp___6!=147468,tmp___6!=147472,tmp___6!=147476,tmp___6!=147480,tmp___6!=147496,tmp___6!=147500,tmp___6!=147508,tmp___6!=147512,tmp___6!=149504,tmp___6!=149512,tmp___6!=17,tmp___6!=2,tmp___6!=22,tmp___6!=255,tmp___6!=259,tmp___6!=3,tmp___6!=4,tmp___6!=7,tmp___6!=71,tmp___6==(-1),tmp___6==(-1073741637),tmp___6==(-1073741670),tmp___6==(-1073741764),tmp___6==(-1073741789),tmp___6==(-1073741802),tmp___6==(-1073741803),tmp___6==(-1073741808),tmp___6==(-1073741820),tmp___6==(-1073741823),tmp___6==(-2147483626),tmp___6==(-2147483631),tmp___6==0,tmp___6==1,tmp___6==147456,tmp___6==147460,tmp___6==147464,tmp___6==147468,tmp___6==147472,tmp___6==147476,tmp___6==147480,tmp___6==147496,tmp___6==147500,tmp___6==147508,tmp___6==147512,tmp___6==149504,tmp___6==149512,tmp___6==17,tmp___6==2,tmp___6==22,tmp___6==255,tmp___6==259,tmp___6==3,tmp___6==4,tmp___6==7,tmp___6==71} @*/ tmp___6 ;
  int /*@  predicates{inputBuffer!=(-1),inputBuffer!=(-1073741637),inputBuffer!=(-1073741670),inputBuffer!=(-1073741764),inputBuffer!=(-1073741789),inputBuffer!=(-1073741802),inputBuffer!=(-1073741803),inputBuffer!=(-1073741808),inputBuffer!=(-1073741820),inputBuffer!=(-1073741823),inputBuffer!=(-2147483626),inputBuffer!=(-2147483631),inputBuffer!=0,inputBuffer!=1,inputBuffer!=147456,inputBuffer!=147460,inputBuffer!=147464,inputBuffer!=147468,inputBuffer!=147472,inputBuffer!=147476,inputBuffer!=147480,inputBuffer!=147496,inputBuffer!=147500,inputBuffer!=147508,inputBuffer!=147512,inputBuffer!=149504,inputBuffer!=149512,inputBuffer!=17,inputBuffer!=2,inputBuffer!=22,inputBuffer!=255,inputBuffer!=259,inputBuffer!=3,inputBuffer!=4,inputBuffer!=7,inputBuffer!=71,inputBuffer==(-1),inputBuffer==(-1073741637),inputBuffer==(-1073741670),inputBuffer==(-1073741764),inputBuffer==(-1073741789),inputBuffer==(-1073741802),inputBuffer==(-1073741803),inputBuffer==(-1073741808),inputBuffer==(-1073741820),inputBuffer==(-1073741823),inputBuffer==(-2147483626),inputBuffer==(-2147483631),inputBuffer==0,inputBuffer==1,inputBuffer==147456,inputBuffer==147460,inputBuffer==147464,inputBuffer==147468,inputBuffer==147472,inputBuffer==147476,inputBuffer==147480,inputBuffer==147496,inputBuffer==147500,inputBuffer==147508,inputBuffer==147512,inputBuffer==149504,inputBuffer==149512,inputBuffer==17,inputBuffer==2,inputBuffer==22,inputBuffer==255,inputBuffer==259,inputBuffer==3,inputBuffer==4,inputBuffer==7,inputBuffer==71,inputBuffer==Irp__AssociatedIrp__SystemBuffer} @*/ inputBuffer ;
  int /*@  predicates{inputBuffer___0!=(-1),inputBuffer___0!=(-1073741637),inputBuffer___0!=(-1073741670),inputBuffer___0!=(-1073741764),inputBuffer___0!=(-1073741789),inputBuffer___0!=(-1073741802),inputBuffer___0!=(-1073741803),inputBuffer___0!=(-1073741808),inputBuffer___0!=(-1073741820),inputBuffer___0!=(-1073741823),inputBuffer___0!=(-2147483626),inputBuffer___0!=(-2147483631),inputBuffer___0!=0,inputBuffer___0!=1,inputBuffer___0!=147456,inputBuffer___0!=147460,inputBuffer___0!=147464,inputBuffer___0!=147468,inputBuffer___0!=147472,inputBuffer___0!=147476,inputBuffer___0!=147480,inputBuffer___0!=147496,inputBuffer___0!=147500,inputBuffer___0!=147508,inputBuffer___0!=147512,inputBuffer___0!=149504,inputBuffer___0!=149512,inputBuffer___0!=17,inputBuffer___0!=2,inputBuffer___0!=22,inputBuffer___0!=255,inputBuffer___0!=259,inputBuffer___0!=3,inputBuffer___0!=4,inputBuffer___0!=7,inputBuffer___0!=71,inputBuffer___0==(-1),inputBuffer___0==(-1073741637),inputBuffer___0==(-1073741670),inputBuffer___0==(-1073741764),inputBuffer___0==(-1073741789),inputBuffer___0==(-1073741802),inputBuffer___0==(-1073741803),inputBuffer___0==(-1073741808),inputBuffer___0==(-1073741820),inputBuffer___0==(-1073741823),inputBuffer___0==(-2147483626),inputBuffer___0==(-2147483631),inputBuffer___0==0,inputBuffer___0==1,inputBuffer___0==147456,inputBuffer___0==147460,inputBuffer___0==147464,inputBuffer___0==147468,inputBuffer___0==147472,inputBuffer___0==147476,inputBuffer___0==147480,inputBuffer___0==147496,inputBuffer___0==147500,inputBuffer___0==147508,inputBuffer___0==147512,inputBuffer___0==149504,inputBuffer___0==149512,inputBuffer___0==17,inputBuffer___0==2,inputBuffer___0==22,inputBuffer___0==255,inputBuffer___0==259,inputBuffer___0==3,inputBuffer___0==4,inputBuffer___0==7,inputBuffer___0==71,inputBuffer___0==Irp__AssociatedIrp__SystemBuffer} @*/ inputBuffer___0 ;
  int /*@  predicates{tmp___7==(-1),tmp___7==(-1073741637),tmp___7==(-1073741670),tmp___7==(-1073741764),tmp___7==(-1073741789),tmp___7==(-1073741802),tmp___7==(-1073741803),tmp___7==(-1073741808),tmp___7==(-1073741820),tmp___7==(-1073741823),tmp___7==(-2147483626),tmp___7==(-2147483631),tmp___7==0,tmp___7==1,tmp___7==147456,tmp___7==147460,tmp___7==147464,tmp___7==147468,tmp___7==147472,tmp___7==147476,tmp___7==147480,tmp___7==147496,tmp___7==147500,tmp___7==147508,tmp___7==147512,tmp___7==149504,tmp___7==149512,tmp___7==17,tmp___7==2,tmp___7==22,tmp___7==255,tmp___7==259,tmp___7==3,tmp___7==4,tmp___7==7,tmp___7==71} @*/ tmp___7 ;
  int /*@  predicates{tmp___8!=(-1),tmp___8!=(-1073741637),tmp___8!=(-1073741670),tmp___8!=(-1073741764),tmp___8!=(-1073741789),tmp___8!=(-1073741802),tmp___8!=(-1073741803),tmp___8!=(-1073741808),tmp___8!=(-1073741820),tmp___8!=(-1073741823),tmp___8!=(-2147483626),tmp___8!=(-2147483631),tmp___8!=0,tmp___8!=1,tmp___8!=147456,tmp___8!=147460,tmp___8!=147464,tmp___8!=147468,tmp___8!=147472,tmp___8!=147476,tmp___8!=147480,tmp___8!=147496,tmp___8!=147500,tmp___8!=147508,tmp___8!=147512,tmp___8!=149504,tmp___8!=149512,tmp___8!=17,tmp___8!=2,tmp___8!=22,tmp___8!=255,tmp___8!=259,tmp___8!=3,tmp___8!=4,tmp___8!=7,tmp___8!=71,tmp___8==(-1),tmp___8==(-1073741637),tmp___8==(-1073741670),tmp___8==(-1073741764),tmp___8==(-1073741789),tmp___8==(-1073741802),tmp___8==(-1073741803),tmp___8==(-1073741808),tmp___8==(-1073741820),tmp___8==(-1073741823),tmp___8==(-2147483626),tmp___8==(-2147483631),tmp___8==0,tmp___8==1,tmp___8==147456,tmp___8==147460,tmp___8==147464,tmp___8==147468,tmp___8==147472,tmp___8==147476,tmp___8==147480,tmp___8==147496,tmp___8==147500,tmp___8==147508,tmp___8==147512,tmp___8==149504,tmp___8==149512,tmp___8==17,tmp___8==2,tmp___8==22,tmp___8==255,tmp___8==259,tmp___8==3,tmp___8==4,tmp___8==7,tmp___8==71} @*/ tmp___8 ;
  int /*@  predicates{__cil_tmp58==56} @*/ __cil_tmp58 ;
  int /*@  predicates{__cil_tmp59==16384} @*/ __cil_tmp59 ;
  int /*@  predicates{__cil_tmp60==131072} @*/ __cil_tmp60 ;
  int /*@  predicates{__cil_tmp61==147456} @*/ __cil_tmp61 ;
  int /*@  predicates{__cil_tmp62!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp62==147512,__cil_tmp62==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp62 ;
  int /*@  predicates{__cil_tmp63==16384} @*/ __cil_tmp63 ;
  int /*@  predicates{__cil_tmp64==131072} @*/ __cil_tmp64 ;
  int /*@  predicates{__cil_tmp65!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp65==147456,__cil_tmp65==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp65 ;
  int /*@  predicates{__cil_tmp66==44} @*/ __cil_tmp66 ;
  int /*@  predicates{__cil_tmp67==16384} @*/ __cil_tmp67 ;
  int /*@  predicates{__cil_tmp68==131072} @*/ __cil_tmp68 ;
  int /*@  predicates{__cil_tmp69==147456} @*/ __cil_tmp69 ;
  int /*@  predicates{__cil_tmp70!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp70==147500,__cil_tmp70==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp70 ;
  int /*@  predicates{__cil_tmp71==24} @*/ __cil_tmp71 ;
  int /*@  predicates{__cil_tmp72==16384} @*/ __cil_tmp72 ;
  int /*@  predicates{__cil_tmp73==131072} @*/ __cil_tmp73 ;
  int /*@  predicates{__cil_tmp74==147456} @*/ __cil_tmp74 ;
  int /*@  predicates{__cil_tmp75!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp75==147480,__cil_tmp75==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp75 ;
  int /*@  predicates{__cil_tmp76==4} @*/ __cil_tmp76 ;
  int /*@  predicates{__cil_tmp77==16384} @*/ __cil_tmp77 ;
  int /*@  predicates{__cil_tmp78==131072} @*/ __cil_tmp78 ;
  int /*@  predicates{__cil_tmp79==147456} @*/ __cil_tmp79 ;
  int /*@  predicates{__cil_tmp80!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp80==147460,__cil_tmp80==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp80 ;
  int /*@  predicates{__cil_tmp81==2056} @*/ __cil_tmp81 ;
  int /*@  predicates{__cil_tmp82==16384} @*/ __cil_tmp82 ;
  int /*@  predicates{__cil_tmp83==131072} @*/ __cil_tmp83 ;
  int /*@  predicates{__cil_tmp84==147456} @*/ __cil_tmp84 ;
  int /*@  predicates{__cil_tmp85!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp85==149512,__cil_tmp85==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp85 ;
  int /*@  predicates{__cil_tmp86==52} @*/ __cil_tmp86 ;
  int /*@  predicates{__cil_tmp87==16384} @*/ __cil_tmp87 ;
  int /*@  predicates{__cil_tmp88==131072} @*/ __cil_tmp88 ;
  int /*@  predicates{__cil_tmp89==147456} @*/ __cil_tmp89 ;
  int /*@  predicates{__cil_tmp90!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp90==147508,__cil_tmp90==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp90 ;
  int /*@  predicates{__cil_tmp91==20} @*/ __cil_tmp91 ;
  int /*@  predicates{__cil_tmp92==16384} @*/ __cil_tmp92 ;
  int /*@  predicates{__cil_tmp93==131072} @*/ __cil_tmp93 ;
  int /*@  predicates{__cil_tmp94==147456} @*/ __cil_tmp94 ;
  int /*@  predicates{__cil_tmp95!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp95==147476,__cil_tmp95==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp95 ;
  int /*@  predicates{__cil_tmp96==40} @*/ __cil_tmp96 ;
  int /*@  predicates{__cil_tmp97==16384} @*/ __cil_tmp97 ;
  int /*@  predicates{__cil_tmp98==131072} @*/ __cil_tmp98 ;
  int /*@  predicates{__cil_tmp99==147456} @*/ __cil_tmp99 ;
  int /*@  predicates{__cil_tmp100!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp100==147496,__cil_tmp100==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp100 ;
  int /*@  predicates{__cil_tmp101==2048} @*/ __cil_tmp101 ;
  int /*@  predicates{__cil_tmp102==16384} @*/ __cil_tmp102 ;
  int /*@  predicates{__cil_tmp103==131072} @*/ __cil_tmp103 ;
  int /*@  predicates{__cil_tmp104==147456} @*/ __cil_tmp104 ;
  int /*@  predicates{__cil_tmp105!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp105==149504,__cil_tmp105==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp105 ;
  int __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  int __cil_tmp109 ;
  int __cil_tmp110 ;

  {
  currentIrpStack = Irp__Tail__Overlay__CurrentStackLocation;
  deviceExtension = DeviceObject__DeviceExtension;
  cdaudioDataOut = Irp__AssociatedIrp__SystemBuffer;
  cdb = srb__Cdb;
  {
  __cil_tmp58 = 56;
  __cil_tmp59 = 16384;
  __cil_tmp60 = 131072;
  __cil_tmp61 = 147456;
  __cil_tmp62 = 147512;
  if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp62){
    goto switch_3_exp_0;
  } else {
    {
    __cil_tmp63 = 16384;
    __cil_tmp64 = 131072;
    __cil_tmp65 = 147456;
    if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp65){
      goto switch_3_exp_1;
    } else {
      {
      __cil_tmp66 = 44;
      __cil_tmp67 = 16384;
      __cil_tmp68 = 131072;
      __cil_tmp69 = 147456;
      __cil_tmp70 = 147500;
      if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp70){
        goto switch_3_exp_2;
      } else {
        {
        __cil_tmp71 = 24;
        __cil_tmp72 = 16384;
        __cil_tmp73 = 131072;
        __cil_tmp74 = 147456;
        __cil_tmp75 = 147480;
        if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp75){
          goto switch_3_exp_3;
        } else {
          {
          __cil_tmp76 = 4;
          __cil_tmp77 = 16384;
          __cil_tmp78 = 131072;
          __cil_tmp79 = 147456;
          __cil_tmp80 = 147460;
          if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp80){
            goto switch_3_exp_4;
          } else {
            {
            __cil_tmp81 = 2056;
            __cil_tmp82 = 16384;
            __cil_tmp83 = 131072;
            __cil_tmp84 = 147456;
            __cil_tmp85 = 149512;
            if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp85){
              goto switch_3_exp_5;
            } else {
              {
              __cil_tmp86 = 52;
              __cil_tmp87 = 16384;
              __cil_tmp88 = 131072;
              __cil_tmp89 = 147456;
              __cil_tmp90 = 147508;
              if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp90){
                goto switch_3_exp_6;
              } else {
                {
                __cil_tmp91 = 20;
                __cil_tmp92 = 16384;
                __cil_tmp93 = 131072;
                __cil_tmp94 = 147456;
                __cil_tmp95 = 147476;
                if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp95){
                  goto switch_3_exp_7;
                } else {
                  {
                  __cil_tmp96 = 40;
                  __cil_tmp97 = 16384;
                  __cil_tmp98 = 131072;
                  __cil_tmp99 = 147456;
                  __cil_tmp100 = 147496;
                  if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp100){
                    goto switch_3_exp_8;
                  } else {
                    {
                    __cil_tmp101 = 2048;
                    __cil_tmp102 = 16384;
                    __cil_tmp103 = 131072;
                    __cil_tmp104 = 147456;
                    __cil_tmp105 = 149504;
                    if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp105){
                      goto switch_3_exp_9;
                    } else {
                      goto switch_3_default;
                      if(0){
                        switch_3_exp_0:
                        {
                        tmp = CdAudioIsPlayActive(DeviceObject);
                        }
                        if(tmp){
                          status = -2147483631;
                          Irp__IoStatus__Information = 0;
                          goto switch_3_break;
                        }
                        if(currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength){
                          status = -1073741789;
                          Irp__IoStatus__Information = 0;
                          goto switch_3_break;
                        }
                        if(lastSession == 0){
                          {
                          status = -1073741670;
                          Irp__IoStatus__Information = 0;
                          tmp___0 = AG_SetStatusAndReturn(status, Irp, deviceExtension__TargetDeviceObject);
                          }
                          return(tmp___0);
                        }
                        {
                        srb__CdbLength = 10;
                        cdb__CDB10__OperationCode = 38;
                        srb__TimeOutValue = 10;
                        status = SendSrbSynchronous(deviceExtension, srb, lastSession,
                                                    sizeof__READ_CAPACITY_DATA);
                        }
                        {
                        if(status < 0){
                          {
                          Irp__IoStatus__Information = 0;
                          tmp___1 = AG_SetStatusAndReturn(status, Irp, deviceExtension__TargetDeviceObject);
                          }
                          return(tmp___1);
                        } else {
                          status = 0;
                        }
                        }
                        Irp__IoStatus__Information = bytesTransfered;
                        if(lastSession__LogicalBlockAddress == 0){
                          goto switch_3_break;
                        }
                        cdaudioDataOut__FirstTrack = 1;
                        cdaudioDataOut__LastTrack = 2;
                        goto switch_3_break;
                        switch_3_exp_1: ;
                        if(currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength){
                          status = -1073741789;
                          Irp__IoStatus__Information = 0;
                          goto switch_3_break;
                        }
                        {
                        tmp___2 = CdAudioIsPlayActive(DeviceObject);
                        }
                        if(tmp___2){
                          status = -2147483631;
                          Irp__IoStatus__Information = 0;
                          goto switch_3_break;
                        }
                        if(Toc == 0){
                          {
                          status = -1073741670;
                          Irp__IoStatus__Information = 0;
                          tmp___3 = AG_SetStatusAndReturn(status, Irp, deviceExtension__TargetDeviceObject);
                          }
                          return(tmp___3);
                        }
                        {
                        srb__TimeOutValue = 10;
                        srb__CdbLength = 10;
                        status = SendSrbSynchronous(deviceExtension, srb, Toc, sizeof__CDROM_TOC);
                        }
                        if(status >= 0){
                          {
                          __cil_tmp107 =(unsigned long)status;
                          if(__cil_tmp107 != -1073741764){
                            status = 0;
                          } else {
                            goto _L;
                          }
                          }
                        } else {
                          _L:
                          {
                          __cil_tmp108 =(unsigned long)status;
                          if(__cil_tmp108 != -1073741764){
                            {
                            Irp__IoStatus__Information = 0;
                            tmp___4 = AG_SetStatusAndReturn(status, Irp, deviceExtension__TargetDeviceObject);
                            }
                            return(tmp___4);
                          }
                          }
                        }
                        __cil_tmp109 = cdaudioDataOut__LastTrack - cdaudioDataOut__FirstTrack;
                        tracksOnCd = __cil_tmp109 + 1;
                        tracksInBuffer = currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength;
                        if(tracksInBuffer < tracksOnCd){
                          tracksToReturn = tracksInBuffer;
                        } else {
                          tracksToReturn = tracksOnCd;
                        }
                        if(tracksInBuffer > tracksOnCd){
                          i ++;
                        }
                        goto switch_3_break;
                        switch_3_exp_2:
                        userPtr = Irp__AssociatedIrp__SystemBuffer;
                        if(currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength < sizeof__SUB_Q_CURRENT_POSITION){
                          status = -1073741789;
                          Irp__IoStatus__Information = 0;
                          goto switch_3_break;
                        }
                        if(SubQPtr == 0){
                          {
                          status = -1073741670;
                          Irp__IoStatus__Information = 0;
                          tmp___5 = AG_SetStatusAndReturn(status, Irp, deviceExtension__TargetDeviceObject);
                          }
                          return(tmp___5);
                        }
                        if(userPtr__Format != 1){
                          {
                          status = -1073741823;
                          Irp__IoStatus__Information = 0;
                          tmp___6 = AG_SetStatusAndReturn(status, Irp, deviceExtension__TargetDeviceObject);
                          }
                          return(tmp___6);
                        }
                        {
                        srb__CdbLength = 10;
                        srb__TimeOutValue = 10;
                        status = SendSrbSynchronous(deviceExtension, srb, SubQPtr,
                                                    sizeof__SUB_Q_CURRENT_POSITION);
                        }
                        if(status >= 0){
                          Irp__IoStatus__Information = sizeof__SUB_Q_CURRENT_POSITION;
                        } else {
                          Irp__IoStatus__Information = 0;
                        }
                        goto switch_3_break;
                        switch_3_exp_3:
                        inputBuffer = Irp__AssociatedIrp__SystemBuffer;
                        Irp__IoStatus__Information = 0;
                        if(currentIrpStack__Parameters__DeviceIoControl__InputBufferLength < sizeof__CDROM_PLAY_AUDIO_MSF){
                          status = -1073741820;
                          goto switch_3_break;
                        }
                        if(inputBuffer__StartingM == inputBuffer__EndingM){
                          if(inputBuffer__StartingS == inputBuffer__EndingS){
                            if(inputBuffer__StartingF == inputBuffer__EndingF){

                            }
                          }
                        }
                        {
                        srb__CdbLength = 10;
                        srb__TimeOutValue = 10;
                        status = SendSrbSynchronous(deviceExtension, srb, 0, 0);
                        }
                        if(status >= 0){
                          if(cdb__PLAY_AUDIO_MSF__OperationCode == 71){

                          }
                        }
                        goto switch_3_break;
                        switch_3_exp_4:
                        inputBuffer___0 = Irp__AssociatedIrp__SystemBuffer;
                        Irp__IoStatus__Information = 0;
                        if(currentIrpStack__Parameters__DeviceIoControl__InputBufferLength < sizeof__CDROM_SEEK_AUDIO_MSF){
                          status = -1073741820;
                          goto switch_3_break;
                        }
                        {
                        srb__CdbLength = 10;
                        srb__TimeOutValue = 10;
                        status = SendSrbSynchronous(deviceExtension, srb, 0, 0);
                        }
                        {
                        if(status < 0){

                        }
                        }
                        goto switch_3_break;
                        switch_3_exp_5:
                        {
                        Irp__IoStatus__Information = 0;
                        srb__CdbLength = 10;
                        srb__TimeOutValue = 10;
                        status = SendSrbSynchronous(deviceExtension, srb, 0, 0);
                        }
                        goto switch_3_break;
                        switch_3_exp_6: ;
                        switch_3_exp_7: ;
                        switch_3_exp_8:
                        Irp__IoStatus__Information = 0;
                        status = -1073741808;
                        goto switch_3_break;
                        switch_3_exp_9:
                        {
                        CdAudioIsPlayActive(DeviceObject);
                        }
                        switch_3_default:
                        {
                        tmp___7 = CdAudioSendToNextDriver(DeviceObject, Irp);
                        }
                        return(tmp___7);
                        goto switch_3_break;
                      } else {
                        switch_3_break: ;
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
  tmp___8 = AG_SetStatusAndReturn(status, Irp, deviceExtension__TargetDeviceObject);
  }
  return(tmp___8);
}
}
int AG_SetStatusAndReturn(int /*@  predicates{status!=(-1),status!=(-1073741637),status!=(-1073741670),status!=(-1073741764),status!=(-1073741789),status!=(-1073741802),status!=(-1073741803),status!=(-1073741808),status!=(-1073741820),status!=(-1073741823),status!=(-2147483626),status!=(-2147483631),status!=0,status!=1,status!=147456,status!=147460,status!=147464,status!=147468,status!=147472,status!=147476,status!=147480,status!=147496,status!=147500,status!=147508,status!=147512,status!=149504,status!=149512,status!=17,status!=2,status!=22,status!=255,status!=259,status!=3,status!=4,status!=7,status!=71,status==(-1),status==(-1073741637),status==(-1073741670),status==(-1073741764),status==(-1073741789),status==(-1073741802),status==(-1073741803),status==(-1073741808),status==(-1073741820),status==(-1073741823),status==(-2147483626),status==(-2147483631),status==0,status==1,status==147456,status==147460,status==147464,status==147468,status==147472,status==147476,status==147480,status==147496,status==147500,status==147508,status==147512,status==149504,status==149512,status==17,status==2,status==22,status==255,status==259,status==3,status==4,status==7,status==71} @*/ status , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741670),Irp!=(-1073741764),Irp!=(-1073741789),Irp!=(-1073741802),Irp!=(-1073741803),Irp!=(-1073741808),Irp!=(-1073741820),Irp!=(-1073741823),Irp!=(-2147483626),Irp!=(-2147483631),Irp!=0,Irp!=1,Irp!=147456,Irp!=147460,Irp!=147464,Irp!=147468,Irp!=147472,Irp!=147476,Irp!=147480,Irp!=147496,Irp!=147500,Irp!=147508,Irp!=147512,Irp!=149504,Irp!=149512,Irp!=17,Irp!=2,Irp!=22,Irp!=255,Irp!=259,Irp!=3,Irp!=4,Irp!=7,Irp!=71,Irp==(-1),Irp==(-1073741637),Irp==(-1073741670),Irp==(-1073741764),Irp==(-1073741789),Irp==(-1073741802),Irp==(-1073741803),Irp==(-1073741808),Irp==(-1073741820),Irp==(-1073741823),Irp==(-2147483626),Irp==(-2147483631),Irp==0,Irp==1,Irp==147456,Irp==147460,Irp==147464,Irp==147468,Irp==147472,Irp==147476,Irp==147480,Irp==147496,Irp==147500,Irp==147508,Irp==147512,Irp==149504,Irp==149512,Irp==17,Irp==2,Irp==22,Irp==255,Irp==259,Irp==3,Irp==4,Irp==7,Irp==71} @*/ Irp , int /*@  predicates{deviceExtension__TargetDeviceObject!=(-1),deviceExtension__TargetDeviceObject!=(-1073741637),deviceExtension__TargetDeviceObject!=(-1073741670),deviceExtension__TargetDeviceObject!=(-1073741764),deviceExtension__TargetDeviceObject!=(-1073741789),deviceExtension__TargetDeviceObject!=(-1073741802),deviceExtension__TargetDeviceObject!=(-1073741803),deviceExtension__TargetDeviceObject!=(-1073741808),deviceExtension__TargetDeviceObject!=(-1073741820),deviceExtension__TargetDeviceObject!=(-1073741823),deviceExtension__TargetDeviceObject!=(-2147483626),deviceExtension__TargetDeviceObject!=(-2147483631),deviceExtension__TargetDeviceObject!=0,deviceExtension__TargetDeviceObject!=1,deviceExtension__TargetDeviceObject!=147456,deviceExtension__TargetDeviceObject!=147460,deviceExtension__TargetDeviceObject!=147464,deviceExtension__TargetDeviceObject!=147468,deviceExtension__TargetDeviceObject!=147472,deviceExtension__TargetDeviceObject!=147476,deviceExtension__TargetDeviceObject!=147480,deviceExtension__TargetDeviceObject!=147496,deviceExtension__TargetDeviceObject!=147500,deviceExtension__TargetDeviceObject!=147508,deviceExtension__TargetDeviceObject!=147512,deviceExtension__TargetDeviceObject!=149504,deviceExtension__TargetDeviceObject!=149512,deviceExtension__TargetDeviceObject!=17,deviceExtension__TargetDeviceObject!=2,deviceExtension__TargetDeviceObject!=22,deviceExtension__TargetDeviceObject!=255,deviceExtension__TargetDeviceObject!=259,deviceExtension__TargetDeviceObject!=3,deviceExtension__TargetDeviceObject!=4,deviceExtension__TargetDeviceObject!=7,deviceExtension__TargetDeviceObject!=71,deviceExtension__TargetDeviceObject==(-1),deviceExtension__TargetDeviceObject==(-1073741637),deviceExtension__TargetDeviceObject==(-1073741670),deviceExtension__TargetDeviceObject==(-1073741764),deviceExtension__TargetDeviceObject==(-1073741789),deviceExtension__TargetDeviceObject==(-1073741802),deviceExtension__TargetDeviceObject==(-1073741803),deviceExtension__TargetDeviceObject==(-1073741808),deviceExtension__TargetDeviceObject==(-1073741820),deviceExtension__TargetDeviceObject==(-1073741823),deviceExtension__TargetDeviceObject==(-2147483626),deviceExtension__TargetDeviceObject==(-2147483631),deviceExtension__TargetDeviceObject==0,deviceExtension__TargetDeviceObject==1,deviceExtension__TargetDeviceObject==147456,deviceExtension__TargetDeviceObject==147460,deviceExtension__TargetDeviceObject==147464,deviceExtension__TargetDeviceObject==147468,deviceExtension__TargetDeviceObject==147472,deviceExtension__TargetDeviceObject==147476,deviceExtension__TargetDeviceObject==147480,deviceExtension__TargetDeviceObject==147496,deviceExtension__TargetDeviceObject==147500,deviceExtension__TargetDeviceObject==147508,deviceExtension__TargetDeviceObject==147512,deviceExtension__TargetDeviceObject==149504,deviceExtension__TargetDeviceObject==149512,deviceExtension__TargetDeviceObject==17,deviceExtension__TargetDeviceObject==2,deviceExtension__TargetDeviceObject==22,deviceExtension__TargetDeviceObject==255,deviceExtension__TargetDeviceObject==259,deviceExtension__TargetDeviceObject==3,deviceExtension__TargetDeviceObject==4,deviceExtension__TargetDeviceObject==7,deviceExtension__TargetDeviceObject==71} @*/ deviceExtension__TargetDeviceObject)
{ unsigned long __cil_tmp4 ;

  {
  {
  __cil_tmp4 =(unsigned long)status;
  if(__cil_tmp4 == -2147483626){

  }
  }
  {
  myStatus = status;
  IofCompleteRequest(Irp, 0);
  }
  return(status);
}
}
int CdAudio435DeviceControl(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741670),DeviceObject!=(-1073741764),DeviceObject!=(-1073741789),DeviceObject!=(-1073741802),DeviceObject!=(-1073741803),DeviceObject!=(-1073741808),DeviceObject!=(-1073741820),DeviceObject!=(-1073741823),DeviceObject!=(-2147483626),DeviceObject!=(-2147483631),DeviceObject!=0,DeviceObject!=1,DeviceObject!=147456,DeviceObject!=147460,DeviceObject!=147464,DeviceObject!=147468,DeviceObject!=147472,DeviceObject!=147476,DeviceObject!=147480,DeviceObject!=147496,DeviceObject!=147500,DeviceObject!=147508,DeviceObject!=147512,DeviceObject!=149504,DeviceObject!=149512,DeviceObject!=17,DeviceObject!=2,DeviceObject!=22,DeviceObject!=255,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=7,DeviceObject!=71,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741670),DeviceObject==(-1073741764),DeviceObject==(-1073741789),DeviceObject==(-1073741802),DeviceObject==(-1073741803),DeviceObject==(-1073741808),DeviceObject==(-1073741820),DeviceObject==(-1073741823),DeviceObject==(-2147483626),DeviceObject==(-2147483631),DeviceObject==0,DeviceObject==1,DeviceObject==147456,DeviceObject==147460,DeviceObject==147464,DeviceObject==147468,DeviceObject==147472,DeviceObject==147476,DeviceObject==147480,DeviceObject==147496,DeviceObject==147500,DeviceObject==147508,DeviceObject==147512,DeviceObject==149504,DeviceObject==149512,DeviceObject==17,DeviceObject==2,DeviceObject==22,DeviceObject==255,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==7,DeviceObject==71} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741670),Irp!=(-1073741764),Irp!=(-1073741789),Irp!=(-1073741802),Irp!=(-1073741803),Irp!=(-1073741808),Irp!=(-1073741820),Irp!=(-1073741823),Irp!=(-2147483626),Irp!=(-2147483631),Irp!=0,Irp!=1,Irp!=147456,Irp!=147460,Irp!=147464,Irp!=147468,Irp!=147472,Irp!=147476,Irp!=147480,Irp!=147496,Irp!=147500,Irp!=147508,Irp!=147512,Irp!=149504,Irp!=149512,Irp!=17,Irp!=2,Irp!=22,Irp!=255,Irp!=259,Irp!=3,Irp!=4,Irp!=7,Irp!=71,Irp==(-1),Irp==(-1073741637),Irp==(-1073741670),Irp==(-1073741764),Irp==(-1073741789),Irp==(-1073741802),Irp==(-1073741803),Irp==(-1073741808),Irp==(-1073741820),Irp==(-1073741823),Irp==(-2147483626),Irp==(-2147483631),Irp==0,Irp==1,Irp==147456,Irp==147460,Irp==147464,Irp==147468,Irp==147472,Irp==147476,Irp==147480,Irp==147496,Irp==147500,Irp==147508,Irp==147512,Irp==149504,Irp==149512,Irp==17,Irp==2,Irp==22,Irp==255,Irp==259,Irp==3,Irp==4,Irp==7,Irp==71} @*/ Irp)
{ int /*@  predicates{currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741637),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741670),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741764),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741789),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741802),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741803),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741808),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741820),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741823),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-2147483626),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-2147483631),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=0,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=1,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147456,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147460,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147464,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147468,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147472,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147476,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147480,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147496,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147500,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147508,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147512,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=149504,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=149512,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=17,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=2,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=22,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=255,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=259,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=3,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=4,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=7,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=71,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741637),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741670),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741764),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741789),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741802),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741803),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741808),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741820),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741823),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-2147483626),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-2147483631),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==0,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==1,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147456,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147460,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147464,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147468,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147472,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147476,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147480,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147496,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147500,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147508,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147512,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==149504,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==149512,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==17,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==2,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==22,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==255,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==259,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==3,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==4,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==7,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==71} @*/ currentIrpStack__Parameters__DeviceIoControl__IoControlCode = __VERIFIER_nondet_int();
  int /*@  predicates{currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741637),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741670),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741764),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741789),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741802),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741803),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741808),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741820),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-1073741823),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-2147483626),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=(-2147483631),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=0,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=1,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147456,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147460,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147464,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147468,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147472,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147476,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147480,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147496,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147500,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147508,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=147512,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=149504,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=149512,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=17,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=2,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=22,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=255,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=259,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=3,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=4,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=7,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength!=71,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741637),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741670),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741764),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741789),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741802),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741803),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741808),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741820),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-1073741823),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-2147483626),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==(-2147483631),currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==0,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==1,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147456,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147460,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147464,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147468,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147472,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147476,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147480,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147496,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147500,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147508,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==147512,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==149504,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==149512,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==17,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==2,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==22,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==255,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==259,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==3,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==4,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==7,currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength==71} @*/ currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength = __VERIFIER_nondet_int();
  int /*@  predicates{currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741637),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741670),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741764),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741789),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741802),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741803),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741808),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741820),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-1073741823),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-2147483626),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=(-2147483631),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=0,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=1,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147456,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147460,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147464,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147468,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147472,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147476,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147480,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147496,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147500,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147508,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=147512,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=149504,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=149512,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=17,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=2,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=22,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=255,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=259,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=3,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=4,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=7,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength!=71,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741637),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741670),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741764),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741789),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741802),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741803),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741808),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741820),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-1073741823),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-2147483626),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==(-2147483631),currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==0,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==1,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147456,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147460,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147464,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147468,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147472,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147476,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147480,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147496,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147500,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147508,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==147512,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==149504,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==149512,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==17,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==2,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==22,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==255,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==259,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==3,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==4,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==7,currentIrpStack__Parameters__DeviceIoControl__InputBufferLength==71} @*/ currentIrpStack__Parameters__DeviceIoControl__InputBufferLength = __VERIFIER_nondet_int();
  int /*@  predicates{TrackData__0!=(-1),TrackData__0!=(-1073741637),TrackData__0!=(-1073741670),TrackData__0!=(-1073741764),TrackData__0!=(-1073741789),TrackData__0!=(-1073741802),TrackData__0!=(-1073741803),TrackData__0!=(-1073741808),TrackData__0!=(-1073741820),TrackData__0!=(-1073741823),TrackData__0!=(-2147483626),TrackData__0!=(-2147483631),TrackData__0!=0,TrackData__0!=1,TrackData__0!=147456,TrackData__0!=147460,TrackData__0!=147464,TrackData__0!=147468,TrackData__0!=147472,TrackData__0!=147476,TrackData__0!=147480,TrackData__0!=147496,TrackData__0!=147500,TrackData__0!=147508,TrackData__0!=147512,TrackData__0!=149504,TrackData__0!=149512,TrackData__0!=17,TrackData__0!=2,TrackData__0!=22,TrackData__0!=255,TrackData__0!=259,TrackData__0!=3,TrackData__0!=4,TrackData__0!=7,TrackData__0!=71,TrackData__0==(-1),TrackData__0==(-1073741637),TrackData__0==(-1073741670),TrackData__0==(-1073741764),TrackData__0==(-1073741789),TrackData__0==(-1073741802),TrackData__0==(-1073741803),TrackData__0==(-1073741808),TrackData__0==(-1073741820),TrackData__0==(-1073741823),TrackData__0==(-2147483626),TrackData__0==(-2147483631),TrackData__0==0,TrackData__0==1,TrackData__0==147456,TrackData__0==147460,TrackData__0==147464,TrackData__0==147468,TrackData__0==147472,TrackData__0==147476,TrackData__0==147480,TrackData__0==147496,TrackData__0==147500,TrackData__0==147508,TrackData__0==147512,TrackData__0==149504,TrackData__0==149512,TrackData__0==17,TrackData__0==2,TrackData__0==22,TrackData__0==255,TrackData__0==259,TrackData__0==3,TrackData__0==4,TrackData__0==7,TrackData__0==71,TrackData__0>currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength} @*/ TrackData__0 = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__IoStatus__Information!=(-1),Irp__IoStatus__Information!=(-1073741637),Irp__IoStatus__Information!=(-1073741670),Irp__IoStatus__Information!=(-1073741764),Irp__IoStatus__Information!=(-1073741789),Irp__IoStatus__Information!=(-1073741802),Irp__IoStatus__Information!=(-1073741803),Irp__IoStatus__Information!=(-1073741808),Irp__IoStatus__Information!=(-1073741820),Irp__IoStatus__Information!=(-1073741823),Irp__IoStatus__Information!=(-2147483626),Irp__IoStatus__Information!=(-2147483631),Irp__IoStatus__Information!=0,Irp__IoStatus__Information!=1,Irp__IoStatus__Information!=147456,Irp__IoStatus__Information!=147460,Irp__IoStatus__Information!=147464,Irp__IoStatus__Information!=147468,Irp__IoStatus__Information!=147472,Irp__IoStatus__Information!=147476,Irp__IoStatus__Information!=147480,Irp__IoStatus__Information!=147496,Irp__IoStatus__Information!=147500,Irp__IoStatus__Information!=147508,Irp__IoStatus__Information!=147512,Irp__IoStatus__Information!=149504,Irp__IoStatus__Information!=149512,Irp__IoStatus__Information!=17,Irp__IoStatus__Information!=2,Irp__IoStatus__Information!=22,Irp__IoStatus__Information!=255,Irp__IoStatus__Information!=259,Irp__IoStatus__Information!=3,Irp__IoStatus__Information!=4,Irp__IoStatus__Information!=7,Irp__IoStatus__Information!=71,Irp__IoStatus__Information==(-1),Irp__IoStatus__Information==(-1073741637),Irp__IoStatus__Information==(-1073741670),Irp__IoStatus__Information==(-1073741764),Irp__IoStatus__Information==(-1073741789),Irp__IoStatus__Information==(-1073741802),Irp__IoStatus__Information==(-1073741803),Irp__IoStatus__Information==(-1073741808),Irp__IoStatus__Information==(-1073741820),Irp__IoStatus__Information==(-1073741823),Irp__IoStatus__Information==(-2147483626),Irp__IoStatus__Information==(-2147483631),Irp__IoStatus__Information==0,Irp__IoStatus__Information==1,Irp__IoStatus__Information==147456,Irp__IoStatus__Information==147460,Irp__IoStatus__Information==147464,Irp__IoStatus__Information==147468,Irp__IoStatus__Information==147472,Irp__IoStatus__Information==147476,Irp__IoStatus__Information==147480,Irp__IoStatus__Information==147496,Irp__IoStatus__Information==147500,Irp__IoStatus__Information==147508,Irp__IoStatus__Information==147512,Irp__IoStatus__Information==149504,Irp__IoStatus__Information==149512,Irp__IoStatus__Information==17,Irp__IoStatus__Information==2,Irp__IoStatus__Information==22,Irp__IoStatus__Information==255,Irp__IoStatus__Information==259,Irp__IoStatus__Information==3,Irp__IoStatus__Information==4,Irp__IoStatus__Information==7,Irp__IoStatus__Information==71} @*/ Irp__IoStatus__Information ;
  int /*@  predicates{srb__TimeOutValue==10} @*/ srb__TimeOutValue ;
  int /*@  predicates{srb__CdbLength==10} @*/ srb__CdbLength ;
  int /*@  predicates{sizeof__CDROM_TOC!=(-1),sizeof__CDROM_TOC!=(-1073741637),sizeof__CDROM_TOC!=(-1073741670),sizeof__CDROM_TOC!=(-1073741764),sizeof__CDROM_TOC!=(-1073741789),sizeof__CDROM_TOC!=(-1073741802),sizeof__CDROM_TOC!=(-1073741803),sizeof__CDROM_TOC!=(-1073741808),sizeof__CDROM_TOC!=(-1073741820),sizeof__CDROM_TOC!=(-1073741823),sizeof__CDROM_TOC!=(-2147483626),sizeof__CDROM_TOC!=(-2147483631),sizeof__CDROM_TOC!=0,sizeof__CDROM_TOC!=1,sizeof__CDROM_TOC!=147456,sizeof__CDROM_TOC!=147460,sizeof__CDROM_TOC!=147464,sizeof__CDROM_TOC!=147468,sizeof__CDROM_TOC!=147472,sizeof__CDROM_TOC!=147476,sizeof__CDROM_TOC!=147480,sizeof__CDROM_TOC!=147496,sizeof__CDROM_TOC!=147500,sizeof__CDROM_TOC!=147508,sizeof__CDROM_TOC!=147512,sizeof__CDROM_TOC!=149504,sizeof__CDROM_TOC!=149512,sizeof__CDROM_TOC!=17,sizeof__CDROM_TOC!=2,sizeof__CDROM_TOC!=22,sizeof__CDROM_TOC!=255,sizeof__CDROM_TOC!=259,sizeof__CDROM_TOC!=3,sizeof__CDROM_TOC!=4,sizeof__CDROM_TOC!=7,sizeof__CDROM_TOC!=71,sizeof__CDROM_TOC<currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength,sizeof__CDROM_TOC==(-1),sizeof__CDROM_TOC==(-1073741637),sizeof__CDROM_TOC==(-1073741670),sizeof__CDROM_TOC==(-1073741764),sizeof__CDROM_TOC==(-1073741789),sizeof__CDROM_TOC==(-1073741802),sizeof__CDROM_TOC==(-1073741803),sizeof__CDROM_TOC==(-1073741808),sizeof__CDROM_TOC==(-1073741820),sizeof__CDROM_TOC==(-1073741823),sizeof__CDROM_TOC==(-2147483626),sizeof__CDROM_TOC==(-2147483631),sizeof__CDROM_TOC==0,sizeof__CDROM_TOC==1,sizeof__CDROM_TOC==147456,sizeof__CDROM_TOC==147460,sizeof__CDROM_TOC==147464,sizeof__CDROM_TOC==147468,sizeof__CDROM_TOC==147472,sizeof__CDROM_TOC==147476,sizeof__CDROM_TOC==147480,sizeof__CDROM_TOC==147496,sizeof__CDROM_TOC==147500,sizeof__CDROM_TOC==147508,sizeof__CDROM_TOC==147512,sizeof__CDROM_TOC==149504,sizeof__CDROM_TOC==149512,sizeof__CDROM_TOC==17,sizeof__CDROM_TOC==2,sizeof__CDROM_TOC==22,sizeof__CDROM_TOC==255,sizeof__CDROM_TOC==259,sizeof__CDROM_TOC==3,sizeof__CDROM_TOC==4,sizeof__CDROM_TOC==7,sizeof__CDROM_TOC==71,sizeof__CDROM_TOC>currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength} @*/ sizeof__CDROM_TOC = __VERIFIER_nondet_int();
  int /*@  predicates{cdaudioDataOut__LastTrack!=(-1),cdaudioDataOut__LastTrack!=(-1073741637),cdaudioDataOut__LastTrack!=(-1073741670),cdaudioDataOut__LastTrack!=(-1073741764),cdaudioDataOut__LastTrack!=(-1073741789),cdaudioDataOut__LastTrack!=(-1073741802),cdaudioDataOut__LastTrack!=(-1073741803),cdaudioDataOut__LastTrack!=(-1073741808),cdaudioDataOut__LastTrack!=(-1073741820),cdaudioDataOut__LastTrack!=(-1073741823),cdaudioDataOut__LastTrack!=(-2147483626),cdaudioDataOut__LastTrack!=(-2147483631),cdaudioDataOut__LastTrack!=0,cdaudioDataOut__LastTrack!=1,cdaudioDataOut__LastTrack!=147456,cdaudioDataOut__LastTrack!=147460,cdaudioDataOut__LastTrack!=147464,cdaudioDataOut__LastTrack!=147468,cdaudioDataOut__LastTrack!=147472,cdaudioDataOut__LastTrack!=147476,cdaudioDataOut__LastTrack!=147480,cdaudioDataOut__LastTrack!=147496,cdaudioDataOut__LastTrack!=147500,cdaudioDataOut__LastTrack!=147508,cdaudioDataOut__LastTrack!=147512,cdaudioDataOut__LastTrack!=149504,cdaudioDataOut__LastTrack!=149512,cdaudioDataOut__LastTrack!=17,cdaudioDataOut__LastTrack!=2,cdaudioDataOut__LastTrack!=22,cdaudioDataOut__LastTrack!=255,cdaudioDataOut__LastTrack!=259,cdaudioDataOut__LastTrack!=3,cdaudioDataOut__LastTrack!=4,cdaudioDataOut__LastTrack!=7,cdaudioDataOut__LastTrack!=71,cdaudioDataOut__LastTrack==(-1),cdaudioDataOut__LastTrack==(-1073741637),cdaudioDataOut__LastTrack==(-1073741670),cdaudioDataOut__LastTrack==(-1073741764),cdaudioDataOut__LastTrack==(-1073741789),cdaudioDataOut__LastTrack==(-1073741802),cdaudioDataOut__LastTrack==(-1073741803),cdaudioDataOut__LastTrack==(-1073741808),cdaudioDataOut__LastTrack==(-1073741820),cdaudioDataOut__LastTrack==(-1073741823),cdaudioDataOut__LastTrack==(-2147483626),cdaudioDataOut__LastTrack==(-2147483631),cdaudioDataOut__LastTrack==0,cdaudioDataOut__LastTrack==1,cdaudioDataOut__LastTrack==147456,cdaudioDataOut__LastTrack==147460,cdaudioDataOut__LastTrack==147464,cdaudioDataOut__LastTrack==147468,cdaudioDataOut__LastTrack==147472,cdaudioDataOut__LastTrack==147476,cdaudioDataOut__LastTrack==147480,cdaudioDataOut__LastTrack==147496,cdaudioDataOut__LastTrack==147500,cdaudioDataOut__LastTrack==147508,cdaudioDataOut__LastTrack==147512,cdaudioDataOut__LastTrack==149504,cdaudioDataOut__LastTrack==149512,cdaudioDataOut__LastTrack==17,cdaudioDataOut__LastTrack==2,cdaudioDataOut__LastTrack==22,cdaudioDataOut__LastTrack==255,cdaudioDataOut__LastTrack==259,cdaudioDataOut__LastTrack==3,cdaudioDataOut__LastTrack==4,cdaudioDataOut__LastTrack==7,cdaudioDataOut__LastTrack==71} @*/ cdaudioDataOut__LastTrack = __VERIFIER_nondet_int();
  int /*@  predicates{cdaudioDataOut__FirstTrack!=(-1),cdaudioDataOut__FirstTrack!=(-1073741637),cdaudioDataOut__FirstTrack!=(-1073741670),cdaudioDataOut__FirstTrack!=(-1073741764),cdaudioDataOut__FirstTrack!=(-1073741789),cdaudioDataOut__FirstTrack!=(-1073741802),cdaudioDataOut__FirstTrack!=(-1073741803),cdaudioDataOut__FirstTrack!=(-1073741808),cdaudioDataOut__FirstTrack!=(-1073741820),cdaudioDataOut__FirstTrack!=(-1073741823),cdaudioDataOut__FirstTrack!=(-2147483626),cdaudioDataOut__FirstTrack!=(-2147483631),cdaudioDataOut__FirstTrack!=0,cdaudioDataOut__FirstTrack!=1,cdaudioDataOut__FirstTrack!=147456,cdaudioDataOut__FirstTrack!=147460,cdaudioDataOut__FirstTrack!=147464,cdaudioDataOut__FirstTrack!=147468,cdaudioDataOut__FirstTrack!=147472,cdaudioDataOut__FirstTrack!=147476,cdaudioDataOut__FirstTrack!=147480,cdaudioDataOut__FirstTrack!=147496,cdaudioDataOut__FirstTrack!=147500,cdaudioDataOut__FirstTrack!=147508,cdaudioDataOut__FirstTrack!=147512,cdaudioDataOut__FirstTrack!=149504,cdaudioDataOut__FirstTrack!=149512,cdaudioDataOut__FirstTrack!=17,cdaudioDataOut__FirstTrack!=2,cdaudioDataOut__FirstTrack!=22,cdaudioDataOut__FirstTrack!=255,cdaudioDataOut__FirstTrack!=259,cdaudioDataOut__FirstTrack!=3,cdaudioDataOut__FirstTrack!=4,cdaudioDataOut__FirstTrack!=7,cdaudioDataOut__FirstTrack!=71,cdaudioDataOut__FirstTrack==(-1),cdaudioDataOut__FirstTrack==(-1073741637),cdaudioDataOut__FirstTrack==(-1073741670),cdaudioDataOut__FirstTrack==(-1073741764),cdaudioDataOut__FirstTrack==(-1073741789),cdaudioDataOut__FirstTrack==(-1073741802),cdaudioDataOut__FirstTrack==(-1073741803),cdaudioDataOut__FirstTrack==(-1073741808),cdaudioDataOut__FirstTrack==(-1073741820),cdaudioDataOut__FirstTrack==(-1073741823),cdaudioDataOut__FirstTrack==(-2147483626),cdaudioDataOut__FirstTrack==(-2147483631),cdaudioDataOut__FirstTrack==0,cdaudioDataOut__FirstTrack==1,cdaudioDataOut__FirstTrack==147456,cdaudioDataOut__FirstTrack==147460,cdaudioDataOut__FirstTrack==147464,cdaudioDataOut__FirstTrack==147468,cdaudioDataOut__FirstTrack==147472,cdaudioDataOut__FirstTrack==147476,cdaudioDataOut__FirstTrack==147480,cdaudioDataOut__FirstTrack==147496,cdaudioDataOut__FirstTrack==147500,cdaudioDataOut__FirstTrack==147508,cdaudioDataOut__FirstTrack==147512,cdaudioDataOut__FirstTrack==149504,cdaudioDataOut__FirstTrack==149512,cdaudioDataOut__FirstTrack==17,cdaudioDataOut__FirstTrack==2,cdaudioDataOut__FirstTrack==22,cdaudioDataOut__FirstTrack==255,cdaudioDataOut__FirstTrack==259,cdaudioDataOut__FirstTrack==3,cdaudioDataOut__FirstTrack==4,cdaudioDataOut__FirstTrack==7,cdaudioDataOut__FirstTrack==71} @*/ cdaudioDataOut__FirstTrack = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__CDROM_PLAY_AUDIO_MSF!=(-1),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741637),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741670),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741764),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741789),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741802),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741803),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741808),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741820),sizeof__CDROM_PLAY_AUDIO_MSF!=(-1073741823),sizeof__CDROM_PLAY_AUDIO_MSF!=(-2147483626),sizeof__CDROM_PLAY_AUDIO_MSF!=(-2147483631),sizeof__CDROM_PLAY_AUDIO_MSF!=0,sizeof__CDROM_PLAY_AUDIO_MSF!=1,sizeof__CDROM_PLAY_AUDIO_MSF!=147456,sizeof__CDROM_PLAY_AUDIO_MSF!=147460,sizeof__CDROM_PLAY_AUDIO_MSF!=147464,sizeof__CDROM_PLAY_AUDIO_MSF!=147468,sizeof__CDROM_PLAY_AUDIO_MSF!=147472,sizeof__CDROM_PLAY_AUDIO_MSF!=147476,sizeof__CDROM_PLAY_AUDIO_MSF!=147480,sizeof__CDROM_PLAY_AUDIO_MSF!=147496,sizeof__CDROM_PLAY_AUDIO_MSF!=147500,sizeof__CDROM_PLAY_AUDIO_MSF!=147508,sizeof__CDROM_PLAY_AUDIO_MSF!=147512,sizeof__CDROM_PLAY_AUDIO_MSF!=149504,sizeof__CDROM_PLAY_AUDIO_MSF!=149512,sizeof__CDROM_PLAY_AUDIO_MSF!=17,sizeof__CDROM_PLAY_AUDIO_MSF!=2,sizeof__CDROM_PLAY_AUDIO_MSF!=22,sizeof__CDROM_PLAY_AUDIO_MSF!=255,sizeof__CDROM_PLAY_AUDIO_MSF!=259,sizeof__CDROM_PLAY_AUDIO_MSF!=3,sizeof__CDROM_PLAY_AUDIO_MSF!=4,sizeof__CDROM_PLAY_AUDIO_MSF!=7,sizeof__CDROM_PLAY_AUDIO_MSF!=71,sizeof__CDROM_PLAY_AUDIO_MSF==(-1),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741637),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741670),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741764),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741789),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741802),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741803),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741808),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741820),sizeof__CDROM_PLAY_AUDIO_MSF==(-1073741823),sizeof__CDROM_PLAY_AUDIO_MSF==(-2147483626),sizeof__CDROM_PLAY_AUDIO_MSF==(-2147483631),sizeof__CDROM_PLAY_AUDIO_MSF==0,sizeof__CDROM_PLAY_AUDIO_MSF==1,sizeof__CDROM_PLAY_AUDIO_MSF==147456,sizeof__CDROM_PLAY_AUDIO_MSF==147460,sizeof__CDROM_PLAY_AUDIO_MSF==147464,sizeof__CDROM_PLAY_AUDIO_MSF==147468,sizeof__CDROM_PLAY_AUDIO_MSF==147472,sizeof__CDROM_PLAY_AUDIO_MSF==147476,sizeof__CDROM_PLAY_AUDIO_MSF==147480,sizeof__CDROM_PLAY_AUDIO_MSF==147496,sizeof__CDROM_PLAY_AUDIO_MSF==147500,sizeof__CDROM_PLAY_AUDIO_MSF==147508,sizeof__CDROM_PLAY_AUDIO_MSF==147512,sizeof__CDROM_PLAY_AUDIO_MSF==149504,sizeof__CDROM_PLAY_AUDIO_MSF==149512,sizeof__CDROM_PLAY_AUDIO_MSF==17,sizeof__CDROM_PLAY_AUDIO_MSF==2,sizeof__CDROM_PLAY_AUDIO_MSF==22,sizeof__CDROM_PLAY_AUDIO_MSF==255,sizeof__CDROM_PLAY_AUDIO_MSF==259,sizeof__CDROM_PLAY_AUDIO_MSF==3,sizeof__CDROM_PLAY_AUDIO_MSF==4,sizeof__CDROM_PLAY_AUDIO_MSF==7,sizeof__CDROM_PLAY_AUDIO_MSF==71,sizeof__CDROM_PLAY_AUDIO_MSF>currentIrpStack__Parameters__DeviceIoControl__InputBufferLength} @*/ sizeof__CDROM_PLAY_AUDIO_MSF = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__CDROM_SEEK_AUDIO_MSF!=(-1),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741637),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741670),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741764),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741789),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741802),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741803),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741808),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741820),sizeof__CDROM_SEEK_AUDIO_MSF!=(-1073741823),sizeof__CDROM_SEEK_AUDIO_MSF!=(-2147483626),sizeof__CDROM_SEEK_AUDIO_MSF!=(-2147483631),sizeof__CDROM_SEEK_AUDIO_MSF!=0,sizeof__CDROM_SEEK_AUDIO_MSF!=1,sizeof__CDROM_SEEK_AUDIO_MSF!=147456,sizeof__CDROM_SEEK_AUDIO_MSF!=147460,sizeof__CDROM_SEEK_AUDIO_MSF!=147464,sizeof__CDROM_SEEK_AUDIO_MSF!=147468,sizeof__CDROM_SEEK_AUDIO_MSF!=147472,sizeof__CDROM_SEEK_AUDIO_MSF!=147476,sizeof__CDROM_SEEK_AUDIO_MSF!=147480,sizeof__CDROM_SEEK_AUDIO_MSF!=147496,sizeof__CDROM_SEEK_AUDIO_MSF!=147500,sizeof__CDROM_SEEK_AUDIO_MSF!=147508,sizeof__CDROM_SEEK_AUDIO_MSF!=147512,sizeof__CDROM_SEEK_AUDIO_MSF!=149504,sizeof__CDROM_SEEK_AUDIO_MSF!=149512,sizeof__CDROM_SEEK_AUDIO_MSF!=17,sizeof__CDROM_SEEK_AUDIO_MSF!=2,sizeof__CDROM_SEEK_AUDIO_MSF!=22,sizeof__CDROM_SEEK_AUDIO_MSF!=255,sizeof__CDROM_SEEK_AUDIO_MSF!=259,sizeof__CDROM_SEEK_AUDIO_MSF!=3,sizeof__CDROM_SEEK_AUDIO_MSF!=4,sizeof__CDROM_SEEK_AUDIO_MSF!=7,sizeof__CDROM_SEEK_AUDIO_MSF!=71,sizeof__CDROM_SEEK_AUDIO_MSF==(-1),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741637),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741670),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741764),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741789),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741802),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741803),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741808),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741820),sizeof__CDROM_SEEK_AUDIO_MSF==(-1073741823),sizeof__CDROM_SEEK_AUDIO_MSF==(-2147483626),sizeof__CDROM_SEEK_AUDIO_MSF==(-2147483631),sizeof__CDROM_SEEK_AUDIO_MSF==0,sizeof__CDROM_SEEK_AUDIO_MSF==1,sizeof__CDROM_SEEK_AUDIO_MSF==147456,sizeof__CDROM_SEEK_AUDIO_MSF==147460,sizeof__CDROM_SEEK_AUDIO_MSF==147464,sizeof__CDROM_SEEK_AUDIO_MSF==147468,sizeof__CDROM_SEEK_AUDIO_MSF==147472,sizeof__CDROM_SEEK_AUDIO_MSF==147476,sizeof__CDROM_SEEK_AUDIO_MSF==147480,sizeof__CDROM_SEEK_AUDIO_MSF==147496,sizeof__CDROM_SEEK_AUDIO_MSF==147500,sizeof__CDROM_SEEK_AUDIO_MSF==147508,sizeof__CDROM_SEEK_AUDIO_MSF==147512,sizeof__CDROM_SEEK_AUDIO_MSF==149504,sizeof__CDROM_SEEK_AUDIO_MSF==149512,sizeof__CDROM_SEEK_AUDIO_MSF==17,sizeof__CDROM_SEEK_AUDIO_MSF==2,sizeof__CDROM_SEEK_AUDIO_MSF==22,sizeof__CDROM_SEEK_AUDIO_MSF==255,sizeof__CDROM_SEEK_AUDIO_MSF==259,sizeof__CDROM_SEEK_AUDIO_MSF==3,sizeof__CDROM_SEEK_AUDIO_MSF==4,sizeof__CDROM_SEEK_AUDIO_MSF==7,sizeof__CDROM_SEEK_AUDIO_MSF==71,sizeof__CDROM_SEEK_AUDIO_MSF>currentIrpStack__Parameters__DeviceIoControl__InputBufferLength} @*/ sizeof__CDROM_SEEK_AUDIO_MSF = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension__Paused!=(-1),deviceExtension__Paused!=(-1073741637),deviceExtension__Paused!=(-1073741670),deviceExtension__Paused!=(-1073741764),deviceExtension__Paused!=(-1073741789),deviceExtension__Paused!=(-1073741802),deviceExtension__Paused!=(-1073741803),deviceExtension__Paused!=(-1073741808),deviceExtension__Paused!=(-1073741820),deviceExtension__Paused!=(-1073741823),deviceExtension__Paused!=(-2147483626),deviceExtension__Paused!=(-2147483631),deviceExtension__Paused!=0,deviceExtension__Paused!=1,deviceExtension__Paused!=147456,deviceExtension__Paused!=147460,deviceExtension__Paused!=147464,deviceExtension__Paused!=147468,deviceExtension__Paused!=147472,deviceExtension__Paused!=147476,deviceExtension__Paused!=147480,deviceExtension__Paused!=147496,deviceExtension__Paused!=147500,deviceExtension__Paused!=147508,deviceExtension__Paused!=147512,deviceExtension__Paused!=149504,deviceExtension__Paused!=149512,deviceExtension__Paused!=17,deviceExtension__Paused!=2,deviceExtension__Paused!=22,deviceExtension__Paused!=255,deviceExtension__Paused!=259,deviceExtension__Paused!=3,deviceExtension__Paused!=4,deviceExtension__Paused!=7,deviceExtension__Paused!=71,deviceExtension__Paused==(-1),deviceExtension__Paused==(-1073741637),deviceExtension__Paused==(-1073741670),deviceExtension__Paused==(-1073741764),deviceExtension__Paused==(-1073741789),deviceExtension__Paused==(-1073741802),deviceExtension__Paused==(-1073741803),deviceExtension__Paused==(-1073741808),deviceExtension__Paused==(-1073741820),deviceExtension__Paused==(-1073741823),deviceExtension__Paused==(-2147483626),deviceExtension__Paused==(-2147483631),deviceExtension__Paused==0,deviceExtension__Paused==1,deviceExtension__Paused==147456,deviceExtension__Paused==147460,deviceExtension__Paused==147464,deviceExtension__Paused==147468,deviceExtension__Paused==147472,deviceExtension__Paused==147476,deviceExtension__Paused==147480,deviceExtension__Paused==147496,deviceExtension__Paused==147500,deviceExtension__Paused==147508,deviceExtension__Paused==147512,deviceExtension__Paused==149504,deviceExtension__Paused==149512,deviceExtension__Paused==17,deviceExtension__Paused==2,deviceExtension__Paused==22,deviceExtension__Paused==255,deviceExtension__Paused==259,deviceExtension__Paused==3,deviceExtension__Paused==4,deviceExtension__Paused==7,deviceExtension__Paused==71} @*/ deviceExtension__Paused = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension__PlayActive==0,deviceExtension__PlayActive==1} @*/ deviceExtension__PlayActive ;
  int /*@  predicates{sizeof__SUB_Q_CHANNEL_DATA!=(-1),sizeof__SUB_Q_CHANNEL_DATA!=(-1073741637),sizeof__SUB_Q_CHANNEL_DATA!=(-1073741670),sizeof__SUB_Q_CHANNEL_DATA!=(-1073741764),sizeof__SUB_Q_CHANNEL_DATA!=(-1073741789),sizeof__SUB_Q_CHANNEL_DATA!=(-1073741802),sizeof__SUB_Q_CHANNEL_DATA!=(-1073741803),sizeof__SUB_Q_CHANNEL_DATA!=(-1073741808),sizeof__SUB_Q_CHANNEL_DATA!=(-1073741820),sizeof__SUB_Q_CHANNEL_DATA!=(-1073741823),sizeof__SUB_Q_CHANNEL_DATA!=(-2147483626),sizeof__SUB_Q_CHANNEL_DATA!=(-2147483631),sizeof__SUB_Q_CHANNEL_DATA!=0,sizeof__SUB_Q_CHANNEL_DATA!=1,sizeof__SUB_Q_CHANNEL_DATA!=147456,sizeof__SUB_Q_CHANNEL_DATA!=147460,sizeof__SUB_Q_CHANNEL_DATA!=147464,sizeof__SUB_Q_CHANNEL_DATA!=147468,sizeof__SUB_Q_CHANNEL_DATA!=147472,sizeof__SUB_Q_CHANNEL_DATA!=147476,sizeof__SUB_Q_CHANNEL_DATA!=147480,sizeof__SUB_Q_CHANNEL_DATA!=147496,sizeof__SUB_Q_CHANNEL_DATA!=147500,sizeof__SUB_Q_CHANNEL_DATA!=147508,sizeof__SUB_Q_CHANNEL_DATA!=147512,sizeof__SUB_Q_CHANNEL_DATA!=149504,sizeof__SUB_Q_CHANNEL_DATA!=149512,sizeof__SUB_Q_CHANNEL_DATA!=17,sizeof__SUB_Q_CHANNEL_DATA!=2,sizeof__SUB_Q_CHANNEL_DATA!=22,sizeof__SUB_Q_CHANNEL_DATA!=255,sizeof__SUB_Q_CHANNEL_DATA!=259,sizeof__SUB_Q_CHANNEL_DATA!=3,sizeof__SUB_Q_CHANNEL_DATA!=4,sizeof__SUB_Q_CHANNEL_DATA!=7,sizeof__SUB_Q_CHANNEL_DATA!=71,sizeof__SUB_Q_CHANNEL_DATA==(-1),sizeof__SUB_Q_CHANNEL_DATA==(-1073741637),sizeof__SUB_Q_CHANNEL_DATA==(-1073741670),sizeof__SUB_Q_CHANNEL_DATA==(-1073741764),sizeof__SUB_Q_CHANNEL_DATA==(-1073741789),sizeof__SUB_Q_CHANNEL_DATA==(-1073741802),sizeof__SUB_Q_CHANNEL_DATA==(-1073741803),sizeof__SUB_Q_CHANNEL_DATA==(-1073741808),sizeof__SUB_Q_CHANNEL_DATA==(-1073741820),sizeof__SUB_Q_CHANNEL_DATA==(-1073741823),sizeof__SUB_Q_CHANNEL_DATA==(-2147483626),sizeof__SUB_Q_CHANNEL_DATA==(-2147483631),sizeof__SUB_Q_CHANNEL_DATA==0,sizeof__SUB_Q_CHANNEL_DATA==1,sizeof__SUB_Q_CHANNEL_DATA==147456,sizeof__SUB_Q_CHANNEL_DATA==147460,sizeof__SUB_Q_CHANNEL_DATA==147464,sizeof__SUB_Q_CHANNEL_DATA==147468,sizeof__SUB_Q_CHANNEL_DATA==147472,sizeof__SUB_Q_CHANNEL_DATA==147476,sizeof__SUB_Q_CHANNEL_DATA==147480,sizeof__SUB_Q_CHANNEL_DATA==147496,sizeof__SUB_Q_CHANNEL_DATA==147500,sizeof__SUB_Q_CHANNEL_DATA==147508,sizeof__SUB_Q_CHANNEL_DATA==147512,sizeof__SUB_Q_CHANNEL_DATA==149504,sizeof__SUB_Q_CHANNEL_DATA==149512,sizeof__SUB_Q_CHANNEL_DATA==17,sizeof__SUB_Q_CHANNEL_DATA==2,sizeof__SUB_Q_CHANNEL_DATA==22,sizeof__SUB_Q_CHANNEL_DATA==255,sizeof__SUB_Q_CHANNEL_DATA==259,sizeof__SUB_Q_CHANNEL_DATA==3,sizeof__SUB_Q_CHANNEL_DATA==4,sizeof__SUB_Q_CHANNEL_DATA==7,sizeof__SUB_Q_CHANNEL_DATA==71} @*/ sizeof__SUB_Q_CHANNEL_DATA = __VERIFIER_nondet_int();
  int /*@  predicates{sizeof__SUB_Q_CURRENT_POSITION!=(-1),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741637),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741670),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741764),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741789),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741802),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741803),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741808),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741820),sizeof__SUB_Q_CURRENT_POSITION!=(-1073741823),sizeof__SUB_Q_CURRENT_POSITION!=(-2147483626),sizeof__SUB_Q_CURRENT_POSITION!=(-2147483631),sizeof__SUB_Q_CURRENT_POSITION!=0,sizeof__SUB_Q_CURRENT_POSITION!=1,sizeof__SUB_Q_CURRENT_POSITION!=147456,sizeof__SUB_Q_CURRENT_POSITION!=147460,sizeof__SUB_Q_CURRENT_POSITION!=147464,sizeof__SUB_Q_CURRENT_POSITION!=147468,sizeof__SUB_Q_CURRENT_POSITION!=147472,sizeof__SUB_Q_CURRENT_POSITION!=147476,sizeof__SUB_Q_CURRENT_POSITION!=147480,sizeof__SUB_Q_CURRENT_POSITION!=147496,sizeof__SUB_Q_CURRENT_POSITION!=147500,sizeof__SUB_Q_CURRENT_POSITION!=147508,sizeof__SUB_Q_CURRENT_POSITION!=147512,sizeof__SUB_Q_CURRENT_POSITION!=149504,sizeof__SUB_Q_CURRENT_POSITION!=149512,sizeof__SUB_Q_CURRENT_POSITION!=17,sizeof__SUB_Q_CURRENT_POSITION!=2,sizeof__SUB_Q_CURRENT_POSITION!=22,sizeof__SUB_Q_CURRENT_POSITION!=255,sizeof__SUB_Q_CURRENT_POSITION!=259,sizeof__SUB_Q_CURRENT_POSITION!=3,sizeof__SUB_Q_CURRENT_POSITION!=4,sizeof__SUB_Q_CURRENT_POSITION!=7,sizeof__SUB_Q_CURRENT_POSITION!=71,sizeof__SUB_Q_CURRENT_POSITION==(-1),sizeof__SUB_Q_CURRENT_POSITION==(-1073741637),sizeof__SUB_Q_CURRENT_POSITION==(-1073741670),sizeof__SUB_Q_CURRENT_POSITION==(-1073741764),sizeof__SUB_Q_CURRENT_POSITION==(-1073741789),sizeof__SUB_Q_CURRENT_POSITION==(-1073741802),sizeof__SUB_Q_CURRENT_POSITION==(-1073741803),sizeof__SUB_Q_CURRENT_POSITION==(-1073741808),sizeof__SUB_Q_CURRENT_POSITION==(-1073741820),sizeof__SUB_Q_CURRENT_POSITION==(-1073741823),sizeof__SUB_Q_CURRENT_POSITION==(-2147483626),sizeof__SUB_Q_CURRENT_POSITION==(-2147483631),sizeof__SUB_Q_CURRENT_POSITION==0,sizeof__SUB_Q_CURRENT_POSITION==1,sizeof__SUB_Q_CURRENT_POSITION==147456,sizeof__SUB_Q_CURRENT_POSITION==147460,sizeof__SUB_Q_CURRENT_POSITION==147464,sizeof__SUB_Q_CURRENT_POSITION==147468,sizeof__SUB_Q_CURRENT_POSITION==147472,sizeof__SUB_Q_CURRENT_POSITION==147476,sizeof__SUB_Q_CURRENT_POSITION==147480,sizeof__SUB_Q_CURRENT_POSITION==147496,sizeof__SUB_Q_CURRENT_POSITION==147500,sizeof__SUB_Q_CURRENT_POSITION==147508,sizeof__SUB_Q_CURRENT_POSITION==147512,sizeof__SUB_Q_CURRENT_POSITION==149504,sizeof__SUB_Q_CURRENT_POSITION==149512,sizeof__SUB_Q_CURRENT_POSITION==17,sizeof__SUB_Q_CURRENT_POSITION==2,sizeof__SUB_Q_CURRENT_POSITION==22,sizeof__SUB_Q_CURRENT_POSITION==255,sizeof__SUB_Q_CURRENT_POSITION==259,sizeof__SUB_Q_CURRENT_POSITION==3,sizeof__SUB_Q_CURRENT_POSITION==4,sizeof__SUB_Q_CURRENT_POSITION==7,sizeof__SUB_Q_CURRENT_POSITION==71,sizeof__SUB_Q_CURRENT_POSITION==Irp__IoStatus__Information,sizeof__SUB_Q_CURRENT_POSITION>currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength} @*/ sizeof__SUB_Q_CURRENT_POSITION = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension!=(-1),deviceExtension!=(-1073741637),deviceExtension!=(-1073741670),deviceExtension!=(-1073741764),deviceExtension!=(-1073741789),deviceExtension!=(-1073741802),deviceExtension!=(-1073741803),deviceExtension!=(-1073741808),deviceExtension!=(-1073741820),deviceExtension!=(-1073741823),deviceExtension!=(-2147483626),deviceExtension!=(-2147483631),deviceExtension!=0,deviceExtension!=1,deviceExtension!=147456,deviceExtension!=147460,deviceExtension!=147464,deviceExtension!=147468,deviceExtension!=147472,deviceExtension!=147476,deviceExtension!=147480,deviceExtension!=147496,deviceExtension!=147500,deviceExtension!=147508,deviceExtension!=147512,deviceExtension!=149504,deviceExtension!=149512,deviceExtension!=17,deviceExtension!=2,deviceExtension!=22,deviceExtension!=255,deviceExtension!=259,deviceExtension!=3,deviceExtension!=4,deviceExtension!=7,deviceExtension!=71,deviceExtension==(-1),deviceExtension==(-1073741637),deviceExtension==(-1073741670),deviceExtension==(-1073741764),deviceExtension==(-1073741789),deviceExtension==(-1073741802),deviceExtension==(-1073741803),deviceExtension==(-1073741808),deviceExtension==(-1073741820),deviceExtension==(-1073741823),deviceExtension==(-2147483626),deviceExtension==(-2147483631),deviceExtension==0,deviceExtension==1,deviceExtension==147456,deviceExtension==147460,deviceExtension==147464,deviceExtension==147468,deviceExtension==147472,deviceExtension==147476,deviceExtension==147480,deviceExtension==147496,deviceExtension==147500,deviceExtension==147508,deviceExtension==147512,deviceExtension==149504,deviceExtension==149512,deviceExtension==17,deviceExtension==2,deviceExtension==22,deviceExtension==255,deviceExtension==259,deviceExtension==3,deviceExtension==4,deviceExtension==7,deviceExtension==71} @*/ deviceExtension = __VERIFIER_nondet_int();
  int /*@  predicates{srb!=(-1),srb!=(-1073741637),srb!=(-1073741670),srb!=(-1073741764),srb!=(-1073741789),srb!=(-1073741802),srb!=(-1073741803),srb!=(-1073741808),srb!=(-1073741820),srb!=(-1073741823),srb!=(-2147483626),srb!=(-2147483631),srb!=0,srb!=1,srb!=147456,srb!=147460,srb!=147464,srb!=147468,srb!=147472,srb!=147476,srb!=147480,srb!=147496,srb!=147500,srb!=147508,srb!=147512,srb!=149504,srb!=149512,srb!=17,srb!=2,srb!=22,srb!=255,srb!=259,srb!=3,srb!=4,srb!=7,srb!=71,srb==(-1),srb==(-1073741637),srb==(-1073741670),srb==(-1073741764),srb==(-1073741789),srb==(-1073741802),srb==(-1073741803),srb==(-1073741808),srb==(-1073741820),srb==(-1073741823),srb==(-2147483626),srb==(-2147483631),srb==0,srb==1,srb==147456,srb==147460,srb==147464,srb==147468,srb==147472,srb==147476,srb==147480,srb==147496,srb==147500,srb==147508,srb==147512,srb==149504,srb==149512,srb==17,srb==2,srb==22,srb==255,srb==259,srb==3,srb==4,srb==7,srb==71} @*/ srb = __VERIFIER_nondet_int();
  int /*@  predicates{status!=(-1),status!=(-1073741637),status!=(-1073741670),status!=(-1073741764),status!=(-1073741789),status!=(-1073741802),status!=(-1073741803),status!=(-1073741808),status!=(-1073741820),status!=(-1073741823),status!=(-2147483626),status!=(-2147483631),status!=0,status!=1,status!=147456,status!=147460,status!=147464,status!=147468,status!=147472,status!=147476,status!=147480,status!=147496,status!=147500,status!=147508,status!=147512,status!=149504,status!=149512,status!=17,status!=2,status!=22,status!=255,status!=259,status!=3,status!=4,status!=7,status!=71,status<0,status<status,status==(-1),status==(-1073741637),status==(-1073741670),status==(-1073741764),status==(-1073741789),status==(-1073741802),status==(-1073741803),status==(-1073741808),status==(-1073741820),status==(-1073741823),status==(-2147483626),status==(-2147483631),status==0,status==1,status==147456,status==147460,status==147464,status==147468,status==147472,status==147476,status==147480,status==147496,status==147500,status==147508,status==147512,status==149504,status==149512,status==17,status==2,status==22,status==255,status==259,status==3,status==4,status==7,status==71,status==myStatus} @*/ status ;
  int i = __VERIFIER_nondet_int();
  int /*@  predicates{bytesTransfered!=(-1),bytesTransfered!=(-1073741637),bytesTransfered!=(-1073741670),bytesTransfered!=(-1073741764),bytesTransfered!=(-1073741789),bytesTransfered!=(-1073741802),bytesTransfered!=(-1073741803),bytesTransfered!=(-1073741808),bytesTransfered!=(-1073741820),bytesTransfered!=(-1073741823),bytesTransfered!=(-2147483626),bytesTransfered!=(-2147483631),bytesTransfered!=0,bytesTransfered!=1,bytesTransfered!=147456,bytesTransfered!=147460,bytesTransfered!=147464,bytesTransfered!=147468,bytesTransfered!=147472,bytesTransfered!=147476,bytesTransfered!=147480,bytesTransfered!=147496,bytesTransfered!=147500,bytesTransfered!=147508,bytesTransfered!=147512,bytesTransfered!=149504,bytesTransfered!=149512,bytesTransfered!=17,bytesTransfered!=2,bytesTransfered!=22,bytesTransfered!=255,bytesTransfered!=259,bytesTransfered!=3,bytesTransfered!=4,bytesTransfered!=7,bytesTransfered!=71,bytesTransfered==(-1),bytesTransfered==(-1073741637),bytesTransfered==(-1073741670),bytesTransfered==(-1073741764),bytesTransfered==(-1073741789),bytesTransfered==(-1073741802),bytesTransfered==(-1073741803),bytesTransfered==(-1073741808),bytesTransfered==(-1073741820),bytesTransfered==(-1073741823),bytesTransfered==(-2147483626),bytesTransfered==(-2147483631),bytesTransfered==0,bytesTransfered==1,bytesTransfered==147456,bytesTransfered==147460,bytesTransfered==147464,bytesTransfered==147468,bytesTransfered==147472,bytesTransfered==147476,bytesTransfered==147480,bytesTransfered==147496,bytesTransfered==147500,bytesTransfered==147508,bytesTransfered==147512,bytesTransfered==149504,bytesTransfered==149512,bytesTransfered==17,bytesTransfered==2,bytesTransfered==22,bytesTransfered==255,bytesTransfered==259,bytesTransfered==3,bytesTransfered==4,bytesTransfered==7,bytesTransfered==71,bytesTransfered==currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength,bytesTransfered==sizeof__CDROM_TOC} @*/ bytesTransfered ;
  int /*@  predicates{Toc!=(-1),Toc!=(-1073741637),Toc!=(-1073741670),Toc!=(-1073741764),Toc!=(-1073741789),Toc!=(-1073741802),Toc!=(-1073741803),Toc!=(-1073741808),Toc!=(-1073741820),Toc!=(-1073741823),Toc!=(-2147483626),Toc!=(-2147483631),Toc!=0,Toc!=1,Toc!=147456,Toc!=147460,Toc!=147464,Toc!=147468,Toc!=147472,Toc!=147476,Toc!=147480,Toc!=147496,Toc!=147500,Toc!=147508,Toc!=147512,Toc!=149504,Toc!=149512,Toc!=17,Toc!=2,Toc!=22,Toc!=255,Toc!=259,Toc!=3,Toc!=4,Toc!=7,Toc!=71,Toc==(-1),Toc==(-1073741637),Toc==(-1073741670),Toc==(-1073741764),Toc==(-1073741789),Toc==(-1073741802),Toc==(-1073741803),Toc==(-1073741808),Toc==(-1073741820),Toc==(-1073741823),Toc==(-2147483626),Toc==(-2147483631),Toc==0,Toc==1,Toc==147456,Toc==147460,Toc==147464,Toc==147468,Toc==147472,Toc==147476,Toc==147480,Toc==147496,Toc==147500,Toc==147508,Toc==147512,Toc==149504,Toc==149512,Toc==17,Toc==2,Toc==22,Toc==255,Toc==259,Toc==3,Toc==4,Toc==7,Toc==71} @*/ Toc = __VERIFIER_nondet_int();
  int /*@  predicates{tmp!=0,tmp==0,tmp==1} @*/ tmp ;
  int tracksToReturn ;
  int tracksOnCd ;
  int tracksInBuffer ;
  int /*@  predicates{SubQPtr!=(-1),SubQPtr!=(-1073741637),SubQPtr!=(-1073741670),SubQPtr!=(-1073741764),SubQPtr!=(-1073741789),SubQPtr!=(-1073741802),SubQPtr!=(-1073741803),SubQPtr!=(-1073741808),SubQPtr!=(-1073741820),SubQPtr!=(-1073741823),SubQPtr!=(-2147483626),SubQPtr!=(-2147483631),SubQPtr!=0,SubQPtr!=1,SubQPtr!=147456,SubQPtr!=147460,SubQPtr!=147464,SubQPtr!=147468,SubQPtr!=147472,SubQPtr!=147476,SubQPtr!=147480,SubQPtr!=147496,SubQPtr!=147500,SubQPtr!=147508,SubQPtr!=147512,SubQPtr!=149504,SubQPtr!=149512,SubQPtr!=17,SubQPtr!=2,SubQPtr!=22,SubQPtr!=255,SubQPtr!=259,SubQPtr!=3,SubQPtr!=4,SubQPtr!=7,SubQPtr!=71,SubQPtr==(-1),SubQPtr==(-1073741637),SubQPtr==(-1073741670),SubQPtr==(-1073741764),SubQPtr==(-1073741789),SubQPtr==(-1073741802),SubQPtr==(-1073741803),SubQPtr==(-1073741808),SubQPtr==(-1073741820),SubQPtr==(-1073741823),SubQPtr==(-2147483626),SubQPtr==(-2147483631),SubQPtr==0,SubQPtr==1,SubQPtr==147456,SubQPtr==147460,SubQPtr==147464,SubQPtr==147468,SubQPtr==147472,SubQPtr==147476,SubQPtr==147480,SubQPtr==147496,SubQPtr==147500,SubQPtr==147508,SubQPtr==147512,SubQPtr==149504,SubQPtr==149512,SubQPtr==17,SubQPtr==2,SubQPtr==22,SubQPtr==255,SubQPtr==259,SubQPtr==3,SubQPtr==4,SubQPtr==7,SubQPtr==71} @*/ SubQPtr = __VERIFIER_nondet_int();
  int /*@  predicates{userPtr__Format!=(-1),userPtr__Format!=(-1073741637),userPtr__Format!=(-1073741670),userPtr__Format!=(-1073741764),userPtr__Format!=(-1073741789),userPtr__Format!=(-1073741802),userPtr__Format!=(-1073741803),userPtr__Format!=(-1073741808),userPtr__Format!=(-1073741820),userPtr__Format!=(-1073741823),userPtr__Format!=(-2147483626),userPtr__Format!=(-2147483631),userPtr__Format!=0,userPtr__Format!=1,userPtr__Format!=147456,userPtr__Format!=147460,userPtr__Format!=147464,userPtr__Format!=147468,userPtr__Format!=147472,userPtr__Format!=147476,userPtr__Format!=147480,userPtr__Format!=147496,userPtr__Format!=147500,userPtr__Format!=147508,userPtr__Format!=147512,userPtr__Format!=149504,userPtr__Format!=149512,userPtr__Format!=17,userPtr__Format!=2,userPtr__Format!=22,userPtr__Format!=255,userPtr__Format!=259,userPtr__Format!=3,userPtr__Format!=4,userPtr__Format!=7,userPtr__Format!=71,userPtr__Format==(-1),userPtr__Format==(-1073741637),userPtr__Format==(-1073741670),userPtr__Format==(-1073741764),userPtr__Format==(-1073741789),userPtr__Format==(-1073741802),userPtr__Format==(-1073741803),userPtr__Format==(-1073741808),userPtr__Format==(-1073741820),userPtr__Format==(-1073741823),userPtr__Format==(-2147483626),userPtr__Format==(-2147483631),userPtr__Format==0,userPtr__Format==1,userPtr__Format==147456,userPtr__Format==147460,userPtr__Format==147464,userPtr__Format==147468,userPtr__Format==147472,userPtr__Format==147476,userPtr__Format==147480,userPtr__Format==147496,userPtr__Format==147500,userPtr__Format==147508,userPtr__Format==147512,userPtr__Format==149504,userPtr__Format==149512,userPtr__Format==17,userPtr__Format==2,userPtr__Format==22,userPtr__Format==255,userPtr__Format==259,userPtr__Format==3,userPtr__Format==4,userPtr__Format==7,userPtr__Format==71} @*/ userPtr__Format = __VERIFIER_nondet_int();
  int /*@  predicates{SubQPtr___0!=(-1),SubQPtr___0!=(-1073741637),SubQPtr___0!=(-1073741670),SubQPtr___0!=(-1073741764),SubQPtr___0!=(-1073741789),SubQPtr___0!=(-1073741802),SubQPtr___0!=(-1073741803),SubQPtr___0!=(-1073741808),SubQPtr___0!=(-1073741820),SubQPtr___0!=(-1073741823),SubQPtr___0!=(-2147483626),SubQPtr___0!=(-2147483631),SubQPtr___0!=0,SubQPtr___0!=1,SubQPtr___0!=147456,SubQPtr___0!=147460,SubQPtr___0!=147464,SubQPtr___0!=147468,SubQPtr___0!=147472,SubQPtr___0!=147476,SubQPtr___0!=147480,SubQPtr___0!=147496,SubQPtr___0!=147500,SubQPtr___0!=147508,SubQPtr___0!=147512,SubQPtr___0!=149504,SubQPtr___0!=149512,SubQPtr___0!=17,SubQPtr___0!=2,SubQPtr___0!=22,SubQPtr___0!=255,SubQPtr___0!=259,SubQPtr___0!=3,SubQPtr___0!=4,SubQPtr___0!=7,SubQPtr___0!=71,SubQPtr___0==(-1),SubQPtr___0==(-1073741637),SubQPtr___0==(-1073741670),SubQPtr___0==(-1073741764),SubQPtr___0==(-1073741789),SubQPtr___0==(-1073741802),SubQPtr___0==(-1073741803),SubQPtr___0==(-1073741808),SubQPtr___0==(-1073741820),SubQPtr___0==(-1073741823),SubQPtr___0==(-2147483626),SubQPtr___0==(-2147483631),SubQPtr___0==0,SubQPtr___0==1,SubQPtr___0==147456,SubQPtr___0==147460,SubQPtr___0==147464,SubQPtr___0==147468,SubQPtr___0==147472,SubQPtr___0==147476,SubQPtr___0==147480,SubQPtr___0==147496,SubQPtr___0==147500,SubQPtr___0==147508,SubQPtr___0==147512,SubQPtr___0==149504,SubQPtr___0==149512,SubQPtr___0==17,SubQPtr___0==2,SubQPtr___0==22,SubQPtr___0==255,SubQPtr___0==259,SubQPtr___0==3,SubQPtr___0==4,SubQPtr___0==7,SubQPtr___0==71} @*/ SubQPtr___0 = __VERIFIER_nondet_int();
  int /*@  predicates{tmp___0==(-1),tmp___0==(-1073741637),tmp___0==(-1073741670),tmp___0==(-1073741764),tmp___0==(-1073741789),tmp___0==(-1073741802),tmp___0==(-1073741803),tmp___0==(-1073741808),tmp___0==(-1073741820),tmp___0==(-1073741823),tmp___0==(-2147483626),tmp___0==(-2147483631),tmp___0==0,tmp___0==1,tmp___0==147456,tmp___0==147460,tmp___0==147464,tmp___0==147468,tmp___0==147472,tmp___0==147476,tmp___0==147480,tmp___0==147496,tmp___0==147500,tmp___0==147508,tmp___0==147512,tmp___0==149504,tmp___0==149512,tmp___0==17,tmp___0==2,tmp___0==22,tmp___0==255,tmp___0==259,tmp___0==3,tmp___0==4,tmp___0==7,tmp___0==71} @*/ tmp___0 ;
  int /*@  predicates{tmp___1==0,tmp___1==1} @*/ tmp___1 ;
  int /*@  predicates{tmp___2==(-1),tmp___2==(-1073741637),tmp___2==(-1073741670),tmp___2==(-1073741764),tmp___2==(-1073741789),tmp___2==(-1073741802),tmp___2==(-1073741803),tmp___2==(-1073741808),tmp___2==(-1073741820),tmp___2==(-1073741823),tmp___2==(-2147483626),tmp___2==(-2147483631),tmp___2==0,tmp___2==1,tmp___2==147456,tmp___2==147460,tmp___2==147464,tmp___2==147468,tmp___2==147472,tmp___2==147476,tmp___2==147480,tmp___2==147496,tmp___2==147500,tmp___2==147508,tmp___2==147512,tmp___2==149504,tmp___2==149512,tmp___2==17,tmp___2==2,tmp___2==22,tmp___2==255,tmp___2==259,tmp___2==3,tmp___2==4,tmp___2==7,tmp___2==71} @*/ tmp___2 ;
  int /*@  predicates{__cil_tmp35==16384} @*/ __cil_tmp35 ;
  int /*@  predicates{__cil_tmp36==131072} @*/ __cil_tmp36 ;
  int /*@  predicates{__cil_tmp37!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp37==147456,__cil_tmp37==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp37 ;
  int /*@  predicates{__cil_tmp38==24} @*/ __cil_tmp38 ;
  int /*@  predicates{__cil_tmp39==16384} @*/ __cil_tmp39 ;
  int /*@  predicates{__cil_tmp40==131072} @*/ __cil_tmp40 ;
  int /*@  predicates{__cil_tmp41==147456} @*/ __cil_tmp41 ;
  int /*@  predicates{__cil_tmp42!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp42==147480,__cil_tmp42==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp42 ;
  int /*@  predicates{__cil_tmp43==8} @*/ __cil_tmp43 ;
  int /*@  predicates{__cil_tmp44==16384} @*/ __cil_tmp44 ;
  int /*@  predicates{__cil_tmp45==131072} @*/ __cil_tmp45 ;
  int /*@  predicates{__cil_tmp46==147456} @*/ __cil_tmp46 ;
  int /*@  predicates{__cil_tmp47!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp47==147464,__cil_tmp47==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp47 ;
  int /*@  predicates{__cil_tmp48==4} @*/ __cil_tmp48 ;
  int /*@  predicates{__cil_tmp49==16384} @*/ __cil_tmp49 ;
  int /*@  predicates{__cil_tmp50==131072} @*/ __cil_tmp50 ;
  int /*@  predicates{__cil_tmp51==147456} @*/ __cil_tmp51 ;
  int /*@  predicates{__cil_tmp52!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp52==147460,__cil_tmp52==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp52 ;
  int /*@  predicates{__cil_tmp53==12} @*/ __cil_tmp53 ;
  int /*@  predicates{__cil_tmp54==16384} @*/ __cil_tmp54 ;
  int /*@  predicates{__cil_tmp55==131072} @*/ __cil_tmp55 ;
  int /*@  predicates{__cil_tmp56==147456} @*/ __cil_tmp56 ;
  int /*@  predicates{__cil_tmp57!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp57==147468,__cil_tmp57==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp57 ;
  int /*@  predicates{__cil_tmp58==16} @*/ __cil_tmp58 ;
  int /*@  predicates{__cil_tmp59==16384} @*/ __cil_tmp59 ;
  int /*@  predicates{__cil_tmp60==131072} @*/ __cil_tmp60 ;
  int /*@  predicates{__cil_tmp61==147456} @*/ __cil_tmp61 ;
  int /*@  predicates{__cil_tmp62!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp62==147472,__cil_tmp62==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp62 ;
  int /*@  predicates{__cil_tmp63==44} @*/ __cil_tmp63 ;
  int /*@  predicates{__cil_tmp64==16384} @*/ __cil_tmp64 ;
  int /*@  predicates{__cil_tmp65==131072} @*/ __cil_tmp65 ;
  int /*@  predicates{__cil_tmp66==147456} @*/ __cil_tmp66 ;
  int /*@  predicates{__cil_tmp67!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp67==147500,__cil_tmp67==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp67 ;
  int /*@  predicates{__cil_tmp68==2056} @*/ __cil_tmp68 ;
  int /*@  predicates{__cil_tmp69==16384} @*/ __cil_tmp69 ;
  int /*@  predicates{__cil_tmp70==131072} @*/ __cil_tmp70 ;
  int /*@  predicates{__cil_tmp71==147456} @*/ __cil_tmp71 ;
  int /*@  predicates{__cil_tmp72!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp72==149512,__cil_tmp72==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp72 ;
  int /*@  predicates{__cil_tmp73==52} @*/ __cil_tmp73 ;
  int /*@  predicates{__cil_tmp74==16384} @*/ __cil_tmp74 ;
  int /*@  predicates{__cil_tmp75==131072} @*/ __cil_tmp75 ;
  int /*@  predicates{__cil_tmp76==147456} @*/ __cil_tmp76 ;
  int /*@  predicates{__cil_tmp77!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp77==147508,__cil_tmp77==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp77 ;
  int /*@  predicates{__cil_tmp78==20} @*/ __cil_tmp78 ;
  int /*@  predicates{__cil_tmp79==16384} @*/ __cil_tmp79 ;
  int /*@  predicates{__cil_tmp80==131072} @*/ __cil_tmp80 ;
  int /*@  predicates{__cil_tmp81==147456} @*/ __cil_tmp81 ;
  int /*@  predicates{__cil_tmp82!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp82==147476,__cil_tmp82==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp82 ;
  int /*@  predicates{__cil_tmp83==40} @*/ __cil_tmp83 ;
  int /*@  predicates{__cil_tmp84==16384} @*/ __cil_tmp84 ;
  int /*@  predicates{__cil_tmp85==131072} @*/ __cil_tmp85 ;
  int /*@  predicates{__cil_tmp86==147456} @*/ __cil_tmp86 ;
  int /*@  predicates{__cil_tmp87!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp87==147496,__cil_tmp87==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp87 ;
  int /*@  predicates{__cil_tmp88==2048} @*/ __cil_tmp88 ;
  int /*@  predicates{__cil_tmp89==16384} @*/ __cil_tmp89 ;
  int /*@  predicates{__cil_tmp90==131072} @*/ __cil_tmp90 ;
  int /*@  predicates{__cil_tmp91==147456} @*/ __cil_tmp91 ;
  int /*@  predicates{__cil_tmp92!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp92==149504,__cil_tmp92==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  int __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  int __cil_tmp98 ;
  int /*@  predicates{__cil_tmp99==8} @*/ __cil_tmp99 ;
  int /*@  predicates{__cil_tmp100==16384} @*/ __cil_tmp100 ;
  int /*@  predicates{__cil_tmp101==131072} @*/ __cil_tmp101 ;
  int /*@  predicates{__cil_tmp102==147456} @*/ __cil_tmp102 ;
  int /*@  predicates{__cil_tmp103!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp103==147464,__cil_tmp103==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  int __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  int __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;

  {
  {
  __cil_tmp35 = 16384;
  __cil_tmp36 = 131072;
  __cil_tmp37 = 147456;
  if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp37){
    goto switch_4_exp_10;
  } else {
    {
    __cil_tmp38 = 24;
    __cil_tmp39 = 16384;
    __cil_tmp40 = 131072;
    __cil_tmp41 = 147456;
    __cil_tmp42 = 147480;
    if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp42){
      goto switch_4_exp_11;
    } else {
      {
      __cil_tmp43 = 8;
      __cil_tmp44 = 16384;
      __cil_tmp45 = 131072;
      __cil_tmp46 = 147456;
      __cil_tmp47 = 147464;
      if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp47){
        goto switch_4_exp_12;
      } else {
        {
        __cil_tmp48 = 4;
        __cil_tmp49 = 16384;
        __cil_tmp50 = 131072;
        __cil_tmp51 = 147456;
        __cil_tmp52 = 147460;
        if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp52){
          goto switch_4_exp_13;
        } else {
          {
          __cil_tmp53 = 12;
          __cil_tmp54 = 16384;
          __cil_tmp55 = 131072;
          __cil_tmp56 = 147456;
          __cil_tmp57 = 147468;
          if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp57){
            goto switch_4_exp_14;
          } else {
            {
            __cil_tmp58 = 16;
            __cil_tmp59 = 16384;
            __cil_tmp60 = 131072;
            __cil_tmp61 = 147456;
            __cil_tmp62 = 147472;
            if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp62){
              goto switch_4_exp_15;
            } else {
              {
              __cil_tmp63 = 44;
              __cil_tmp64 = 16384;
              __cil_tmp65 = 131072;
              __cil_tmp66 = 147456;
              __cil_tmp67 = 147500;
              if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp67){
                goto switch_4_exp_16;
              } else {
                {
                __cil_tmp68 = 2056;
                __cil_tmp69 = 16384;
                __cil_tmp70 = 131072;
                __cil_tmp71 = 147456;
                __cil_tmp72 = 149512;
                if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp72){
                  goto switch_4_exp_17;
                } else {
                  {
                  __cil_tmp73 = 52;
                  __cil_tmp74 = 16384;
                  __cil_tmp75 = 131072;
                  __cil_tmp76 = 147456;
                  __cil_tmp77 = 147508;
                  if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp77){
                    goto switch_4_exp_18;
                  } else {
                    {
                    __cil_tmp78 = 20;
                    __cil_tmp79 = 16384;
                    __cil_tmp80 = 131072;
                    __cil_tmp81 = 147456;
                    __cil_tmp82 = 147476;
                    if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp82){
                      goto switch_4_exp_19;
                    } else {
                      {
                      __cil_tmp83 = 40;
                      __cil_tmp84 = 16384;
                      __cil_tmp85 = 131072;
                      __cil_tmp86 = 147456;
                      __cil_tmp87 = 147496;
                      if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp87){
                        goto switch_4_exp_20;
                      } else {
                        {
                        __cil_tmp88 = 2048;
                        __cil_tmp89 = 16384;
                        __cil_tmp90 = 131072;
                        __cil_tmp91 = 147456;
                        __cil_tmp92 = 149504;
                        if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp92){
                          goto switch_4_exp_21;
                        } else {
                          goto switch_4_default;
                          if(0){
                            switch_4_exp_10: ;
                            if(currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength < TrackData__0){
                              status = -1073741789;
                              Irp__IoStatus__Information = 0;
                              goto switch_4_break;
                            }
                            {
                            tmp = CdAudioIsPlayActive(DeviceObject);
                            }
                            if(tmp){
                              status = -2147483631;
                              Irp__IoStatus__Information = 0;
                              goto switch_4_break;
                            }
                            if(Toc == 0){
                              status = -1073741670;
                              Irp__IoStatus__Information = 0;
                              {
                              __cil_tmp93 =(unsigned long)status;
                              if(__cil_tmp93 == -2147483626){
                                Irp__IoStatus__Information = 0;
                              }
                              }
                              {
                              myStatus = status;
                              IofCompleteRequest(Irp, 0);
                              }
                              return(status);
                            }
                            {
                            srb__TimeOutValue = 10;
                            srb__CdbLength = 10;
                            status = SendSrbSynchronous(deviceExtension, srb, Toc,
                                                        sizeof__CDROM_TOC);
                            }
                            {
                            if(status < 0){
                              {
                              __cil_tmp95 =(unsigned long)status;
                              if(__cil_tmp95 != -1073741764){
                                {
                                __cil_tmp96 =(unsigned long)status;
                                if(__cil_tmp96 != -1073741764){
                                  {
                                  __cil_tmp97 =(unsigned long)status;
                                  if(__cil_tmp97 == -2147483626){
                                    Irp__IoStatus__Information = 0;
                                  }
                                  }
                                  {
                                  myStatus = status;
                                  IofCompleteRequest(Irp, 0);
                                  }
                                  return(status);
                                }
                                }
                              } else {
                                status = 0;
                              }
                              }
                            } else {
                              status = 0;
                            }
                            }
                            if(currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength > sizeof__CDROM_TOC){
                              bytesTransfered = sizeof__CDROM_TOC;
                            } else {
                              bytesTransfered = currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength;
                            }
                            __cil_tmp98 = cdaudioDataOut__LastTrack - cdaudioDataOut__FirstTrack;
                            tracksOnCd = __cil_tmp98 + 1;
                            tracksInBuffer = currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength - TrackData__0;
                            if(tracksInBuffer < tracksOnCd){
                              tracksToReturn = tracksInBuffer;
                            } else {
                              tracksToReturn = tracksOnCd;
                            }
                            if(tracksInBuffer > tracksOnCd){
                              i ++;
                            }
                            goto switch_4_break;
                            switch_4_exp_11: ;
                            switch_4_exp_12:
                            {
                            Irp__IoStatus__Information = 0;
                            srb__CdbLength = 10;
                            srb__TimeOutValue = 10;
                            status = SendSrbSynchronous(deviceExtension, srb, 0, 0);
                            }
                            if(status >= 0){

                            }
                            {
                            __cil_tmp99 = 8;
                            __cil_tmp100 = 16384;
                            __cil_tmp101 = 131072;
                            __cil_tmp102 = 147456;
                            __cil_tmp103 = 147464;
                            if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp103){
                              {
                              __cil_tmp104 =(unsigned long)status;
                              if(__cil_tmp104 == -2147483626){
                                Irp__IoStatus__Information = 0;
                              }
                              }
                              {
                              myStatus = status;
                              IofCompleteRequest(Irp, 0);
                              }
                              return(status);
                            }
                            }
                            if(currentIrpStack__Parameters__DeviceIoControl__InputBufferLength < sizeof__CDROM_PLAY_AUDIO_MSF){
                              status = -1073741820;
                              goto switch_4_break;
                            }
                            {
                            srb__CdbLength = 10;
                            srb__TimeOutValue = 10;
                            status = SendSrbSynchronous(deviceExtension, srb, 0, 0);
                            }
                            if(status >= 0){

                            }
                            goto switch_4_break;
                            switch_4_exp_13:
                            Irp__IoStatus__Information = 0;
                            if(currentIrpStack__Parameters__DeviceIoControl__InputBufferLength < sizeof__CDROM_SEEK_AUDIO_MSF){
                              status = -1073741820;
                              goto switch_4_break;
                            }
                            {
                            srb__CdbLength = 10;
                            srb__TimeOutValue = 10;
                            status = SendSrbSynchronous(deviceExtension, srb, 0, 0);
                            }
                            if(status < 0){
                              {
                              __cil_tmp105 =(unsigned long)status;
                              if(__cil_tmp105 == -1073741808){
                                status = -1073741803;
                              }
                              }
                            }
                            goto switch_4_break;
                            switch_4_exp_14:
                            Irp__IoStatus__Information = 0;
                            if(SubQPtr == 0){
                              status = -1073741670;
                              {
                              __cil_tmp106 =(unsigned long)status;
                              if(__cil_tmp106 == -2147483626){
                                Irp__IoStatus__Information = 0;
                              }
                              }
                              {
                              myStatus = status;
                              IofCompleteRequest(Irp, 0);
                              }
                              return(status);
                            }
                            if(deviceExtension__Paused == 1){
                              status = 0;
                              {
                              __cil_tmp107 =(unsigned long)status;
                              if(__cil_tmp107 == -2147483626){
                                Irp__IoStatus__Information = 0;
                              }
                              }
                              {
                              myStatus = status;
                              IofCompleteRequest(Irp, 0);
                              }
                              return(status);
                            }
                            {
                            srb__CdbLength = 10;
                            srb__TimeOutValue = 10;
                            status = SendSrbSynchronous(deviceExtension, srb, SubQPtr,
                                                        sizeof__SUB_Q_CHANNEL_DATA);
                            }
                            {
                            if(status < 0){
                              {
                              __cil_tmp109 =(unsigned long)status;
                              if(__cil_tmp109 == -2147483626){
                                Irp__IoStatus__Information = 0;
                              }
                              }
                              {
                              myStatus = status;
                              IofCompleteRequest(Irp, 0);
                              }
                              return(status);
                            }
                            }
                            {
                            srb__CdbLength = 10;
                            srb__TimeOutValue = 10;
                            status = SendSrbSynchronous(deviceExtension, srb, 0, 0);
                            }
                            {
                            if(status < 0){
                              {
                              __cil_tmp111 =(unsigned long)status;
                              if(__cil_tmp111 == -2147483626){
                                Irp__IoStatus__Information = 0;
                              }
                              }
                              {
                              myStatus = status;
                              IofCompleteRequest(Irp, 0);
                              }
                              return(status);
                            }
                            }
                            goto switch_4_break;
                            switch_4_exp_15:
                            Irp__IoStatus__Information = 0;
                            if(deviceExtension__Paused == 0){
                              status = -1073741823;
                              {
                              __cil_tmp112 =(unsigned long)status;
                              if(__cil_tmp112 == -2147483626){
                                Irp__IoStatus__Information = 0;
                              }
                              }
                              {
                              myStatus = status;
                              IofCompleteRequest(Irp, 0);
                              }
                              return(status);
                            }
                            {
                            srb__CdbLength = 10;
                            srb__TimeOutValue = 10;
                            status = SendSrbSynchronous(deviceExtension, srb, 0, 0);
                            }
                            if(status >= 0){
                              deviceExtension__PlayActive = 1;
                              deviceExtension__Paused = 0;
                            }
                            goto switch_4_break;
                            switch_4_exp_16: ;
                            if(currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength < sizeof__SUB_Q_CURRENT_POSITION){
                              status = -1073741789;
                              Irp__IoStatus__Information = 0;
                              goto switch_4_break;
                            }
                            if(SubQPtr___0 == 0){
                              status = -1073741670;
                              Irp__IoStatus__Information = 0;
                              {
                              __cil_tmp113 =(unsigned long)status;
                              if(__cil_tmp113 == -2147483626){
                                Irp__IoStatus__Information = 0;
                              }
                              }
                              {
                              myStatus = status;
                              IofCompleteRequest(Irp, 0);
                              }
                              return(status);
                            }
                            if(userPtr__Format != 1){
                              status = -1073741823;
                              Irp__IoStatus__Information = 0;
                              {
                              __cil_tmp114 =(unsigned long)status;
                              if(__cil_tmp114 == -2147483626){
                                Irp__IoStatus__Information = 0;
                              }
                              }
                              {
                              myStatus = status;
                              IofCompleteRequest(Irp, 0);
                              }
                              return(status);
                            }
                            {
                            srb__CdbLength = 10;
                            srb__TimeOutValue = 10;
                            status = SendSrbSynchronous(deviceExtension, srb, SubQPtr___0,
                                                        sizeof__SUB_Q_CHANNEL_DATA);
                            }
                            if(status >= 0){
                              if(deviceExtension__Paused == 1){
                                deviceExtension__PlayActive = 0;
                              }
                              Irp__IoStatus__Information = sizeof__SUB_Q_CURRENT_POSITION;
                            } else {
                              Irp__IoStatus__Information = 0;
                            }
                            goto switch_4_break;
                            switch_4_exp_17:
                            {
                            Irp__IoStatus__Information = 0;
                            srb__CdbLength = 10;
                            srb__TimeOutValue = 10;
                            status = SendSrbSynchronous(deviceExtension, srb, 0, 0);
                            }
                            goto switch_4_break;
                            switch_4_exp_18: ;
                            switch_4_exp_19: ;
                            switch_4_exp_20:
                            Irp__IoStatus__Information = 0;
                            status = -1073741808;
                            goto switch_4_break;
                            switch_4_exp_21:
                            {
                            tmp___1 = CdAudioIsPlayActive(DeviceObject);
                            }
                            if(tmp___1 == 1){
                              deviceExtension__PlayActive = 1;
                              status = 0;
                              Irp__IoStatus__Information = 0;
                              {
                              __cil_tmp115 =(unsigned long)status;
                              if(__cil_tmp115 == -2147483626){
                                Irp__IoStatus__Information = 0;
                              }
                              }
                              {
                              myStatus = status;
                              IofCompleteRequest(Irp, 0);
                              }
                              return(status);
                            } else {
                              {
                              deviceExtension__PlayActive = 0;
                              tmp___0 = CdAudioSendToNextDriver(DeviceObject, Irp);
                              }
                              return(tmp___0);
                            }
                            goto switch_4_break;
                            switch_4_default:
                            {
                            tmp___2 = CdAudioSendToNextDriver(DeviceObject, Irp);
                            }
                            return(tmp___2);
                            goto switch_4_break;
                          } else {
                            switch_4_break: ;
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
  __cil_tmp116 =(unsigned long)status;
  if(__cil_tmp116 == -2147483626){
    Irp__IoStatus__Information = 0;
  }
  }
  {
  myStatus = status;
  IofCompleteRequest(Irp, 0);
  }
  return(status);
}
}
int CdAudioAtapiDeviceControl(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741670),DeviceObject!=(-1073741764),DeviceObject!=(-1073741789),DeviceObject!=(-1073741802),DeviceObject!=(-1073741803),DeviceObject!=(-1073741808),DeviceObject!=(-1073741820),DeviceObject!=(-1073741823),DeviceObject!=(-2147483626),DeviceObject!=(-2147483631),DeviceObject!=0,DeviceObject!=1,DeviceObject!=147456,DeviceObject!=147460,DeviceObject!=147464,DeviceObject!=147468,DeviceObject!=147472,DeviceObject!=147476,DeviceObject!=147480,DeviceObject!=147496,DeviceObject!=147500,DeviceObject!=147508,DeviceObject!=147512,DeviceObject!=149504,DeviceObject!=149512,DeviceObject!=17,DeviceObject!=2,DeviceObject!=22,DeviceObject!=255,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=7,DeviceObject!=71,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741670),DeviceObject==(-1073741764),DeviceObject==(-1073741789),DeviceObject==(-1073741802),DeviceObject==(-1073741803),DeviceObject==(-1073741808),DeviceObject==(-1073741820),DeviceObject==(-1073741823),DeviceObject==(-2147483626),DeviceObject==(-2147483631),DeviceObject==0,DeviceObject==1,DeviceObject==147456,DeviceObject==147460,DeviceObject==147464,DeviceObject==147468,DeviceObject==147472,DeviceObject==147476,DeviceObject==147480,DeviceObject==147496,DeviceObject==147500,DeviceObject==147508,DeviceObject==147512,DeviceObject==149504,DeviceObject==149512,DeviceObject==17,DeviceObject==2,DeviceObject==22,DeviceObject==255,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==7,DeviceObject==71} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741670),Irp!=(-1073741764),Irp!=(-1073741789),Irp!=(-1073741802),Irp!=(-1073741803),Irp!=(-1073741808),Irp!=(-1073741820),Irp!=(-1073741823),Irp!=(-2147483626),Irp!=(-2147483631),Irp!=0,Irp!=1,Irp!=147456,Irp!=147460,Irp!=147464,Irp!=147468,Irp!=147472,Irp!=147476,Irp!=147480,Irp!=147496,Irp!=147500,Irp!=147508,Irp!=147512,Irp!=149504,Irp!=149512,Irp!=17,Irp!=2,Irp!=22,Irp!=255,Irp!=259,Irp!=3,Irp!=4,Irp!=7,Irp!=71,Irp==(-1),Irp==(-1073741637),Irp==(-1073741670),Irp==(-1073741764),Irp==(-1073741789),Irp==(-1073741802),Irp==(-1073741803),Irp==(-1073741808),Irp==(-1073741820),Irp==(-1073741823),Irp==(-2147483626),Irp==(-2147483631),Irp==0,Irp==1,Irp==147456,Irp==147460,Irp==147464,Irp==147468,Irp==147472,Irp==147476,Irp==147480,Irp==147496,Irp==147500,Irp==147508,Irp==147512,Irp==149504,Irp==149512,Irp==17,Irp==2,Irp==22,Irp==255,Irp==259,Irp==3,Irp==4,Irp==7,Irp==71} @*/ Irp)
{ int /*@  predicates{currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741637),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741670),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741764),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741789),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741802),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741803),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741808),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741820),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741823),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-2147483626),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-2147483631),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=0,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=1,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147456,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147460,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147464,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147468,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147472,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147476,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147480,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147496,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147500,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147508,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147512,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=149504,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=149512,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=17,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=2,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=22,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=255,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=259,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=3,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=4,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=7,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=71,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741637),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741670),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741764),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741789),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741802),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741803),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741808),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741820),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741823),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-2147483626),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-2147483631),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==0,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==1,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147456,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147460,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147464,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147468,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147472,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147476,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147480,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147496,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147500,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147508,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147512,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==149504,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==149512,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==17,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==2,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==22,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==255,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==259,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==3,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==4,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==7,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==71} @*/ currentIrpStack__Parameters__DeviceIoControl__IoControlCode = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__IoStatus__Information==0} @*/ Irp__IoStatus__Information ;
  int /*@  predicates{deviceExtension__PlayActive==0} @*/ deviceExtension__PlayActive ;
  int /*@  predicates{srb__CdbLength==12} @*/ srb__CdbLength ;
  int /*@  predicates{srb__TimeOutValue==10} @*/ srb__TimeOutValue ;
  int /*@  predicates{Irp__IoStatus__Status!=(-1),Irp__IoStatus__Status!=(-1073741637),Irp__IoStatus__Status!=(-1073741670),Irp__IoStatus__Status!=(-1073741764),Irp__IoStatus__Status!=(-1073741789),Irp__IoStatus__Status!=(-1073741802),Irp__IoStatus__Status!=(-1073741803),Irp__IoStatus__Status!=(-1073741808),Irp__IoStatus__Status!=(-1073741820),Irp__IoStatus__Status!=(-1073741823),Irp__IoStatus__Status!=(-2147483626),Irp__IoStatus__Status!=(-2147483631),Irp__IoStatus__Status!=0,Irp__IoStatus__Status!=1,Irp__IoStatus__Status!=147456,Irp__IoStatus__Status!=147460,Irp__IoStatus__Status!=147464,Irp__IoStatus__Status!=147468,Irp__IoStatus__Status!=147472,Irp__IoStatus__Status!=147476,Irp__IoStatus__Status!=147480,Irp__IoStatus__Status!=147496,Irp__IoStatus__Status!=147500,Irp__IoStatus__Status!=147508,Irp__IoStatus__Status!=147512,Irp__IoStatus__Status!=149504,Irp__IoStatus__Status!=149512,Irp__IoStatus__Status!=17,Irp__IoStatus__Status!=2,Irp__IoStatus__Status!=22,Irp__IoStatus__Status!=255,Irp__IoStatus__Status!=259,Irp__IoStatus__Status!=3,Irp__IoStatus__Status!=4,Irp__IoStatus__Status!=7,Irp__IoStatus__Status!=71,Irp__IoStatus__Status==(-1),Irp__IoStatus__Status==(-1073741637),Irp__IoStatus__Status==(-1073741670),Irp__IoStatus__Status==(-1073741764),Irp__IoStatus__Status==(-1073741789),Irp__IoStatus__Status==(-1073741802),Irp__IoStatus__Status==(-1073741803),Irp__IoStatus__Status==(-1073741808),Irp__IoStatus__Status==(-1073741820),Irp__IoStatus__Status==(-1073741823),Irp__IoStatus__Status==(-2147483626),Irp__IoStatus__Status==(-2147483631),Irp__IoStatus__Status==0,Irp__IoStatus__Status==1,Irp__IoStatus__Status==147456,Irp__IoStatus__Status==147460,Irp__IoStatus__Status==147464,Irp__IoStatus__Status==147468,Irp__IoStatus__Status==147472,Irp__IoStatus__Status==147476,Irp__IoStatus__Status==147480,Irp__IoStatus__Status==147496,Irp__IoStatus__Status==147500,Irp__IoStatus__Status==147508,Irp__IoStatus__Status==147512,Irp__IoStatus__Status==149504,Irp__IoStatus__Status==149512,Irp__IoStatus__Status==17,Irp__IoStatus__Status==2,Irp__IoStatus__Status==22,Irp__IoStatus__Status==255,Irp__IoStatus__Status==259,Irp__IoStatus__Status==3,Irp__IoStatus__Status==4,Irp__IoStatus__Status==7,Irp__IoStatus__Status==71} @*/ Irp__IoStatus__Status ;
  int /*@  predicates{status!=(-1),status!=(-1073741637),status!=(-1073741670),status!=(-1073741764),status!=(-1073741789),status!=(-1073741802),status!=(-1073741803),status!=(-1073741808),status!=(-1073741820),status!=(-1073741823),status!=(-2147483626),status!=(-2147483631),status!=0,status!=1,status!=147456,status!=147460,status!=147464,status!=147468,status!=147472,status!=147476,status!=147480,status!=147496,status!=147500,status!=147508,status!=147512,status!=149504,status!=149512,status!=17,status!=2,status!=22,status!=255,status!=259,status!=3,status!=4,status!=7,status!=71,status<0,status<status,status==(-1),status==(-1073741637),status==(-1073741670),status==(-1073741764),status==(-1073741789),status==(-1073741802),status==(-1073741803),status==(-1073741808),status==(-1073741820),status==(-1073741823),status==(-2147483626),status==(-2147483631),status==0,status==1,status==147456,status==147460,status==147464,status==147468,status==147472,status==147476,status==147480,status==147496,status==147500,status==147508,status==147512,status==149504,status==149512,status==17,status==2,status==22,status==255,status==259,status==3,status==4,status==7,status==71,status==Irp__IoStatus__Status,status==myStatus} @*/ status ;
  int /*@  predicates{deviceExtension!=(-1),deviceExtension!=(-1073741637),deviceExtension!=(-1073741670),deviceExtension!=(-1073741764),deviceExtension!=(-1073741789),deviceExtension!=(-1073741802),deviceExtension!=(-1073741803),deviceExtension!=(-1073741808),deviceExtension!=(-1073741820),deviceExtension!=(-1073741823),deviceExtension!=(-2147483626),deviceExtension!=(-2147483631),deviceExtension!=0,deviceExtension!=1,deviceExtension!=147456,deviceExtension!=147460,deviceExtension!=147464,deviceExtension!=147468,deviceExtension!=147472,deviceExtension!=147476,deviceExtension!=147480,deviceExtension!=147496,deviceExtension!=147500,deviceExtension!=147508,deviceExtension!=147512,deviceExtension!=149504,deviceExtension!=149512,deviceExtension!=17,deviceExtension!=2,deviceExtension!=22,deviceExtension!=255,deviceExtension!=259,deviceExtension!=3,deviceExtension!=4,deviceExtension!=7,deviceExtension!=71,deviceExtension==(-1),deviceExtension==(-1073741637),deviceExtension==(-1073741670),deviceExtension==(-1073741764),deviceExtension==(-1073741789),deviceExtension==(-1073741802),deviceExtension==(-1073741803),deviceExtension==(-1073741808),deviceExtension==(-1073741820),deviceExtension==(-1073741823),deviceExtension==(-2147483626),deviceExtension==(-2147483631),deviceExtension==0,deviceExtension==1,deviceExtension==147456,deviceExtension==147460,deviceExtension==147464,deviceExtension==147468,deviceExtension==147472,deviceExtension==147476,deviceExtension==147480,deviceExtension==147496,deviceExtension==147500,deviceExtension==147508,deviceExtension==147512,deviceExtension==149504,deviceExtension==149512,deviceExtension==17,deviceExtension==2,deviceExtension==22,deviceExtension==255,deviceExtension==259,deviceExtension==3,deviceExtension==4,deviceExtension==7,deviceExtension==71} @*/ deviceExtension = __VERIFIER_nondet_int();
  int /*@  predicates{srb!=(-1),srb!=(-1073741637),srb!=(-1073741670),srb!=(-1073741764),srb!=(-1073741789),srb!=(-1073741802),srb!=(-1073741803),srb!=(-1073741808),srb!=(-1073741820),srb!=(-1073741823),srb!=(-2147483626),srb!=(-2147483631),srb!=0,srb!=1,srb!=147456,srb!=147460,srb!=147464,srb!=147468,srb!=147472,srb!=147476,srb!=147480,srb!=147496,srb!=147500,srb!=147508,srb!=147512,srb!=149504,srb!=149512,srb!=17,srb!=2,srb!=22,srb!=255,srb!=259,srb!=3,srb!=4,srb!=7,srb!=71,srb==(-1),srb==(-1073741637),srb==(-1073741670),srb==(-1073741764),srb==(-1073741789),srb==(-1073741802),srb==(-1073741803),srb==(-1073741808),srb==(-1073741820),srb==(-1073741823),srb==(-2147483626),srb==(-2147483631),srb==0,srb==1,srb==147456,srb==147460,srb==147464,srb==147468,srb==147472,srb==147476,srb==147480,srb==147496,srb==147500,srb==147508,srb==147512,srb==149504,srb==149512,srb==17,srb==2,srb==22,srb==255,srb==259,srb==3,srb==4,srb==7,srb==71} @*/ srb = __VERIFIER_nondet_int();
  int /*@  predicates{tmp==(-1),tmp==(-1073741637),tmp==(-1073741670),tmp==(-1073741764),tmp==(-1073741789),tmp==(-1073741802),tmp==(-1073741803),tmp==(-1073741808),tmp==(-1073741820),tmp==(-1073741823),tmp==(-2147483626),tmp==(-2147483631),tmp==0,tmp==1,tmp==147456,tmp==147460,tmp==147464,tmp==147468,tmp==147472,tmp==147476,tmp==147480,tmp==147496,tmp==147500,tmp==147508,tmp==147512,tmp==149504,tmp==149512,tmp==17,tmp==2,tmp==22,tmp==255,tmp==259,tmp==3,tmp==4,tmp==7,tmp==71} @*/ tmp ;
  int /*@  predicates{__cil_tmp13==8} @*/ __cil_tmp13 ;
  int /*@  predicates{__cil_tmp14==16384} @*/ __cil_tmp14 ;
  int /*@  predicates{__cil_tmp15==131072} @*/ __cil_tmp15 ;
  int /*@  predicates{__cil_tmp16==147456} @*/ __cil_tmp16 ;
  int /*@  predicates{__cil_tmp17!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp17==147464,__cil_tmp17==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp17 ;
  int __cil_tmp18 ;

  {
  {
  __cil_tmp13 = 8;
  __cil_tmp14 = 16384;
  __cil_tmp15 = 131072;
  __cil_tmp16 = 147456;
  __cil_tmp17 = 147464;
  if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp17){
    {
    Irp__IoStatus__Information = 0;
    deviceExtension__PlayActive = 0;
    srb__CdbLength = 12;
    srb__TimeOutValue = 10;
    status = SendSrbSynchronous(deviceExtension, srb, 0, 0);
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
  } else {
    {
    tmp = CdAudioSendToNextDriver(DeviceObject, Irp);
    }
    return(tmp);
  }
  }
  {
  Irp__IoStatus__Status = status;
  myStatus = status;
  IofCompleteRequest(Irp, 0);
  }
  return(status);
}
}
void HpCdrProcessLastSession(int /*@  predicates{Toc!=(-1),Toc!=(-1073741637),Toc!=(-1073741670),Toc!=(-1073741764),Toc!=(-1073741789),Toc!=(-1073741802),Toc!=(-1073741803),Toc!=(-1073741808),Toc!=(-1073741820),Toc!=(-1073741823),Toc!=(-2147483626),Toc!=(-2147483631),Toc!=0,Toc!=1,Toc!=147456,Toc!=147460,Toc!=147464,Toc!=147468,Toc!=147472,Toc!=147476,Toc!=147480,Toc!=147496,Toc!=147500,Toc!=147508,Toc!=147512,Toc!=149504,Toc!=149512,Toc!=17,Toc!=2,Toc!=22,Toc!=255,Toc!=259,Toc!=3,Toc!=4,Toc!=7,Toc!=71,Toc==(-1),Toc==(-1073741637),Toc==(-1073741670),Toc==(-1073741764),Toc==(-1073741789),Toc==(-1073741802),Toc==(-1073741803),Toc==(-1073741808),Toc==(-1073741820),Toc==(-1073741823),Toc==(-2147483626),Toc==(-2147483631),Toc==0,Toc==1,Toc==147456,Toc==147460,Toc==147464,Toc==147468,Toc==147472,Toc==147476,Toc==147480,Toc==147496,Toc==147500,Toc==147508,Toc==147512,Toc==149504,Toc==149512,Toc==17,Toc==2,Toc==22,Toc==255,Toc==259,Toc==3,Toc==4,Toc==7,Toc==71} @*/ Toc)
{ int index = __VERIFIER_nondet_int();

  {
  if(index){
    index --;
  }
  return;
}
}
int HPCdrCompletion(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741670),DeviceObject!=(-1073741764),DeviceObject!=(-1073741789),DeviceObject!=(-1073741802),DeviceObject!=(-1073741803),DeviceObject!=(-1073741808),DeviceObject!=(-1073741820),DeviceObject!=(-1073741823),DeviceObject!=(-2147483626),DeviceObject!=(-2147483631),DeviceObject!=0,DeviceObject!=1,DeviceObject!=147456,DeviceObject!=147460,DeviceObject!=147464,DeviceObject!=147468,DeviceObject!=147472,DeviceObject!=147476,DeviceObject!=147480,DeviceObject!=147496,DeviceObject!=147500,DeviceObject!=147508,DeviceObject!=147512,DeviceObject!=149504,DeviceObject!=149512,DeviceObject!=17,DeviceObject!=2,DeviceObject!=22,DeviceObject!=255,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=7,DeviceObject!=71,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741670),DeviceObject==(-1073741764),DeviceObject==(-1073741789),DeviceObject==(-1073741802),DeviceObject==(-1073741803),DeviceObject==(-1073741808),DeviceObject==(-1073741820),DeviceObject==(-1073741823),DeviceObject==(-2147483626),DeviceObject==(-2147483631),DeviceObject==0,DeviceObject==1,DeviceObject==147456,DeviceObject==147460,DeviceObject==147464,DeviceObject==147468,DeviceObject==147472,DeviceObject==147476,DeviceObject==147480,DeviceObject==147496,DeviceObject==147500,DeviceObject==147508,DeviceObject==147512,DeviceObject==149504,DeviceObject==149512,DeviceObject==17,DeviceObject==2,DeviceObject==22,DeviceObject==255,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==7,DeviceObject==71} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741670),Irp!=(-1073741764),Irp!=(-1073741789),Irp!=(-1073741802),Irp!=(-1073741803),Irp!=(-1073741808),Irp!=(-1073741820),Irp!=(-1073741823),Irp!=(-2147483626),Irp!=(-2147483631),Irp!=0,Irp!=1,Irp!=147456,Irp!=147460,Irp!=147464,Irp!=147468,Irp!=147472,Irp!=147476,Irp!=147480,Irp!=147496,Irp!=147500,Irp!=147508,Irp!=147512,Irp!=149504,Irp!=149512,Irp!=17,Irp!=2,Irp!=22,Irp!=255,Irp!=259,Irp!=3,Irp!=4,Irp!=7,Irp!=71,Irp==(-1),Irp==(-1073741637),Irp==(-1073741670),Irp==(-1073741764),Irp==(-1073741789),Irp==(-1073741802),Irp==(-1073741803),Irp==(-1073741808),Irp==(-1073741820),Irp==(-1073741823),Irp==(-2147483626),Irp==(-2147483631),Irp==0,Irp==1,Irp==147456,Irp==147460,Irp==147464,Irp==147468,Irp==147472,Irp==147476,Irp==147480,Irp==147496,Irp==147500,Irp==147508,Irp==147512,Irp==149504,Irp==149512,Irp==17,Irp==2,Irp==22,Irp==255,Irp==259,Irp==3,Irp==4,Irp==7,Irp==71} @*/ Irp , int /*@  predicates{Context!=(-1),Context!=(-1073741637),Context!=(-1073741670),Context!=(-1073741764),Context!=(-1073741789),Context!=(-1073741802),Context!=(-1073741803),Context!=(-1073741808),Context!=(-1073741820),Context!=(-1073741823),Context!=(-2147483626),Context!=(-2147483631),Context!=0,Context!=1,Context!=147456,Context!=147460,Context!=147464,Context!=147468,Context!=147472,Context!=147476,Context!=147480,Context!=147496,Context!=147500,Context!=147508,Context!=147512,Context!=149504,Context!=149512,Context!=17,Context!=2,Context!=22,Context!=255,Context!=259,Context!=3,Context!=4,Context!=7,Context!=71,Context==(-1),Context==(-1073741637),Context==(-1073741670),Context==(-1073741764),Context==(-1073741789),Context==(-1073741802),Context==(-1073741803),Context==(-1073741808),Context==(-1073741820),Context==(-1073741823),Context==(-2147483626),Context==(-2147483631),Context==0,Context==1,Context==147456,Context==147460,Context==147464,Context==147468,Context==147472,Context==147476,Context==147480,Context==147496,Context==147500,Context==147508,Context==147512,Context==149504,Context==149512,Context==17,Context==2,Context==22,Context==255,Context==259,Context==3,Context==4,Context==7,Context==71} @*/ Context)
{ int /*@  predicates{Irp__PendingReturned!=(-1),Irp__PendingReturned!=(-1073741637),Irp__PendingReturned!=(-1073741670),Irp__PendingReturned!=(-1073741764),Irp__PendingReturned!=(-1073741789),Irp__PendingReturned!=(-1073741802),Irp__PendingReturned!=(-1073741803),Irp__PendingReturned!=(-1073741808),Irp__PendingReturned!=(-1073741820),Irp__PendingReturned!=(-1073741823),Irp__PendingReturned!=(-2147483626),Irp__PendingReturned!=(-2147483631),Irp__PendingReturned!=0,Irp__PendingReturned!=1,Irp__PendingReturned!=147456,Irp__PendingReturned!=147460,Irp__PendingReturned!=147464,Irp__PendingReturned!=147468,Irp__PendingReturned!=147472,Irp__PendingReturned!=147476,Irp__PendingReturned!=147480,Irp__PendingReturned!=147496,Irp__PendingReturned!=147500,Irp__PendingReturned!=147508,Irp__PendingReturned!=147512,Irp__PendingReturned!=149504,Irp__PendingReturned!=149512,Irp__PendingReturned!=17,Irp__PendingReturned!=2,Irp__PendingReturned!=22,Irp__PendingReturned!=255,Irp__PendingReturned!=259,Irp__PendingReturned!=3,Irp__PendingReturned!=4,Irp__PendingReturned!=7,Irp__PendingReturned!=71,Irp__PendingReturned==(-1),Irp__PendingReturned==(-1073741637),Irp__PendingReturned==(-1073741670),Irp__PendingReturned==(-1073741764),Irp__PendingReturned==(-1073741789),Irp__PendingReturned==(-1073741802),Irp__PendingReturned==(-1073741803),Irp__PendingReturned==(-1073741808),Irp__PendingReturned==(-1073741820),Irp__PendingReturned==(-1073741823),Irp__PendingReturned==(-2147483626),Irp__PendingReturned==(-2147483631),Irp__PendingReturned==0,Irp__PendingReturned==1,Irp__PendingReturned==147456,Irp__PendingReturned==147460,Irp__PendingReturned==147464,Irp__PendingReturned==147468,Irp__PendingReturned==147472,Irp__PendingReturned==147476,Irp__PendingReturned==147480,Irp__PendingReturned==147496,Irp__PendingReturned==147500,Irp__PendingReturned==147508,Irp__PendingReturned==147512,Irp__PendingReturned==149504,Irp__PendingReturned==149512,Irp__PendingReturned==17,Irp__PendingReturned==2,Irp__PendingReturned==22,Irp__PendingReturned==255,Irp__PendingReturned==259,Irp__PendingReturned==3,Irp__PendingReturned==4,Irp__PendingReturned==7,Irp__PendingReturned==71} @*/ Irp__PendingReturned = __VERIFIER_nondet_int();
  int /*@  predicates{Irp__AssociatedIrp__SystemBuffer!=(-1),Irp__AssociatedIrp__SystemBuffer!=(-1073741637),Irp__AssociatedIrp__SystemBuffer!=(-1073741670),Irp__AssociatedIrp__SystemBuffer!=(-1073741764),Irp__AssociatedIrp__SystemBuffer!=(-1073741789),Irp__AssociatedIrp__SystemBuffer!=(-1073741802),Irp__AssociatedIrp__SystemBuffer!=(-1073741803),Irp__AssociatedIrp__SystemBuffer!=(-1073741808),Irp__AssociatedIrp__SystemBuffer!=(-1073741820),Irp__AssociatedIrp__SystemBuffer!=(-1073741823),Irp__AssociatedIrp__SystemBuffer!=(-2147483626),Irp__AssociatedIrp__SystemBuffer!=(-2147483631),Irp__AssociatedIrp__SystemBuffer!=0,Irp__AssociatedIrp__SystemBuffer!=1,Irp__AssociatedIrp__SystemBuffer!=147456,Irp__AssociatedIrp__SystemBuffer!=147460,Irp__AssociatedIrp__SystemBuffer!=147464,Irp__AssociatedIrp__SystemBuffer!=147468,Irp__AssociatedIrp__SystemBuffer!=147472,Irp__AssociatedIrp__SystemBuffer!=147476,Irp__AssociatedIrp__SystemBuffer!=147480,Irp__AssociatedIrp__SystemBuffer!=147496,Irp__AssociatedIrp__SystemBuffer!=147500,Irp__AssociatedIrp__SystemBuffer!=147508,Irp__AssociatedIrp__SystemBuffer!=147512,Irp__AssociatedIrp__SystemBuffer!=149504,Irp__AssociatedIrp__SystemBuffer!=149512,Irp__AssociatedIrp__SystemBuffer!=17,Irp__AssociatedIrp__SystemBuffer!=2,Irp__AssociatedIrp__SystemBuffer!=22,Irp__AssociatedIrp__SystemBuffer!=255,Irp__AssociatedIrp__SystemBuffer!=259,Irp__AssociatedIrp__SystemBuffer!=3,Irp__AssociatedIrp__SystemBuffer!=4,Irp__AssociatedIrp__SystemBuffer!=7,Irp__AssociatedIrp__SystemBuffer!=71,Irp__AssociatedIrp__SystemBuffer==(-1),Irp__AssociatedIrp__SystemBuffer==(-1073741637),Irp__AssociatedIrp__SystemBuffer==(-1073741670),Irp__AssociatedIrp__SystemBuffer==(-1073741764),Irp__AssociatedIrp__SystemBuffer==(-1073741789),Irp__AssociatedIrp__SystemBuffer==(-1073741802),Irp__AssociatedIrp__SystemBuffer==(-1073741803),Irp__AssociatedIrp__SystemBuffer==(-1073741808),Irp__AssociatedIrp__SystemBuffer==(-1073741820),Irp__AssociatedIrp__SystemBuffer==(-1073741823),Irp__AssociatedIrp__SystemBuffer==(-2147483626),Irp__AssociatedIrp__SystemBuffer==(-2147483631),Irp__AssociatedIrp__SystemBuffer==0,Irp__AssociatedIrp__SystemBuffer==1,Irp__AssociatedIrp__SystemBuffer==147456,Irp__AssociatedIrp__SystemBuffer==147460,Irp__AssociatedIrp__SystemBuffer==147464,Irp__AssociatedIrp__SystemBuffer==147468,Irp__AssociatedIrp__SystemBuffer==147472,Irp__AssociatedIrp__SystemBuffer==147476,Irp__AssociatedIrp__SystemBuffer==147480,Irp__AssociatedIrp__SystemBuffer==147496,Irp__AssociatedIrp__SystemBuffer==147500,Irp__AssociatedIrp__SystemBuffer==147508,Irp__AssociatedIrp__SystemBuffer==147512,Irp__AssociatedIrp__SystemBuffer==149504,Irp__AssociatedIrp__SystemBuffer==149512,Irp__AssociatedIrp__SystemBuffer==17,Irp__AssociatedIrp__SystemBuffer==2,Irp__AssociatedIrp__SystemBuffer==22,Irp__AssociatedIrp__SystemBuffer==255,Irp__AssociatedIrp__SystemBuffer==259,Irp__AssociatedIrp__SystemBuffer==3,Irp__AssociatedIrp__SystemBuffer==4,Irp__AssociatedIrp__SystemBuffer==7,Irp__AssociatedIrp__SystemBuffer==71} @*/ Irp__AssociatedIrp__SystemBuffer = __VERIFIER_nondet_int();

  {
  if(Irp__PendingReturned){
    if(pended == 0){
      pended = 1;
    } else {
      {
      errorFn();
      }
    }
  }
  if(myStatus >= 0){
    {
    HpCdrProcessLastSession(Irp__AssociatedIrp__SystemBuffer);
    }
  }
  return(myStatus);
}
}
int CdAudioHPCdrDeviceControl(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741670),DeviceObject!=(-1073741764),DeviceObject!=(-1073741789),DeviceObject!=(-1073741802),DeviceObject!=(-1073741803),DeviceObject!=(-1073741808),DeviceObject!=(-1073741820),DeviceObject!=(-1073741823),DeviceObject!=(-2147483626),DeviceObject!=(-2147483631),DeviceObject!=0,DeviceObject!=1,DeviceObject!=147456,DeviceObject!=147460,DeviceObject!=147464,DeviceObject!=147468,DeviceObject!=147472,DeviceObject!=147476,DeviceObject!=147480,DeviceObject!=147496,DeviceObject!=147500,DeviceObject!=147508,DeviceObject!=147512,DeviceObject!=149504,DeviceObject!=149512,DeviceObject!=17,DeviceObject!=2,DeviceObject!=22,DeviceObject!=255,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=7,DeviceObject!=71,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741670),DeviceObject==(-1073741764),DeviceObject==(-1073741789),DeviceObject==(-1073741802),DeviceObject==(-1073741803),DeviceObject==(-1073741808),DeviceObject==(-1073741820),DeviceObject==(-1073741823),DeviceObject==(-2147483626),DeviceObject==(-2147483631),DeviceObject==0,DeviceObject==1,DeviceObject==147456,DeviceObject==147460,DeviceObject==147464,DeviceObject==147468,DeviceObject==147472,DeviceObject==147476,DeviceObject==147480,DeviceObject==147496,DeviceObject==147500,DeviceObject==147508,DeviceObject==147512,DeviceObject==149504,DeviceObject==149512,DeviceObject==17,DeviceObject==2,DeviceObject==22,DeviceObject==255,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==7,DeviceObject==71} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741670),Irp!=(-1073741764),Irp!=(-1073741789),Irp!=(-1073741802),Irp!=(-1073741803),Irp!=(-1073741808),Irp!=(-1073741820),Irp!=(-1073741823),Irp!=(-2147483626),Irp!=(-2147483631),Irp!=0,Irp!=1,Irp!=147456,Irp!=147460,Irp!=147464,Irp!=147468,Irp!=147472,Irp!=147476,Irp!=147480,Irp!=147496,Irp!=147500,Irp!=147508,Irp!=147512,Irp!=149504,Irp!=149512,Irp!=17,Irp!=2,Irp!=22,Irp!=255,Irp!=259,Irp!=3,Irp!=4,Irp!=7,Irp!=71,Irp==(-1),Irp==(-1073741637),Irp==(-1073741670),Irp==(-1073741764),Irp==(-1073741789),Irp==(-1073741802),Irp==(-1073741803),Irp==(-1073741808),Irp==(-1073741820),Irp==(-1073741823),Irp==(-2147483626),Irp==(-2147483631),Irp==0,Irp==1,Irp==147456,Irp==147460,Irp==147464,Irp==147468,Irp==147472,Irp==147476,Irp==147480,Irp==147496,Irp==147500,Irp==147508,Irp==147512,Irp==149504,Irp==149512,Irp==17,Irp==2,Irp==22,Irp==255,Irp==259,Irp==3,Irp==4,Irp==7,Irp==71} @*/ Irp)
{ int /*@  predicates{currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741637),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741670),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741764),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741789),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741802),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741803),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741808),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741820),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-1073741823),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-2147483626),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=(-2147483631),currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=0,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=1,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147456,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147460,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147464,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147468,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147472,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147476,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147480,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147496,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147500,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147508,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=147512,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=149504,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=149512,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=17,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=2,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=22,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=255,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=259,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=3,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=4,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=7,currentIrpStack__Parameters__DeviceIoControl__IoControlCode!=71,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741637),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741670),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741764),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741789),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741802),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741803),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741808),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741820),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-1073741823),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-2147483626),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==(-2147483631),currentIrpStack__Parameters__DeviceIoControl__IoControlCode==0,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==1,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147456,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147460,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147464,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147468,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147472,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147476,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147480,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147496,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147500,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147508,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==147512,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==149504,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==149512,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==17,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==2,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==22,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==255,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==259,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==3,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==4,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==7,currentIrpStack__Parameters__DeviceIoControl__IoControlCode==71} @*/ currentIrpStack__Parameters__DeviceIoControl__IoControlCode = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension__TargetDeviceObject!=(-1),deviceExtension__TargetDeviceObject!=(-1073741637),deviceExtension__TargetDeviceObject!=(-1073741670),deviceExtension__TargetDeviceObject!=(-1073741764),deviceExtension__TargetDeviceObject!=(-1073741789),deviceExtension__TargetDeviceObject!=(-1073741802),deviceExtension__TargetDeviceObject!=(-1073741803),deviceExtension__TargetDeviceObject!=(-1073741808),deviceExtension__TargetDeviceObject!=(-1073741820),deviceExtension__TargetDeviceObject!=(-1073741823),deviceExtension__TargetDeviceObject!=(-2147483626),deviceExtension__TargetDeviceObject!=(-2147483631),deviceExtension__TargetDeviceObject!=0,deviceExtension__TargetDeviceObject!=1,deviceExtension__TargetDeviceObject!=147456,deviceExtension__TargetDeviceObject!=147460,deviceExtension__TargetDeviceObject!=147464,deviceExtension__TargetDeviceObject!=147468,deviceExtension__TargetDeviceObject!=147472,deviceExtension__TargetDeviceObject!=147476,deviceExtension__TargetDeviceObject!=147480,deviceExtension__TargetDeviceObject!=147496,deviceExtension__TargetDeviceObject!=147500,deviceExtension__TargetDeviceObject!=147508,deviceExtension__TargetDeviceObject!=147512,deviceExtension__TargetDeviceObject!=149504,deviceExtension__TargetDeviceObject!=149512,deviceExtension__TargetDeviceObject!=17,deviceExtension__TargetDeviceObject!=2,deviceExtension__TargetDeviceObject!=22,deviceExtension__TargetDeviceObject!=255,deviceExtension__TargetDeviceObject!=259,deviceExtension__TargetDeviceObject!=3,deviceExtension__TargetDeviceObject!=4,deviceExtension__TargetDeviceObject!=7,deviceExtension__TargetDeviceObject!=71,deviceExtension__TargetDeviceObject==(-1),deviceExtension__TargetDeviceObject==(-1073741637),deviceExtension__TargetDeviceObject==(-1073741670),deviceExtension__TargetDeviceObject==(-1073741764),deviceExtension__TargetDeviceObject==(-1073741789),deviceExtension__TargetDeviceObject==(-1073741802),deviceExtension__TargetDeviceObject==(-1073741803),deviceExtension__TargetDeviceObject==(-1073741808),deviceExtension__TargetDeviceObject==(-1073741820),deviceExtension__TargetDeviceObject==(-1073741823),deviceExtension__TargetDeviceObject==(-2147483626),deviceExtension__TargetDeviceObject==(-2147483631),deviceExtension__TargetDeviceObject==0,deviceExtension__TargetDeviceObject==1,deviceExtension__TargetDeviceObject==147456,deviceExtension__TargetDeviceObject==147460,deviceExtension__TargetDeviceObject==147464,deviceExtension__TargetDeviceObject==147468,deviceExtension__TargetDeviceObject==147472,deviceExtension__TargetDeviceObject==147476,deviceExtension__TargetDeviceObject==147480,deviceExtension__TargetDeviceObject==147496,deviceExtension__TargetDeviceObject==147500,deviceExtension__TargetDeviceObject==147508,deviceExtension__TargetDeviceObject==147512,deviceExtension__TargetDeviceObject==149504,deviceExtension__TargetDeviceObject==149512,deviceExtension__TargetDeviceObject==17,deviceExtension__TargetDeviceObject==2,deviceExtension__TargetDeviceObject==22,deviceExtension__TargetDeviceObject==255,deviceExtension__TargetDeviceObject==259,deviceExtension__TargetDeviceObject==3,deviceExtension__TargetDeviceObject==4,deviceExtension__TargetDeviceObject==7,deviceExtension__TargetDeviceObject==71} @*/ deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int();
  int /*@  predicates{irpSp__Control==224} @*/ irpSp__Control ;
  int /*@  predicates{tmp==(-1),tmp==(-1073741637),tmp==(-1073741670),tmp==(-1073741764),tmp==(-1073741789),tmp==(-1073741802),tmp==(-1073741803),tmp==(-1073741808),tmp==(-1073741820),tmp==(-1073741823),tmp==(-2147483626),tmp==(-2147483631),tmp==0,tmp==1,tmp==147456,tmp==147460,tmp==147464,tmp==147468,tmp==147472,tmp==147476,tmp==147480,tmp==147496,tmp==147500,tmp==147508,tmp==147512,tmp==149504,tmp==149512,tmp==17,tmp==2,tmp==22,tmp==255,tmp==259,tmp==3,tmp==4,tmp==7,tmp==71} @*/ tmp ;
  int /*@  predicates{tmp___0==(-1),tmp___0==(-1073741637),tmp___0==(-1073741670),tmp___0==(-1073741764),tmp___0==(-1073741789),tmp___0==(-1073741802),tmp___0==(-1073741803),tmp___0==(-1073741808),tmp___0==(-1073741820),tmp___0==(-1073741823),tmp___0==(-2147483626),tmp___0==(-2147483631),tmp___0==0,tmp___0==1,tmp___0==147456,tmp___0==147460,tmp___0==147464,tmp___0==147468,tmp___0==147472,tmp___0==147476,tmp___0==147480,tmp___0==147496,tmp___0==147500,tmp___0==147508,tmp___0==147512,tmp___0==149504,tmp___0==149512,tmp___0==17,tmp___0==2,tmp___0==22,tmp___0==255,tmp___0==259,tmp___0==3,tmp___0==4,tmp___0==7,tmp___0==71} @*/ tmp___0 ;
  int /*@  predicates{__cil_tmp8==56} @*/ __cil_tmp8 ;
  int /*@  predicates{__cil_tmp9==16384} @*/ __cil_tmp9 ;
  int /*@  predicates{__cil_tmp10==131072} @*/ __cil_tmp10 ;
  int /*@  predicates{__cil_tmp11==147456} @*/ __cil_tmp11 ;
  int /*@  predicates{__cil_tmp12!=currentIrpStack__Parameters__DeviceIoControl__IoControlCode,__cil_tmp12==147512,__cil_tmp12==currentIrpStack__Parameters__DeviceIoControl__IoControlCode} @*/ __cil_tmp12 ;

  {
  {
  __cil_tmp8 = 56;
  __cil_tmp9 = 16384;
  __cil_tmp10 = 131072;
  __cil_tmp11 = 147456;
  __cil_tmp12 = 147512;
  if(currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp12){
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
    irpSp__Control = 224;
    tmp = IofCallDriver(deviceExtension__TargetDeviceObject, Irp);
    }
    return(tmp);
  } else {
    {
    tmp___0 = CdAudioSendToNextDriver(DeviceObject, Irp);
    }
    return(tmp___0);
  }
  }
  return(-1073741823);
}
}
int CdAudioForwardIrpSynchronous(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741670),DeviceObject!=(-1073741764),DeviceObject!=(-1073741789),DeviceObject!=(-1073741802),DeviceObject!=(-1073741803),DeviceObject!=(-1073741808),DeviceObject!=(-1073741820),DeviceObject!=(-1073741823),DeviceObject!=(-2147483626),DeviceObject!=(-2147483631),DeviceObject!=0,DeviceObject!=1,DeviceObject!=147456,DeviceObject!=147460,DeviceObject!=147464,DeviceObject!=147468,DeviceObject!=147472,DeviceObject!=147476,DeviceObject!=147480,DeviceObject!=147496,DeviceObject!=147500,DeviceObject!=147508,DeviceObject!=147512,DeviceObject!=149504,DeviceObject!=149512,DeviceObject!=17,DeviceObject!=2,DeviceObject!=22,DeviceObject!=255,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=7,DeviceObject!=71,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741670),DeviceObject==(-1073741764),DeviceObject==(-1073741789),DeviceObject==(-1073741802),DeviceObject==(-1073741803),DeviceObject==(-1073741808),DeviceObject==(-1073741820),DeviceObject==(-1073741823),DeviceObject==(-2147483626),DeviceObject==(-2147483631),DeviceObject==0,DeviceObject==1,DeviceObject==147456,DeviceObject==147460,DeviceObject==147464,DeviceObject==147468,DeviceObject==147472,DeviceObject==147476,DeviceObject==147480,DeviceObject==147496,DeviceObject==147500,DeviceObject==147508,DeviceObject==147512,DeviceObject==149504,DeviceObject==149512,DeviceObject==17,DeviceObject==2,DeviceObject==22,DeviceObject==255,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==7,DeviceObject==71} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741670),Irp!=(-1073741764),Irp!=(-1073741789),Irp!=(-1073741802),Irp!=(-1073741803),Irp!=(-1073741808),Irp!=(-1073741820),Irp!=(-1073741823),Irp!=(-2147483626),Irp!=(-2147483631),Irp!=0,Irp!=1,Irp!=147456,Irp!=147460,Irp!=147464,Irp!=147468,Irp!=147472,Irp!=147476,Irp!=147480,Irp!=147496,Irp!=147500,Irp!=147508,Irp!=147512,Irp!=149504,Irp!=149512,Irp!=17,Irp!=2,Irp!=22,Irp!=255,Irp!=259,Irp!=3,Irp!=4,Irp!=7,Irp!=71,Irp==(-1),Irp==(-1073741637),Irp==(-1073741670),Irp==(-1073741764),Irp==(-1073741789),Irp==(-1073741802),Irp==(-1073741803),Irp==(-1073741808),Irp==(-1073741820),Irp==(-1073741823),Irp==(-2147483626),Irp==(-2147483631),Irp==0,Irp==1,Irp==147456,Irp==147460,Irp==147464,Irp==147468,Irp==147472,Irp==147476,Irp==147480,Irp==147496,Irp==147500,Irp==147508,Irp==147512,Irp==149504,Irp==149512,Irp==17,Irp==2,Irp==22,Irp==255,Irp==259,Irp==3,Irp==4,Irp==7,Irp==71} @*/ Irp)
{ int /*@  predicates{deviceExtension__TargetDeviceObject!=(-1),deviceExtension__TargetDeviceObject!=(-1073741637),deviceExtension__TargetDeviceObject!=(-1073741670),deviceExtension__TargetDeviceObject!=(-1073741764),deviceExtension__TargetDeviceObject!=(-1073741789),deviceExtension__TargetDeviceObject!=(-1073741802),deviceExtension__TargetDeviceObject!=(-1073741803),deviceExtension__TargetDeviceObject!=(-1073741808),deviceExtension__TargetDeviceObject!=(-1073741820),deviceExtension__TargetDeviceObject!=(-1073741823),deviceExtension__TargetDeviceObject!=(-2147483626),deviceExtension__TargetDeviceObject!=(-2147483631),deviceExtension__TargetDeviceObject!=0,deviceExtension__TargetDeviceObject!=1,deviceExtension__TargetDeviceObject!=147456,deviceExtension__TargetDeviceObject!=147460,deviceExtension__TargetDeviceObject!=147464,deviceExtension__TargetDeviceObject!=147468,deviceExtension__TargetDeviceObject!=147472,deviceExtension__TargetDeviceObject!=147476,deviceExtension__TargetDeviceObject!=147480,deviceExtension__TargetDeviceObject!=147496,deviceExtension__TargetDeviceObject!=147500,deviceExtension__TargetDeviceObject!=147508,deviceExtension__TargetDeviceObject!=147512,deviceExtension__TargetDeviceObject!=149504,deviceExtension__TargetDeviceObject!=149512,deviceExtension__TargetDeviceObject!=17,deviceExtension__TargetDeviceObject!=2,deviceExtension__TargetDeviceObject!=22,deviceExtension__TargetDeviceObject!=255,deviceExtension__TargetDeviceObject!=259,deviceExtension__TargetDeviceObject!=3,deviceExtension__TargetDeviceObject!=4,deviceExtension__TargetDeviceObject!=7,deviceExtension__TargetDeviceObject!=71,deviceExtension__TargetDeviceObject==(-1),deviceExtension__TargetDeviceObject==(-1073741637),deviceExtension__TargetDeviceObject==(-1073741670),deviceExtension__TargetDeviceObject==(-1073741764),deviceExtension__TargetDeviceObject==(-1073741789),deviceExtension__TargetDeviceObject==(-1073741802),deviceExtension__TargetDeviceObject==(-1073741803),deviceExtension__TargetDeviceObject==(-1073741808),deviceExtension__TargetDeviceObject==(-1073741820),deviceExtension__TargetDeviceObject==(-1073741823),deviceExtension__TargetDeviceObject==(-2147483626),deviceExtension__TargetDeviceObject==(-2147483631),deviceExtension__TargetDeviceObject==0,deviceExtension__TargetDeviceObject==1,deviceExtension__TargetDeviceObject==147456,deviceExtension__TargetDeviceObject==147460,deviceExtension__TargetDeviceObject==147464,deviceExtension__TargetDeviceObject==147468,deviceExtension__TargetDeviceObject==147472,deviceExtension__TargetDeviceObject==147476,deviceExtension__TargetDeviceObject==147480,deviceExtension__TargetDeviceObject==147496,deviceExtension__TargetDeviceObject==147500,deviceExtension__TargetDeviceObject==147508,deviceExtension__TargetDeviceObject==147512,deviceExtension__TargetDeviceObject==149504,deviceExtension__TargetDeviceObject==149512,deviceExtension__TargetDeviceObject==17,deviceExtension__TargetDeviceObject==2,deviceExtension__TargetDeviceObject==22,deviceExtension__TargetDeviceObject==255,deviceExtension__TargetDeviceObject==259,deviceExtension__TargetDeviceObject==3,deviceExtension__TargetDeviceObject==4,deviceExtension__TargetDeviceObject==7,deviceExtension__TargetDeviceObject==71} @*/ deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int();
  int /*@  predicates{event!=(-1),event!=(-1073741637),event!=(-1073741670),event!=(-1073741764),event!=(-1073741789),event!=(-1073741802),event!=(-1073741803),event!=(-1073741808),event!=(-1073741820),event!=(-1073741823),event!=(-2147483626),event!=(-2147483631),event!=0,event!=1,event!=147456,event!=147460,event!=147464,event!=147468,event!=147472,event!=147476,event!=147480,event!=147496,event!=147500,event!=147508,event!=147512,event!=149504,event!=149512,event!=17,event!=2,event!=22,event!=255,event!=259,event!=3,event!=4,event!=7,event!=71,event==(-1),event==(-1073741637),event==(-1073741670),event==(-1073741764),event==(-1073741789),event==(-1073741802),event==(-1073741803),event==(-1073741808),event==(-1073741820),event==(-1073741823),event==(-2147483626),event==(-2147483631),event==0,event==1,event==147456,event==147460,event==147464,event==147468,event==147472,event==147476,event==147480,event==147496,event==147500,event==147508,event==147512,event==149504,event==149512,event==17,event==2,event==22,event==255,event==259,event==3,event==4,event==7,event==71} @*/ event = __VERIFIER_nondet_int();
  int /*@  predicates{status!=(-1),status!=(-1073741637),status!=(-1073741670),status!=(-1073741764),status!=(-1073741789),status!=(-1073741802),status!=(-1073741803),status!=(-1073741808),status!=(-1073741820),status!=(-1073741823),status!=(-2147483626),status!=(-2147483631),status!=0,status!=1,status!=147456,status!=147460,status!=147464,status!=147468,status!=147472,status!=147476,status!=147480,status!=147496,status!=147500,status!=147508,status!=147512,status!=149504,status!=149512,status!=17,status!=2,status!=22,status!=255,status!=259,status!=3,status!=4,status!=7,status!=71,status==(-1),status==(-1073741637),status==(-1073741670),status==(-1073741764),status==(-1073741789),status==(-1073741802),status==(-1073741803),status==(-1073741808),status==(-1073741820),status==(-1073741823),status==(-2147483626),status==(-2147483631),status==0,status==1,status==147456,status==147460,status==147464,status==147468,status==147472,status==147476,status==147480,status==147496,status==147500,status==147508,status==147512,status==149504,status==149512,status==17,status==2,status==22,status==255,status==259,status==3,status==4,status==7,status==71} @*/ status ;
  int /*@  predicates{irpSp__Control==224} @*/ irpSp__Control ;

  {
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
      routine = 1;
    }
  }
  {
  irpSp__Control = 224;
  status = IofCallDriver(deviceExtension__TargetDeviceObject, Irp);
  status = 259;
  }
  if(status){
    {
    KeWaitForSingleObject(event, Executive, KernelMode, 0, 0);
    status = myStatus;
    }
  }
  return(status);
}
}
void CdAudioUnload(int /*@  predicates{DriverObject!=(-1),DriverObject!=(-1073741637),DriverObject!=(-1073741670),DriverObject!=(-1073741764),DriverObject!=(-1073741789),DriverObject!=(-1073741802),DriverObject!=(-1073741803),DriverObject!=(-1073741808),DriverObject!=(-1073741820),DriverObject!=(-1073741823),DriverObject!=(-2147483626),DriverObject!=(-2147483631),DriverObject!=0,DriverObject!=1,DriverObject!=147456,DriverObject!=147460,DriverObject!=147464,DriverObject!=147468,DriverObject!=147472,DriverObject!=147476,DriverObject!=147480,DriverObject!=147496,DriverObject!=147500,DriverObject!=147508,DriverObject!=147512,DriverObject!=149504,DriverObject!=149512,DriverObject!=17,DriverObject!=2,DriverObject!=22,DriverObject!=255,DriverObject!=259,DriverObject!=3,DriverObject!=4,DriverObject!=7,DriverObject!=71,DriverObject==(-1),DriverObject==(-1073741637),DriverObject==(-1073741670),DriverObject==(-1073741764),DriverObject==(-1073741789),DriverObject==(-1073741802),DriverObject==(-1073741803),DriverObject==(-1073741808),DriverObject==(-1073741820),DriverObject==(-1073741823),DriverObject==(-2147483626),DriverObject==(-2147483631),DriverObject==0,DriverObject==1,DriverObject==147456,DriverObject==147460,DriverObject==147464,DriverObject==147468,DriverObject==147472,DriverObject==147476,DriverObject==147480,DriverObject==147496,DriverObject==147500,DriverObject==147508,DriverObject==147512,DriverObject==149504,DriverObject==149512,DriverObject==17,DriverObject==2,DriverObject==22,DriverObject==255,DriverObject==259,DriverObject==3,DriverObject==4,DriverObject==7,DriverObject==71} @*/ DriverObject)
{

  {
  return;
}
}
int CdAudioPower(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741670),DeviceObject!=(-1073741764),DeviceObject!=(-1073741789),DeviceObject!=(-1073741802),DeviceObject!=(-1073741803),DeviceObject!=(-1073741808),DeviceObject!=(-1073741820),DeviceObject!=(-1073741823),DeviceObject!=(-2147483626),DeviceObject!=(-2147483631),DeviceObject!=0,DeviceObject!=1,DeviceObject!=147456,DeviceObject!=147460,DeviceObject!=147464,DeviceObject!=147468,DeviceObject!=147472,DeviceObject!=147476,DeviceObject!=147480,DeviceObject!=147496,DeviceObject!=147500,DeviceObject!=147508,DeviceObject!=147512,DeviceObject!=149504,DeviceObject!=149512,DeviceObject!=17,DeviceObject!=2,DeviceObject!=22,DeviceObject!=255,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=7,DeviceObject!=71,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741670),DeviceObject==(-1073741764),DeviceObject==(-1073741789),DeviceObject==(-1073741802),DeviceObject==(-1073741803),DeviceObject==(-1073741808),DeviceObject==(-1073741820),DeviceObject==(-1073741823),DeviceObject==(-2147483626),DeviceObject==(-2147483631),DeviceObject==0,DeviceObject==1,DeviceObject==147456,DeviceObject==147460,DeviceObject==147464,DeviceObject==147468,DeviceObject==147472,DeviceObject==147476,DeviceObject==147480,DeviceObject==147496,DeviceObject==147500,DeviceObject==147508,DeviceObject==147512,DeviceObject==149504,DeviceObject==149512,DeviceObject==17,DeviceObject==2,DeviceObject==22,DeviceObject==255,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==7,DeviceObject==71} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741670),Irp!=(-1073741764),Irp!=(-1073741789),Irp!=(-1073741802),Irp!=(-1073741803),Irp!=(-1073741808),Irp!=(-1073741820),Irp!=(-1073741823),Irp!=(-2147483626),Irp!=(-2147483631),Irp!=0,Irp!=1,Irp!=147456,Irp!=147460,Irp!=147464,Irp!=147468,Irp!=147472,Irp!=147476,Irp!=147480,Irp!=147496,Irp!=147500,Irp!=147508,Irp!=147512,Irp!=149504,Irp!=149512,Irp!=17,Irp!=2,Irp!=22,Irp!=255,Irp!=259,Irp!=3,Irp!=4,Irp!=7,Irp!=71,Irp==(-1),Irp==(-1073741637),Irp==(-1073741670),Irp==(-1073741764),Irp==(-1073741789),Irp==(-1073741802),Irp==(-1073741803),Irp==(-1073741808),Irp==(-1073741820),Irp==(-1073741823),Irp==(-2147483626),Irp==(-2147483631),Irp==0,Irp==1,Irp==147456,Irp==147460,Irp==147464,Irp==147468,Irp==147472,Irp==147476,Irp==147480,Irp==147496,Irp==147500,Irp==147508,Irp==147512,Irp==149504,Irp==149512,Irp==17,Irp==2,Irp==22,Irp==255,Irp==259,Irp==3,Irp==4,Irp==7,Irp==71} @*/ Irp)
{ int Irp__CurrentLocation = __VERIFIER_nondet_int();
  int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int();
  int /*@  predicates{deviceExtension__TargetDeviceObject!=(-1),deviceExtension__TargetDeviceObject!=(-1073741637),deviceExtension__TargetDeviceObject!=(-1073741670),deviceExtension__TargetDeviceObject!=(-1073741764),deviceExtension__TargetDeviceObject!=(-1073741789),deviceExtension__TargetDeviceObject!=(-1073741802),deviceExtension__TargetDeviceObject!=(-1073741803),deviceExtension__TargetDeviceObject!=(-1073741808),deviceExtension__TargetDeviceObject!=(-1073741820),deviceExtension__TargetDeviceObject!=(-1073741823),deviceExtension__TargetDeviceObject!=(-2147483626),deviceExtension__TargetDeviceObject!=(-2147483631),deviceExtension__TargetDeviceObject!=0,deviceExtension__TargetDeviceObject!=1,deviceExtension__TargetDeviceObject!=147456,deviceExtension__TargetDeviceObject!=147460,deviceExtension__TargetDeviceObject!=147464,deviceExtension__TargetDeviceObject!=147468,deviceExtension__TargetDeviceObject!=147472,deviceExtension__TargetDeviceObject!=147476,deviceExtension__TargetDeviceObject!=147480,deviceExtension__TargetDeviceObject!=147496,deviceExtension__TargetDeviceObject!=147500,deviceExtension__TargetDeviceObject!=147508,deviceExtension__TargetDeviceObject!=147512,deviceExtension__TargetDeviceObject!=149504,deviceExtension__TargetDeviceObject!=149512,deviceExtension__TargetDeviceObject!=17,deviceExtension__TargetDeviceObject!=2,deviceExtension__TargetDeviceObject!=22,deviceExtension__TargetDeviceObject!=255,deviceExtension__TargetDeviceObject!=259,deviceExtension__TargetDeviceObject!=3,deviceExtension__TargetDeviceObject!=4,deviceExtension__TargetDeviceObject!=7,deviceExtension__TargetDeviceObject!=71,deviceExtension__TargetDeviceObject==(-1),deviceExtension__TargetDeviceObject==(-1073741637),deviceExtension__TargetDeviceObject==(-1073741670),deviceExtension__TargetDeviceObject==(-1073741764),deviceExtension__TargetDeviceObject==(-1073741789),deviceExtension__TargetDeviceObject==(-1073741802),deviceExtension__TargetDeviceObject==(-1073741803),deviceExtension__TargetDeviceObject==(-1073741808),deviceExtension__TargetDeviceObject==(-1073741820),deviceExtension__TargetDeviceObject==(-1073741823),deviceExtension__TargetDeviceObject==(-2147483626),deviceExtension__TargetDeviceObject==(-2147483631),deviceExtension__TargetDeviceObject==0,deviceExtension__TargetDeviceObject==1,deviceExtension__TargetDeviceObject==147456,deviceExtension__TargetDeviceObject==147460,deviceExtension__TargetDeviceObject==147464,deviceExtension__TargetDeviceObject==147468,deviceExtension__TargetDeviceObject==147472,deviceExtension__TargetDeviceObject==147476,deviceExtension__TargetDeviceObject==147480,deviceExtension__TargetDeviceObject==147496,deviceExtension__TargetDeviceObject==147500,deviceExtension__TargetDeviceObject==147508,deviceExtension__TargetDeviceObject==147512,deviceExtension__TargetDeviceObject==149504,deviceExtension__TargetDeviceObject==149512,deviceExtension__TargetDeviceObject==17,deviceExtension__TargetDeviceObject==2,deviceExtension__TargetDeviceObject==22,deviceExtension__TargetDeviceObject==255,deviceExtension__TargetDeviceObject==259,deviceExtension__TargetDeviceObject==3,deviceExtension__TargetDeviceObject==4,deviceExtension__TargetDeviceObject==7,deviceExtension__TargetDeviceObject==71} @*/ deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int();
  int /*@  predicates{tmp==(-1),tmp==(-1073741637),tmp==(-1073741670),tmp==(-1073741764),tmp==(-1073741789),tmp==(-1073741802),tmp==(-1073741803),tmp==(-1073741808),tmp==(-1073741820),tmp==(-1073741823),tmp==(-2147483626),tmp==(-2147483631),tmp==0,tmp==1,tmp==147456,tmp==147460,tmp==147464,tmp==147468,tmp==147472,tmp==147476,tmp==147480,tmp==147496,tmp==147500,tmp==147508,tmp==147512,tmp==149504,tmp==149512,tmp==17,tmp==2,tmp==22,tmp==255,tmp==259,tmp==3,tmp==4,tmp==7,tmp==71} @*/ tmp ;

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
  tmp = PoCallDriver(deviceExtension__TargetDeviceObject, Irp);
  }
  return(tmp);
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
{ int /*@  predicates{pirp__IoStatus__Status==(-1073741637),pirp__IoStatus__Status==0} @*/ pirp__IoStatus__Status ;
  int /*@  predicates{d!=(-1),d!=(-1073741637),d!=(-1073741670),d!=(-1073741764),d!=(-1073741789),d!=(-1073741802),d!=(-1073741803),d!=(-1073741808),d!=(-1073741820),d!=(-1073741823),d!=(-2147483626),d!=(-2147483631),d!=0,d!=1,d!=147456,d!=147460,d!=147464,d!=147468,d!=147472,d!=147476,d!=147480,d!=147496,d!=147500,d!=147508,d!=147512,d!=149504,d!=149512,d!=17,d!=2,d!=22,d!=255,d!=259,d!=3,d!=4,d!=7,d!=71,d==(-1),d==(-1073741637),d==(-1073741670),d==(-1073741764),d==(-1073741789),d==(-1073741802),d==(-1073741803),d==(-1073741808),d==(-1073741820),d==(-1073741823),d==(-2147483626),d==(-2147483631),d==0,d==1,d==147456,d==147460,d==147464,d==147468,d==147472,d==147476,d==147480,d==147496,d==147500,d==147508,d==147512,d==149504,d==149512,d==17,d==2,d==22,d==255,d==259,d==3,d==4,d==7,d==71} @*/ d = __VERIFIER_nondet_int();
  int /*@  predicates{(status!=(-1)),status!=(-1),status!=(-1073741637),status!=(-1073741670),status!=(-1073741764),status!=(-1073741789),status!=(-1073741802),status!=(-1073741803),status!=(-1073741808),status!=(-1073741820),status!=(-1073741823),status!=(-2147483626),status!=(-2147483631),status!=0,status!=1,status!=147456,status!=147460,status!=147464,status!=147468,status!=147472,status!=147476,status!=147480,status!=147496,status!=147500,status!=147508,status!=147512,status!=149504,status!=149512,status!=17,status!=2,status!=22,status!=255,status!=259,status!=3,status!=4,status!=7,status!=71,status!=compFptr,status!=compRegistered,status!=customIrp,status!=lowerDriverReturn,status!=pended,status!=setEventCalled,status<0,status==(-1),status==(-1073741637),status==(-1073741670),status==(-1073741764),status==(-1073741789),status==(-1073741802),status==(-1073741803),status==(-1073741808),status==(-1073741820),status==(-1073741823),status==(-2147483626),status==(-2147483631),status==0,status==1,status==147456,status==147460,status==147464,status==147468,status==147472,status==147476,status==147480,status==147496,status==147500,status==147508,status==147512,status==149504,status==149512,status==17,status==2,status==22,status==255,status==259,status==3,status==4,status==7,status==71,status==compFptr,status==compRegistered,status==customIrp,status==lowerDriverReturn,status==pended,status==setEventCalled,status>=0} @*/ status = __VERIFIER_nondet_int();
  int /*@  predicates{irp!=(-1),irp!=(-1073741637),irp!=(-1073741670),irp!=(-1073741764),irp!=(-1073741789),irp!=(-1073741802),irp!=(-1073741803),irp!=(-1073741808),irp!=(-1073741820),irp!=(-1073741823),irp!=(-2147483626),irp!=(-2147483631),irp!=0,irp!=1,irp!=147456,irp!=147460,irp!=147464,irp!=147468,irp!=147472,irp!=147476,irp!=147480,irp!=147496,irp!=147500,irp!=147508,irp!=147512,irp!=149504,irp!=149512,irp!=17,irp!=2,irp!=22,irp!=255,irp!=259,irp!=3,irp!=4,irp!=7,irp!=71,irp==(-1),irp==(-1073741637),irp==(-1073741670),irp==(-1073741764),irp==(-1073741789),irp==(-1073741802),irp==(-1073741803),irp==(-1073741808),irp==(-1073741820),irp==(-1073741823),irp==(-2147483626),irp==(-2147483631),irp==0,irp==1,irp==147456,irp==147460,irp==147464,irp==147468,irp==147472,irp==147476,irp==147480,irp==147496,irp==147500,irp==147508,irp==147512,irp==149504,irp==149512,irp==17,irp==2,irp==22,irp==255,irp==259,irp==3,irp==4,irp==7,irp==71,irp==pirp} @*/ irp = __VERIFIER_nondet_int();
  int /*@  predicates{we_should_unload!=(-1),we_should_unload!=(-1073741637),we_should_unload!=(-1073741670),we_should_unload!=(-1073741764),we_should_unload!=(-1073741789),we_should_unload!=(-1073741802),we_should_unload!=(-1073741803),we_should_unload!=(-1073741808),we_should_unload!=(-1073741820),we_should_unload!=(-1073741823),we_should_unload!=(-2147483626),we_should_unload!=(-2147483631),we_should_unload!=0,we_should_unload!=1,we_should_unload!=147456,we_should_unload!=147460,we_should_unload!=147464,we_should_unload!=147468,we_should_unload!=147472,we_should_unload!=147476,we_should_unload!=147480,we_should_unload!=147496,we_should_unload!=147500,we_should_unload!=147508,we_should_unload!=147512,we_should_unload!=149504,we_should_unload!=149512,we_should_unload!=17,we_should_unload!=2,we_should_unload!=22,we_should_unload!=255,we_should_unload!=259,we_should_unload!=3,we_should_unload!=4,we_should_unload!=7,we_should_unload!=71,we_should_unload==(-1),we_should_unload==(-1073741637),we_should_unload==(-1073741670),we_should_unload==(-1073741764),we_should_unload==(-1073741789),we_should_unload==(-1073741802),we_should_unload==(-1073741803),we_should_unload==(-1073741808),we_should_unload==(-1073741820),we_should_unload==(-1073741823),we_should_unload==(-2147483626),we_should_unload==(-2147483631),we_should_unload==0,we_should_unload==1,we_should_unload==147456,we_should_unload==147460,we_should_unload==147464,we_should_unload==147468,we_should_unload==147472,we_should_unload==147476,we_should_unload==147480,we_should_unload==147496,we_should_unload==147500,we_should_unload==147508,we_should_unload==147512,we_should_unload==149504,we_should_unload==149512,we_should_unload==17,we_should_unload==2,we_should_unload==22,we_should_unload==255,we_should_unload==259,we_should_unload==3,we_should_unload==4,we_should_unload==7,we_should_unload==71} @*/ we_should_unload = __VERIFIER_nondet_int();
  int /*@  predicates{irp_choice!=(-1),irp_choice!=(-1073741637),irp_choice!=(-1073741670),irp_choice!=(-1073741764),irp_choice!=(-1073741789),irp_choice!=(-1073741802),irp_choice!=(-1073741803),irp_choice!=(-1073741808),irp_choice!=(-1073741820),irp_choice!=(-1073741823),irp_choice!=(-2147483626),irp_choice!=(-2147483631),irp_choice!=0,irp_choice!=1,irp_choice!=147456,irp_choice!=147460,irp_choice!=147464,irp_choice!=147468,irp_choice!=147472,irp_choice!=147476,irp_choice!=147480,irp_choice!=147496,irp_choice!=147500,irp_choice!=147508,irp_choice!=147512,irp_choice!=149504,irp_choice!=149512,irp_choice!=17,irp_choice!=2,irp_choice!=22,irp_choice!=255,irp_choice!=259,irp_choice!=3,irp_choice!=4,irp_choice!=7,irp_choice!=71,irp_choice==(-1),irp_choice==(-1073741637),irp_choice==(-1073741670),irp_choice==(-1073741764),irp_choice==(-1073741789),irp_choice==(-1073741802),irp_choice==(-1073741803),irp_choice==(-1073741808),irp_choice==(-1073741820),irp_choice==(-1073741823),irp_choice==(-2147483626),irp_choice==(-2147483631),irp_choice==0,irp_choice==1,irp_choice==147456,irp_choice==147460,irp_choice==147464,irp_choice==147468,irp_choice==147472,irp_choice==147476,irp_choice==147480,irp_choice==147496,irp_choice==147500,irp_choice==147508,irp_choice==147512,irp_choice==149504,irp_choice==149512,irp_choice==17,irp_choice==2,irp_choice==22,irp_choice==255,irp_choice==259,irp_choice==3,irp_choice==4,irp_choice==7,irp_choice==71} @*/ irp_choice = __VERIFIER_nondet_int();
  int /*@  predicates{devobj!=(-1),devobj!=(-1073741637),devobj!=(-1073741670),devobj!=(-1073741764),devobj!=(-1073741789),devobj!=(-1073741802),devobj!=(-1073741803),devobj!=(-1073741808),devobj!=(-1073741820),devobj!=(-1073741823),devobj!=(-2147483626),devobj!=(-2147483631),devobj!=0,devobj!=1,devobj!=147456,devobj!=147460,devobj!=147464,devobj!=147468,devobj!=147472,devobj!=147476,devobj!=147480,devobj!=147496,devobj!=147500,devobj!=147508,devobj!=147512,devobj!=149504,devobj!=149512,devobj!=17,devobj!=2,devobj!=22,devobj!=255,devobj!=259,devobj!=3,devobj!=4,devobj!=7,devobj!=71,devobj==(-1),devobj==(-1073741637),devobj==(-1073741670),devobj==(-1073741764),devobj==(-1073741789),devobj==(-1073741802),devobj==(-1073741803),devobj==(-1073741808),devobj==(-1073741820),devobj==(-1073741823),devobj==(-2147483626),devobj==(-2147483631),devobj==0,devobj==1,devobj==147456,devobj==147460,devobj==147464,devobj==147468,devobj==147472,devobj==147476,devobj==147480,devobj==147496,devobj==147500,devobj==147508,devobj==147512,devobj==149504,devobj==149512,devobj==17,devobj==2,devobj==22,devobj==255,devobj==259,devobj==3,devobj==4,devobj==7,devobj==71} @*/ devobj = __VERIFIER_nondet_int();
  int __cil_tmp9 ;

  {
  {

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
 routine = 0;
 myStatus = 0;
 pirp = 0;
 Executive = 0;
 Suspended = 5;
 KernelMode = 0;
 DeviceUsageTypePaging = 1;


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
    int /*@  predicates{tmp_ndt_1!=(-1),tmp_ndt_1!=(-1073741637),tmp_ndt_1!=(-1073741670),tmp_ndt_1!=(-1073741764),tmp_ndt_1!=(-1073741789),tmp_ndt_1!=(-1073741802),tmp_ndt_1!=(-1073741803),tmp_ndt_1!=(-1073741808),tmp_ndt_1!=(-1073741820),tmp_ndt_1!=(-1073741823),tmp_ndt_1!=(-2147483626),tmp_ndt_1!=(-2147483631),tmp_ndt_1!=0,tmp_ndt_1!=1,tmp_ndt_1!=147456,tmp_ndt_1!=147460,tmp_ndt_1!=147464,tmp_ndt_1!=147468,tmp_ndt_1!=147472,tmp_ndt_1!=147476,tmp_ndt_1!=147480,tmp_ndt_1!=147496,tmp_ndt_1!=147500,tmp_ndt_1!=147508,tmp_ndt_1!=147512,tmp_ndt_1!=149504,tmp_ndt_1!=149512,tmp_ndt_1!=17,tmp_ndt_1!=2,tmp_ndt_1!=22,tmp_ndt_1!=255,tmp_ndt_1!=259,tmp_ndt_1!=3,tmp_ndt_1!=4,tmp_ndt_1!=7,tmp_ndt_1!=71,tmp_ndt_1==(-1),tmp_ndt_1==(-1073741637),tmp_ndt_1==(-1073741670),tmp_ndt_1==(-1073741764),tmp_ndt_1==(-1073741789),tmp_ndt_1==(-1073741802),tmp_ndt_1==(-1073741803),tmp_ndt_1==(-1073741808),tmp_ndt_1==(-1073741820),tmp_ndt_1==(-1073741823),tmp_ndt_1==(-2147483626),tmp_ndt_1==(-2147483631),tmp_ndt_1==0,tmp_ndt_1==1,tmp_ndt_1==147456,tmp_ndt_1==147460,tmp_ndt_1==147464,tmp_ndt_1==147468,tmp_ndt_1==147472,tmp_ndt_1==147476,tmp_ndt_1==147480,tmp_ndt_1==147496,tmp_ndt_1==147500,tmp_ndt_1==147508,tmp_ndt_1==147512,tmp_ndt_1==149504,tmp_ndt_1==149512,tmp_ndt_1==17,tmp_ndt_1==2,tmp_ndt_1==22,tmp_ndt_1==255,tmp_ndt_1==259,tmp_ndt_1==3,tmp_ndt_1==4,tmp_ndt_1==7,tmp_ndt_1==71} @*/ tmp_ndt_1;
    tmp_ndt_1 = __VERIFIER_nondet_int();
    if(tmp_ndt_1 == 2){
      goto switch_5_2;
    } else {
      int /*@  predicates{tmp_ndt_2!=(-1),tmp_ndt_2!=(-1073741637),tmp_ndt_2!=(-1073741670),tmp_ndt_2!=(-1073741764),tmp_ndt_2!=(-1073741789),tmp_ndt_2!=(-1073741802),tmp_ndt_2!=(-1073741803),tmp_ndt_2!=(-1073741808),tmp_ndt_2!=(-1073741820),tmp_ndt_2!=(-1073741823),tmp_ndt_2!=(-2147483626),tmp_ndt_2!=(-2147483631),tmp_ndt_2!=0,tmp_ndt_2!=1,tmp_ndt_2!=147456,tmp_ndt_2!=147460,tmp_ndt_2!=147464,tmp_ndt_2!=147468,tmp_ndt_2!=147472,tmp_ndt_2!=147476,tmp_ndt_2!=147480,tmp_ndt_2!=147496,tmp_ndt_2!=147500,tmp_ndt_2!=147508,tmp_ndt_2!=147512,tmp_ndt_2!=149504,tmp_ndt_2!=149512,tmp_ndt_2!=17,tmp_ndt_2!=2,tmp_ndt_2!=22,tmp_ndt_2!=255,tmp_ndt_2!=259,tmp_ndt_2!=3,tmp_ndt_2!=4,tmp_ndt_2!=7,tmp_ndt_2!=71,tmp_ndt_2==(-1),tmp_ndt_2==(-1073741637),tmp_ndt_2==(-1073741670),tmp_ndt_2==(-1073741764),tmp_ndt_2==(-1073741789),tmp_ndt_2==(-1073741802),tmp_ndt_2==(-1073741803),tmp_ndt_2==(-1073741808),tmp_ndt_2==(-1073741820),tmp_ndt_2==(-1073741823),tmp_ndt_2==(-2147483626),tmp_ndt_2==(-2147483631),tmp_ndt_2==0,tmp_ndt_2==1,tmp_ndt_2==147456,tmp_ndt_2==147460,tmp_ndt_2==147464,tmp_ndt_2==147468,tmp_ndt_2==147472,tmp_ndt_2==147476,tmp_ndt_2==147480,tmp_ndt_2==147496,tmp_ndt_2==147500,tmp_ndt_2==147508,tmp_ndt_2==147512,tmp_ndt_2==149504,tmp_ndt_2==149512,tmp_ndt_2==17,tmp_ndt_2==2,tmp_ndt_2==22,tmp_ndt_2==255,tmp_ndt_2==259,tmp_ndt_2==3,tmp_ndt_2==4,tmp_ndt_2==7,tmp_ndt_2==71} @*/ tmp_ndt_2;
      tmp_ndt_2 = __VERIFIER_nondet_int();
      if(tmp_ndt_2 == 3){
        goto switch_5_3;
      } else {
        int /*@  predicates{tmp_ndt_3!=(-1),tmp_ndt_3!=(-1073741637),tmp_ndt_3!=(-1073741670),tmp_ndt_3!=(-1073741764),tmp_ndt_3!=(-1073741789),tmp_ndt_3!=(-1073741802),tmp_ndt_3!=(-1073741803),tmp_ndt_3!=(-1073741808),tmp_ndt_3!=(-1073741820),tmp_ndt_3!=(-1073741823),tmp_ndt_3!=(-2147483626),tmp_ndt_3!=(-2147483631),tmp_ndt_3!=0,tmp_ndt_3!=1,tmp_ndt_3!=147456,tmp_ndt_3!=147460,tmp_ndt_3!=147464,tmp_ndt_3!=147468,tmp_ndt_3!=147472,tmp_ndt_3!=147476,tmp_ndt_3!=147480,tmp_ndt_3!=147496,tmp_ndt_3!=147500,tmp_ndt_3!=147508,tmp_ndt_3!=147512,tmp_ndt_3!=149504,tmp_ndt_3!=149512,tmp_ndt_3!=17,tmp_ndt_3!=2,tmp_ndt_3!=22,tmp_ndt_3!=255,tmp_ndt_3!=259,tmp_ndt_3!=3,tmp_ndt_3!=4,tmp_ndt_3!=7,tmp_ndt_3!=71,tmp_ndt_3==(-1),tmp_ndt_3==(-1073741637),tmp_ndt_3==(-1073741670),tmp_ndt_3==(-1073741764),tmp_ndt_3==(-1073741789),tmp_ndt_3==(-1073741802),tmp_ndt_3==(-1073741803),tmp_ndt_3==(-1073741808),tmp_ndt_3==(-1073741820),tmp_ndt_3==(-1073741823),tmp_ndt_3==(-2147483626),tmp_ndt_3==(-2147483631),tmp_ndt_3==0,tmp_ndt_3==1,tmp_ndt_3==147456,tmp_ndt_3==147460,tmp_ndt_3==147464,tmp_ndt_3==147468,tmp_ndt_3==147472,tmp_ndt_3==147476,tmp_ndt_3==147480,tmp_ndt_3==147496,tmp_ndt_3==147500,tmp_ndt_3==147508,tmp_ndt_3==147512,tmp_ndt_3==149504,tmp_ndt_3==149512,tmp_ndt_3==17,tmp_ndt_3==2,tmp_ndt_3==22,tmp_ndt_3==255,tmp_ndt_3==259,tmp_ndt_3==3,tmp_ndt_3==4,tmp_ndt_3==7,tmp_ndt_3==71} @*/ tmp_ndt_3;
        tmp_ndt_3 = __VERIFIER_nondet_int();
        if(tmp_ndt_3 == 4){
          goto switch_5_4;
        } else {
          goto switch_5_default;
          if(0){
            switch_5_2:
            {
            status = CdAudioDeviceControl(devobj, pirp);
            }
            goto switch_5_break;
            switch_5_3:
            {
            status = CdAudioPnp(devobj, pirp);
            }
            goto switch_5_break;
            switch_5_4:
            {
            status = CdAudioPower(devobj, pirp);
            }
            goto switch_5_break;
            switch_5_default: ;
            return(-1);
          } else {
            switch_5_break: ;
          }
        }
      }
    }
    if(we_should_unload){
      {
      CdAudioUnload(d);
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
            if(pended != 1){
              if(s == DC){
                if(status == 259){
                  errorFn();
                }
              } else {
                if(status != lowerDriverReturn){
                  errorFn();
                }
              }
            }
            else {
               if(status != 259){
                {
                errorFn();
                }
              } else {

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
int IofCallDriver(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741670),DeviceObject!=(-1073741764),DeviceObject!=(-1073741789),DeviceObject!=(-1073741802),DeviceObject!=(-1073741803),DeviceObject!=(-1073741808),DeviceObject!=(-1073741820),DeviceObject!=(-1073741823),DeviceObject!=(-2147483626),DeviceObject!=(-2147483631),DeviceObject!=0,DeviceObject!=1,DeviceObject!=147456,DeviceObject!=147460,DeviceObject!=147464,DeviceObject!=147468,DeviceObject!=147472,DeviceObject!=147476,DeviceObject!=147480,DeviceObject!=147496,DeviceObject!=147500,DeviceObject!=147508,DeviceObject!=147512,DeviceObject!=149504,DeviceObject!=149512,DeviceObject!=17,DeviceObject!=2,DeviceObject!=22,DeviceObject!=255,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=7,DeviceObject!=71,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741670),DeviceObject==(-1073741764),DeviceObject==(-1073741789),DeviceObject==(-1073741802),DeviceObject==(-1073741803),DeviceObject==(-1073741808),DeviceObject==(-1073741820),DeviceObject==(-1073741823),DeviceObject==(-2147483626),DeviceObject==(-2147483631),DeviceObject==0,DeviceObject==1,DeviceObject==147456,DeviceObject==147460,DeviceObject==147464,DeviceObject==147468,DeviceObject==147472,DeviceObject==147476,DeviceObject==147480,DeviceObject==147496,DeviceObject==147500,DeviceObject==147508,DeviceObject==147512,DeviceObject==149504,DeviceObject==149512,DeviceObject==17,DeviceObject==2,DeviceObject==22,DeviceObject==255,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==7,DeviceObject==71} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741670),Irp!=(-1073741764),Irp!=(-1073741789),Irp!=(-1073741802),Irp!=(-1073741803),Irp!=(-1073741808),Irp!=(-1073741820),Irp!=(-1073741823),Irp!=(-2147483626),Irp!=(-2147483631),Irp!=0,Irp!=1,Irp!=147456,Irp!=147460,Irp!=147464,Irp!=147468,Irp!=147472,Irp!=147476,Irp!=147480,Irp!=147496,Irp!=147500,Irp!=147508,Irp!=147512,Irp!=149504,Irp!=149512,Irp!=17,Irp!=2,Irp!=22,Irp!=255,Irp!=259,Irp!=3,Irp!=4,Irp!=7,Irp!=71,Irp==(-1),Irp==(-1073741637),Irp==(-1073741670),Irp==(-1073741764),Irp==(-1073741789),Irp==(-1073741802),Irp==(-1073741803),Irp==(-1073741808),Irp==(-1073741820),Irp==(-1073741823),Irp==(-2147483626),Irp==(-2147483631),Irp==0,Irp==1,Irp==147456,Irp==147460,Irp==147464,Irp==147468,Irp==147472,Irp==147476,Irp==147480,Irp==147496,Irp==147500,Irp==147508,Irp==147512,Irp==149504,Irp==149512,Irp==17,Irp==2,Irp==22,Irp==255,Irp==259,Irp==3,Irp==4,Irp==7,Irp==71} @*/ Irp)
{ int /*@  predicates{Irp__PendingReturned!=(-1),Irp__PendingReturned!=(-1073741637),Irp__PendingReturned!=(-1073741670),Irp__PendingReturned!=(-1073741764),Irp__PendingReturned!=(-1073741789),Irp__PendingReturned!=(-1073741802),Irp__PendingReturned!=(-1073741803),Irp__PendingReturned!=(-1073741808),Irp__PendingReturned!=(-1073741820),Irp__PendingReturned!=(-1073741823),Irp__PendingReturned!=(-2147483626),Irp__PendingReturned!=(-2147483631),Irp__PendingReturned!=0,Irp__PendingReturned!=1,Irp__PendingReturned!=147456,Irp__PendingReturned!=147460,Irp__PendingReturned!=147464,Irp__PendingReturned!=147468,Irp__PendingReturned!=147472,Irp__PendingReturned!=147476,Irp__PendingReturned!=147480,Irp__PendingReturned!=147496,Irp__PendingReturned!=147500,Irp__PendingReturned!=147508,Irp__PendingReturned!=147512,Irp__PendingReturned!=149504,Irp__PendingReturned!=149512,Irp__PendingReturned!=17,Irp__PendingReturned!=2,Irp__PendingReturned!=22,Irp__PendingReturned!=255,Irp__PendingReturned!=259,Irp__PendingReturned!=3,Irp__PendingReturned!=4,Irp__PendingReturned!=7,Irp__PendingReturned!=71,Irp__PendingReturned==(-1),Irp__PendingReturned==(-1073741637),Irp__PendingReturned==(-1073741670),Irp__PendingReturned==(-1073741764),Irp__PendingReturned==(-1073741789),Irp__PendingReturned==(-1073741802),Irp__PendingReturned==(-1073741803),Irp__PendingReturned==(-1073741808),Irp__PendingReturned==(-1073741820),Irp__PendingReturned==(-1073741823),Irp__PendingReturned==(-2147483626),Irp__PendingReturned==(-2147483631),Irp__PendingReturned==0,Irp__PendingReturned==1,Irp__PendingReturned==147456,Irp__PendingReturned==147460,Irp__PendingReturned==147464,Irp__PendingReturned==147468,Irp__PendingReturned==147472,Irp__PendingReturned==147476,Irp__PendingReturned==147480,Irp__PendingReturned==147496,Irp__PendingReturned==147500,Irp__PendingReturned==147508,Irp__PendingReturned==147512,Irp__PendingReturned==149504,Irp__PendingReturned==149512,Irp__PendingReturned==17,Irp__PendingReturned==2,Irp__PendingReturned==22,Irp__PendingReturned==255,Irp__PendingReturned==259,Irp__PendingReturned==3,Irp__PendingReturned==4,Irp__PendingReturned==7,Irp__PendingReturned==71} @*/ Irp__PendingReturned = __VERIFIER_nondet_int();
  int /*@  predicates{returnVal2==(-1),returnVal2==(-1073741637),returnVal2==(-1073741670),returnVal2==(-1073741764),returnVal2==(-1073741789),returnVal2==(-1073741802),returnVal2==(-1073741803),returnVal2==(-1073741808),returnVal2==(-1073741820),returnVal2==(-1073741823),returnVal2==(-2147483626),returnVal2==(-2147483631),returnVal2==0,returnVal2==1,returnVal2==147456,returnVal2==147460,returnVal2==147464,returnVal2==147468,returnVal2==147472,returnVal2==147476,returnVal2==147480,returnVal2==147496,returnVal2==147500,returnVal2==147508,returnVal2==147512,returnVal2==149504,returnVal2==149512,returnVal2==17,returnVal2==2,returnVal2==22,returnVal2==255,returnVal2==259,returnVal2==3,returnVal2==4,returnVal2==7,returnVal2==71} @*/ returnVal2 ;
  int /*@  predicates{compRetStatus!=(-1),compRetStatus!=(-1073741637),compRetStatus!=(-1073741670),compRetStatus!=(-1073741764),compRetStatus!=(-1073741789),compRetStatus!=(-1073741802),compRetStatus!=(-1073741803),compRetStatus!=(-1073741808),compRetStatus!=(-1073741820),compRetStatus!=(-1073741823),compRetStatus!=(-2147483626),compRetStatus!=(-2147483631),compRetStatus!=0,compRetStatus!=1,compRetStatus!=147456,compRetStatus!=147460,compRetStatus!=147464,compRetStatus!=147468,compRetStatus!=147472,compRetStatus!=147476,compRetStatus!=147480,compRetStatus!=147496,compRetStatus!=147500,compRetStatus!=147508,compRetStatus!=147512,compRetStatus!=149504,compRetStatus!=149512,compRetStatus!=17,compRetStatus!=2,compRetStatus!=22,compRetStatus!=255,compRetStatus!=259,compRetStatus!=3,compRetStatus!=4,compRetStatus!=7,compRetStatus!=71,compRetStatus==(-1),compRetStatus==(-1073741637),compRetStatus==(-1073741670),compRetStatus==(-1073741764),compRetStatus==(-1073741789),compRetStatus==(-1073741802),compRetStatus==(-1073741803),compRetStatus==(-1073741808),compRetStatus==(-1073741820),compRetStatus==(-1073741823),compRetStatus==(-2147483626),compRetStatus==(-2147483631),compRetStatus==0,compRetStatus==1,compRetStatus==147456,compRetStatus==147460,compRetStatus==147464,compRetStatus==147468,compRetStatus==147472,compRetStatus==147476,compRetStatus==147480,compRetStatus==147496,compRetStatus==147500,compRetStatus==147508,compRetStatus==147512,compRetStatus==149504,compRetStatus==149512,compRetStatus==17,compRetStatus==2,compRetStatus==22,compRetStatus==255,compRetStatus==259,compRetStatus==3,compRetStatus==4,compRetStatus==7,compRetStatus==71} @*/ compRetStatus ;
  int /*@  predicates{lcontext!=(-1),lcontext!=(-1073741637),lcontext!=(-1073741670),lcontext!=(-1073741764),lcontext!=(-1073741789),lcontext!=(-1073741802),lcontext!=(-1073741803),lcontext!=(-1073741808),lcontext!=(-1073741820),lcontext!=(-1073741823),lcontext!=(-2147483626),lcontext!=(-2147483631),lcontext!=0,lcontext!=1,lcontext!=147456,lcontext!=147460,lcontext!=147464,lcontext!=147468,lcontext!=147472,lcontext!=147476,lcontext!=147480,lcontext!=147496,lcontext!=147500,lcontext!=147508,lcontext!=147512,lcontext!=149504,lcontext!=149512,lcontext!=17,lcontext!=2,lcontext!=22,lcontext!=255,lcontext!=259,lcontext!=3,lcontext!=4,lcontext!=7,lcontext!=71,lcontext==(-1),lcontext==(-1073741637),lcontext==(-1073741670),lcontext==(-1073741764),lcontext==(-1073741789),lcontext==(-1073741802),lcontext==(-1073741803),lcontext==(-1073741808),lcontext==(-1073741820),lcontext==(-1073741823),lcontext==(-2147483626),lcontext==(-2147483631),lcontext==0,lcontext==1,lcontext==147456,lcontext==147460,lcontext==147464,lcontext==147468,lcontext==147472,lcontext==147476,lcontext==147480,lcontext==147496,lcontext==147500,lcontext==147508,lcontext==147512,lcontext==149504,lcontext==149512,lcontext==17,lcontext==2,lcontext==22,lcontext==255,lcontext==259,lcontext==3,lcontext==4,lcontext==7,lcontext==71} @*/ lcontext = __VERIFIER_nondet_int();
  unsigned long __cil_tmp8 ;

  {
  if(compRegistered){
    if(routine == 0){
      {
      compRetStatus = HPCdrCompletion(DeviceObject, Irp, lcontext);
      }
    } else {
      if(routine == 1){
        {
        compRetStatus = CdAudioSignalCompletion(DeviceObject, Irp, lcontext);
        }
      }
    }
    {
    __cil_tmp8 =(unsigned long)compRetStatus;
    if(__cil_tmp8 == -1073741802){
      {
      stubMoreProcessingRequired();
      }
    }
    }
  }
  if(Irp__PendingReturned){
    returnVal2 = 259;
  } else {
    int /*@  predicates{tmp_ndt_4!=(-1),tmp_ndt_4!=(-1073741637),tmp_ndt_4!=(-1073741670),tmp_ndt_4!=(-1073741764),tmp_ndt_4!=(-1073741789),tmp_ndt_4!=(-1073741802),tmp_ndt_4!=(-1073741803),tmp_ndt_4!=(-1073741808),tmp_ndt_4!=(-1073741820),tmp_ndt_4!=(-1073741823),tmp_ndt_4!=(-2147483626),tmp_ndt_4!=(-2147483631),tmp_ndt_4!=0,tmp_ndt_4!=1,tmp_ndt_4!=147456,tmp_ndt_4!=147460,tmp_ndt_4!=147464,tmp_ndt_4!=147468,tmp_ndt_4!=147472,tmp_ndt_4!=147476,tmp_ndt_4!=147480,tmp_ndt_4!=147496,tmp_ndt_4!=147500,tmp_ndt_4!=147508,tmp_ndt_4!=147512,tmp_ndt_4!=149504,tmp_ndt_4!=149512,tmp_ndt_4!=17,tmp_ndt_4!=2,tmp_ndt_4!=22,tmp_ndt_4!=255,tmp_ndt_4!=259,tmp_ndt_4!=3,tmp_ndt_4!=4,tmp_ndt_4!=7,tmp_ndt_4!=71,tmp_ndt_4==(-1),tmp_ndt_4==(-1073741637),tmp_ndt_4==(-1073741670),tmp_ndt_4==(-1073741764),tmp_ndt_4==(-1073741789),tmp_ndt_4==(-1073741802),tmp_ndt_4==(-1073741803),tmp_ndt_4==(-1073741808),tmp_ndt_4==(-1073741820),tmp_ndt_4==(-1073741823),tmp_ndt_4==(-2147483626),tmp_ndt_4==(-2147483631),tmp_ndt_4==0,tmp_ndt_4==1,tmp_ndt_4==147456,tmp_ndt_4==147460,tmp_ndt_4==147464,tmp_ndt_4==147468,tmp_ndt_4==147472,tmp_ndt_4==147476,tmp_ndt_4==147480,tmp_ndt_4==147496,tmp_ndt_4==147500,tmp_ndt_4==147508,tmp_ndt_4==147512,tmp_ndt_4==149504,tmp_ndt_4==149512,tmp_ndt_4==17,tmp_ndt_4==2,tmp_ndt_4==22,tmp_ndt_4==255,tmp_ndt_4==259,tmp_ndt_4==3,tmp_ndt_4==4,tmp_ndt_4==7,tmp_ndt_4==71} @*/ tmp_ndt_4;
    tmp_ndt_4 = __VERIFIER_nondet_int();
    if(tmp_ndt_4 == 0){
      goto switch_6_0;
    } else {
      int /*@  predicates{tmp_ndt_5!=(-1),tmp_ndt_5!=(-1073741637),tmp_ndt_5!=(-1073741670),tmp_ndt_5!=(-1073741764),tmp_ndt_5!=(-1073741789),tmp_ndt_5!=(-1073741802),tmp_ndt_5!=(-1073741803),tmp_ndt_5!=(-1073741808),tmp_ndt_5!=(-1073741820),tmp_ndt_5!=(-1073741823),tmp_ndt_5!=(-2147483626),tmp_ndt_5!=(-2147483631),tmp_ndt_5!=0,tmp_ndt_5!=1,tmp_ndt_5!=147456,tmp_ndt_5!=147460,tmp_ndt_5!=147464,tmp_ndt_5!=147468,tmp_ndt_5!=147472,tmp_ndt_5!=147476,tmp_ndt_5!=147480,tmp_ndt_5!=147496,tmp_ndt_5!=147500,tmp_ndt_5!=147508,tmp_ndt_5!=147512,tmp_ndt_5!=149504,tmp_ndt_5!=149512,tmp_ndt_5!=17,tmp_ndt_5!=2,tmp_ndt_5!=22,tmp_ndt_5!=255,tmp_ndt_5!=259,tmp_ndt_5!=3,tmp_ndt_5!=4,tmp_ndt_5!=7,tmp_ndt_5!=71,tmp_ndt_5==(-1),tmp_ndt_5==(-1073741637),tmp_ndt_5==(-1073741670),tmp_ndt_5==(-1073741764),tmp_ndt_5==(-1073741789),tmp_ndt_5==(-1073741802),tmp_ndt_5==(-1073741803),tmp_ndt_5==(-1073741808),tmp_ndt_5==(-1073741820),tmp_ndt_5==(-1073741823),tmp_ndt_5==(-2147483626),tmp_ndt_5==(-2147483631),tmp_ndt_5==0,tmp_ndt_5==1,tmp_ndt_5==147456,tmp_ndt_5==147460,tmp_ndt_5==147464,tmp_ndt_5==147468,tmp_ndt_5==147472,tmp_ndt_5==147476,tmp_ndt_5==147480,tmp_ndt_5==147496,tmp_ndt_5==147500,tmp_ndt_5==147508,tmp_ndt_5==147512,tmp_ndt_5==149504,tmp_ndt_5==149512,tmp_ndt_5==17,tmp_ndt_5==2,tmp_ndt_5==22,tmp_ndt_5==255,tmp_ndt_5==259,tmp_ndt_5==3,tmp_ndt_5==4,tmp_ndt_5==7,tmp_ndt_5==71} @*/ tmp_ndt_5;
      tmp_ndt_5 = __VERIFIER_nondet_int();
      if(tmp_ndt_5 == 1){
        goto switch_6_1;
      } else {
        goto switch_6_default;
        if(0){
          switch_6_0:
          returnVal2 = 0;
          goto switch_6_break;
          switch_6_1:
          returnVal2 = -1073741823;
          goto switch_6_break;
          switch_6_default:
          returnVal2 = 259;
          goto switch_6_break;
        } else {
          switch_6_break: ;
        }
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
void IofCompleteRequest(int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741670),Irp!=(-1073741764),Irp!=(-1073741789),Irp!=(-1073741802),Irp!=(-1073741803),Irp!=(-1073741808),Irp!=(-1073741820),Irp!=(-1073741823),Irp!=(-2147483626),Irp!=(-2147483631),Irp!=0,Irp!=1,Irp!=147456,Irp!=147460,Irp!=147464,Irp!=147468,Irp!=147472,Irp!=147476,Irp!=147480,Irp!=147496,Irp!=147500,Irp!=147508,Irp!=147512,Irp!=149504,Irp!=149512,Irp!=17,Irp!=2,Irp!=22,Irp!=255,Irp!=259,Irp!=3,Irp!=4,Irp!=7,Irp!=71,Irp==(-1),Irp==(-1073741637),Irp==(-1073741670),Irp==(-1073741764),Irp==(-1073741789),Irp==(-1073741802),Irp==(-1073741803),Irp==(-1073741808),Irp==(-1073741820),Irp==(-1073741823),Irp==(-2147483626),Irp==(-2147483631),Irp==0,Irp==1,Irp==147456,Irp==147460,Irp==147464,Irp==147468,Irp==147472,Irp==147476,Irp==147480,Irp==147496,Irp==147500,Irp==147508,Irp==147512,Irp==149504,Irp==149512,Irp==17,Irp==2,Irp==22,Irp==255,Irp==259,Irp==3,Irp==4,Irp==7,Irp==71} @*/ Irp , int /*@  predicates{PriorityBoost==0} @*/ PriorityBoost)
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
int KeSetEvent(int /*@  predicates{Event!=(-1),Event!=(-1073741637),Event!=(-1073741670),Event!=(-1073741764),Event!=(-1073741789),Event!=(-1073741802),Event!=(-1073741803),Event!=(-1073741808),Event!=(-1073741820),Event!=(-1073741823),Event!=(-2147483626),Event!=(-2147483631),Event!=0,Event!=1,Event!=147456,Event!=147460,Event!=147464,Event!=147468,Event!=147472,Event!=147476,Event!=147480,Event!=147496,Event!=147500,Event!=147508,Event!=147512,Event!=149504,Event!=149512,Event!=17,Event!=2,Event!=22,Event!=255,Event!=259,Event!=3,Event!=4,Event!=7,Event!=71,Event==(-1),Event==(-1073741637),Event==(-1073741670),Event==(-1073741764),Event==(-1073741789),Event==(-1073741802),Event==(-1073741803),Event==(-1073741808),Event==(-1073741820),Event==(-1073741823),Event==(-2147483626),Event==(-2147483631),Event==0,Event==1,Event==147456,Event==147460,Event==147464,Event==147468,Event==147472,Event==147476,Event==147480,Event==147496,Event==147500,Event==147508,Event==147512,Event==149504,Event==149512,Event==17,Event==2,Event==22,Event==255,Event==259,Event==3,Event==4,Event==7,Event==71} @*/ Event , int /*@  predicates{Increment==0} @*/ Increment , int /*@  predicates{Wait==0} @*/ Wait)
{ int /*@  predicates{l!=(-1),l!=(-1073741637),l!=(-1073741670),l!=(-1073741764),l!=(-1073741789),l!=(-1073741802),l!=(-1073741803),l!=(-1073741808),l!=(-1073741820),l!=(-1073741823),l!=(-2147483626),l!=(-2147483631),l!=0,l!=1,l!=147456,l!=147460,l!=147464,l!=147468,l!=147472,l!=147476,l!=147480,l!=147496,l!=147500,l!=147508,l!=147512,l!=149504,l!=149512,l!=17,l!=2,l!=22,l!=255,l!=259,l!=3,l!=4,l!=7,l!=71,l==(-1),l==(-1073741637),l==(-1073741670),l==(-1073741764),l==(-1073741789),l==(-1073741802),l==(-1073741803),l==(-1073741808),l==(-1073741820),l==(-1073741823),l==(-2147483626),l==(-2147483631),l==0,l==1,l==147456,l==147460,l==147464,l==147468,l==147472,l==147476,l==147480,l==147496,l==147500,l==147508,l==147512,l==149504,l==149512,l==17,l==2,l==22,l==255,l==259,l==3,l==4,l==7,l==71} @*/ l = __VERIFIER_nondet_int();

  {
  setEventCalled = 1;
  return(l);
}
}
int KeWaitForSingleObject(int /*@  predicates{Object!=(-1),Object!=(-1073741637),Object!=(-1073741670),Object!=(-1073741764),Object!=(-1073741789),Object!=(-1073741802),Object!=(-1073741803),Object!=(-1073741808),Object!=(-1073741820),Object!=(-1073741823),Object!=(-2147483626),Object!=(-2147483631),Object!=0,Object!=1,Object!=147456,Object!=147460,Object!=147464,Object!=147468,Object!=147472,Object!=147476,Object!=147480,Object!=147496,Object!=147500,Object!=147508,Object!=147512,Object!=149504,Object!=149512,Object!=17,Object!=2,Object!=22,Object!=255,Object!=259,Object!=3,Object!=4,Object!=7,Object!=71,Object==(-1),Object==(-1073741637),Object==(-1073741670),Object==(-1073741764),Object==(-1073741789),Object==(-1073741802),Object==(-1073741803),Object==(-1073741808),Object==(-1073741820),Object==(-1073741823),Object==(-2147483626),Object==(-2147483631),Object==0,Object==1,Object==147456,Object==147460,Object==147464,Object==147468,Object==147472,Object==147476,Object==147480,Object==147496,Object==147500,Object==147508,Object==147512,Object==149504,Object==149512,Object==17,Object==2,Object==22,Object==255,Object==259,Object==3,Object==4,Object==7,Object==71} @*/ Object , int /*@  predicates{WaitReason==0,WaitReason==5} @*/ WaitReason , int /*@  predicates{WaitMode==0} @*/ WaitMode , int /*@  predicates{Alertable==0} @*/ Alertable ,
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
  int /*@  predicates{tmp_ndt_6!=(-1),tmp_ndt_6!=(-1073741637),tmp_ndt_6!=(-1073741670),tmp_ndt_6!=(-1073741764),tmp_ndt_6!=(-1073741789),tmp_ndt_6!=(-1073741802),tmp_ndt_6!=(-1073741803),tmp_ndt_6!=(-1073741808),tmp_ndt_6!=(-1073741820),tmp_ndt_6!=(-1073741823),tmp_ndt_6!=(-2147483626),tmp_ndt_6!=(-2147483631),tmp_ndt_6!=0,tmp_ndt_6!=1,tmp_ndt_6!=147456,tmp_ndt_6!=147460,tmp_ndt_6!=147464,tmp_ndt_6!=147468,tmp_ndt_6!=147472,tmp_ndt_6!=147476,tmp_ndt_6!=147480,tmp_ndt_6!=147496,tmp_ndt_6!=147500,tmp_ndt_6!=147508,tmp_ndt_6!=147512,tmp_ndt_6!=149504,tmp_ndt_6!=149512,tmp_ndt_6!=17,tmp_ndt_6!=2,tmp_ndt_6!=22,tmp_ndt_6!=255,tmp_ndt_6!=259,tmp_ndt_6!=3,tmp_ndt_6!=4,tmp_ndt_6!=7,tmp_ndt_6!=71,tmp_ndt_6==(-1),tmp_ndt_6==(-1073741637),tmp_ndt_6==(-1073741670),tmp_ndt_6==(-1073741764),tmp_ndt_6==(-1073741789),tmp_ndt_6==(-1073741802),tmp_ndt_6==(-1073741803),tmp_ndt_6==(-1073741808),tmp_ndt_6==(-1073741820),tmp_ndt_6==(-1073741823),tmp_ndt_6==(-2147483626),tmp_ndt_6==(-2147483631),tmp_ndt_6==0,tmp_ndt_6==1,tmp_ndt_6==147456,tmp_ndt_6==147460,tmp_ndt_6==147464,tmp_ndt_6==147468,tmp_ndt_6==147472,tmp_ndt_6==147476,tmp_ndt_6==147480,tmp_ndt_6==147496,tmp_ndt_6==147500,tmp_ndt_6==147508,tmp_ndt_6==147512,tmp_ndt_6==149504,tmp_ndt_6==149512,tmp_ndt_6==17,tmp_ndt_6==2,tmp_ndt_6==22,tmp_ndt_6==255,tmp_ndt_6==259,tmp_ndt_6==3,tmp_ndt_6==4,tmp_ndt_6==7,tmp_ndt_6==71} @*/ tmp_ndt_6;
  tmp_ndt_6 = __VERIFIER_nondet_int();
  if(tmp_ndt_6 == 0){
    goto switch_7_0;
  } else {
    goto switch_7_default;
    if(0){
      switch_7_0: ;
      return(0);
      switch_7_default: ;
      return(-1073741823);
    } else {

    }
  }
}
}
int PoCallDriver(int /*@  predicates{DeviceObject!=(-1),DeviceObject!=(-1073741637),DeviceObject!=(-1073741670),DeviceObject!=(-1073741764),DeviceObject!=(-1073741789),DeviceObject!=(-1073741802),DeviceObject!=(-1073741803),DeviceObject!=(-1073741808),DeviceObject!=(-1073741820),DeviceObject!=(-1073741823),DeviceObject!=(-2147483626),DeviceObject!=(-2147483631),DeviceObject!=0,DeviceObject!=1,DeviceObject!=147456,DeviceObject!=147460,DeviceObject!=147464,DeviceObject!=147468,DeviceObject!=147472,DeviceObject!=147476,DeviceObject!=147480,DeviceObject!=147496,DeviceObject!=147500,DeviceObject!=147508,DeviceObject!=147512,DeviceObject!=149504,DeviceObject!=149512,DeviceObject!=17,DeviceObject!=2,DeviceObject!=22,DeviceObject!=255,DeviceObject!=259,DeviceObject!=3,DeviceObject!=4,DeviceObject!=7,DeviceObject!=71,DeviceObject==(-1),DeviceObject==(-1073741637),DeviceObject==(-1073741670),DeviceObject==(-1073741764),DeviceObject==(-1073741789),DeviceObject==(-1073741802),DeviceObject==(-1073741803),DeviceObject==(-1073741808),DeviceObject==(-1073741820),DeviceObject==(-1073741823),DeviceObject==(-2147483626),DeviceObject==(-2147483631),DeviceObject==0,DeviceObject==1,DeviceObject==147456,DeviceObject==147460,DeviceObject==147464,DeviceObject==147468,DeviceObject==147472,DeviceObject==147476,DeviceObject==147480,DeviceObject==147496,DeviceObject==147500,DeviceObject==147508,DeviceObject==147512,DeviceObject==149504,DeviceObject==149512,DeviceObject==17,DeviceObject==2,DeviceObject==22,DeviceObject==255,DeviceObject==259,DeviceObject==3,DeviceObject==4,DeviceObject==7,DeviceObject==71} @*/ DeviceObject , int /*@  predicates{Irp!=(-1),Irp!=(-1073741637),Irp!=(-1073741670),Irp!=(-1073741764),Irp!=(-1073741789),Irp!=(-1073741802),Irp!=(-1073741803),Irp!=(-1073741808),Irp!=(-1073741820),Irp!=(-1073741823),Irp!=(-2147483626),Irp!=(-2147483631),Irp!=0,Irp!=1,Irp!=147456,Irp!=147460,Irp!=147464,Irp!=147468,Irp!=147472,Irp!=147476,Irp!=147480,Irp!=147496,Irp!=147500,Irp!=147508,Irp!=147512,Irp!=149504,Irp!=149512,Irp!=17,Irp!=2,Irp!=22,Irp!=255,Irp!=259,Irp!=3,Irp!=4,Irp!=7,Irp!=71,Irp==(-1),Irp==(-1073741637),Irp==(-1073741670),Irp==(-1073741764),Irp==(-1073741789),Irp==(-1073741802),Irp==(-1073741803),Irp==(-1073741808),Irp==(-1073741820),Irp==(-1073741823),Irp==(-2147483626),Irp==(-2147483631),Irp==0,Irp==1,Irp==147456,Irp==147460,Irp==147464,Irp==147468,Irp==147472,Irp==147476,Irp==147480,Irp==147496,Irp==147500,Irp==147508,Irp==147512,Irp==149504,Irp==149512,Irp==17,Irp==2,Irp==22,Irp==255,Irp==259,Irp==3,Irp==4,Irp==7,Irp==71} @*/ Irp)
{
  int /*@  predicates{compRetStatus!=(-1),compRetStatus!=(-1073741637),compRetStatus!=(-1073741670),compRetStatus!=(-1073741764),compRetStatus!=(-1073741789),compRetStatus!=(-1073741802),compRetStatus!=(-1073741803),compRetStatus!=(-1073741808),compRetStatus!=(-1073741820),compRetStatus!=(-1073741823),compRetStatus!=(-2147483626),compRetStatus!=(-2147483631),compRetStatus!=0,compRetStatus!=1,compRetStatus!=147456,compRetStatus!=147460,compRetStatus!=147464,compRetStatus!=147468,compRetStatus!=147472,compRetStatus!=147476,compRetStatus!=147480,compRetStatus!=147496,compRetStatus!=147500,compRetStatus!=147508,compRetStatus!=147512,compRetStatus!=149504,compRetStatus!=149512,compRetStatus!=17,compRetStatus!=2,compRetStatus!=22,compRetStatus!=255,compRetStatus!=259,compRetStatus!=3,compRetStatus!=4,compRetStatus!=7,compRetStatus!=71,compRetStatus==(-1),compRetStatus==(-1073741637),compRetStatus==(-1073741670),compRetStatus==(-1073741764),compRetStatus==(-1073741789),compRetStatus==(-1073741802),compRetStatus==(-1073741803),compRetStatus==(-1073741808),compRetStatus==(-1073741820),compRetStatus==(-1073741823),compRetStatus==(-2147483626),compRetStatus==(-2147483631),compRetStatus==0,compRetStatus==1,compRetStatus==147456,compRetStatus==147460,compRetStatus==147464,compRetStatus==147468,compRetStatus==147472,compRetStatus==147476,compRetStatus==147480,compRetStatus==147496,compRetStatus==147500,compRetStatus==147508,compRetStatus==147512,compRetStatus==149504,compRetStatus==149512,compRetStatus==17,compRetStatus==2,compRetStatus==22,compRetStatus==255,compRetStatus==259,compRetStatus==3,compRetStatus==4,compRetStatus==7,compRetStatus==71} @*/ compRetStatus ;
  int /*@  predicates{returnVal==(-1),returnVal==(-1073741637),returnVal==(-1073741670),returnVal==(-1073741764),returnVal==(-1073741789),returnVal==(-1073741802),returnVal==(-1073741803),returnVal==(-1073741808),returnVal==(-1073741820),returnVal==(-1073741823),returnVal==(-2147483626),returnVal==(-2147483631),returnVal==0,returnVal==1,returnVal==147456,returnVal==147460,returnVal==147464,returnVal==147468,returnVal==147472,returnVal==147476,returnVal==147480,returnVal==147496,returnVal==147500,returnVal==147508,returnVal==147512,returnVal==149504,returnVal==149512,returnVal==17,returnVal==2,returnVal==22,returnVal==255,returnVal==259,returnVal==3,returnVal==4,returnVal==7,returnVal==71} @*/ returnVal ;
  int /*@  predicates{lcontext!=(-1),lcontext!=(-1073741637),lcontext!=(-1073741670),lcontext!=(-1073741764),lcontext!=(-1073741789),lcontext!=(-1073741802),lcontext!=(-1073741803),lcontext!=(-1073741808),lcontext!=(-1073741820),lcontext!=(-1073741823),lcontext!=(-2147483626),lcontext!=(-2147483631),lcontext!=0,lcontext!=1,lcontext!=147456,lcontext!=147460,lcontext!=147464,lcontext!=147468,lcontext!=147472,lcontext!=147476,lcontext!=147480,lcontext!=147496,lcontext!=147500,lcontext!=147508,lcontext!=147512,lcontext!=149504,lcontext!=149512,lcontext!=17,lcontext!=2,lcontext!=22,lcontext!=255,lcontext!=259,lcontext!=3,lcontext!=4,lcontext!=7,lcontext!=71,lcontext==(-1),lcontext==(-1073741637),lcontext==(-1073741670),lcontext==(-1073741764),lcontext==(-1073741789),lcontext==(-1073741802),lcontext==(-1073741803),lcontext==(-1073741808),lcontext==(-1073741820),lcontext==(-1073741823),lcontext==(-2147483626),lcontext==(-2147483631),lcontext==0,lcontext==1,lcontext==147456,lcontext==147460,lcontext==147464,lcontext==147468,lcontext==147472,lcontext==147476,lcontext==147480,lcontext==147496,lcontext==147500,lcontext==147508,lcontext==147512,lcontext==149504,lcontext==149512,lcontext==17,lcontext==2,lcontext==22,lcontext==255,lcontext==259,lcontext==3,lcontext==4,lcontext==7,lcontext==71} @*/ lcontext = __VERIFIER_nondet_int();
  unsigned long __cil_tmp7 ;
  long __cil_tmp8 ;

  {
  if(compRegistered){
    if(routine == 0){
      {
      compRetStatus = HPCdrCompletion(DeviceObject, Irp, lcontext);
      }
    } else {
      if(routine == 1){
        {
        compRetStatus = CdAudioSignalCompletion(DeviceObject, Irp, lcontext);
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
  int /*@  predicates{tmp_ndt_7!=(-1),tmp_ndt_7!=(-1073741637),tmp_ndt_7!=(-1073741670),tmp_ndt_7!=(-1073741764),tmp_ndt_7!=(-1073741789),tmp_ndt_7!=(-1073741802),tmp_ndt_7!=(-1073741803),tmp_ndt_7!=(-1073741808),tmp_ndt_7!=(-1073741820),tmp_ndt_7!=(-1073741823),tmp_ndt_7!=(-2147483626),tmp_ndt_7!=(-2147483631),tmp_ndt_7!=0,tmp_ndt_7!=1,tmp_ndt_7!=147456,tmp_ndt_7!=147460,tmp_ndt_7!=147464,tmp_ndt_7!=147468,tmp_ndt_7!=147472,tmp_ndt_7!=147476,tmp_ndt_7!=147480,tmp_ndt_7!=147496,tmp_ndt_7!=147500,tmp_ndt_7!=147508,tmp_ndt_7!=147512,tmp_ndt_7!=149504,tmp_ndt_7!=149512,tmp_ndt_7!=17,tmp_ndt_7!=2,tmp_ndt_7!=22,tmp_ndt_7!=255,tmp_ndt_7!=259,tmp_ndt_7!=3,tmp_ndt_7!=4,tmp_ndt_7!=7,tmp_ndt_7!=71,tmp_ndt_7==(-1),tmp_ndt_7==(-1073741637),tmp_ndt_7==(-1073741670),tmp_ndt_7==(-1073741764),tmp_ndt_7==(-1073741789),tmp_ndt_7==(-1073741802),tmp_ndt_7==(-1073741803),tmp_ndt_7==(-1073741808),tmp_ndt_7==(-1073741820),tmp_ndt_7==(-1073741823),tmp_ndt_7==(-2147483626),tmp_ndt_7==(-2147483631),tmp_ndt_7==0,tmp_ndt_7==1,tmp_ndt_7==147456,tmp_ndt_7==147460,tmp_ndt_7==147464,tmp_ndt_7==147468,tmp_ndt_7==147472,tmp_ndt_7==147476,tmp_ndt_7==147480,tmp_ndt_7==147496,tmp_ndt_7==147500,tmp_ndt_7==147508,tmp_ndt_7==147512,tmp_ndt_7==149504,tmp_ndt_7==149512,tmp_ndt_7==17,tmp_ndt_7==2,tmp_ndt_7==22,tmp_ndt_7==255,tmp_ndt_7==259,tmp_ndt_7==3,tmp_ndt_7==4,tmp_ndt_7==7,tmp_ndt_7==71} @*/ tmp_ndt_7;
  tmp_ndt_7 = __VERIFIER_nondet_int();
  if(tmp_ndt_7 == 0){
    goto switch_8_0;
  } else {
    int /*@  predicates{tmp_ndt_8!=(-1),tmp_ndt_8!=(-1073741637),tmp_ndt_8!=(-1073741670),tmp_ndt_8!=(-1073741764),tmp_ndt_8!=(-1073741789),tmp_ndt_8!=(-1073741802),tmp_ndt_8!=(-1073741803),tmp_ndt_8!=(-1073741808),tmp_ndt_8!=(-1073741820),tmp_ndt_8!=(-1073741823),tmp_ndt_8!=(-2147483626),tmp_ndt_8!=(-2147483631),tmp_ndt_8!=0,tmp_ndt_8!=1,tmp_ndt_8!=147456,tmp_ndt_8!=147460,tmp_ndt_8!=147464,tmp_ndt_8!=147468,tmp_ndt_8!=147472,tmp_ndt_8!=147476,tmp_ndt_8!=147480,tmp_ndt_8!=147496,tmp_ndt_8!=147500,tmp_ndt_8!=147508,tmp_ndt_8!=147512,tmp_ndt_8!=149504,tmp_ndt_8!=149512,tmp_ndt_8!=17,tmp_ndt_8!=2,tmp_ndt_8!=22,tmp_ndt_8!=255,tmp_ndt_8!=259,tmp_ndt_8!=3,tmp_ndt_8!=4,tmp_ndt_8!=7,tmp_ndt_8!=71,tmp_ndt_8==(-1),tmp_ndt_8==(-1073741637),tmp_ndt_8==(-1073741670),tmp_ndt_8==(-1073741764),tmp_ndt_8==(-1073741789),tmp_ndt_8==(-1073741802),tmp_ndt_8==(-1073741803),tmp_ndt_8==(-1073741808),tmp_ndt_8==(-1073741820),tmp_ndt_8==(-1073741823),tmp_ndt_8==(-2147483626),tmp_ndt_8==(-2147483631),tmp_ndt_8==0,tmp_ndt_8==1,tmp_ndt_8==147456,tmp_ndt_8==147460,tmp_ndt_8==147464,tmp_ndt_8==147468,tmp_ndt_8==147472,tmp_ndt_8==147476,tmp_ndt_8==147480,tmp_ndt_8==147496,tmp_ndt_8==147500,tmp_ndt_8==147508,tmp_ndt_8==147512,tmp_ndt_8==149504,tmp_ndt_8==149512,tmp_ndt_8==17,tmp_ndt_8==2,tmp_ndt_8==22,tmp_ndt_8==255,tmp_ndt_8==259,tmp_ndt_8==3,tmp_ndt_8==4,tmp_ndt_8==7,tmp_ndt_8==71} @*/ tmp_ndt_8;
    tmp_ndt_8 = __VERIFIER_nondet_int();
    if(tmp_ndt_8 == 1){
      goto switch_8_1;
    } else {
      goto switch_8_default;
      if(0){
        switch_8_0:
        returnVal = 0;
        goto switch_8_break;
        switch_8_1:
        returnVal = -1073741823;
        goto switch_8_break;
        switch_8_default:
        returnVal = 259;
        goto switch_8_break;
      } else {
        switch_8_break: ;
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
int ZwClose(int /*@  predicates{Handle!=(-1),Handle!=(-1073741637),Handle!=(-1073741670),Handle!=(-1073741764),Handle!=(-1073741789),Handle!=(-1073741802),Handle!=(-1073741803),Handle!=(-1073741808),Handle!=(-1073741820),Handle!=(-1073741823),Handle!=(-2147483626),Handle!=(-2147483631),Handle!=0,Handle!=1,Handle!=147456,Handle!=147460,Handle!=147464,Handle!=147468,Handle!=147472,Handle!=147476,Handle!=147480,Handle!=147496,Handle!=147500,Handle!=147508,Handle!=147512,Handle!=149504,Handle!=149512,Handle!=17,Handle!=2,Handle!=22,Handle!=255,Handle!=259,Handle!=3,Handle!=4,Handle!=7,Handle!=71,Handle==(-1),Handle==(-1073741637),Handle==(-1073741670),Handle==(-1073741764),Handle==(-1073741789),Handle==(-1073741802),Handle==(-1073741803),Handle==(-1073741808),Handle==(-1073741820),Handle==(-1073741823),Handle==(-2147483626),Handle==(-2147483631),Handle==0,Handle==1,Handle==147456,Handle==147460,Handle==147464,Handle==147468,Handle==147472,Handle==147476,Handle==147480,Handle==147496,Handle==147500,Handle==147508,Handle==147512,Handle==149504,Handle==149512,Handle==17,Handle==2,Handle==22,Handle==255,Handle==259,Handle==3,Handle==4,Handle==7,Handle==71} @*/ Handle)
{

  {
  int /*@  predicates{tmp_ndt_9!=(-1),tmp_ndt_9!=(-1073741637),tmp_ndt_9!=(-1073741670),tmp_ndt_9!=(-1073741764),tmp_ndt_9!=(-1073741789),tmp_ndt_9!=(-1073741802),tmp_ndt_9!=(-1073741803),tmp_ndt_9!=(-1073741808),tmp_ndt_9!=(-1073741820),tmp_ndt_9!=(-1073741823),tmp_ndt_9!=(-2147483626),tmp_ndt_9!=(-2147483631),tmp_ndt_9!=0,tmp_ndt_9!=1,tmp_ndt_9!=147456,tmp_ndt_9!=147460,tmp_ndt_9!=147464,tmp_ndt_9!=147468,tmp_ndt_9!=147472,tmp_ndt_9!=147476,tmp_ndt_9!=147480,tmp_ndt_9!=147496,tmp_ndt_9!=147500,tmp_ndt_9!=147508,tmp_ndt_9!=147512,tmp_ndt_9!=149504,tmp_ndt_9!=149512,tmp_ndt_9!=17,tmp_ndt_9!=2,tmp_ndt_9!=22,tmp_ndt_9!=255,tmp_ndt_9!=259,tmp_ndt_9!=3,tmp_ndt_9!=4,tmp_ndt_9!=7,tmp_ndt_9!=71,tmp_ndt_9==(-1),tmp_ndt_9==(-1073741637),tmp_ndt_9==(-1073741670),tmp_ndt_9==(-1073741764),tmp_ndt_9==(-1073741789),tmp_ndt_9==(-1073741802),tmp_ndt_9==(-1073741803),tmp_ndt_9==(-1073741808),tmp_ndt_9==(-1073741820),tmp_ndt_9==(-1073741823),tmp_ndt_9==(-2147483626),tmp_ndt_9==(-2147483631),tmp_ndt_9==0,tmp_ndt_9==1,tmp_ndt_9==147456,tmp_ndt_9==147460,tmp_ndt_9==147464,tmp_ndt_9==147468,tmp_ndt_9==147472,tmp_ndt_9==147476,tmp_ndt_9==147480,tmp_ndt_9==147496,tmp_ndt_9==147500,tmp_ndt_9==147508,tmp_ndt_9==147512,tmp_ndt_9==149504,tmp_ndt_9==149512,tmp_ndt_9==17,tmp_ndt_9==2,tmp_ndt_9==22,tmp_ndt_9==255,tmp_ndt_9==259,tmp_ndt_9==3,tmp_ndt_9==4,tmp_ndt_9==7,tmp_ndt_9==71} @*/ tmp_ndt_9;
  tmp_ndt_9 = __VERIFIER_nondet_int();
  if(tmp_ndt_9 == 0){
    goto switch_9_0;
  } else {
    goto switch_9_default;
    if(0){
      switch_9_0: ;
      return(0);
      switch_9_default: ;
      return(-1073741823);
    } else {

    }
  }
}
}
