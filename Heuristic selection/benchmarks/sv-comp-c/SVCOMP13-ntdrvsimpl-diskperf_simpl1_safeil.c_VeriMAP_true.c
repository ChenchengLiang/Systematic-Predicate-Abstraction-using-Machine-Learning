extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: assert(0); goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-diskperf_simpl1_safeil.c.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-diskperf_simpl1_safeil.c.tmp.c"
# 18 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-diskperf_simpl1_safeil.c.tmp.c"
//extern char __VERIFIER_nondet_char(void);
//extern int __VERIFIER_nondet_int(void);
//extern long __VERIFIER_nondet_long(void);
//extern void *__VERIFIER_nondet_pointer(void);
void IofCompleteRequest(int Irp , int PriorityBoost );
int __VERIFIER_nondet_int() ;
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
int routine ;
int pirp ;
int Executive ;
int KernelMode ;

/* void errorFn(void)
{

  {
  goto ERROR;
  ERROR: assert(0);
# 58 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-diskperf_simpl1_safeil.c.tmp.c"
  return;
}
}
*/
# 61 "diskperf_simpl1.cil.c"
void _BLAST_init(void)
{

  {
# 65 "diskperf_simpl1.cil.c"
  UNLOADED = 0;
# 66 "diskperf_simpl1.cil.c"
  NP = 1;
# 67 "diskperf_simpl1.cil.c"
  DC = 2;
# 68 "diskperf_simpl1.cil.c"
  SKIP1 = 3;
# 69 "diskperf_simpl1.cil.c"
  SKIP2 = 4;
# 70 "diskperf_simpl1.cil.c"
  MPR1 = 5;
# 71 "diskperf_simpl1.cil.c"
  MPR3 = 6;
# 72 "diskperf_simpl1.cil.c"
  IPC = 7;
# 73 "diskperf_simpl1.cil.c"
  s = UNLOADED;
# 74 "diskperf_simpl1.cil.c"
  pended = 0;
# 75 "diskperf_simpl1.cil.c"
  compFptr = 0;
# 76 "diskperf_simpl1.cil.c"
  compRegistered = 0;
# 77 "diskperf_simpl1.cil.c"
  lowerDriverReturn = 0;
# 78 "diskperf_simpl1.cil.c"
  setEventCalled = 0;
# 79 "diskperf_simpl1.cil.c"
  customIrp = 0;
# 80 "diskperf_simpl1.cil.c"
  return;
}
}
# 83 "diskperf_simpl1.cil.c"
void DiskPerfSyncFilterWithTarget(int FilterDevice , int TargetDevice )
{ int FilterDevice__Flags ;
  int TargetDevice__Characteristics ;
  int FilterDevice__Characteristics ;
  int propFlags ;

  {
# 90 "diskperf_simpl1.cil.c"
# 91 "diskperf_simpl1.cil.c"
# 92 "diskperf_simpl1.cil.c"
# 93 "diskperf_simpl1.cil.c"
# 94 "diskperf_simpl1.cil.c"
  return;
}
}
# 97 "diskperf_simpl1.cil.c"
int DiskPerfDispatchPnp(int DeviceObject , int Irp )
{ int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int() ;
  int irpSp__MinorFunction = __VERIFIER_nondet_int() ;
  int irpSp ;
  int status ;
  int tmp ;

  {
# 105 "diskperf_simpl1.cil.c"
  irpSp = Irp__Tail__Overlay__CurrentStackLocation;
# 106 "diskperf_simpl1.cil.c"
  if (irpSp__MinorFunction == 0) {
    goto switch_0_0;
  } else {
# 109 "diskperf_simpl1.cil.c"
    if (irpSp__MinorFunction == 2) {
      goto switch_0_2;
    } else {
      goto switch_0_default;
# 114 "diskperf_simpl1.cil.c"
      if (0) {
        switch_0_0:
        {
# 117 "diskperf_simpl1.cil.c"
        status = DiskPerfStartDevice(DeviceObject, Irp);
        }
        goto switch_0_break;
        switch_0_2:
        {
# 122 "diskperf_simpl1.cil.c"
        status = DiskPerfRemoveDevice(DeviceObject, Irp);
        }
        goto switch_0_break;
        switch_0_default:
        {
# 127 "diskperf_simpl1.cil.c"
        tmp = DiskPerfSendToNextDriver(DeviceObject, Irp);
        }
# 129 "diskperf_simpl1.cil.c"
        return (tmp);
      } else {
        switch_0_break: ;
      }
    }
  }
# 136 "diskperf_simpl1.cil.c"
  return (status);
}
}
# 139 "diskperf_simpl1.cil.c"
int DiskPerfIrpCompletion(int DeviceObject , int Irp , int Context )
{ int Event ;

  {
  {
# 144 "diskperf_simpl1.cil.c"
  Event = Context;
# 145 "diskperf_simpl1.cil.c"
  KeSetEvent(Event, 0, 0);
  }
# 147 "diskperf_simpl1.cil.c"
  return (-1073741802);
}
}
# 150 "diskperf_simpl1.cil.c"
int DiskPerfStartDevice(int DeviceObject , int Irp )
{ int DeviceObject__DeviceExtension = __VERIFIER_nondet_int() ;
  int deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int() ;
  int Irp__IoStatus__Status ;
  int deviceExtension ;
  int status ;

  {
  {
# 159 "diskperf_simpl1.cil.c"
  deviceExtension = DeviceObject__DeviceExtension;
# 160 "diskperf_simpl1.cil.c"
  status = DiskPerfForwardIrpSynchronous(DeviceObject, Irp);
# 161 "diskperf_simpl1.cil.c"
  DiskPerfSyncFilterWithTarget(DeviceObject, deviceExtension__TargetDeviceObject);
# 162 "diskperf_simpl1.cil.c"
  DiskPerfRegisterDevice(DeviceObject);
# 163 "diskperf_simpl1.cil.c"
  Irp__IoStatus__Status = status;
# 164 "diskperf_simpl1.cil.c"
  myStatus = status;
# 165 "diskperf_simpl1.cil.c"
  IofCompleteRequest(Irp, 0);
  }
# 167 "diskperf_simpl1.cil.c"
  return (status);
}
}
# 170 "diskperf_simpl1.cil.c"
int DiskPerfRemoveDevice(int DeviceObject , int Irp )
{ int DeviceObject__DeviceExtension = __VERIFIER_nondet_int() ;
  int deviceExtension__WmilibContext = __VERIFIER_nondet_int() ;
  int Irp__IoStatus__Status ;
  int status ;
  int deviceExtension ;
  int wmilibContext ;

  {
  {
# 180 "diskperf_simpl1.cil.c"
  deviceExtension = DeviceObject__DeviceExtension;
# 181 "diskperf_simpl1.cil.c"
  wmilibContext = deviceExtension__WmilibContext;
# 182 "diskperf_simpl1.cil.c"
  status = DiskPerfForwardIrpSynchronous(DeviceObject, Irp);
# 183 "diskperf_simpl1.cil.c"
  Irp__IoStatus__Status = status;
# 184 "diskperf_simpl1.cil.c"
  myStatus = status;
# 185 "diskperf_simpl1.cil.c"
  IofCompleteRequest(Irp, 0);
  }
# 187 "diskperf_simpl1.cil.c"
  return (status);
}
}
# 190 "diskperf_simpl1.cil.c"
int DiskPerfSendToNextDriver(int DeviceObject , int Irp )
{ int Irp__CurrentLocation = __VERIFIER_nondet_int() ;
  int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int() ;
  int DeviceObject__DeviceExtension = __VERIFIER_nondet_int() ;
  int deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int() ;
  int deviceExtension ;
  int tmp ;

  {
# 199 "diskperf_simpl1.cil.c"
  if (s == NP) {
# 200 "diskperf_simpl1.cil.c"
    s = SKIP1;
  } else {
    {
# 203 "diskperf_simpl1.cil.c"
    errorFn();
    }
  }
  {
# 207 "diskperf_simpl1.cil.c"
  Irp__CurrentLocation ++;
# 208 "diskperf_simpl1.cil.c"
  Irp__Tail__Overlay__CurrentStackLocation ++;
# 209 "diskperf_simpl1.cil.c"
  deviceExtension = DeviceObject__DeviceExtension;
# 210 "diskperf_simpl1.cil.c"
  tmp = IofCallDriver(deviceExtension__TargetDeviceObject, Irp);
  }
# 212 "diskperf_simpl1.cil.c"
  return (tmp);
}
}
# 215 "diskperf_simpl1.cil.c"
int DiskPerfDispatchPower(int DeviceObject , int Irp )
{ int Irp__CurrentLocation = __VERIFIER_nondet_int() ;
  int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int() ;
  int DeviceObject__DeviceExtension = __VERIFIER_nondet_int() ;
  int deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int() ;
  int deviceExtension ;
  int tmp ;

  {
# 224 "diskperf_simpl1.cil.c"
  if (s == NP) {
# 225 "diskperf_simpl1.cil.c"
    s = SKIP1;
  } else {
    {
# 228 "diskperf_simpl1.cil.c"
    errorFn();
    }
  }
  {
# 232 "diskperf_simpl1.cil.c"
  Irp__CurrentLocation ++;
# 233 "diskperf_simpl1.cil.c"
  Irp__Tail__Overlay__CurrentStackLocation ++;
# 234 "diskperf_simpl1.cil.c"
  deviceExtension = DeviceObject__DeviceExtension;
# 235 "diskperf_simpl1.cil.c"
  tmp = PoCallDriver(deviceExtension__TargetDeviceObject, Irp);
  }
# 237 "diskperf_simpl1.cil.c"
  return (tmp);
}
}
# 240 "diskperf_simpl1.cil.c"
int DiskPerfForwardIrpSynchronous(int DeviceObject , int Irp )
{ int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int() ;
  int DeviceObject__DeviceExtension = __VERIFIER_nondet_int() ;
  int deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int() ;
  int deviceExtension ;
  int event = __VERIFIER_nondet_int() ;
  int status ;
  int nextIrpSp__Control ;
  int irpSp ;
  int nextIrpSp ;
  int irpSp__Context ;
  int irpSp__Control ;
  int irpSp___0 ;
  long __cil_tmp15 ;

  {
# 255 "diskperf_simpl1.cil.c"
  deviceExtension = DeviceObject__DeviceExtension;
# 256 "diskperf_simpl1.cil.c"
  irpSp = Irp__Tail__Overlay__CurrentStackLocation;
# 257 "diskperf_simpl1.cil.c"
  nextIrpSp = Irp__Tail__Overlay__CurrentStackLocation - 1;
# 258 "diskperf_simpl1.cil.c"
  nextIrpSp__Control = 0;
# 259 "diskperf_simpl1.cil.c"
  if (s != NP) {
    {
# 261 "diskperf_simpl1.cil.c"
    errorFn();
    }
  } else {
# 264 "diskperf_simpl1.cil.c"
    if (compRegistered != 0) {
      {
# 266 "diskperf_simpl1.cil.c"
      errorFn();
      }
    } else {
# 269 "diskperf_simpl1.cil.c"
      compRegistered = 1;
# 270 "diskperf_simpl1.cil.c"
      routine = 0;
    }
  }
  {
# 274 "diskperf_simpl1.cil.c"
  irpSp___0 = Irp__Tail__Overlay__CurrentStackLocation - 1;
# 275 "diskperf_simpl1.cil.c"
  irpSp__Context = event;
# 276 "diskperf_simpl1.cil.c"
  irpSp__Control = 224;
# 280 "diskperf_simpl1.cil.c"
  status = IofCallDriver(deviceExtension__TargetDeviceObject, Irp);
  }
  {
# 282 "diskperf_simpl1.cil.c"
  __cil_tmp15 = (long )status;
# 282 "diskperf_simpl1.cil.c"
  if (__cil_tmp15 == 259L) {
    {
# 284 "diskperf_simpl1.cil.c"
    KeWaitForSingleObject(event, Executive, KernelMode, 0, 0);
# 285 "diskperf_simpl1.cil.c"
    status = myStatus;
    }
  }
  }
# 290 "diskperf_simpl1.cil.c"
  return (status);
}
}
# 293 "diskperf_simpl1.cil.c"
int DiskPerfCreate(int DeviceObject , int Irp )
{

  {
  {
# 298 "diskperf_simpl1.cil.c"
  myStatus = 0;
# 299 "diskperf_simpl1.cil.c"
  IofCompleteRequest(Irp, 0);
  }
# 301 "diskperf_simpl1.cil.c"
  return (0);
}
}
# 304 "diskperf_simpl1.cil.c"
int DiskPerfIoCompletion(int DeviceObject , int Irp , int Context )
{ int irpStack__MajorFunction = __VERIFIER_nondet_int() ;
  int partitionCounters__BytesRead__QuadPart = __VERIFIER_nondet_int() ;
  int Irp__IoStatus__Information = __VERIFIER_nondet_int() ;
  int partitionCounters__ReadCount = __VERIFIER_nondet_int() ;
  int partitionCounters__ReadTime__QuadPart = __VERIFIER_nondet_int() ;
  int difference__QuadPart = __VERIFIER_nondet_int() ;
  int partitionCounters__BytesWritten__QuadPart = __VERIFIER_nondet_int() ;
  int partitionCounters__WriteCount = __VERIFIER_nondet_int() ;
  int partitionCounters__WriteTime__QuadPart = __VERIFIER_nondet_int() ;
  int Irp__Flags = __VERIFIER_nondet_int() ;
  int partitionCounters__SplitCount = __VERIFIER_nondet_int() ;
  int Irp__PendingReturned = __VERIFIER_nondet_int() ;
  int Irp__Tail__Overlay__CurrentStackLocation__Control ;
  int partitionCounters = __VERIFIER_nondet_int() ;
  int queueLen = __VERIFIER_nondet_int() ;

  {
# 322 "diskperf_simpl1.cil.c"
  if (partitionCounters == 0) {
# 323 "diskperf_simpl1.cil.c"
    return (0);
  }
# 327 "diskperf_simpl1.cil.c"
  if (queueLen < 0) {

  }
# 332 "diskperf_simpl1.cil.c"
  if (queueLen == 0) {

  }
# 337 "diskperf_simpl1.cil.c"
  if (irpStack__MajorFunction == 3) {
# 338 "diskperf_simpl1.cil.c"
    partitionCounters__BytesRead__QuadPart += Irp__IoStatus__Information;
# 339 "diskperf_simpl1.cil.c"
    partitionCounters__ReadCount ++;
# 340 "diskperf_simpl1.cil.c"
    partitionCounters__ReadTime__QuadPart += difference__QuadPart;
  } else {
# 342 "diskperf_simpl1.cil.c"
    partitionCounters__BytesWritten__QuadPart += Irp__IoStatus__Information;
# 343 "diskperf_simpl1.cil.c"
    partitionCounters__WriteCount ++;
# 344 "diskperf_simpl1.cil.c"
    partitionCounters__WriteTime__QuadPart += difference__QuadPart;
  }
# 346 "diskperf_simpl1.cil.c"
  if (Irp__Flags != 8) {
# 347 "diskperf_simpl1.cil.c"
    partitionCounters__SplitCount ++;
  }
  else {
  }
# 351 "diskperf_simpl1.cil.c"
  if (Irp__PendingReturned) {
# 352 "diskperf_simpl1.cil.c"
    if (pended == 0) {
# 353 "diskperf_simpl1.cil.c"
      pended = 1;
    } else {
      {
# 356 "diskperf_simpl1.cil.c"
      errorFn();
      }
    }
# 359 "diskperf_simpl1.cil.c"

  }
# 363 "diskperf_simpl1.cil.c"
  return (0);
}
}
# 366 "diskperf_simpl1.cil.c"
int DiskPerfDeviceControl(int DeviceObject , int Irp )
{ int Irp__CurrentLocation = __VERIFIER_nondet_int() ;
  int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int() ;
  int DeviceObject__DeviceExtension = __VERIFIER_nondet_int() ;
  int deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int() ;
  int currentIrpStack__Parameters__DeviceIoControl__IoControlCode = __VERIFIER_nondet_int() ;
  int currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength = __VERIFIER_nondet_int() ;
  int sizeof__DISK_PERFORMANCE = __VERIFIER_nondet_int() ;
  int Irp__IoStatus__Information ;
  int deviceExtension__DiskCounters = __VERIFIER_nondet_int() ;
  int Irp__AssociatedIrp__SystemBuffer = __VERIFIER_nondet_int() ;
  int deviceExtension__Processors = __VERIFIER_nondet_int() ;
  int totalCounters__QueueDepth ;
  int deviceExtension__QueueDepth = __VERIFIER_nondet_int() ;
  int Irp__IoStatus__Status ;
  int deviceExtension ;
  int currentIrpStack ;
  int status ;
  int i ;
  int totalCounters ;
  int diskCounters ;
  int tmp ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;

  {
# 390 "diskperf_simpl1.cil.c"
  deviceExtension = DeviceObject__DeviceExtension;
# 391 "diskperf_simpl1.cil.c"
  currentIrpStack = Irp__Tail__Overlay__CurrentStackLocation;
  {
# 392 "diskperf_simpl1.cil.c"
  __cil_tmp24 = 32;
# 392 "diskperf_simpl1.cil.c"
  __cil_tmp25 = 458752;
# 392 "diskperf_simpl1.cil.c"
  __cil_tmp26 = 458784;
# 392 "diskperf_simpl1.cil.c"
  if (currentIrpStack__Parameters__DeviceIoControl__IoControlCode == __cil_tmp26) {
# 393 "diskperf_simpl1.cil.c"
    if (currentIrpStack__Parameters__DeviceIoControl__OutputBufferLength < sizeof__DISK_PERFORMANCE) {
# 394 "diskperf_simpl1.cil.c"
      status = -1073741789;
# 395 "diskperf_simpl1.cil.c"
      Irp__IoStatus__Information = 0;
    } else {
# 397 "diskperf_simpl1.cil.c"
      diskCounters = deviceExtension__DiskCounters;
# 398 "diskperf_simpl1.cil.c"
      if (diskCounters == 0) {
        {
# 400 "diskperf_simpl1.cil.c"
        Irp__IoStatus__Status = -1073741823;
# 401 "diskperf_simpl1.cil.c"
        myStatus = -1073741823;
# 402 "diskperf_simpl1.cil.c"
        IofCompleteRequest(Irp, 0);
        }
# 404 "diskperf_simpl1.cil.c"
        return (-1073741823);
      }
# 408 "diskperf_simpl1.cil.c"
      totalCounters = Irp__AssociatedIrp__SystemBuffer;
# 409 "diskperf_simpl1.cil.c"
      i = 0;
      {
# 411 "diskperf_simpl1.cil.c"
      while (1) {
        while_0_continue: ;
# 413 "diskperf_simpl1.cil.c"
        if (i >= deviceExtension__Processors) {
          goto while_1_break;
        }
# 418 "diskperf_simpl1.cil.c"
        i ++;
      }
      while_0_break: ;
      }
      while_1_break:
# 422 "diskperf_simpl1.cil.c"
      totalCounters__QueueDepth = deviceExtension__QueueDepth;
# 423 "diskperf_simpl1.cil.c"
      status = 0;
# 424 "diskperf_simpl1.cil.c"
      Irp__IoStatus__Information = sizeof__DISK_PERFORMANCE;
    }
    {
# 427 "diskperf_simpl1.cil.c"
    Irp__IoStatus__Status = status;
# 428 "diskperf_simpl1.cil.c"
    myStatus = status;
# 429 "diskperf_simpl1.cil.c"
    IofCompleteRequest(Irp, 0);
    }
# 431 "diskperf_simpl1.cil.c"
    return (status);
  } else {
    {
# 434 "diskperf_simpl1.cil.c"
    Irp__CurrentLocation ++;
# 435 "diskperf_simpl1.cil.c"
    Irp__Tail__Overlay__CurrentStackLocation ++;
# 436 "diskperf_simpl1.cil.c"
    tmp = IofCallDriver(deviceExtension__TargetDeviceObject, Irp);
    }
# 438 "diskperf_simpl1.cil.c"
    return (tmp);
  }
  }
}
}
# 442 "diskperf_simpl1.cil.c"
int DiskPerfShutdownFlush(int DeviceObject , int Irp )
{ int DeviceObject__DeviceExtension = __VERIFIER_nondet_int() ;
  int Irp__CurrentLocation = __VERIFIER_nondet_int() ;
  int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int() ;
  int deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int() ;
  int deviceExtension ;
  int tmp ;

  {
  {
# 452 "diskperf_simpl1.cil.c"
  deviceExtension = DeviceObject__DeviceExtension;
# 453 "diskperf_simpl1.cil.c"
  Irp__CurrentLocation ++;
# 454 "diskperf_simpl1.cil.c"
  Irp__Tail__Overlay__CurrentStackLocation ++;
# 455 "diskperf_simpl1.cil.c"
  tmp = IofCallDriver(deviceExtension__TargetDeviceObject, Irp);
  }
# 457 "diskperf_simpl1.cil.c"
  return (tmp);
}
}
# 460 "diskperf_simpl1.cil.c"
void DiskPerfUnload(int DriverObject )
{

  {
# 464 "diskperf_simpl1.cil.c"
  return;
}
}
# 467 "diskperf_simpl1.cil.c"
int DiskPerfRegisterDevice(int DeviceObject )
{ int DeviceObject__DeviceExtension = __VERIFIER_nondet_int() ;
  int deviceExtension__TargetDeviceObject = __VERIFIER_nondet_int() ;
  int sizeof__number = __VERIFIER_nondet_int() ;
  int ioStatus__Status = __VERIFIER_nondet_int() ;
  int sizeof__VOLUME_NUMBER = __VERIFIER_nondet_int() ;
  int volumeNumber__VolumeManagerName__0 = __VERIFIER_nondet_int() ;
  int status ;
  int ioStatus = __VERIFIER_nondet_int() ;
  int event = __VERIFIER_nondet_int() ;
  int deviceExtension ;
  int irp ;
  int number = __VERIFIER_nondet_int() ;
  int registrationFlag ;
  int sizeof__MOUNTDEV_NAME = __VERIFIER_nondet_int() ;
  int output__NameLength = __VERIFIER_nondet_int() ;
  int outputSize ;
  int output = __VERIFIER_nondet_int() ;
  int volumeNumber = __VERIFIER_nondet_int() ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  long __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  long __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  int __cil_tmp36 ;
  long __cil_tmp37 ;
  int __cil_tmp38 ;
  int __cil_tmp39 ;

  {
  {
# 489 "diskperf_simpl1.cil.c"
  registrationFlag = 0;
# 490 "diskperf_simpl1.cil.c"
  deviceExtension = DeviceObject__DeviceExtension;
# 491 "diskperf_simpl1.cil.c"
  __cil_tmp20 = 4224;
# 491 "diskperf_simpl1.cil.c"
  __cil_tmp21 = 2949120;
# 491 "diskperf_simpl1.cil.c"
  __cil_tmp22 = 2953344;
# 491 "diskperf_simpl1.cil.c"
  irp = IoBuildDeviceIoControlRequest(__cil_tmp22, deviceExtension__TargetDeviceObject,
                                      0, 0, number, sizeof__number, 0, event, ioStatus);
  }
# 494 "diskperf_simpl1.cil.c"
  if (! irp) {
# 495 "diskperf_simpl1.cil.c"
    return (-1073741670);
  }
  {
# 500 "diskperf_simpl1.cil.c"
  status = IofCallDriver(deviceExtension__TargetDeviceObject, irp);
  }
  {
# 502 "diskperf_simpl1.cil.c"
  __cil_tmp23 = (long )status;
# 502 "diskperf_simpl1.cil.c"
  if (__cil_tmp23 == 259L) {
    {
# 504 "diskperf_simpl1.cil.c"
    KeWaitForSingleObject(event, Executive, KernelMode, 0, 0);
# 505 "diskperf_simpl1.cil.c"
    status = ioStatus__Status;
    }
  }
  }
# 510 "diskperf_simpl1.cil.c"
  if (status < 0) {
# 513 "diskperf_simpl1.cil.c"
    outputSize = sizeof__MOUNTDEV_NAME;
# 514 "diskperf_simpl1.cil.c"
    if (! output) {
# 515 "diskperf_simpl1.cil.c"
      return (-1073741670);
    }
    {
# 520 "diskperf_simpl1.cil.c"
    __cil_tmp24 = 8;
# 520 "diskperf_simpl1.cil.c"
    __cil_tmp25 = 5046272;
# 520 "diskperf_simpl1.cil.c"
    __cil_tmp26 = 5046280;
# 520 "diskperf_simpl1.cil.c"
    irp = IoBuildDeviceIoControlRequest(__cil_tmp26, deviceExtension__TargetDeviceObject,
                                        0, 0, output, outputSize, 0, event, ioStatus);
    }
# 523 "diskperf_simpl1.cil.c"
    if (! irp) {
# 524 "diskperf_simpl1.cil.c"
      return (-1073741670);
    }
    {
# 529 "diskperf_simpl1.cil.c"
    status = IofCallDriver(deviceExtension__TargetDeviceObject, irp);
    }
    {
# 531 "diskperf_simpl1.cil.c"
    __cil_tmp27 = (long )status;
# 531 "diskperf_simpl1.cil.c"
    if (__cil_tmp27 == 259L) {
      {
# 533 "diskperf_simpl1.cil.c"
      KeWaitForSingleObject(event, Executive, KernelMode, 0, 0);
# 534 "diskperf_simpl1.cil.c"
      status = ioStatus__Status;
      }
    }
    }
    {
# 539 "diskperf_simpl1.cil.c"
    __cil_tmp28 = (unsigned long )status;
# 539 "diskperf_simpl1.cil.c"
    if (__cil_tmp28 == -2147483643) {
# 540 "diskperf_simpl1.cil.c"
      outputSize = sizeof__MOUNTDEV_NAME + output__NameLength;
# 541 "diskperf_simpl1.cil.c"
      if (! output) {
# 542 "diskperf_simpl1.cil.c"
        return (-1073741670);
      }
      {
# 547 "diskperf_simpl1.cil.c"
      __cil_tmp29 = 8;
# 547 "diskperf_simpl1.cil.c"
      __cil_tmp30 = 5046272;
# 547 "diskperf_simpl1.cil.c"
      __cil_tmp31 = 5046280;
# 547 "diskperf_simpl1.cil.c"
      irp = IoBuildDeviceIoControlRequest(__cil_tmp31, deviceExtension__TargetDeviceObject,
                                          0, 0, output, outputSize, 0, event, ioStatus);
      }
# 550 "diskperf_simpl1.cil.c"
      if (! irp) {
# 551 "diskperf_simpl1.cil.c"
        return (-1073741670);
      }
      {
# 556 "diskperf_simpl1.cil.c"
      status = IofCallDriver(deviceExtension__TargetDeviceObject, irp);
      }
      {
# 558 "diskperf_simpl1.cil.c"
      __cil_tmp32 = (long )status;
# 558 "diskperf_simpl1.cil.c"
      if (__cil_tmp32 == 259L) {
        {
# 560 "diskperf_simpl1.cil.c"
        KeWaitForSingleObject(event, Executive, KernelMode, 0, 0);
# 561 "diskperf_simpl1.cil.c"
        status = ioStatus__Status;
        }
      }
      }
    }
    }
    {
# 569 "diskperf_simpl1.cil.c"
    if (status < 0) {
# 570 "diskperf_simpl1.cil.c"
      return (status);
    }
    }
    {
# 575 "diskperf_simpl1.cil.c"
    __cil_tmp34 = 28;
# 575 "diskperf_simpl1.cil.c"
    __cil_tmp35 = 5636096;
# 575 "diskperf_simpl1.cil.c"
    __cil_tmp36 = 5636124;
# 575 "diskperf_simpl1.cil.c"
    irp = IoBuildDeviceIoControlRequest(__cil_tmp36, deviceExtension__TargetDeviceObject,
                                        0, 0, volumeNumber, sizeof__VOLUME_NUMBER,
                                        0, event, ioStatus);
    }
# 579 "diskperf_simpl1.cil.c"
    if (! irp) {
# 580 "diskperf_simpl1.cil.c"
      return (-1073741670);
    }
    {
# 585 "diskperf_simpl1.cil.c"
    status = IofCallDriver(deviceExtension__TargetDeviceObject, irp);
    }
    {
# 587 "diskperf_simpl1.cil.c"
    __cil_tmp37 = (long )status;
# 587 "diskperf_simpl1.cil.c"
    if (__cil_tmp37 == 259L) {
      {
# 589 "diskperf_simpl1.cil.c"
      KeWaitForSingleObject(event, Executive, KernelMode, 0, 0);
# 590 "diskperf_simpl1.cil.c"
      status = ioStatus__Status;
      }
    }
    }
    {
# 595 "diskperf_simpl1.cil.c"
    if (status < 0) {
      goto _L;
    } else {
# 598 "diskperf_simpl1.cil.c"
      if (volumeNumber__VolumeManagerName__0 == 0) {
        _L:
# 600 "diskperf_simpl1.cil.c"
        if (status >= 0) {

        }
      }
    }
    }
  }
  {
# 610 "diskperf_simpl1.cil.c"
# 610 "diskperf_simpl1.cil.c"
  if (status < 0) {

  }
  }
# 615 "diskperf_simpl1.cil.c"
  return (status);
}
}
# 618 "diskperf_simpl1.cil.c"
void stub_driver_init(void)
{

  {
# 622 "diskperf_simpl1.cil.c"
  s = NP;
# 623 "diskperf_simpl1.cil.c"
  customIrp = 0;
# 624 "diskperf_simpl1.cil.c"
  setEventCalled = customIrp;
# 625 "diskperf_simpl1.cil.c"
  lowerDriverReturn = setEventCalled;
# 626 "diskperf_simpl1.cil.c"
  compRegistered = lowerDriverReturn;
# 627 "diskperf_simpl1.cil.c"
  compFptr = compRegistered;
# 628 "diskperf_simpl1.cil.c"
  pended = compFptr;
# 629 "diskperf_simpl1.cil.c"
  return;
}
}
# 632 "diskperf_simpl1.cil.c"
int main(void)
{ int d = __VERIFIER_nondet_int() ;
  int status = __VERIFIER_nondet_int() ;
  int we_should_unload = __VERIFIER_nondet_int() ;
  int irp = __VERIFIER_nondet_int() ;
  int pirp__IoStatus__Status ;
  int irp_choice = __VERIFIER_nondet_int() ;
  int devobj = __VERIFIER_nondet_int() ;
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
# 644 "diskperf_simpl1.cil.c"
  pirp = irp;
# 645 "diskperf_simpl1.cil.c"
  _BLAST_init();
  }
# 647 "diskperf_simpl1.cil.c"
  if (status >= 0) {
# 648 "diskperf_simpl1.cil.c"
    s = NP;
# 649 "diskperf_simpl1.cil.c"
    customIrp = 0;
# 650 "diskperf_simpl1.cil.c"
    setEventCalled = customIrp;
# 651 "diskperf_simpl1.cil.c"
    lowerDriverReturn = setEventCalled;
# 652 "diskperf_simpl1.cil.c"
    compRegistered = lowerDriverReturn;
# 653 "diskperf_simpl1.cil.c"
    compFptr = compRegistered;
# 654 "diskperf_simpl1.cil.c"
    pended = compFptr;
# 655 "diskperf_simpl1.cil.c"
    pirp__IoStatus__Status = 0;
# 656 "diskperf_simpl1.cil.c"
    myStatus = 0;
# 657 "diskperf_simpl1.cil.c"
    if (irp_choice == 0) {
# 658 "diskperf_simpl1.cil.c"
      pirp__IoStatus__Status = -1073741637;
# 659 "diskperf_simpl1.cil.c"
      myStatus = -1073741637;
    }
    {
# 664 "diskperf_simpl1.cil.c"
    stub_driver_init();
    }
    {
# 666 "diskperf_simpl1.cil.c"
    if (status < 0) {
# 667 "diskperf_simpl1.cil.c"
      return (-1);
    }
    }
# 671 "diskperf_simpl1.cil.c"
    int tmp_ndt_1;
    tmp_ndt_1 = __VERIFIER_nondet_int();
    if (tmp_ndt_1 == 0) {
      goto switch_2_0;
    } else {
# 674 "diskperf_simpl1.cil.c"
      int tmp_ndt_2;
      tmp_ndt_2 = __VERIFIER_nondet_int();
      if (tmp_ndt_2 == 2) {
        goto switch_2_2;
      } else {
# 677 "diskperf_simpl1.cil.c"
        int tmp_ndt_3;
        tmp_ndt_3 = __VERIFIER_nondet_int();
        if (tmp_ndt_3 == 3) {
          goto switch_2_3;
        } else {
# 680 "diskperf_simpl1.cil.c"
   int tmp_ndt_4;
   tmp_ndt_4 = __VERIFIER_nondet_int();
          if (tmp_ndt_4 == 4) {
            goto switch_2_4;
          } else {
# 683 "diskperf_simpl1.cil.c"
     int tmp_ndt_5;
     tmp_ndt_5 = __VERIFIER_nondet_int();
            if (tmp_ndt_5 == 12) {
              goto switch_2_12;
            } else {
              goto switch_2_default;
# 688 "diskperf_simpl1.cil.c"
              if (0) {
                switch_2_0:
                {
# 691 "diskperf_simpl1.cil.c"
                status = DiskPerfCreate(devobj, pirp);
                }
                goto switch_2_break;
                switch_2_2:
                {
# 696 "diskperf_simpl1.cil.c"
                status = DiskPerfDeviceControl(devobj, pirp);
                }
                goto switch_2_break;
                switch_2_3:
                {
# 701 "diskperf_simpl1.cil.c"
                status = DiskPerfDispatchPnp(devobj, pirp);
                }
                goto switch_2_break;
                switch_2_4:
                {
# 706 "diskperf_simpl1.cil.c"
                status = DiskPerfDispatchPower(devobj, pirp);
                }
                goto switch_2_break;
                switch_2_12:
                {
# 711 "diskperf_simpl1.cil.c"
                status = DiskPerfShutdownFlush(devobj, pirp);
                }
                goto switch_2_break;
                switch_2_default: ;
# 715 "diskperf_simpl1.cil.c"
                return (-1);
              } else {
                switch_2_break: ;
              }
            }
          }
        }
      }
    }
# 725 "diskperf_simpl1.cil.c"
    if (we_should_unload) {
      {
# 727 "diskperf_simpl1.cil.c"
      DiskPerfUnload(d);
      }
    }
  }
# 735 "diskperf_simpl1.cil.c"
  if (pended == 1) {
# 736 "diskperf_simpl1.cil.c"
    if (s == NP) {
# 737 "diskperf_simpl1.cil.c"
      s = NP;
    } else {
      goto _L___2;
    }
  } else {
    _L___2:
# 743 "diskperf_simpl1.cil.c"
    if (pended == 1) {
# 744 "diskperf_simpl1.cil.c"
      if (s == MPR3) {
# 745 "diskperf_simpl1.cil.c"
        s = MPR3;
      } else {
        goto _L___1;
      }
    } else {
      _L___1:
# 751 "diskperf_simpl1.cil.c"
      if (s != UNLOADED) {
# 754 "diskperf_simpl1.cil.c"
        if (status != -1) {
# 757 "diskperf_simpl1.cil.c"
          if (s != SKIP2) {
# 758 "diskperf_simpl1.cil.c"
            if (s != IPC) {
# 759 "diskperf_simpl1.cil.c"
              if (s != DC) {
                {
# 761 "diskperf_simpl1.cil.c"
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
# 771 "diskperf_simpl1.cil.c"
            if (pended == 1) {
# 772 "diskperf_simpl1.cil.c"
              if (status != 259) {
                {
# 774 "diskperf_simpl1.cil.c"
                errorFn();
                }
              }
            } else {
# 780 "diskperf_simpl1.cil.c"
              if (s == DC) {
# 781 "diskperf_simpl1.cil.c"
                if (status == 259) {
                  {
# 783 "diskperf_simpl1.cil.c"
                  errorFn();
                  }
                }
              } else {
# 789 "diskperf_simpl1.cil.c"
                if (status != lowerDriverReturn) {
                  {
# 791 "diskperf_simpl1.cil.c"
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
# 803 "diskperf_simpl1.cil.c"
  return (status);
}
}
# 806 "diskperf_simpl1.cil.c"
int IoBuildDeviceIoControlRequest(int IoControlCode , int DeviceObject , int InputBuffer ,
                                  int InputBufferLength , int OutputBuffer , int OutputBufferLength ,
                                  int InternalDeviceIoControl , int Event , int IoStatusBlock )
{
  int malloc_ret = __VERIFIER_nondet_int() ;

  {
# 813 "diskperf_simpl1.cil.c"
  customIrp = 1;
# 814 "diskperf_simpl1.cil.c"
  int tmp_ndt_7;
  tmp_ndt_7 = __VERIFIER_nondet_int();
  if (tmp_ndt_7 == 0) {
    goto switch_3_0;
  } else {
    goto switch_3_default;
# 819 "diskperf_simpl1.cil.c"
    if (0) {
      switch_3_0: ;
# 821 "diskperf_simpl1.cil.c"
      return (malloc_ret);
      switch_3_default: ;
# 823 "diskperf_simpl1.cil.c"
      return (0);
    } else {

    }
  }
}
}
# 831 "diskperf_simpl1.cil.c"
void stubMoreProcessingRequired(void)
{

  {
# 835 "diskperf_simpl1.cil.c"
  if (s == NP) {
# 836 "diskperf_simpl1.cil.c"
    s = MPR1;
  } else {
    {
# 839 "diskperf_simpl1.cil.c"
    errorFn();
    }
  }
# 842 "diskperf_simpl1.cil.c"
  return;
}
}
# 845 "diskperf_simpl1.cil.c"
int IofCallDriver(int DeviceObject , int Irp )
{
  int returnVal2 ;
  int compRetStatus ;
  int lcontext = __VERIFIER_nondet_int() ;
  unsigned long __cil_tmp7 ;

  {
# 852 "diskperf_simpl1.cil.c"
  if (compRegistered) {
# 853 "diskperf_simpl1.cil.c"
    if (routine == 0) {
      {
# 855 "diskperf_simpl1.cil.c"
      compRetStatus = DiskPerfIrpCompletion(DeviceObject, Irp, lcontext);
      }
    } else {
      {
# 859 "diskperf_simpl1.cil.c"
      compRetStatus = DiskPerfIoCompletion(DeviceObject, Irp, lcontext);
      }
    }
    {
# 862 "diskperf_simpl1.cil.c"
    __cil_tmp7 = (unsigned long )compRetStatus;
# 862 "diskperf_simpl1.cil.c"
    if (__cil_tmp7 == -1073741802) {
      {
# 864 "diskperf_simpl1.cil.c"
      stubMoreProcessingRequired();
      }
    }
    }
  }
# 872 "diskperf_simpl1.cil.c"
  int tmp_ndt_8;
  tmp_ndt_8 = __VERIFIER_nondet_int();
  if (tmp_ndt_8 == 0) {
    goto switch_4_0;
  } else {
# 875 "diskperf_simpl1.cil.c"
  int tmp_ndt_9;
  tmp_ndt_9 = __VERIFIER_nondet_int();
    if (tmp_ndt_9 == 1) {
      goto switch_4_1;
    } else {
      goto switch_4_default;
# 880 "diskperf_simpl1.cil.c"
      if (0) {
        switch_4_0:
# 882 "diskperf_simpl1.cil.c"
        returnVal2 = 0;
        goto switch_4_break;
        switch_4_1:
# 885 "diskperf_simpl1.cil.c"
        returnVal2 = -1073741823;
        goto switch_4_break;
        switch_4_default:
# 888 "diskperf_simpl1.cil.c"
        returnVal2 = 259;
        goto switch_4_break;
      } else {
        switch_4_break: ;
      }
    }
  }
# 896 "diskperf_simpl1.cil.c"
  if (s == NP) {
# 897 "diskperf_simpl1.cil.c"
    s = IPC;
# 898 "diskperf_simpl1.cil.c"
    lowerDriverReturn = returnVal2;
  } else {
# 900 "diskperf_simpl1.cil.c"
    if (s == MPR1) {
# 901 "diskperf_simpl1.cil.c"
      if (returnVal2 == 259) {
# 902 "diskperf_simpl1.cil.c"
        s = MPR3;
# 903 "diskperf_simpl1.cil.c"
        lowerDriverReturn = returnVal2;
      } else {
# 905 "diskperf_simpl1.cil.c"
        s = NP;
# 906 "diskperf_simpl1.cil.c"
        lowerDriverReturn = returnVal2;
      }
    } else {
# 909 "diskperf_simpl1.cil.c"
      if (s == SKIP1) {
# 910 "diskperf_simpl1.cil.c"
        s = SKIP2;
# 911 "diskperf_simpl1.cil.c"
        lowerDriverReturn = returnVal2;
      } else {
        {
# 914 "diskperf_simpl1.cil.c"
        errorFn();
        }
      }
    }
  }
# 919 "diskperf_simpl1.cil.c"
  return (returnVal2);
}
}
# 922 "diskperf_simpl1.cil.c"
void IofCompleteRequest(int Irp , int PriorityBoost )
{

  {
# 926 "diskperf_simpl1.cil.c"
  if (s == NP) {
# 927 "diskperf_simpl1.cil.c"
    s = DC;
  } else {
    {
# 930 "diskperf_simpl1.cil.c"
    errorFn();
    }
  }
# 933 "diskperf_simpl1.cil.c"
  return;
}
}
# 936 "diskperf_simpl1.cil.c"
int KeSetEvent(int Event , int Increment , int Wait )
{ int l = __VERIFIER_nondet_int() ;

  {
# 940 "diskperf_simpl1.cil.c"
  setEventCalled = 1;
# 941 "diskperf_simpl1.cil.c"
  return (l);
}
}
# 944 "diskperf_simpl1.cil.c"
int KeWaitForSingleObject(int Object , int WaitReason , int WaitMode , int Alertable ,
                          int Timeout )
{

  {
# 949 "diskperf_simpl1.cil.c"
  if (s == MPR3) {
# 950 "diskperf_simpl1.cil.c"
    if (setEventCalled == 1) {
# 951 "diskperf_simpl1.cil.c"
      s = NP;
# 952 "diskperf_simpl1.cil.c"
      setEventCalled = 0;
    } else {
      goto _L;
    }
  } else {
    _L:
# 958 "diskperf_simpl1.cil.c"
    if (customIrp == 1) {
# 959 "diskperf_simpl1.cil.c"
      s = NP;
# 960 "diskperf_simpl1.cil.c"
      customIrp = 0;
    } else {
# 962 "diskperf_simpl1.cil.c"
      if (s == MPR3) {
        {
# 964 "diskperf_simpl1.cil.c"
        errorFn();
        }
      }
    }
  }
# 971 "diskperf_simpl1.cil.c"
  int tmp_ndt_10;
  tmp_ndt_10 = __VERIFIER_nondet_int();
  if (tmp_ndt_10 == 0) {
    goto switch_5_0;
  } else {
    goto switch_5_default;
# 976 "diskperf_simpl1.cil.c"
    if (0) {
      switch_5_0: ;
# 978 "diskperf_simpl1.cil.c"
      return (0);
      switch_5_default: ;
# 980 "diskperf_simpl1.cil.c"
      return (-1073741823);
    } else {

    }
  }
}
}
# 988 "diskperf_simpl1.cil.c"
int PoCallDriver(int DeviceObject , int Irp )
{
  int compRetStatus ;
  int returnVal ;
  int lcontext = __VERIFIER_nondet_int() ;
  unsigned long __cil_tmp7 ;
  long __cil_tmp8 ;

  {
# 995 "diskperf_simpl1.cil.c"
  if (compRegistered) {
# 996 "diskperf_simpl1.cil.c"
    if (routine == 0) {
      {
# 998 "diskperf_simpl1.cil.c"
      compRetStatus = DiskPerfIrpCompletion(DeviceObject, Irp, lcontext);
      }
    } else {
# 1001 "diskperf_simpl1.cil.c"
      if (routine == 1) {
        {
# 1003 "diskperf_simpl1.cil.c"
        compRetStatus = DiskPerfIoCompletion(DeviceObject, Irp, lcontext);
        }
      }
    }
    {
# 1009 "diskperf_simpl1.cil.c"
    __cil_tmp7 = (unsigned long )compRetStatus;
# 1009 "diskperf_simpl1.cil.c"
    if (__cil_tmp7 == -1073741802) {
      {
# 1011 "diskperf_simpl1.cil.c"
      stubMoreProcessingRequired();
      }
    }
    }
  }
# 1019 "diskperf_simpl1.cil.c"
  int tmp_ndt_11;
  tmp_ndt_11 = __VERIFIER_nondet_int();
  if (tmp_ndt_11 == 0) {
    goto switch_6_0;
  } else {
# 1022 "diskperf_simpl1.cil.c"
  int tmp_ndt_12;
  tmp_ndt_12 = __VERIFIER_nondet_int();
    if (tmp_ndt_12 == 1) {
      goto switch_6_1;
    } else {
      goto switch_6_default;
# 1027 "diskperf_simpl1.cil.c"
      if (0) {
        switch_6_0:
# 1029 "diskperf_simpl1.cil.c"
        returnVal = 0;
        goto switch_6_break;
        switch_6_1:
# 1032 "diskperf_simpl1.cil.c"
        returnVal = -1073741823;
        goto switch_6_break;
        switch_6_default:
# 1035 "diskperf_simpl1.cil.c"
        returnVal = 259;
        goto switch_6_break;
      } else {
        switch_6_break: ;
      }
    }
  }
# 1043 "diskperf_simpl1.cil.c"
  if (s == NP) {
# 1044 "diskperf_simpl1.cil.c"
    s = IPC;
# 1045 "diskperf_simpl1.cil.c"
    lowerDriverReturn = returnVal;
  } else {
# 1047 "diskperf_simpl1.cil.c"
    if (s == MPR1) {
      {
# 1048 "diskperf_simpl1.cil.c"
      __cil_tmp8 = (long )returnVal;
# 1048 "diskperf_simpl1.cil.c"
      if (__cil_tmp8 == 259L) {
# 1049 "diskperf_simpl1.cil.c"
        s = MPR3;
# 1050 "diskperf_simpl1.cil.c"
        lowerDriverReturn = returnVal;
      } else {
# 1052 "diskperf_simpl1.cil.c"
        s = NP;
# 1053 "diskperf_simpl1.cil.c"
        lowerDriverReturn = returnVal;
      }
      }
    } else {
# 1056 "diskperf_simpl1.cil.c"
      if (s == SKIP1) {
# 1057 "diskperf_simpl1.cil.c"
        s = SKIP2;
# 1058 "diskperf_simpl1.cil.c"
        lowerDriverReturn = returnVal;
      } else {
        {
# 1061 "diskperf_simpl1.cil.c"
        errorFn();
        }
      }
    }
  }
# 1066 "diskperf_simpl1.cil.c"
  return (returnVal);
}
}
