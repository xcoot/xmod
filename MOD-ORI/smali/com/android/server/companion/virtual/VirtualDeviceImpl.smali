.class final Lcom/android/server/companion/virtual/VirtualDeviceImpl;
.super Landroid/companion/virtual/IVirtualDevice$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

.field public final mActivityPolicyExemptions:Ljava/util/Set;

.field public final mAppToken:Landroid/os/IBinder;

.field public final mAssociationInfo:Landroid/companion/AssociationInfo;

.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mBaseVirtualDisplayFlags:I

.field public final mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

.field public final mContext:Landroid/content/Context;

.field public mDefaultShowPointerIcon:Z

.field public final mDeviceId:I

.field public final mDevicePolicies:Landroid/util/SparseIntArray;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mInputController:Lcom/android/server/companion/virtual/InputController;

.field public final mIntentInterceptors:Ljava/util/Map;

.field public mLocaleList:Landroid/os/LocaleList;

.field public final mOwnerPackageName:Ljava/lang/String;

.field public final mOwnerUid:I

.field public final mParams:Landroid/companion/virtual/VirtualDeviceParams;

.field public final mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

.field public final mPermissionDialogComponent:Landroid/content/ComponentName;

.field public final mPersistentDeviceId:Ljava/lang/String;

.field public final mPublicVirtualDeviceObject:Landroid/companion/virtual/VirtualDevice;

.field public final mRunningAppsChangedCallback:Ljava/util/function/Consumer;

.field public final mSensorController:Lcom/android/server/companion/virtual/SensorController;

.field public final mService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

.field public final mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

.field public mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

.field public final mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

.field public final mVirtualDeviceLock:Ljava/lang/Object;

.field public final mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

.field public final mVirtualDisplays:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceLog;Landroid/os/IBinder;Landroid/content/AttributionSource;ILcom/android/server/companion/virtual/CameraAccessController;Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$$ExternalSyntheticLambda0;Landroid/companion/virtual/VirtualDeviceParams;)V
    .locals 17

    .line 1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v15

    .line 2
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->virtualCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/companion/virtualdevice/flags/Flags;->virtualCameraServiceDiscovery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->nativeVirtualCameraServiceBuildFlagEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    const/4 v2, 0x5

    move-object/from16 v14, p13

    .line 5
    invoke-virtual {v14, v2}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicy(I)I

    move-result v2

    move/from16 v7, p7

    .line 6
    invoke-direct {v0, v1, v2, v7}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;-><init>(Landroid/companion/virtualcamera/IVirtualCameraService;II)V

    move-object/from16 v16, v0

    goto :goto_0

    :cond_0
    move/from16 v7, p7

    move-object/from16 v14, p13

    move-object/from16 v16, v1

    :goto_0
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    .line 7
    invoke-direct/range {v0 .. v16}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;-><init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceLog;Landroid/os/IBinder;Landroid/content/AttributionSource;ILcom/android/server/companion/virtual/InputController;Lcom/android/server/companion/virtual/CameraAccessController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;Landroid/hardware/display/DisplayManagerGlobal;Lcom/android/server/companion/virtual/camera/VirtualCameraController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceLog;Landroid/os/IBinder;Landroid/content/AttributionSource;ILcom/android/server/companion/virtual/InputController;Lcom/android/server/companion/virtual/CameraAccessController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;Landroid/hardware/display/DisplayManagerGlobal;Lcom/android/server/companion/virtual/camera/VirtualCameraController;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p7

    move-object/from16 v2, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p14

    .line 8
    invoke-static/range {p1 .. p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/companion/virtual/IVirtualDevice$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 9
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 10
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 11
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    const/4 v12, 0x1

    .line 12
    iput-boolean v12, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    const/4 v13, 0x0

    .line 13
    iput-object v13, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    .line 14
    iput-object v7, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    .line 15
    invoke-virtual/range {p6 .. p6}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    move-object/from16 v4, p6

    .line 16
    iput-object v4, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 17
    invoke-virtual/range {p6 .. p6}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v6, 0x0

    .line 18
    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v3, p2

    .line 19
    iput-object v3, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v14

    .line 21
    const-string/jumbo v15, "companion:"

    .line 22
    invoke-static {v14, v15}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 23
    iput-object v15, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPersistentDeviceId:Ljava/lang/String;

    move-object/from16 v14, p3

    .line 24
    iput-object v14, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    move-object/from16 v14, p10

    .line 25
    iput-object v14, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    move-object/from16 v14, p11

    .line 26
    iput-object v14, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-object/from16 v14, p12

    .line 27
    iput-object v14, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    move-object/from16 v14, p13

    .line 28
    iput-object v14, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRunningAppsChangedCallback:Ljava/util/function/Consumer;

    .line 29
    invoke-virtual/range {p6 .. p6}, Landroid/content/AttributionSource;->getUid()I

    move-result v14

    iput v14, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    .line 30
    iput v9, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    .line 31
    iput-object v8, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAppToken:Landroid/os/IBinder;

    .line 32
    iput-object v11, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 33
    invoke-virtual/range {p14 .. p14}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicies()Landroid/util/SparseIntArray;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    move-object/from16 v6, p15

    .line 34
    iput-object v6, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

    .line 35
    const-class v6, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v6, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v2, :cond_0

    .line 36
    new-instance v2, Lcom/android/server/companion/virtual/InputController;

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    const-class v13, Landroid/view/WindowManager;

    .line 38
    invoke-virtual {v1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/view/WindowManager;

    .line 39
    new-instance v1, Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-direct {v1}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;-><init>()V

    new-instance v13, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;

    invoke-direct {v13, v6}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;-><init>(Landroid/os/Handler;)V

    move/from16 v20, v14

    move-object v14, v2

    move-object/from16 p15, v15

    move-object v15, v1

    move-object/from16 v16, v6

    move-object/from16 v18, p6

    move-object/from16 v19, v13

    invoke-direct/range {v14 .. v19}, Lcom/android/server/companion/virtual/InputController;-><init>(Lcom/android/server/companion/virtual/InputController$NativeWrapper;Landroid/os/Handler;Landroid/view/WindowManager;Landroid/content/AttributionSource;Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;)V

    .line 40
    iput-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    goto :goto_0

    :cond_0
    move/from16 v20, v14

    move-object/from16 p15, v15

    .line 41
    iput-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 42
    :goto_0
    new-instance v13, Lcom/android/server/companion/virtual/SensorController;

    .line 43
    invoke-virtual/range {p14 .. p14}, Landroid/companion/virtual/VirtualDeviceParams;->getVirtualSensorCallback()Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    move-result-object v6

    invoke-virtual/range {p14 .. p14}, Landroid/companion/virtual/VirtualDeviceParams;->getVirtualSensorConfigs()Ljava/util/List;

    move-result-object v14

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v3, p7

    move-object/from16 v4, p6

    move-object v15, v5

    move-object v5, v6

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/SensorController;-><init>(Landroid/companion/virtual/IVirtualDevice;ILandroid/content/AttributionSource;Landroid/companion/virtual/sensor/IVirtualSensorCallback;Ljava/util/List;)V

    iput-object v13, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    .line 44
    iput-object v10, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    if-eqz v10, :cond_2

    .line 45
    iget-object v1, v10, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverLock:Ljava/lang/Object;

    .line 46
    monitor-enter v1

    .line 47
    :try_start_0
    iget v2, v10, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    if-nez v2, :cond_1

    .line 48
    iget-object v2, v10, Lcom/android/server/companion/virtual/CameraAccessController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, v10, Lcom/android/server/companion/virtual/CameraAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 49
    :cond_1
    :goto_1
    iget v2, v10, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    add-int/2addr v2, v12

    iput v2, v10, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    .line 50
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 51
    :cond_2
    :goto_3
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->streamPermissions()Z

    move-result v1

    if-nez v1, :cond_3

    .line 52
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 56
    iput-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPermissionDialogComponent:Landroid/content/ComponentName;

    :goto_4
    move-object/from16 v1, p16

    goto :goto_5

    :cond_3
    const/4 v1, 0x0

    .line 57
    iput-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPermissionDialogComponent:Landroid/content/ComponentName;

    goto :goto_4

    .line 58
    :goto_5
    iput-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    const/4 v1, 0x0

    .line 59
    :try_start_1
    invoke-interface {v8, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 62
    :try_start_2
    invoke-static {}, Lcom/android/server/companion/virtual/Flags;->dumpHistory()Z

    .line 63
    new-instance v3, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object/from16 p8, v3

    move/from16 p9, v6

    move/from16 p10, p7

    move/from16 p11, v20

    move-wide/from16 p12, v4

    invoke-direct/range {p8 .. p13}, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;-><init>(IIIJ)V

    .line 64
    iget-object v4, v7, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 65
    iget-object v3, v7, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_4

    .line 66
    iget-object v3, v7, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    :cond_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmPublicApis()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 69
    new-instance v1, Landroid/companion/virtual/VirtualDevice;

    .line 70
    invoke-virtual/range {p14 .. p14}, Landroid/companion/virtual/VirtualDeviceParams;->getName()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 p1, v1

    move-object/from16 p2, p0

    move/from16 p3, p7

    move-object/from16 p4, p15

    move-object/from16 p5, v2

    move-object/from16 p6, v3

    .line 72
    invoke-direct/range {p1 .. p6}, Landroid/companion/virtual/VirtualDevice;-><init>(Landroid/companion/virtual/IVirtualDevice;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPublicVirtualDeviceObject:Landroid/companion/virtual/VirtualDevice;

    goto :goto_6

    .line 73
    :cond_5
    new-instance v1, Landroid/companion/virtual/VirtualDevice;

    .line 74
    invoke-virtual/range {p14 .. p14}, Landroid/companion/virtual/VirtualDeviceParams;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p15

    invoke-direct {v1, v0, v9, v3, v2}, Landroid/companion/virtual/VirtualDevice;-><init>(Landroid/companion/virtual/IVirtualDevice;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPublicVirtualDeviceObject:Landroid/companion/virtual/VirtualDevice;

    .line 75
    :goto_6
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->dynamicPolicy()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 76
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x3

    .line 77
    invoke-virtual {v11, v2}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicy(I)I

    move-result v2

    if-nez v2, :cond_6

    .line 78
    invoke-virtual/range {p14 .. p14}, Landroid/companion/virtual/VirtualDeviceParams;->getBlockedActivities()Ljava/util/Set;

    move-result-object v2

    goto :goto_7

    .line 79
    :cond_6
    invoke-virtual/range {p14 .. p14}, Landroid/companion/virtual/VirtualDeviceParams;->getAllowedActivities()Ljava/util/Set;

    move-result-object v2

    :goto_7
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    goto :goto_9

    .line 80
    :cond_7
    invoke-virtual/range {p14 .. p14}, Landroid/companion/virtual/VirtualDeviceParams;->getDefaultActivityPolicy()I

    move-result v1

    if-nez v1, :cond_8

    .line 81
    invoke-virtual/range {p14 .. p14}, Landroid/companion/virtual/VirtualDeviceParams;->getBlockedActivities()Ljava/util/Set;

    move-result-object v1

    goto :goto_8

    .line 82
    :cond_8
    invoke-virtual/range {p14 .. p14}, Landroid/companion/virtual/VirtualDeviceParams;->getAllowedActivities()Ljava/util/Set;

    move-result-object v1

    :goto_8
    iput-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 83
    :goto_9
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->consistentDisplayFlags()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x61c9

    goto :goto_a

    :cond_9
    const/16 v1, 0x6140

    .line 84
    :goto_a
    invoke-virtual/range {p14 .. p14}, Landroid/companion/virtual/VirtualDeviceParams;->getLockState()I

    move-result v2

    if-ne v2, v12, :cond_a

    or-int/lit16 v1, v1, 0x1000

    .line 85
    :cond_a
    iput v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mBaseVirtualDisplayFlags:I

    .line 86
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmCustomIme()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p14 .. p14}, Landroid/companion/virtual/VirtualDeviceParams;->getInputMethodComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 87
    invoke-virtual/range {p14 .. p14}, Landroid/companion/virtual/VirtualDeviceParams;->getInputMethodComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "VirtualDeviceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting custom input method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as default for virtual device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v9, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V

    :cond_b
    return-void

    :catchall_1
    move-exception v0

    .line 90
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    throw v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 92
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getTargetDisplayIdForInput(I)I
    .locals 2

    .line 1
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->interactiveScreenMirror()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdToMirror(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, -0x1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move p0, v0

    .line 25
    :goto_0
    return p0
.end method

.method private static native nativeVirtualCameraServiceBuildFlagEnabled()Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public final addActivityPolicyExemption(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->addActivityPolicyExemption_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 33
    .line 34
    iget-object v3, v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    :try_start_1
    iget-object v2, v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 38
    .line 39
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    monitor-exit v3

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    throw p0

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    throw p0
.end method

.method public final binderDied()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->close()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final checkVirtualInputDeviceDisplayIdAssociation(I)V
    .locals 3

    .line 1
    const-string v0, "Cannot create a virtual input device for display "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "android.permission.INJECT_EVENTS"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    monitor-exit v1

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " which not associated with this virtual device"

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final close()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->close_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    .line 7
    .line 8
    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    iget-object v3, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    monitor-exit v2

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto/16 :goto_a

    .line 23
    .line 24
    :cond_0
    iget-object v3, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAppsOnVirtualDevices:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 27
    .line 28
    .line 29
    iget-object v3, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 32
    .line 33
    .line 34
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmPublicApis()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceListeners:Landroid/os/RemoteCallbackList;

    .line 42
    .line 43
    new-instance v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-direct {v3, v1, v4}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .line 53
    .line 54
    const-string v3, "android.companion.virtual.action.VIRTUAL_DEVICE_REMOVED"

    .line 55
    .line 56
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v3, "android.companion.virtual.extra.VIRTUAL_DEVICE_ID"

    .line 60
    .line 61
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const/high16 v1, 0x40000000    # 2.0f

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 78
    .line 79
    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->persistentDeviceIdApi()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_3

    .line 87
    .line 88
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 91
    :try_start_2
    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_2

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const-class v5, Landroid/companion/CompanionDeviceManager;

    .line 104
    .line 105
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Landroid/companion/CompanionDeviceManager;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mCdmAssociationListener:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$1;

    .line 112
    .line 113
    invoke-virtual {v2, v0}, Landroid/companion/CompanionDeviceManager;->removeOnAssociationsChangedListener(Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    monitor-exit v1

    .line 117
    goto :goto_0

    .line 118
    :catchall_1
    move-exception p0

    .line 119
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 120
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 121
    :catchall_2
    move-exception p0

    .line 122
    goto/16 :goto_9

    .line 123
    .line 124
    :cond_3
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    .line 128
    .line 129
    iget v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    .line 130
    .line 131
    iget v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 137
    .line 138
    .line 139
    move-result-wide v7

    .line 140
    :try_start_4
    invoke-static {}, Lcom/android/server/companion/virtual/Flags;->dumpHistory()Z

    .line 141
    .line 142
    .line 143
    new-instance v9, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;

    .line 144
    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 146
    .line 147
    .line 148
    move-result-wide v5

    .line 149
    const/4 v2, 0x1

    .line 150
    move-object v1, v9

    .line 151
    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;-><init>(IIIJ)V

    .line 152
    .line 153
    .line 154
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    .line 155
    .line 156
    invoke-virtual {v1, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    const/16 v2, 0x10

    .line 166
    .line 167
    if-le v1, v2, :cond_4

    .line 168
    .line 169
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 172
    .line 173
    .line 174
    :cond_4
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    .line 176
    .line 177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 178
    .line 179
    .line 180
    move-result-wide v0

    .line 181
    :try_start_5
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 182
    .line 183
    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 184
    :try_start_6
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 185
    .line 186
    const/4 v4, 0x0

    .line 187
    if-eqz v3, :cond_5

    .line 188
    .line 189
    invoke-virtual {v3}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->stopListening()V

    .line 190
    .line 191
    .line 192
    iput-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :catchall_3
    move-exception p0

    .line 196
    goto/16 :goto_7

    .line 197
    .line 198
    :cond_5
    :goto_1
    iput-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    .line 199
    .line 200
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 201
    .line 202
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    new-array v5, v3, [Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 207
    .line 208
    const/4 v6, 0x0

    .line 209
    move v7, v6

    .line 210
    :goto_2
    iget-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 211
    .line 212
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    if-ge v7, v8, :cond_6

    .line 217
    .line 218
    iget-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 219
    .line 220
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    check-cast v8, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 225
    .line 226
    aput-object v8, v5, v7

    .line 227
    .line 228
    add-int/lit8 v7, v7, 0x1

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_6
    iget-object v7, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 232
    .line 233
    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 234
    .line 235
    .line 236
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 237
    move v2, v6

    .line 238
    :goto_3
    if-ge v2, v3, :cond_7

    .line 239
    .line 240
    :try_start_7
    aget-object v7, v5, v2

    .line 241
    .line 242
    iget-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

    .line 243
    .line 244
    iget-object v9, v7, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 245
    .line 246
    invoke-virtual {v8, v9}, Landroid/hardware/display/DisplayManagerGlobal;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 247
    .line 248
    .line 249
    iget-object v8, v7, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 250
    .line 251
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 252
    .line 253
    .line 254
    iget-object v7, v7, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 255
    .line 256
    invoke-virtual {v7, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->unregisterRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V

    .line 257
    .line 258
    .line 259
    add-int/lit8 v2, v2, 0x1

    .line 260
    .line 261
    goto :goto_3

    .line 262
    :catchall_4
    move-exception p0

    .line 263
    goto :goto_8

    .line 264
    :cond_7
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAppToken:Landroid/os/IBinder;

    .line 265
    .line 266
    invoke-interface {v2, p0, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 267
    .line 268
    .line 269
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    .line 270
    .line 271
    if-eqz v2, :cond_9

    .line 272
    .line 273
    iget-object v3, v2, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverLock:Ljava/lang/Object;

    .line 274
    .line 275
    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 276
    :try_start_8
    iget v5, v2, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    .line 277
    .line 278
    add-int/lit8 v5, v5, -0x1

    .line 279
    .line 280
    iput v5, v2, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    .line 281
    .line 282
    if-gtz v5, :cond_8

    .line 283
    .line 284
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/CameraAccessController;->close()V

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :catchall_5
    move-exception p0

    .line 289
    goto :goto_5

    .line 290
    :cond_8
    :goto_4
    monitor-exit v3

    .line 291
    goto :goto_6

    .line 292
    :goto_5
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 293
    :try_start_9
    throw p0

    .line 294
    :cond_9
    :goto_6
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmCustomIme()Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-eqz v2, :cond_a

    .line 299
    .line 300
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 301
    .line 302
    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDeviceParams;->getInputMethodComponent()Landroid/content/ComponentName;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    if-eqz v2, :cond_a

    .line 307
    .line 308
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    iget v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    .line 313
    .line 314
    invoke-virtual {v2, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V

    .line 315
    .line 316
    .line 317
    :cond_a
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 318
    .line 319
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/InputController;->close()V

    .line 320
    .line 321
    .line 322
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    .line 323
    .line 324
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/SensorController;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 325
    .line 326
    .line 327
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    .line 329
    .line 330
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    .line 331
    .line 332
    if-eqz p0, :cond_b

    .line 333
    .line 334
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->close()V

    .line 335
    .line 336
    .line 337
    :cond_b
    return-void

    .line 338
    :goto_7
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 339
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 340
    :goto_8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 341
    .line 342
    .line 343
    throw p0

    .line 344
    :catchall_6
    move-exception p0

    .line 345
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    .line 347
    .line 348
    throw p0

    .line 349
    :goto_9
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 350
    .line 351
    .line 352
    throw p0

    .line 353
    :goto_a
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 354
    throw p0
.end method

.method public final createAndAcquireWakeLockForDisplay(I)Landroid/os/PowerManager$WakeLock;
    .locals 4

    .line 1
    const-string v0, "VirtualDeviceImpl:"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-class v3, Landroid/os/PowerManager;

    .line 10
    .line 11
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/os/PowerManager;

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/16 v3, 0xa

    .line 30
    .line 31
    invoke-virtual {p0, v3, v0, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;I)Landroid/os/PowerManager$WakeLock;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;Landroid/os/IBinder;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualDpad_enforcePermission()V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualDpadConfig;->getAssociatedDisplayId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    :try_start_0
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualDpadConfig;->getInputDeviceName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualDpadConfig;->getVendorId()I

    .line 27
    .line 28
    .line 29
    move-result v11

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualDpadConfig;->getProductId()I

    .line 31
    .line 32
    .line 33
    move-result v12

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualDpadConfig;->getAssociatedDisplayId()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getTargetDisplayIdForInput(I)I

    .line 39
    .line 40
    .line 41
    move-result v13

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const-string v3, "Dpad"

    .line 46
    .line 47
    invoke-static {v3}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v14

    .line 51
    new-instance v15, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;

    .line 52
    .line 53
    const/4 v9, 0x2

    .line 54
    move-object v3, v15

    .line 55
    move-object v4, v0

    .line 56
    move-object v5, v10

    .line 57
    move v6, v11

    .line 58
    move v7, v12

    .line 59
    move-object v8, v14

    .line 60
    invoke-direct/range {v3 .. v9}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x4

    .line 64
    move-object v3, v0

    .line 65
    move-object v5, v10

    .line 66
    move v6, v11

    .line 67
    move v7, v12

    .line 68
    move-object/from16 v8, p2

    .line 69
    .line 70
    move v9, v13

    .line 71
    move-object v10, v14

    .line 72
    move-object v11, v15

    .line 73
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    throw v0
.end method

.method public final createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;Landroid/os/IBinder;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualKeyboard_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getAssociatedDisplayId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getInputDeviceName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getVendorId()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getProductId()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getAssociatedDisplayId()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-static {v6}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getTargetDisplayIdForInput(I)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getLanguageTag()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getLayoutType()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    move-object v6, p2

    .line 49
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/companion/virtual/InputController;->createKeyboard(Ljava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter p2
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getLanguageTag()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    .line 64
    .line 65
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :try_start_3
    throw p0
    :try_end_3
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p0

    .line 76
    :try_start_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public final createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;Landroid/os/IBinder;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualMouse_enforcePermission()V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualMouseConfig;->getAssociatedDisplayId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    :try_start_0
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualMouseConfig;->getInputDeviceName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualMouseConfig;->getVendorId()I

    .line 27
    .line 28
    .line 29
    move-result v11

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualMouseConfig;->getProductId()I

    .line 31
    .line 32
    .line 33
    move-result v12

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualMouseConfig;->getAssociatedDisplayId()I

    .line 35
    .line 36
    .line 37
    move-result v13

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const-string v3, "Mouse"

    .line 42
    .line 43
    invoke-static {v3}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v14

    .line 47
    new-instance v15, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;

    .line 48
    .line 49
    const/4 v9, 0x1

    .line 50
    move-object v3, v15

    .line 51
    move-object v4, v0

    .line 52
    move-object v5, v10

    .line 53
    move v6, v11

    .line 54
    move v7, v12

    .line 55
    move-object v8, v14

    .line 56
    invoke-direct/range {v3 .. v9}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    const/4 v4, 0x2

    .line 60
    move-object v3, v0

    .line 61
    move-object v5, v10

    .line 62
    move v6, v11

    .line 63
    move v7, v12

    .line 64
    move-object/from16 v8, p2

    .line 65
    .line 66
    move v9, v13

    .line 67
    move-object v10, v14

    .line 68
    move-object v11, v15

    .line 69
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    throw v0
.end method

.method public final createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;Landroid/os/IBinder;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualNavigationTouchpad_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getAssociatedDisplayId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getInputDeviceName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getVendorId()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getProductId()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getAssociatedDisplayId()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getTargetDisplayIdForInput(I)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    move-object v8, p2

    .line 49
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/companion/virtual/InputController;->createNavigationTouchpad(IIIIILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;Landroid/os/IBinder;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualStylus_enforcePermission()V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualStylusConfig;->getAssociatedDisplayId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    :try_start_0
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualStylusConfig;->getInputDeviceName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v12

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualStylusConfig;->getVendorId()I

    .line 30
    .line 31
    .line 32
    move-result v13

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualStylusConfig;->getProductId()I

    .line 34
    .line 35
    .line 36
    move-result v14

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualStylusConfig;->getAssociatedDisplayId()I

    .line 38
    .line 39
    .line 40
    move-result v15

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualStylusConfig;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualStylusConfig;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const-string v3, "Stylus"

    .line 53
    .line 54
    invoke-static {v3}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v16

    .line 58
    new-instance v17, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;

    .line 59
    .line 60
    const/4 v11, 0x2

    .line 61
    move-object/from16 v3, v17

    .line 62
    .line 63
    move-object v4, v0

    .line 64
    move-object v5, v12

    .line 65
    move v6, v13

    .line 66
    move v7, v14

    .line 67
    move-object/from16 v8, v16

    .line 68
    .line 69
    invoke-direct/range {v3 .. v11}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;III)V

    .line 70
    .line 71
    .line 72
    const/4 v4, 0x6

    .line 73
    move-object v3, v0

    .line 74
    move-object v5, v12

    .line 75
    move v6, v13

    .line 76
    move v7, v14

    .line 77
    move-object/from16 v8, p2

    .line 78
    .line 79
    move v9, v15

    .line 80
    move-object/from16 v10, v16

    .line 81
    .line 82
    move-object/from16 v11, v17

    .line 83
    .line 84
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    .line 102
    .line 103
    throw v0
.end method

.method public final createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;Landroid/os/IBinder;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualTouchscreen_enforcePermission()V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getAssociatedDisplayId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    :try_start_0
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getInputDeviceName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v12

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getVendorId()I

    .line 27
    .line 28
    .line 29
    move-result v13

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getProductId()I

    .line 31
    .line 32
    .line 33
    move-result v14

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getAssociatedDisplayId()I

    .line 35
    .line 36
    .line 37
    move-result v15

    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const-string v3, "Touchscreen"

    .line 50
    .line 51
    invoke-static {v3}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v16

    .line 55
    new-instance v17, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;

    .line 56
    .line 57
    const/4 v11, 0x0

    .line 58
    move-object/from16 v3, v17

    .line 59
    .line 60
    move-object v4, v0

    .line 61
    move-object v5, v12

    .line 62
    move v6, v13

    .line 63
    move v7, v14

    .line 64
    move-object/from16 v8, v16

    .line 65
    .line 66
    invoke-direct/range {v3 .. v11}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;III)V

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x3

    .line 70
    move-object v3, v0

    .line 71
    move-object v5, v12

    .line 72
    move v6, v13

    .line 73
    move v7, v14

    .line 74
    move-object/from16 v8, p2

    .line 75
    .line 76
    move v9, v15

    .line 77
    move-object/from16 v10, v16

    .line 78
    .line 79
    move-object/from16 v11, v17

    .line 80
    .line 81
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 92
    .line 93
    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    throw v0
.end method

.method public final createWindowPolicyControllerLocked(Ljava/util/Set;)Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->dynamicPolicy()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    :goto_0
    move v8, v4

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    move v8, v3

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams;->getDefaultActivityPolicy()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams;->getDefaultNavigationPolicy()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    move v10, v4

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move v10, v3

    .line 42
    :goto_2
    const/4 v1, 0x2

    .line 43
    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-nez v5, :cond_3

    .line 48
    .line 49
    move/from16 v19, v4

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    move/from16 v19, v3

    .line 53
    .line 54
    :goto_3
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmCustomHome()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    iget-object v3, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/companion/virtual/VirtualDeviceParams;->getHomeComponent()Landroid/content/ComponentName;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    :goto_4
    move-object/from16 v20, v3

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_4
    const/4 v3, 0x0

    .line 70
    goto :goto_4

    .line 71
    :goto_5
    new-instance v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 72
    .line 73
    iget-object v6, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 74
    .line 75
    new-instance v7, Landroid/util/ArraySet;

    .line 76
    .line 77
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    :try_start_0
    iget-object v9, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    const-class v11, Landroid/app/admin/DevicePolicyManager;

    .line 87
    .line 88
    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 93
    .line 94
    iget-object v11, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    const-class v12, Landroid/os/UserManager;

    .line 97
    .line 98
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    check-cast v11, Landroid/os/UserManager;

    .line 103
    .line 104
    invoke-virtual {v11}, Landroid/os/UserManager;->getAllProfiles()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    :cond_5
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    if-eqz v12, :cond_8

    .line 117
    .line 118
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    check-cast v12, Landroid/os/UserHandle;

    .line 123
    .line 124
    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    invoke-virtual {v9, v13}, Landroid/app/admin/DevicePolicyManager;->getNearbyAppStreamingPolicy(I)I

    .line 129
    .line 130
    .line 131
    move-result v13

    .line 132
    if-eq v13, v1, :cond_7

    .line 133
    .line 134
    if-nez v13, :cond_6

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_6
    if-ne v13, v2, :cond_5

    .line 138
    .line 139
    iget-object v13, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 140
    .line 141
    invoke-virtual {v13}, Landroid/companion/virtual/VirtualDeviceParams;->getUsersWithMatchingAccounts()Ljava/util/Set;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    invoke-interface {v13, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    if-eqz v13, :cond_5

    .line 150
    .line 151
    invoke-virtual {v7, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_6

    .line 155
    :catchall_0
    move-exception v0

    .line 156
    goto :goto_a

    .line 157
    :cond_7
    :goto_7
    invoke-virtual {v7, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    .line 163
    .line 164
    iget-object v9, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 165
    .line 166
    if-eqz v10, :cond_9

    .line 167
    .line 168
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 169
    .line 170
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams;->getBlockedCrossTaskNavigations()Ljava/util/Set;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    :goto_8
    move-object v11, v1

    .line 175
    goto :goto_9

    .line 176
    :cond_9
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 177
    .line 178
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams;->getAllowedCrossTaskNavigations()Ljava/util/Set;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    goto :goto_8

    .line 183
    :goto_9
    iget-object v12, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPermissionDialogComponent:Landroid/content/ComponentName;

    .line 184
    .line 185
    new-instance v13, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;

    .line 186
    .line 187
    invoke-direct {v13, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V

    .line 188
    .line 189
    .line 190
    new-instance v14, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    .line 191
    .line 192
    invoke-direct {v14, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V

    .line 193
    .line 194
    .line 195
    new-instance v15, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    .line 196
    .line 197
    invoke-direct {v15, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V

    .line 198
    .line 199
    .line 200
    new-instance v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    .line 201
    .line 202
    invoke-direct {v1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V

    .line 203
    .line 204
    .line 205
    new-instance v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    .line 206
    .line 207
    invoke-direct {v2, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V

    .line 208
    .line 209
    .line 210
    move-object v5, v3

    .line 211
    move-object/from16 v16, v1

    .line 212
    .line 213
    move-object/from16 v17, v2

    .line 214
    .line 215
    move-object/from16 v18, p1

    .line 216
    .line 217
    invoke-direct/range {v5 .. v20}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;-><init>(Landroid/content/AttributionSource;Landroid/util/ArraySet;ZLjava/util/Set;ZLjava/util/Set;Landroid/content/ComponentName;Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;Ljava/util/Set;ZLandroid/content/ComponentName;)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    .line 221
    .line 222
    monitor-enter v1

    .line 223
    :try_start_1
    iget-object v2, v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    .line 224
    .line 225
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    monitor-exit v1

    .line 229
    return-object v3

    .line 230
    :catchall_1
    move-exception v0

    .line 231
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 232
    throw v0

    .line 233
    :goto_a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    .line 235
    .line 236
    throw v0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string p1, "    "

    .line 2
    .line 3
    const-string p3, "  VirtualDevice: "

    .line 4
    .line 5
    const-string v0, "    mDeviceId: "

    .line 6
    .line 7
    invoke-static {p2, p3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    iget v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    .line 12
    .line 13
    const-string v1, "    mAssociationId: "

    .line 14
    .line 15
    invoke-static {p3, v0, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance p3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "    mOwnerPackageName: "

    .line 38
    .line 39
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string p3, "    mParams: "

    .line 55
    .line 56
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 60
    .line 61
    const-string v0, "        "

    .line 62
    .line 63
    invoke-virtual {p3, p2, v0}, Landroid/companion/virtual/VirtualDeviceParams;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string p3, "    mVirtualDisplayIds: "

    .line 67
    .line 68
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter p3

    .line 74
    const/4 v0, 0x0

    .line 75
    move v1, v0

    .line 76
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-ge v1, v2, :cond_0

    .line 83
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, "  "

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 98
    .line 99
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto/16 :goto_8

    .line 118
    .line 119
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v2, "    mDevicePolicies: "

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string/jumbo p1, "mDefaultShowPointerIcon: "

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-boolean p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    .line 156
    .line 157
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    const-string p3, "    InputController: "

    .line 174
    .line 175
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object v1, p1, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 179
    .line 180
    monitor-enter v1

    .line 181
    :try_start_1
    const-string p3, "      Active descriptors: "

    .line 182
    .line 183
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :goto_1
    iget-object p3, p1, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 187
    .line 188
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    .line 189
    .line 190
    .line 191
    move-result p3

    .line 192
    if-ge v0, p3, :cond_1

    .line 193
    .line 194
    iget-object p3, p1, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 195
    .line 196
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p3

    .line 200
    check-cast p3, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 201
    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    const-string v3, "        ptr: "

    .line 208
    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-wide v3, p3, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    .line 213
    .line 214
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v3, "          displayId: "

    .line 230
    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    iget v3, p3, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDisplayId:I

    .line 235
    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v3, "          creationOrder: "

    .line 252
    .line 253
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    iget-wide v3, p3, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mCreationOrderNumber:J

    .line 257
    .line 258
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    const-string v3, "          type: "

    .line 274
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    iget v3, p3, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mType:I

    .line 279
    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    const-string v3, "          phys: "

    .line 296
    .line 297
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    iget-object v3, p3, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPhys:Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .line 316
    .line 317
    const-string v3, "          inputDeviceId: "

    .line 318
    .line 319
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    iget p3, p3, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mInputDeviceId:I

    .line 323
    .line 324
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p3

    .line 331
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    add-int/lit8 v0, v0, 0x1

    .line 335
    .line 336
    goto/16 :goto_1

    .line 337
    .line 338
    :catchall_1
    move-exception p0

    .line 339
    goto/16 :goto_7

    .line 340
    .line 341
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 342
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    .line 343
    .line 344
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    const-string p3, "    SensorController: "

    .line 348
    .line 349
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    iget-object p3, p1, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    .line 353
    .line 354
    monitor-enter p3

    .line 355
    :try_start_2
    const-string v0, "      Active descriptors: "

    .line 356
    .line 357
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    iget-object p1, p1, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    .line 361
    .line 362
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_2

    .line 375
    .line 376
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    check-cast v0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    .line 381
    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .line 386
    .line 387
    const-string v2, "        handle: "

    .line 388
    .line 389
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    iget v2, v0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mHandle:I

    .line 393
    .line 394
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .line 408
    .line 409
    const-string v2, "          type: "

    .line 410
    .line 411
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    iget v2, v0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mType:I

    .line 415
    .line 416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .line 430
    .line 431
    const-string v2, "          name: "

    .line 432
    .line 433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    iget-object v0, v0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mName:Ljava/lang/String;

    .line 437
    .line 438
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    goto :goto_2

    .line 449
    :catchall_2
    move-exception p0

    .line 450
    goto/16 :goto_6

    .line 451
    .line 452
    :cond_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 453
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    .line 454
    .line 455
    if-eqz p1, :cond_4

    .line 456
    .line 457
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    .line 459
    .line 460
    const-string p3, "    VirtualCameraController:"

    .line 461
    .line 462
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    const-string p3, "        "

    .line 466
    .line 467
    iget-object v0, p1, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 468
    .line 469
    monitor-enter v0

    .line 470
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    const-string v2, "Registered cameras: "

    .line 479
    .line 480
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    iget-object v2, p1, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 484
    .line 485
    check-cast v2, Landroid/util/ArrayMap;

    .line 486
    .line 487
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    iget-object p1, p1, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 502
    .line 503
    check-cast p1, Landroid/util/ArrayMap;

    .line 504
    .line 505
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 506
    .line 507
    .line 508
    move-result-object p1

    .line 509
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    if-eqz v1, :cond_3

    .line 518
    .line 519
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    check-cast v1, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;

    .line 524
    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    .line 526
    .line 527
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    const-string v3, " token: "

    .line 534
    .line 535
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    iget-object v1, v1, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 539
    .line 540
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    goto :goto_3

    .line 551
    :catchall_3
    move-exception p0

    .line 552
    goto :goto_4

    .line 553
    :cond_3
    monitor-exit v0

    .line 554
    goto :goto_5

    .line 555
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 556
    throw p0

    .line 557
    :cond_4
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    const-string p3, "    hasCustomAudioInputSupport: "

    .line 560
    .line 561
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->hasCustomAudioInputSupportInternal()Z

    .line 565
    .line 566
    .line 567
    move-result p0

    .line 568
    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 569
    .line 570
    .line 571
    return-void

    .line 572
    :goto_6
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 573
    throw p0

    .line 574
    :goto_7
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 575
    throw p0

    .line 576
    :goto_8
    :try_start_6
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 577
    throw p0
.end method

.method public final getAssociationId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/InputController;->getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public final getDeviceId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getDevicePolicy(I)I
    .locals 2

    .line 1
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->dynamicPolicy()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    monitor-exit v0

    .line 18
    return p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicy(I)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public final getDisplayIds()[I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    new-array v2, v1, [I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v1, :cond_0

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    aput v4, v2, v3

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    return-object v2

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public getDisplayWindowPolicyControllerForTest(I)Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p0
.end method

.method public final getInputDeviceId(Landroid/os/IBinder;)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    iget p0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mInputDeviceId:I

    .line 21
    .line 22
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string p1, "Could not get device id for given token"

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    :catchall_1
    move-exception p0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final getPersistentDeviceId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPersistentDeviceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSensorControllerForTest()Lcom/android/server/companion/virtual/SensorController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    .line 2
    .line 3
    return-object p0
.end method

.method public getVirtualAudioControllerForTesting()Lcom/android/server/companion/virtual/audio/VirtualAudioController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVirtualCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getVirtualCameraId_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p0, Landroid/companion/virtualcamera/IVirtualCameraService$Stub$Proxy;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/companion/virtualcamera/IVirtualCameraService$Stub$Proxy;->getCameraId(Landroid/os/IBinder;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    monitor-exit v0

    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    throw p0

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 45
    .line 46
    const-string p1, "Virtual camera controller is not available"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public final getVirtualSensorList()Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getVirtualSensorList_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    :goto_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ge v1, v2, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroid/companion/virtual/sensor/VirtualSensor;

    .line 44
    .line 45
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    .line 54
    .line 55
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    .line 60
    .line 61
    :cond_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    .line 62
    .line 63
    monitor-exit v0

    .line 64
    return-object p0

    .line 65
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public final hasCustomAudioInputSupport()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->hasCustomAudioInputSupportInternal()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final hasCustomAudioInputSupportInternal()Z
    .locals 7

    .line 1
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmPublicApis()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Landroid/media/audiopolicy/Flags;->audioMixTestApi()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    invoke-static {}, Landroid/media/audiopolicy/Flags;->recordAudioDeviceAwarePermission()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    return v1

    .line 23
    :cond_2
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ne v2, v0, :cond_3

    .line 29
    .line 30
    return v0

    .line 31
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    :try_start_0
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    const-class v5, Landroid/media/AudioManager;

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Landroid/media/AudioManager;

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRegisteredPolicyMixes()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_5

    .line 58
    .line 59
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Landroid/media/audiopolicy/AudioMix;

    .line 64
    .line 65
    iget v6, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    .line 66
    .line 67
    invoke-virtual {v5, v6}, Landroid/media/audiopolicy/AudioMix;->matchesVirtualDeviceId(I)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_4

    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/media/audiopolicy/AudioMix;->getMixType()I

    .line 74
    .line 75
    .line 76
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    if-ne v5, v0, :cond_4

    .line 78
    .line 79
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    return v0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_0

    .line 85
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    return v1

    .line 89
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method

.method public final isAppRunningOnVirtualDevice(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v2, v3, :cond_1

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 23
    .line 24
    iget-object v4, v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :try_start_1
    iget-object v3, v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_1
    move-exception p0

    .line 49
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    :try_start_4
    throw p0

    .line 51
    :cond_1
    monitor-exit v0

    .line 52
    return v1

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 54
    throw p0
.end method

.method public final launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    .locals 11

    .line 1
    const-string v0, "Display ID "

    .line 2
    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    :try_start_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    move-object v3, p2

    .line 52
    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    invoke-virtual {p3, p0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :catch_0
    move-exception p0

    .line 62
    const-string p1, "VirtualDeviceImpl"

    .line 63
    .line 64
    const-string p2, "Pending intent canceled"

    .line 65
    .line 66
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :cond_0
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 75
    .line 76
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;-><init>(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    .line 80
    .line 81
    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;

    .line 82
    .line 83
    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;->this$1:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    .line 84
    .line 85
    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 86
    .line 87
    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iget-object v5, v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    .line 95
    invoke-virtual {v5, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 100
    .line 101
    iget-object v5, v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mHandler:Landroid/os/Handler;

    .line 102
    .line 103
    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    new-instance v6, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    const/4 v7, 0x2

    .line 109
    invoke-direct {v6, v7, v3, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    const-wide/16 v7, 0x1388

    .line 113
    .line 114
    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 115
    .line 116
    .line 117
    if-eqz v4, :cond_1

    .line 118
    .line 119
    iget-object v3, v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 120
    .line 121
    const/4 v4, 0x2

    .line 122
    invoke-virtual {v3, v4, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 123
    .line 124
    .line 125
    :cond_1
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    new-instance v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;

    .line 132
    .line 133
    invoke-direct {v4, p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    .line 138
    .line 139
    :try_start_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v3, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    .line 151
    .line 152
    .line 153
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    const/4 v7, 0x0

    .line 160
    const/4 v8, 0x0

    .line 161
    const/4 v9, 0x0

    .line 162
    const/4 v5, 0x0

    .line 163
    const/4 v6, 0x0

    .line 164
    move-object v3, p2

    .line 165
    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :catch_1
    move-exception p1

    .line 170
    const-string p2, "VirtualDeviceImpl"

    .line 171
    .line 172
    const-string v3, "Pending intent canceled"

    .line 173
    .line 174
    invoke-static {p2, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 178
    .line 179
    .line 180
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    .line 181
    .line 182
    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;

    .line 183
    .line 184
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;->this$1:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    .line 185
    .line 186
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 187
    .line 188
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    .line 189
    .line 190
    iget-object p1, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mPendingIntent:Landroid/app/PendingIntent;

    .line 191
    .line 192
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iget-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 197
    .line 198
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 203
    .line 204
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mHandler:Landroid/os/Handler;

    .line 205
    .line 206
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    :goto_0
    return-void

    .line 210
    :catchall_0
    move-exception p0

    .line 211
    goto :goto_1

    .line 212
    :cond_2
    :try_start_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 213
    .line 214
    new-instance p2, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string p1, " not found for this virtual device"

    .line 223
    .line 224
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p0

    .line 235
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    throw p0
.end method

.method public final onAudioSessionEnded()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->onAudioSessionEnded_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->stopListening()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->onAudioSessionStarting_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 24
    .line 25
    invoke-direct {v1, v2, v3}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;-><init>(Landroid/content/Context;Landroid/content/AttributionSource;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->startListening(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 51
    .line 52
    const-string p1, "Cannot start audio session for a display not associated with this virtual device"

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final onRunningAppsChanged(Landroid/util/ArraySet;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    :try_start_0
    iget-object v3, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v2, v3, :cond_3

    .line 16
    .line 17
    iget-object v3, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/String;

    .line 24
    .line 25
    iget-object v4, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;

    .line 32
    .line 33
    iget-object v5, v4, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageName:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v4, v4, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageUids:Ljava/util/Set;

    .line 36
    .line 37
    check-cast v4, Landroid/util/ArraySet;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_2

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    invoke-virtual {p1, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_0

    .line 64
    .line 65
    iget-object v4, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    .line 72
    .line 73
    if-nez v4, :cond_1

    .line 74
    .line 75
    new-instance v4, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    .line 76
    .line 77
    invoke-direct {v4}, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;-><init>()V

    .line 78
    .line 79
    .line 80
    iput v7, v4, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->appUid:I

    .line 81
    .line 82
    iget-object v6, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    .line 83
    .line 84
    invoke-virtual {v6, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto :goto_2

    .line 90
    :cond_1
    :goto_1
    invoke-virtual {v0, v5, v3}, Lcom/android/server/companion/virtual/CameraAccessController;->startBlocking(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    monitor-exit v1

    .line 97
    goto :goto_3

    .line 98
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p0

    .line 100
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRunningAppsChangedCallback:Ljava/util/function/Consumer;

    .line 101
    .line 102
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final registerIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;Landroid/content/IntentFilter;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->registerIntentInterceptor_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {p1}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;->asBinder()Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p0, Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final registerVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->registerVirtualCamera_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 12
    .line 13
    iget v1, v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameraPolicy:I

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    iget-object v3, v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 25
    .line 26
    check-cast v3, Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;

    .line 47
    .line 48
    iget-object v4, v4, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eq v4, v1, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "Only a single virtual camera can be created with lens facing "

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_3

    .line 84
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V

    .line 86
    .line 87
    .line 88
    :try_start_2
    invoke-virtual {v0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->registerCameraWithService(Landroid/companion/virtual/camera/VirtualCameraConfig;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    new-instance v1, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;

    .line 95
    .line 96
    invoke-direct {v1, v0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;-><init>(Lcom/android/server/companion/virtual/camera/VirtualCameraController;Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-interface {p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const/4 v2, 0x0

    .line 108
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 109
    .line 110
    .line 111
    iget-object v2, v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 112
    .line 113
    monitor-enter v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 114
    :try_start_3
    iget-object v0, v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 115
    .line 116
    check-cast v0, Landroid/util/ArrayMap;

    .line 117
    .line 118
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    monitor-exit v2

    .line 122
    goto :goto_2

    .line 123
    :catchall_1
    move-exception p1

    .line 124
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    :try_start_4
    throw p1

    .line 126
    :catch_0
    move-exception p1

    .line 127
    goto :goto_1

    .line 128
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 129
    .line 130
    const-string v0, "Failed to register virtual camera."

    .line 131
    .line 132
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 136
    :goto_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 137
    .line 138
    .line 139
    :goto_2
    invoke-static {}, Landroid/companion/virtualdevice/flags/Flags;->metricsCollection()Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_3

    .line 144
    .line 145
    const-string/jumbo p1, "virtual_devices.value_virtual_camera_created_count"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    invoke-static {p1, p0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    :cond_3
    return-void

    .line 156
    :goto_3
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 157
    throw p0

    .line 158
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    const-string p1, "Cannot create virtual camera with DEVICE_POLICY_DEFAULT for POLICY_TYPE_CAMERA"

    .line 161
    .line 162
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0

    .line 166
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 167
    .line 168
    const-string p1, "Virtual camera controller is not available"

    .line 169
    .line 170
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p0
.end method

.method public final removeActivityPolicyExemption(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->removeActivityPolicyExemption_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 33
    .line 34
    iget-object v3, v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    :try_start_1
    iget-object v2, v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 38
    .line 39
    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    monitor-exit v3

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    throw p0

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    throw p0
.end method

.method public final sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendButtonEvent_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendDpadKeyEvent_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendKeyEvent_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendRelativeEvent_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendScrollEvent_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendSensorEvent_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/SensorController;->sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendStylusButtonEvent_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendStylusMotionEvent_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendTouchEvent_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final setDevicePolicy(II)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->setDevicePolicy_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->dynamicPolicy()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eq p1, v0, :cond_6

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq p1, v0, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->crossDeviceClipboard()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_9

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    goto/16 :goto_7

    .line 38
    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string p2, "Device policy "

    .line 45
    .line 46
    const-string v0, " cannot be changed at runtime. "

    .line 47
    .line 48
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v0

    .line 59
    :try_start_1
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    .line 60
    .line 61
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    .line 63
    .line 64
    move p1, v2

    .line 65
    :goto_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ge p1, v3, :cond_5

    .line 72
    .line 73
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 80
    .line 81
    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 82
    .line 83
    if-nez p2, :cond_3

    .line 84
    .line 85
    move v4, v1

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    move v4, v2

    .line 88
    :goto_1
    iget-object v5, v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 91
    :try_start_2
    iget-boolean v6, v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    .line 92
    .line 93
    if-eq v6, v4, :cond_4

    .line 94
    .line 95
    iget-object v6, v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 96
    .line 97
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_1
    move-exception p0

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    :goto_2
    iput-boolean v4, v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    .line 104
    .line 105
    monitor-exit v5

    .line 106
    add-int/lit8 p1, p1, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :goto_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    :try_start_3
    throw p0

    .line 111
    :catchall_2
    move-exception p0

    .line 112
    goto :goto_4

    .line 113
    :cond_5
    monitor-exit v0

    .line 114
    goto :goto_7

    .line 115
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 116
    throw p0

    .line 117
    :cond_6
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 118
    .line 119
    monitor-enter v0

    .line 120
    :try_start_4
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    .line 121
    .line 122
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 123
    .line 124
    .line 125
    move p1, v2

    .line 126
    :goto_5
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 127
    .line 128
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-ge p1, v3, :cond_8

    .line 133
    .line 134
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 135
    .line 136
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 141
    .line 142
    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 143
    .line 144
    if-nez p2, :cond_7

    .line 145
    .line 146
    move v4, v1

    .line 147
    goto :goto_6

    .line 148
    :cond_7
    move v4, v2

    .line 149
    :goto_6
    invoke-virtual {v3, v4}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setShowInHostDeviceRecents(Z)V

    .line 150
    .line 151
    .line 152
    add-int/lit8 p1, p1, 0x1

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :catchall_3
    move-exception p0

    .line 156
    goto :goto_8

    .line 157
    :cond_8
    monitor-exit v0

    .line 158
    :cond_9
    :goto_7
    return-void

    .line 159
    :goto_8
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 160
    throw p0
.end method

.method public final setDisplayImePolicy(II)V
    .locals 3

    .line 1
    const-string v0, "Display ID "

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->setDisplayImePolicy_enforcePermission()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mWindowManager:Landroid/view/WindowManager;

    .line 25
    .line 26
    invoke-interface {p0, p1, p2}, Landroid/view/WindowManager;->setDisplayImePolicy(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :catchall_1
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 41
    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, " not found for this virtual device"

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    throw p0
.end method

.method public final setShowPointerIcon(Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->setShowPointerIcon_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    .line 12
    .line 13
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDisplayIds()[I

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    array-length v4, v2

    .line 20
    if-ge v3, v4, :cond_0

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 23
    .line 24
    aget v5, v2, v3

    .line 25
    .line 26
    iget-object v4, v4, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-boolean v6, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 32
    .line 33
    iget-object v4, v4, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 34
    .line 35
    invoke-virtual {v4, p1, v5}, Lcom/android/server/input/InputManagerService;->setPointerIconVisible(ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 50
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final showToastWhereUidIsRunning(ILjava/lang/String;Landroid/os/Looper;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/util/IntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_1

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 26
    .line 27
    iget-object v4, v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 28
    .line 29
    iget-object v5, v4, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    iget-object v4, v4, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    :try_start_2
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_3

    .line 57
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_1
    move-exception p0

    .line 61
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    :try_start_4
    throw p0

    .line 63
    :cond_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 64
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 80
    .line 81
    :goto_2
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-ge v2, v1, :cond_4

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {p1, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/view/Display;->isValid()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_3

    .line 102
    .line 103
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    invoke-virtual {v3, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const/4 v3, 0x1

    .line 110
    invoke-static {v1, p3, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 115
    .line 116
    .line 117
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    return-void

    .line 121
    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    throw p0
.end method

.method public final unregisterInputDevice(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->unregisterInputDevice_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/InputController;->unregisterInputDevice(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final unregisterIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->unregisterIntentInterceptor_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {p1}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;->asBinder()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p0, Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final unregisterVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->unregisterVirtualCamera_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->unregisterCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 16
    .line 17
    const-string p1, "Virtual camera controller is not available"

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method
