extern _Bool __VERIFIER_nondet_bool();
unsigned int __VERIFIER_nondet_uint();
void errorFn() {ERROR: assert(0); goto ERROR;}
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
extern int __VERIFIER_nondet_int();
# 1 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
# 18 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
//extern char __VERIFIER_nondet_char(void);
//extern int __VERIFIER_nondet_int(void);
//extern long __VERIFIER_nondet_long(void);
//extern void *__VERIFIER_nondet_pointer(void);
void IofCompleteRequest(int Irp , int PriorityBoost );
//extern int __VERIFIER_nondet_int();
int FloppyThread ;
int KernelMode ;
int Suspended ;
int Executive ;
int DiskController ;
int FloppyDiskPeripheral ;
int FlConfigCallBack ;
int MaximumInterfaceType ;
int MOUNTDEV_MOUNTED_DEVICE_GUID ;
int myStatus ;
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
int compRegistered ;
int lowerDriverReturn ;
int setEventCalled ;
int customIrp ;

/* void errorFn(void)
{

  {
  goto ERROR;
  ERROR: assert(0);
  return;
}
}
*/
void _BLAST_init(void)
{

  {
# 73 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
  UNLOADED = 0;
# 74 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
  NP = 1;
# 75 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
  DC = 2;
# 76 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
  SKIP1 = 3;
# 77 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
  SKIP2 = 4;
# 78 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
  MPR1 = 5;
# 79 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
  MPR3 = 6;
# 80 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
  IPC = 7;
# 81 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
  s = UNLOADED;
# 82 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
  pended = 0;
# 83 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
  compRegistered = 0;
# 84 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
  lowerDriverReturn = 0;
# 85 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
  setEventCalled = 0;
# 86 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
  customIrp = 0;
# 87 "MAP/SAFE-exbench/SVCOMP13-ntdrvsimpl-floppy_simpl3_safeil.c.tmp.c"
  return;
}
}
# 90 "floppy_simpl3.cil.c"
int PagingReferenceCount = 0;
# 91 "floppy_simpl3.cil.c"
int PagingMutex = 0;
# 92 "floppy_simpl3.cil.c"
int FlAcpiConfigureFloppy(int DisketteExtension , int FdcInfo )
{

  {
# 96 "floppy_simpl3.cil.c"
  return (0);
}
}
# 99 "floppy_simpl3.cil.c"
int FlQueueIrpToThread(int Irp , int DisketteExtension )
{ int status ;
  int threadHandle = __VERIFIER_nondet_int() ;
  int DisketteExtension__PoweringDown = __VERIFIER_nondet_int() ;
  int DisketteExtension__ThreadReferenceCount = __VERIFIER_nondet_int() ;
  int DisketteExtension__FloppyThread = __VERIFIER_nondet_int() ;
  int Irp__IoStatus__Status ;
  int Irp__IoStatus__Information ;
  int Irp__Tail__Overlay__CurrentStackLocation__Control ;
  int ObjAttributes = __VERIFIER_nondet_int() ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;

  {
# 111 "floppy_simpl3.cil.c"
  if (DisketteExtension__PoweringDown == 1) {
# 112 "floppy_simpl3.cil.c"
    myStatus = -1073741101;
# 113 "floppy_simpl3.cil.c"
    Irp__IoStatus__Status = -1073741101;
# 114 "floppy_simpl3.cil.c"
    Irp__IoStatus__Information = 0;
# 115 "floppy_simpl3.cil.c"
    return (-1073741101);
  }
# 119 "floppy_simpl3.cil.c"
  DisketteExtension__ThreadReferenceCount ++;
# 120 "floppy_simpl3.cil.c"
  if (DisketteExtension__ThreadReferenceCount == 0) {
# 121 "floppy_simpl3.cil.c"
    DisketteExtension__ThreadReferenceCount ++;
# 122 "floppy_simpl3.cil.c"
    PagingReferenceCount ++;
# 123 "floppy_simpl3.cil.c"
    if (PagingReferenceCount == 1) {

    }
    {
# 129 "floppy_simpl3.cil.c"
    status = PsCreateSystemThread(threadHandle, 0, ObjAttributes, 0, 0, FloppyThread,
                                  DisketteExtension);
    }
    {
# 132 "floppy_simpl3.cil.c"
# 132 "floppy_simpl3.cil.c"
    if (status < 0) {
# 133 "floppy_simpl3.cil.c"
      DisketteExtension__ThreadReferenceCount = -1;
# 134 "floppy_simpl3.cil.c"
      PagingReferenceCount --;
# 135 "floppy_simpl3.cil.c"
      if (PagingReferenceCount == 0) {

      }
# 140 "floppy_simpl3.cil.c"
      return (status);
    }
    }
    {
# 145 "floppy_simpl3.cil.c"
    status = ObReferenceObjectByHandle(threadHandle, 1048576, 0, KernelMode, DisketteExtension__FloppyThread,
                                       0);
# 147 "floppy_simpl3.cil.c"
    ZwClose(threadHandle);
    }
    {
# 149 "floppy_simpl3.cil.c"
# 149 "floppy_simpl3.cil.c"
    if (status < 0) {
# 150 "floppy_simpl3.cil.c"
      return (status);
    }
    }
  }
# 157 "floppy_simpl3.cil.c"
# 158 "floppy_simpl3.cil.c"
  if (pended == 0) {
# 159 "floppy_simpl3.cil.c"
    pended = 1;
  } else {
    {
# 162 "floppy_simpl3.cil.c"
    errorFn();
    }
  }
# 165 "floppy_simpl3.cil.c"
  return (259);
}
}
# 168 "floppy_simpl3.cil.c"
int FloppyPnp(int DeviceObject , int Irp )
{ int DeviceObject__DeviceExtension = __VERIFIER_nondet_int() ;
  int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int() ;
  int Irp__IoStatus__Information ;
  int Irp__IoStatus__Status ;
  int Irp__CurrentLocation = __VERIFIER_nondet_int() ;
  int disketteExtension__IsRemoved = __VERIFIER_nondet_int() ;
  int disketteExtension__IsStarted = __VERIFIER_nondet_int() ;
  int disketteExtension__TargetObject = __VERIFIER_nondet_int() ;
  int disketteExtension__HoldNewRequests ;
  int disketteExtension__FloppyThread = __VERIFIER_nondet_int() ;
  int disketteExtension__InterfaceString__Buffer = __VERIFIER_nondet_int() ;
  int disketteExtension__InterfaceString = __VERIFIER_nondet_int() ;
  int disketteExtension__ArcName__Length = __VERIFIER_nondet_int() ;
  int disketteExtension__ArcName = __VERIFIER_nondet_int() ;
  int irpSp__MinorFunction = __VERIFIER_nondet_int() ;
  int IoGetConfigurationInformation__FloppyCount = __VERIFIER_nondet_int() ;
  int irpSp ;
  int disketteExtension ;
  int ntStatus ;
  int doneEvent = __VERIFIER_nondet_int() ;
  int irpSp___0 ;
  int nextIrpSp ;
  int nextIrpSp__Control ;
  int irpSp___1 ;
  int irpSp__Context ;
  int irpSp__Control ;
  long __cil_tmp29 ;
  long __cil_tmp30 ;

  {
# 197 "floppy_simpl3.cil.c"
  ntStatus = 0;
# 198 "floppy_simpl3.cil.c"
  PagingReferenceCount ++;
# 199 "floppy_simpl3.cil.c"
  if (PagingReferenceCount == 1) {

  }
# 204 "floppy_simpl3.cil.c"
  disketteExtension = DeviceObject__DeviceExtension;
# 205 "floppy_simpl3.cil.c"
  irpSp = Irp__Tail__Overlay__CurrentStackLocation;
# 206 "floppy_simpl3.cil.c"
  if (disketteExtension__IsRemoved) {
    {
# 208 "floppy_simpl3.cil.c"
    Irp__IoStatus__Information = 0;
# 209 "floppy_simpl3.cil.c"
    Irp__IoStatus__Status = -1073741738;
# 210 "floppy_simpl3.cil.c"
    myStatus = -1073741738;
# 211 "floppy_simpl3.cil.c"
    IofCompleteRequest(Irp, 0);
    }
# 213 "floppy_simpl3.cil.c"
    return (-1073741738);
  }
# 217 "floppy_simpl3.cil.c"
  if (irpSp__MinorFunction == 0) {
    goto switch_0_0;
  } else {
# 220 "floppy_simpl3.cil.c"
    if (irpSp__MinorFunction == 5) {
      goto switch_0_5;
    } else {
# 223 "floppy_simpl3.cil.c"
      if (irpSp__MinorFunction == 1) {
        goto switch_0_5;
      } else {
# 226 "floppy_simpl3.cil.c"
        if (irpSp__MinorFunction == 6) {
          goto switch_0_6;
        } else {
# 229 "floppy_simpl3.cil.c"
          if (irpSp__MinorFunction == 3) {
            goto switch_0_6;
          } else {
# 232 "floppy_simpl3.cil.c"
            if (irpSp__MinorFunction == 4) {
              goto switch_0_4;
            } else {
# 235 "floppy_simpl3.cil.c"
              if (irpSp__MinorFunction == 2) {
                goto switch_0_2;
              } else {
                goto switch_0_default;
# 240 "floppy_simpl3.cil.c"
                if (0) {
                  switch_0_0:
                  {
# 243 "floppy_simpl3.cil.c"
                  ntStatus = FloppyStartDevice(DeviceObject, Irp);
                  }
                  goto switch_0_break;
                  switch_0_5:
# 248 "floppy_simpl3.cil.c"
                  if (irpSp__MinorFunction == 5) {

                  }
# 253 "floppy_simpl3.cil.c"
                  if (! disketteExtension__IsStarted) {
# 254 "floppy_simpl3.cil.c"
                    if (s == NP) {
# 255 "floppy_simpl3.cil.c"
                      s = SKIP1;
                    } else {
                      {
# 258 "floppy_simpl3.cil.c"
                      errorFn();
                      }
                    }
                    {
# 262 "floppy_simpl3.cil.c"
                    Irp__CurrentLocation ++;
# 263 "floppy_simpl3.cil.c"
                    Irp__Tail__Overlay__CurrentStackLocation ++;
# 264 "floppy_simpl3.cil.c"
                    ntStatus = IofCallDriver(disketteExtension__TargetObject, Irp);
                    }
# 266 "floppy_simpl3.cil.c"
                    return (ntStatus);
                  }
                  {
# 271 "floppy_simpl3.cil.c"
                  disketteExtension__HoldNewRequests = 1;
# 272 "floppy_simpl3.cil.c"
                  ntStatus = FlQueueIrpToThread(Irp, disketteExtension);
                  }
                  {
# 274 "floppy_simpl3.cil.c"
                  __cil_tmp29 = (long )ntStatus;
# 274 "floppy_simpl3.cil.c"
                  if (__cil_tmp29 == 259L) {
                    {
# 276 "floppy_simpl3.cil.c"
                    KeWaitForSingleObject(disketteExtension__FloppyThread, Executive,
                                          KernelMode, 0, 0);
                    }
# 279 "floppy_simpl3.cil.c"
                    if (disketteExtension__FloppyThread != 0) {

                    }
# 284 "floppy_simpl3.cil.c"
                    disketteExtension__FloppyThread = 0;
# 285 "floppy_simpl3.cil.c"
                    Irp__IoStatus__Status = 0;
# 286 "floppy_simpl3.cil.c"
                    myStatus = 0;
# 287 "floppy_simpl3.cil.c"
                    if (s == NP) {
# 288 "floppy_simpl3.cil.c"
                      s = SKIP1;
                    } else {
                      {
# 291 "floppy_simpl3.cil.c"
                      errorFn();
                      }
                    }
                    {
# 295 "floppy_simpl3.cil.c"
                    Irp__CurrentLocation ++;
# 296 "floppy_simpl3.cil.c"
                    Irp__Tail__Overlay__CurrentStackLocation ++;
# 297 "floppy_simpl3.cil.c"
                    ntStatus = IofCallDriver(disketteExtension__TargetObject, Irp);
                    }
                  } else {
                    {
# 301 "floppy_simpl3.cil.c"
                    ntStatus = -1073741823;
# 302 "floppy_simpl3.cil.c"
                    Irp__IoStatus__Status = ntStatus;
# 303 "floppy_simpl3.cil.c"
                    myStatus = ntStatus;
# 304 "floppy_simpl3.cil.c"
                    Irp__IoStatus__Information = 0;
# 305 "floppy_simpl3.cil.c"
                    IofCompleteRequest(Irp, 0);
                    }
                  }
                  }
                  goto switch_0_break;
                  switch_0_6:
# 311 "floppy_simpl3.cil.c"
                  if (irpSp__MinorFunction == 6) {

                  }
# 316 "floppy_simpl3.cil.c"
                  if (! disketteExtension__IsStarted) {
# 317 "floppy_simpl3.cil.c"
                    Irp__IoStatus__Status = 0;
# 318 "floppy_simpl3.cil.c"
                    myStatus = 0;
# 319 "floppy_simpl3.cil.c"
                    if (s == NP) {
# 320 "floppy_simpl3.cil.c"
                      s = SKIP1;
                    } else {
                      {
# 323 "floppy_simpl3.cil.c"
                      errorFn();
                      }
                    }
                    {
# 327 "floppy_simpl3.cil.c"
                    Irp__CurrentLocation ++;
# 328 "floppy_simpl3.cil.c"
                    Irp__Tail__Overlay__CurrentStackLocation ++;
# 329 "floppy_simpl3.cil.c"
                    ntStatus = IofCallDriver(disketteExtension__TargetObject, Irp);
                    }
                  } else {
# 332 "floppy_simpl3.cil.c"
                    Irp__IoStatus__Status = 0;
# 333 "floppy_simpl3.cil.c"
                    myStatus = 0;
# 334 "floppy_simpl3.cil.c"
                    irpSp___0 = Irp__Tail__Overlay__CurrentStackLocation;
# 335 "floppy_simpl3.cil.c"
                    nextIrpSp = Irp__Tail__Overlay__CurrentStackLocation - 1;
# 336 "floppy_simpl3.cil.c"
                    nextIrpSp__Control = 0;
# 337 "floppy_simpl3.cil.c"
                    if (s != NP) {
                      {
# 339 "floppy_simpl3.cil.c"
                      errorFn();
                      }
                    } else {
# 342 "floppy_simpl3.cil.c"
                      if (compRegistered != 0) {
                        {
# 344 "floppy_simpl3.cil.c"
                        errorFn();
                        }
                      } else {
# 347 "floppy_simpl3.cil.c"
                        compRegistered = 1;
                      }
                    }
                    {
# 351 "floppy_simpl3.cil.c"
                    irpSp___1 = Irp__Tail__Overlay__CurrentStackLocation - 1;
# 352 "floppy_simpl3.cil.c"
                    irpSp__Context = doneEvent;
# 353 "floppy_simpl3.cil.c"
                    irpSp__Control = 224;
# 357 "floppy_simpl3.cil.c"
                    ntStatus = IofCallDriver(disketteExtension__TargetObject, Irp);
                    }
                    {
# 359 "floppy_simpl3.cil.c"
                    __cil_tmp30 = (long )ntStatus;
# 359 "floppy_simpl3.cil.c"
                    if (__cil_tmp30 == 259L) {
                      {
# 361 "floppy_simpl3.cil.c"
                      KeWaitForSingleObject(doneEvent, Executive, KernelMode, 0, 0);
# 362 "floppy_simpl3.cil.c"
                      ntStatus = myStatus;
                      }
                    }
                    }
                    {
# 368 "floppy_simpl3.cil.c"
                    disketteExtension__HoldNewRequests = 0;
# 369 "floppy_simpl3.cil.c"
                    Irp__IoStatus__Status = ntStatus;
# 370 "floppy_simpl3.cil.c"
                    myStatus = ntStatus;
# 371 "floppy_simpl3.cil.c"
                    Irp__IoStatus__Information = 0;
# 372 "floppy_simpl3.cil.c"
                    IofCompleteRequest(Irp, 0);
                    }
                  }
                  goto switch_0_break;
                  switch_0_4:
# 377 "floppy_simpl3.cil.c"
                  disketteExtension__IsStarted = 0;
# 378 "floppy_simpl3.cil.c"
                  Irp__IoStatus__Status = 0;
# 379 "floppy_simpl3.cil.c"
                  myStatus = 0;
# 380 "floppy_simpl3.cil.c"
                  if (s == NP) {
# 381 "floppy_simpl3.cil.c"
                    s = SKIP1;
                  } else {
                    {
# 384 "floppy_simpl3.cil.c"
                    errorFn();
                    }
                  }
                  {
# 388 "floppy_simpl3.cil.c"
                  Irp__CurrentLocation ++;
# 389 "floppy_simpl3.cil.c"
                  Irp__Tail__Overlay__CurrentStackLocation ++;
# 390 "floppy_simpl3.cil.c"
                  ntStatus = IofCallDriver(disketteExtension__TargetObject, Irp);
                  }
                  goto switch_0_break;
                  switch_0_2:
# 394 "floppy_simpl3.cil.c"
                  disketteExtension__HoldNewRequests = 0;
# 395 "floppy_simpl3.cil.c"
                  disketteExtension__IsStarted = 0;
# 396 "floppy_simpl3.cil.c"
                  disketteExtension__IsRemoved = 1;
# 397 "floppy_simpl3.cil.c"
                  if (s == NP) {
# 398 "floppy_simpl3.cil.c"
                    s = SKIP1;
                  } else {
                    {
# 401 "floppy_simpl3.cil.c"
                    errorFn();
                    }
                  }
                  {
# 405 "floppy_simpl3.cil.c"
                  Irp__CurrentLocation ++;
# 406 "floppy_simpl3.cil.c"
                  Irp__Tail__Overlay__CurrentStackLocation ++;
# 407 "floppy_simpl3.cil.c"
                  Irp__IoStatus__Status = 0;
# 408 "floppy_simpl3.cil.c"
                  myStatus = 0;
# 409 "floppy_simpl3.cil.c"
                  ntStatus = IofCallDriver(disketteExtension__TargetObject, Irp);
                  }
# 411 "floppy_simpl3.cil.c"
                  if (disketteExtension__InterfaceString__Buffer != 0) {
                    {
# 413 "floppy_simpl3.cil.c"
                    IoSetDeviceInterfaceState(disketteExtension__InterfaceString,
                                              0);
                    }
                  }
# 419 "floppy_simpl3.cil.c"
                  if (disketteExtension__ArcName__Length != 0) {
                    {
# 421 "floppy_simpl3.cil.c"
                    IoDeleteSymbolicLink(disketteExtension__ArcName);
                    }
                  }
# 426 "floppy_simpl3.cil.c"
                  IoGetConfigurationInformation__FloppyCount --;
                  goto switch_0_break;
                  switch_0_default: ;
# 429 "floppy_simpl3.cil.c"
                  if (s == NP) {
# 430 "floppy_simpl3.cil.c"
                    s = SKIP1;
                  } else {
                    {
# 433 "floppy_simpl3.cil.c"
                    errorFn();
                    }
                  }
                  {
# 437 "floppy_simpl3.cil.c"
                  Irp__CurrentLocation ++;
# 438 "floppy_simpl3.cil.c"
                  Irp__Tail__Overlay__CurrentStackLocation ++;
# 439 "floppy_simpl3.cil.c"
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
# 452 "floppy_simpl3.cil.c"
  PagingReferenceCount --;
# 453 "floppy_simpl3.cil.c"
  if (PagingReferenceCount == 0) {

  }
# 458 "floppy_simpl3.cil.c"
  return (ntStatus);
}
}
# 461 "floppy_simpl3.cil.c"
int FloppyStartDevice(int DeviceObject , int Irp )
{ int DeviceObject__DeviceExtension = __VERIFIER_nondet_int() ;
  int Irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int() ;
  int Irp__IoStatus__Status ;
  int disketteExtension__TargetObject = __VERIFIER_nondet_int() ;
  int disketteExtension__MaxTransferSize ;
  int disketteExtension__DriveType = __VERIFIER_nondet_int() ;
  int disketteExtension__PerpendicularMode ;
  int disketteExtension__DeviceUnit ;
  int disketteExtension__DriveOnValue ;
  int disketteExtension__UnderlyingPDO = __VERIFIER_nondet_int() ;
  int disketteExtension__InterfaceString = __VERIFIER_nondet_int() ;
  int disketteExtension__IsStarted ;
  int disketteExtension__HoldNewRequests ;
  int ntStatus ;
  int pnpStatus ;
  int doneEvent = __VERIFIER_nondet_int() ;
  int fdcInfo = __VERIFIER_nondet_int() ;
  int fdcInfo__BufferCount ;
  int fdcInfo__BufferSize ;
  int fdcInfo__MaxTransferSize = __VERIFIER_nondet_int() ;
  int fdcInfo__AcpiBios = __VERIFIER_nondet_int() ;
  int fdcInfo__AcpiFdiSupported = __VERIFIER_nondet_int() ;
  int fdcInfo__PeripheralNumber = __VERIFIER_nondet_int() ;
  int fdcInfo__BusType ;
  int fdcInfo__ControllerNumber = __VERIFIER_nondet_int() ;
  int fdcInfo__UnitNumber = __VERIFIER_nondet_int() ;
  int fdcInfo__BusNumber = __VERIFIER_nondet_int() ;
  int Dc ;
  int Fp ;
  int disketteExtension ;
  int irpSp ;
  int irpSp___0 ;
  int nextIrpSp ;
  int nextIrpSp__Control ;
  int irpSp___1 ;
  int irpSp__Control ;
  int irpSp__Context ;
  int InterfaceType ;
  int KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86 = __VERIFIER_nondet_int() ;
  long __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  int __cil_tmp46 ;
  int __cil_tmp47 ;
  int __cil_tmp48 ;
  int __cil_tmp49 ;

  {
# 503 "floppy_simpl3.cil.c"
  Dc = DiskController;
# 504 "floppy_simpl3.cil.c"
  Fp = FloppyDiskPeripheral;
# 505 "floppy_simpl3.cil.c"
  disketteExtension = DeviceObject__DeviceExtension;
# 506 "floppy_simpl3.cil.c"
  irpSp = Irp__Tail__Overlay__CurrentStackLocation;
# 507 "floppy_simpl3.cil.c"
  irpSp___0 = Irp__Tail__Overlay__CurrentStackLocation;
# 508 "floppy_simpl3.cil.c"
  nextIrpSp = Irp__Tail__Overlay__CurrentStackLocation - 1;
# 509 "floppy_simpl3.cil.c"
  nextIrpSp__Control = 0;
# 510 "floppy_simpl3.cil.c"
  if (s != NP) {
    {
# 512 "floppy_simpl3.cil.c"
    errorFn();
    }
  } else {
# 515 "floppy_simpl3.cil.c"
    if (compRegistered != 0) {
      {
# 517 "floppy_simpl3.cil.c"
      errorFn();
      }
    } else {
# 520 "floppy_simpl3.cil.c"
      compRegistered = 1;
    }
  }
  {
# 524 "floppy_simpl3.cil.c"
  irpSp___1 = Irp__Tail__Overlay__CurrentStackLocation - 1;
# 525 "floppy_simpl3.cil.c"
  irpSp__Context = doneEvent;
# 526 "floppy_simpl3.cil.c"
  irpSp__Control = 224;
# 530 "floppy_simpl3.cil.c"
  ntStatus = IofCallDriver(disketteExtension__TargetObject, Irp);
  }
  {
# 532 "floppy_simpl3.cil.c"
  __cil_tmp42 = (long )ntStatus;
# 532 "floppy_simpl3.cil.c"
  if (__cil_tmp42 == 259L) {
    {
# 534 "floppy_simpl3.cil.c"
    ntStatus = KeWaitForSingleObject(doneEvent, Executive, KernelMode, 0, 0);
# 535 "floppy_simpl3.cil.c"
    ntStatus = myStatus;
    }
  }
  }
  {
# 541 "floppy_simpl3.cil.c"
  fdcInfo__BufferCount = 0;
# 542 "floppy_simpl3.cil.c"
  fdcInfo__BufferSize = 0;
# 543 "floppy_simpl3.cil.c"
  __cil_tmp43 = 3080;
# 543 "floppy_simpl3.cil.c"
  __cil_tmp44 = 458752;
# 543 "floppy_simpl3.cil.c"
  __cil_tmp45 = 461832;
# 543 "floppy_simpl3.cil.c"
  __cil_tmp46 = 461835;
# 543 "floppy_simpl3.cil.c"
  ntStatus = FlFdcDeviceIo(disketteExtension__TargetObject, __cil_tmp46, fdcInfo);
  }
# 546 "floppy_simpl3.cil.c"
  if (ntStatus >= 0) {
# 547 "floppy_simpl3.cil.c"
    disketteExtension__MaxTransferSize = fdcInfo__MaxTransferSize;
# 548 "floppy_simpl3.cil.c"
    if (fdcInfo__AcpiBios) {
# 549 "floppy_simpl3.cil.c"
      if (fdcInfo__AcpiFdiSupported) {
        {
# 551 "floppy_simpl3.cil.c"
        ntStatus = FlAcpiConfigureFloppy(disketteExtension, fdcInfo);
        }
# 553 "floppy_simpl3.cil.c"
        if (disketteExtension__DriveType == 4) {
# 554 "floppy_simpl3.cil.c"
# 554 "floppy_simpl3.cil.c"

        }
      } else {
        goto _L;
      }
    } else {
      _L:
# 563 "floppy_simpl3.cil.c"
      if (disketteExtension__DriveType == 4) {
# 564 "floppy_simpl3.cil.c"
# 564 "floppy_simpl3.cil.c"

      }
# 568 "floppy_simpl3.cil.c"
      InterfaceType = 0;
      {
# 570 "floppy_simpl3.cil.c"
      while (1) {
        while_0_continue: ;
# 572 "floppy_simpl3.cil.c"
        if (InterfaceType >= MaximumInterfaceType) {
          goto while_1_break;
        }
        {
# 578 "floppy_simpl3.cil.c"
        fdcInfo__BusType = InterfaceType;
# 579 "floppy_simpl3.cil.c"
        ntStatus = IoQueryDeviceDescription(fdcInfo__BusType, fdcInfo__BusNumber,
                                            Dc, fdcInfo__ControllerNumber, Fp, fdcInfo__PeripheralNumber,
                                            FlConfigCallBack, disketteExtension);
        }
# 583 "floppy_simpl3.cil.c"
        if (ntStatus >= 0) {
          goto while_1_break;
        }
# 588 "floppy_simpl3.cil.c"
        InterfaceType ++;
      }
      while_0_break: ;
      }
      while_1_break: ;
    }
# 593 "floppy_simpl3.cil.c"
    if (ntStatus >= 0) {
# 594 "floppy_simpl3.cil.c"
      if (KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86 != 0) {
# 595 "floppy_simpl3.cil.c"
        disketteExtension__DeviceUnit = fdcInfo__UnitNumber;
# 596 "floppy_simpl3.cil.c"

      } else {
# 598 "floppy_simpl3.cil.c"
        disketteExtension__DeviceUnit = fdcInfo__PeripheralNumber;
# 599 "floppy_simpl3.cil.c"
# 599 "floppy_simpl3.cil.c"

      }
      {
# 602 "floppy_simpl3.cil.c"
      pnpStatus = IoRegisterDeviceInterface(disketteExtension__UnderlyingPDO, MOUNTDEV_MOUNTED_DEVICE_GUID,
                                            0, disketteExtension__InterfaceString);
      }
# 605 "floppy_simpl3.cil.c"
      if (pnpStatus >= 0) {
        {
# 607 "floppy_simpl3.cil.c"
        pnpStatus = IoSetDeviceInterfaceState(disketteExtension__InterfaceString,
                                              1);
        }
      }
# 613 "floppy_simpl3.cil.c"
      disketteExtension__IsStarted = 1;
# 614 "floppy_simpl3.cil.c"
      disketteExtension__HoldNewRequests = 0;
    }
  }
  {
# 622 "floppy_simpl3.cil.c"
  Irp__IoStatus__Status = ntStatus;
# 623 "floppy_simpl3.cil.c"
  myStatus = ntStatus;
# 624 "floppy_simpl3.cil.c"
  IofCompleteRequest(Irp, 0);
  }
# 626 "floppy_simpl3.cil.c"
  return (ntStatus);
}
}
# 629 "floppy_simpl3.cil.c"
int FloppyPnpComplete(int DeviceObject , int Irp , int Context )
{

  {
  {
# 634 "floppy_simpl3.cil.c"
  KeSetEvent(Context, 1, 0);
  }
# 636 "floppy_simpl3.cil.c"
  return (-1073741802);
}
}
# 639 "floppy_simpl3.cil.c"
int FlFdcDeviceIo(int DeviceObject , int Ioctl , int Data )
{ int ntStatus ;
  int irp ;
  int irpStack ;
  int doneEvent = __VERIFIER_nondet_int() ;
  int ioStatus = __VERIFIER_nondet_int() ;
  int irp__Tail__Overlay__CurrentStackLocation = __VERIFIER_nondet_int() ;
  int irpStack__Parameters__DeviceIoControl__Type3InputBuffer ;
  long __cil_tmp11 ;

  {
  {
# 650 "floppy_simpl3.cil.c"
  irp = IoBuildDeviceIoControlRequest(Ioctl, DeviceObject, 0, 0, 0, 0, 1, doneEvent,
                                      ioStatus);
  }
# 653 "floppy_simpl3.cil.c"
  if (irp == 0) {
# 654 "floppy_simpl3.cil.c"
    return (-1073741670);
  }
  {
# 659 "floppy_simpl3.cil.c"
  irpStack = irp__Tail__Overlay__CurrentStackLocation - 1;
# 660 "floppy_simpl3.cil.c"
  irpStack__Parameters__DeviceIoControl__Type3InputBuffer = Data;
# 661 "floppy_simpl3.cil.c"
  ntStatus = IofCallDriver(DeviceObject, irp);
  }
  {
# 663 "floppy_simpl3.cil.c"
  __cil_tmp11 = (long )ntStatus;
# 663 "floppy_simpl3.cil.c"
  if (__cil_tmp11 == 259L) {
    {
# 665 "floppy_simpl3.cil.c"
    KeWaitForSingleObject(doneEvent, Suspended, KernelMode, 0, 0);
# 666 "floppy_simpl3.cil.c"
    ntStatus = myStatus;
    }
  }
  }
# 671 "floppy_simpl3.cil.c"
  return (ntStatus);
}
}
# 674 "floppy_simpl3.cil.c"
void FloppyProcessQueuedRequests(int DisketteExtension )
{

  {
# 678 "floppy_simpl3.cil.c"
  return;
}
}
# 681 "floppy_simpl3.cil.c"
void stub_driver_init(void)
{

  {
# 685 "floppy_simpl3.cil.c"
  s = NP;
# 686 "floppy_simpl3.cil.c"
  pended = 0;
# 687 "floppy_simpl3.cil.c"
  compRegistered = 0;
# 688 "floppy_simpl3.cil.c"
  lowerDriverReturn = 0;
# 689 "floppy_simpl3.cil.c"
  setEventCalled = 0;
# 690 "floppy_simpl3.cil.c"
  customIrp = 0;
# 691 "floppy_simpl3.cil.c"
  return;
}
}
# 694 "floppy_simpl3.cil.c"
int main(void)
{ int status ;
  int irp = __VERIFIER_nondet_int() ;
  int pirp ;
  int pirp__IoStatus__Status ;
  int irp_choice = __VERIFIER_nondet_int() ;
  int devobj = __VERIFIER_nondet_int() ;
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
 SKIP2 = 0;
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
# 705 "floppy_simpl3.cil.c"
  status = 0;
# 706 "floppy_simpl3.cil.c"
  pirp = irp;
# 707 "floppy_simpl3.cil.c"
  _BLAST_init();
  }
# 709 "floppy_simpl3.cil.c"
  if (status >= 0) {
# 710 "floppy_simpl3.cil.c"
    s = NP;
# 711 "floppy_simpl3.cil.c"
    customIrp = 0;
# 712 "floppy_simpl3.cil.c"
    setEventCalled = customIrp;
# 713 "floppy_simpl3.cil.c"
    lowerDriverReturn = setEventCalled;
# 714 "floppy_simpl3.cil.c"
    compRegistered = lowerDriverReturn;
# 715 "floppy_simpl3.cil.c"
    pended = compRegistered;
# 716 "floppy_simpl3.cil.c"
    pirp__IoStatus__Status = 0;
# 717 "floppy_simpl3.cil.c"
    myStatus = 0;
# 718 "floppy_simpl3.cil.c"
    if (irp_choice == 0) {
# 719 "floppy_simpl3.cil.c"
      pirp__IoStatus__Status = -1073741637;
# 720 "floppy_simpl3.cil.c"
      myStatus = -1073741637;
    }
    {
# 725 "floppy_simpl3.cil.c"
    stub_driver_init();
    }
    {
# 727 "floppy_simpl3.cil.c"
# 727 "floppy_simpl3.cil.c"
    if (status < 0) {
# 728 "floppy_simpl3.cil.c"
      return (-1);
    }
    }
# 732 "floppy_simpl3.cil.c"
    int tmp_ndt_1;
    tmp_ndt_1 = __VERIFIER_nondet_int();
    if (tmp_ndt_1 == 3) {
      goto switch_2_3;
    } else {
      goto switch_2_default;
# 737 "floppy_simpl3.cil.c"
      if (0) {
        switch_2_3:
        {
# 740 "floppy_simpl3.cil.c"
        status = FloppyPnp(devobj, pirp);
        }
        goto switch_2_break;
        switch_2_default: ;
# 744 "floppy_simpl3.cil.c"
        return (-1);
      } else {
        switch_2_break: ;
      }
    }
  }
# 753 "floppy_simpl3.cil.c"
  if (pended == 1) {
# 754 "floppy_simpl3.cil.c"
    if (s == NP) {
# 755 "floppy_simpl3.cil.c"
      s = NP;
    } else {
      goto _L___2;
    }
  } else {
    _L___2:
# 761 "floppy_simpl3.cil.c"
    if (pended == 1) {
# 762 "floppy_simpl3.cil.c"
      if (s == MPR3) {
# 763 "floppy_simpl3.cil.c"
        s = MPR3;
      } else {
        goto _L___1;
      }
    } else {
      _L___1:
# 769 "floppy_simpl3.cil.c"
      if (s != UNLOADED) {
# 772 "floppy_simpl3.cil.c"
        if (status != -1) {
# 775 "floppy_simpl3.cil.c"
          if (s != SKIP2) {
# 776 "floppy_simpl3.cil.c"
            if (s != IPC) {
# 777 "floppy_simpl3.cil.c"
              if (s != DC) {
                {
# 779 "floppy_simpl3.cil.c"
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
# 789 "floppy_simpl3.cil.c"
            if (pended == 1) {
# 790 "floppy_simpl3.cil.c"
              if (status != 259) {
# 791 "floppy_simpl3.cil.c"
                status = 0;
              }
            } else {
# 796 "floppy_simpl3.cil.c"
              if (s == DC) {
# 797 "floppy_simpl3.cil.c"
                if (status == 259) {
                  {
# 799 "floppy_simpl3.cil.c"
                  errorFn();
                  }
                }
              } else {
# 805 "floppy_simpl3.cil.c"
                if (status != lowerDriverReturn) {
                  {
# 807 "floppy_simpl3.cil.c"
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
# 819 "floppy_simpl3.cil.c"
  status = 0;
# 820 "floppy_simpl3.cil.c"
  return (status);
}
}
# 823 "floppy_simpl3.cil.c"
int IoBuildDeviceIoControlRequest(int IoControlCode , int DeviceObject , int InputBuffer ,
                                  int InputBufferLength , int OutputBuffer , int OutputBufferLength ,
                                  int InternalDeviceIoControl , int Event , int IoStatusBlock )
{
  int malloc = __VERIFIER_nondet_int() ;

  {
# 830 "floppy_simpl3.cil.c"
  customIrp = 1;
# 831 "floppy_simpl3.cil.c"
  int tmp_ndt_2;
  tmp_ndt_2 = __VERIFIER_nondet_int();
  if (tmp_ndt_2 == 0) {
    goto switch_3_0;
  } else {
    goto switch_3_default;
# 836 "floppy_simpl3.cil.c"
    if (0) {
      switch_3_0:
# 838 "floppy_simpl3.cil.c"
      return (malloc);
      switch_3_default: ;
# 840 "floppy_simpl3.cil.c"
      return (0);
    } else {

    }
  }
}
}
# 848 "floppy_simpl3.cil.c"
int IoDeleteSymbolicLink(int SymbolicLinkName )
{

  {
# 852 "floppy_simpl3.cil.c"
  int tmp_ndt_3;
  tmp_ndt_3 = __VERIFIER_nondet_int();
  if (tmp_ndt_3 == 0) {
    goto switch_4_0;
  } else {
    goto switch_4_default;
# 857 "floppy_simpl3.cil.c"
    if (0) {
      switch_4_0:
# 859 "floppy_simpl3.cil.c"
      return (0);
      switch_4_default: ;
# 861 "floppy_simpl3.cil.c"
      return (-1073741823);
    } else {

    }
  }
}
}
# 869 "floppy_simpl3.cil.c"
int IoQueryDeviceDescription(int BusType , int BusNumber , int ControllerType , int ControllerNumber ,
                             int PeripheralType , int PeripheralNumber , int CalloutRoutine ,
                             int Context )
{

  {
# 875 "floppy_simpl3.cil.c"
  int tmp_ndt_4;
  tmp_ndt_4 = __VERIFIER_nondet_int();
  if (tmp_ndt_4 == 0) {
    goto switch_5_0;
  } else {
    goto switch_5_default;
# 880 "floppy_simpl3.cil.c"
    if (0) {
      switch_5_0:
# 882 "floppy_simpl3.cil.c"
      return (0);
      switch_5_default: ;
# 884 "floppy_simpl3.cil.c"
      return (-1073741823);
    } else {

    }
  }
}
}
# 892 "floppy_simpl3.cil.c"
int IoRegisterDeviceInterface(int PhysicalDeviceObject , int InterfaceClassGuid ,
                              int ReferenceString , int SymbolicLinkName )
{

  {
# 897 "floppy_simpl3.cil.c"
  int tmp_ndt_5;
  tmp_ndt_5 = __VERIFIER_nondet_int();
  if (tmp_ndt_5 == 0) {
    goto switch_6_0;
  } else {
    goto switch_6_default;
# 902 "floppy_simpl3.cil.c"
    if (0) {
      switch_6_0:
# 904 "floppy_simpl3.cil.c"
      return (0);
      switch_6_default: ;
# 906 "floppy_simpl3.cil.c"
      return (-1073741808);
    } else {

    }
  }
}
}
# 914 "floppy_simpl3.cil.c"
int IoSetDeviceInterfaceState(int SymbolicLinkName , int Enable )
{

  {
# 918 "floppy_simpl3.cil.c"
  int tmp_ndt_6;
  tmp_ndt_6 = __VERIFIER_nondet_int();
  if (tmp_ndt_6 == 0) {
    goto switch_7_0;
  } else {
    goto switch_7_default;
# 923 "floppy_simpl3.cil.c"
    if (0) {
      switch_7_0:
# 925 "floppy_simpl3.cil.c"
      return (0);
      switch_7_default: ;
# 927 "floppy_simpl3.cil.c"
      return (-1073741823);
    } else {

    }
  }
}
}
# 935 "floppy_simpl3.cil.c"
void stubMoreProcessingRequired(void)
{

  {
# 939 "floppy_simpl3.cil.c"
  if (s == NP) {
# 940 "floppy_simpl3.cil.c"
    s = MPR1;
  } else {
    {
# 943 "floppy_simpl3.cil.c"
    errorFn();
    }
  }
# 946 "floppy_simpl3.cil.c"
  return;
}
}
# 949 "floppy_simpl3.cil.c"
int IofCallDriver(int DeviceObject , int Irp )
{
  int returnVal2 ;
  int compRetStatus1 ;
  int lcontext = __VERIFIER_nondet_int() ;
  unsigned long __cil_tmp7 ;

  {
# 956 "floppy_simpl3.cil.c"
  if (compRegistered) {
    {
# 958 "floppy_simpl3.cil.c"
    compRetStatus1 = FloppyPnpComplete(DeviceObject, Irp, lcontext);
    }
    {
# 960 "floppy_simpl3.cil.c"
    __cil_tmp7 = (unsigned long )compRetStatus1;
# 960 "floppy_simpl3.cil.c"
    if (__cil_tmp7 == -1073741802) {
      {
# 962 "floppy_simpl3.cil.c"
      stubMoreProcessingRequired();
      }
    }
    }
  }
# 970 "floppy_simpl3.cil.c"
  int tmp_ndt_7;
  tmp_ndt_7 = __VERIFIER_nondet_int();
  if (tmp_ndt_7 == 0) {
    goto switch_8_0;
  } else {
# 973 "floppy_simpl3.cil.c"
    int tmp_ndt_8;
    tmp_ndt_8 = __VERIFIER_nondet_int();
    if (tmp_ndt_8 == 1) {
      goto switch_8_1;
    } else {
      goto switch_8_default;
# 978 "floppy_simpl3.cil.c"
      if (0) {
        switch_8_0:
# 980 "floppy_simpl3.cil.c"
        returnVal2 = 0;
        goto switch_8_break;
        switch_8_1:
# 983 "floppy_simpl3.cil.c"
        returnVal2 = -1073741823;
        goto switch_8_break;
        switch_8_default:
# 986 "floppy_simpl3.cil.c"
        returnVal2 = 259;
        goto switch_8_break;
      } else {
        switch_8_break: ;
      }
    }
  }
# 994 "floppy_simpl3.cil.c"
  if (s == NP) {
# 995 "floppy_simpl3.cil.c"
    s = IPC;
# 996 "floppy_simpl3.cil.c"
    lowerDriverReturn = returnVal2;
  } else {
# 998 "floppy_simpl3.cil.c"
    if (s == MPR1) {
# 999 "floppy_simpl3.cil.c"
      if (returnVal2 == 259) {
# 1000 "floppy_simpl3.cil.c"
        s = MPR3;
# 1001 "floppy_simpl3.cil.c"
        lowerDriverReturn = returnVal2;
      } else {
# 1003 "floppy_simpl3.cil.c"
        s = NP;
# 1004 "floppy_simpl3.cil.c"
        lowerDriverReturn = returnVal2;
      }
    } else {
# 1007 "floppy_simpl3.cil.c"
      if (s == SKIP1) {
# 1008 "floppy_simpl3.cil.c"
        s = SKIP2;
# 1009 "floppy_simpl3.cil.c"
        lowerDriverReturn = returnVal2;
      } else {
        {
# 1012 "floppy_simpl3.cil.c"
        errorFn();
        }
      }
    }
  }
# 1017 "floppy_simpl3.cil.c"
  return (returnVal2);
}
}
# 1020 "floppy_simpl3.cil.c"
void IofCompleteRequest(int Irp , int PriorityBoost )
{

  {
# 1024 "floppy_simpl3.cil.c"
  if (s == NP) {
# 1025 "floppy_simpl3.cil.c"
    s = DC;
  } else {
    {
# 1028 "floppy_simpl3.cil.c"
    errorFn();
    }
  }
# 1031 "floppy_simpl3.cil.c"
  return;
}
}
# 1034 "floppy_simpl3.cil.c"
int KeSetEvent(int Event , int Increment , int Wait )
{ int l = __VERIFIER_nondet_int() ;

  {
# 1038 "floppy_simpl3.cil.c"
  setEventCalled = 1;
# 1039 "floppy_simpl3.cil.c"
  return (l);
}
}
# 1042 "floppy_simpl3.cil.c"
int KeWaitForSingleObject(int Object , int WaitReason , int WaitMode , int Alertable ,
                          int Timeout )
{

  {
# 1047 "floppy_simpl3.cil.c"
  if (s == MPR3) {
# 1048 "floppy_simpl3.cil.c"
    if (setEventCalled == 1) {
# 1049 "floppy_simpl3.cil.c"
      s = NP;
# 1050 "floppy_simpl3.cil.c"
      setEventCalled = 0;
    } else {
      goto _L;
    }
  } else {
    _L:
# 1056 "floppy_simpl3.cil.c"
    if (customIrp == 1) {
# 1057 "floppy_simpl3.cil.c"
      s = NP;
# 1058 "floppy_simpl3.cil.c"
      customIrp = 0;
    } else {
# 1060 "floppy_simpl3.cil.c"
      if (s == MPR3) {
        {
# 1062 "floppy_simpl3.cil.c"
        errorFn();
        }
      }
    }
  }
# 1069 "floppy_simpl3.cil.c"
  int tmp_ndt_9;
  tmp_ndt_9 = __VERIFIER_nondet_int();
  if (tmp_ndt_9 == 0) {
    goto switch_9_0;
  } else {
    goto switch_9_default;
# 1074 "floppy_simpl3.cil.c"
    if (0) {
      switch_9_0:
# 1076 "floppy_simpl3.cil.c"
      return (0);
      switch_9_default: ;
# 1078 "floppy_simpl3.cil.c"
      return (-1073741823);
    } else {

    }
  }
}
}
# 1086 "floppy_simpl3.cil.c"
int ObReferenceObjectByHandle(int Handle , int DesiredAccess , int ObjectType , int AccessMode ,
                              int Object , int HandleInformation )
{

  {
# 1091 "floppy_simpl3.cil.c"
  int tmp_ndt_10;
  tmp_ndt_10 = __VERIFIER_nondet_int();
  if (tmp_ndt_10 == 0) {
    goto switch_10_0;
  } else {
    goto switch_10_default;
# 1096 "floppy_simpl3.cil.c"
    if (0) {
      switch_10_0:
# 1098 "floppy_simpl3.cil.c"
      return (0);
      switch_10_default: ;
# 1100 "floppy_simpl3.cil.c"
      return (-1073741823);
    } else {

    }
  }
}
}
# 1108 "floppy_simpl3.cil.c"
int PsCreateSystemThread(int ThreadHandle , int DesiredAccess , int ObjectAttributes ,
                         int ProcessHandle , int ClientId , int StartRoutine , int StartContext )
{

  {
# 1113 "floppy_simpl3.cil.c"
  int tmp_ndt_11;
  tmp_ndt_11 = __VERIFIER_nondet_int();
  if (tmp_ndt_11 == 0) {
    goto switch_11_0;
  } else {
    goto switch_11_default;
# 1118 "floppy_simpl3.cil.c"
    if (0) {
      switch_11_0:
# 1120 "floppy_simpl3.cil.c"
      return (0);
      switch_11_default: ;
# 1122 "floppy_simpl3.cil.c"
      return (-1073741823);
    } else {

    }
  }
}
}
# 1130 "floppy_simpl3.cil.c"
int ZwClose(int Handle )
{

  {
# 1134 "floppy_simpl3.cil.c"
  int tmp_ndt_12;
  tmp_ndt_12 = __VERIFIER_nondet_int();
  if (tmp_ndt_12 == 0) {
    goto switch_12_0;
  } else {
    goto switch_12_default;
# 1139 "floppy_simpl3.cil.c"
    if (0) {
      switch_12_0:
# 1141 "floppy_simpl3.cil.c"
      return (0);
      switch_12_default: ;
# 1143 "floppy_simpl3.cil.c"
      return (-1073741823);
    } else {

    }
  }
}
}
# 1151 "floppy_simpl3.cil.c"
int FloppyCreateClose(int DeviceObject , int Irp )
{ int Irp__IoStatus__Status ;
  int Irp__IoStatus__Information ;

  {
  {
# 1157 "floppy_simpl3.cil.c"
  myStatus = 0;
# 1158 "floppy_simpl3.cil.c"
  Irp__IoStatus__Status = 0;
# 1159 "floppy_simpl3.cil.c"
  Irp__IoStatus__Information = 1;
# 1160 "floppy_simpl3.cil.c"
  IofCompleteRequest(Irp, 0);
  }
# 1162 "floppy_simpl3.cil.c"
  return (0);
}
}
