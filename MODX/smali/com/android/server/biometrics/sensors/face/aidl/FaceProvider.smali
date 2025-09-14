.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/biometrics/sensors/BiometricServiceProvider;


# instance fields
.field public final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final mBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

.field public final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

.field public final mContext:Landroid/content/Context;

.field public mDaemon:Landroid/hardware/biometrics/face/IFace;

.field final mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

.field public final mHalInstanceName:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public mIsFirstOnUserSwitching:Ljava/lang/Boolean;

.field public final mIsForHidl:Z

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field public mTestHalEnabled:Z

.field public final mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;[Landroid/hardware/biometrics/face/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/biometrics/face/IFace;Lcom/android/server/biometrics/BiometricHandlerProvider;ZZ)V
    .locals 27

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v13, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mIsFirstOnUserSwitching:Ljava/lang/Boolean;

    .line 6
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    move-object/from16 v3, p2

    .line 7
    iput-object v3, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-object/from16 v3, p3

    .line 8
    iput-object v3, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 9
    iput-object v1, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHalInstanceName:Ljava/lang/String;

    .line 10
    new-instance v3, Lcom/android/server/biometrics/sensors/SensorList;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/biometrics/sensors/SensorList;-><init>(Landroid/app/IActivityManager;)V

    iput-object v3, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 11
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFaceHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 12
    new-instance v3, Lcom/android/server/biometrics/sensors/face/UsageStats;

    .line 13
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v4, v3, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    .line 15
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, v3, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorFrequencyMap:Landroid/util/SparseIntArray;

    .line 16
    new-instance v4, Landroid/util/SparseLongArray;

    invoke-direct {v4}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v4, v3, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatencyMap:Landroid/util/SparseLongArray;

    .line 17
    iput-object v0, v3, Lcom/android/server/biometrics/sensors/face/UsageStats;->mContext:Landroid/content/Context;

    .line 18
    iput-object v3, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    move-object/from16 v3, p6

    .line 19
    iput-object v3, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 20
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 21
    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;

    invoke-direct {v3, v12}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V

    .line 22
    iput-object v2, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 23
    check-cast v2, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 24
    iget-object v2, v2, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 25
    iput-object v2, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-object/from16 v2, p8

    .line 26
    iput-object v2, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    move/from16 v2, p11

    .line 27
    iput-boolean v2, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mTestHalEnabled:Z

    move-object/from16 v2, p9

    .line 28
    iput-object v2, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 29
    const-string/jumbo v2, "defaultHIDL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v13, [Landroid/hardware/face/HidlFaceSensorConfig;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mIsForHidl:Z

    .line 30
    new-instance v2, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda25;

    invoke-direct {v3, v12}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V

    const/4 v4, 0x4

    invoke-direct {v2, v0, v4, v3}, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;-><init>(Landroid/content/Context;ILjava/util/function/Consumer;)V

    .line 31
    new-instance v2, Lcom/android/server/biometrics/BiometricDanglingReceiver;

    invoke-direct {v2, v0, v4}, Lcom/android/server/biometrics/BiometricDanglingReceiver;-><init>(Landroid/content/Context;I)V

    .line 32
    const-string v11, "Added: "

    const/16 v16, -0x2710

    if-eqz v1, :cond_3

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Adding HIDL configs"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    array-length v10, v13

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v10, :cond_6

    aget-object v4, v13, v9

    .line 35
    iget-object v0, v4, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v8, v0, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    .line 36
    new-instance v7, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    iget-object v2, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    iget-object v5, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget-object v6, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {v1, v12, v8, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V

    .line 37
    move-object v0, v6

    check-cast v0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 38
    iget-object v0, v0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v0

    move-object v0, v7

    move-object/from16 v20, v1

    move-object/from16 v1, p0

    move-object v14, v7

    move/from16 v7, p10

    move v15, v8

    move-object/from16 v8, v20

    move/from16 v20, v9

    move-object/from16 v9, v19

    move/from16 v19, v10

    move-object/from16 v10, v17

    move-object v13, v11

    move-object/from16 v11, v18

    .line 39
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/biometrics/face/SensorProps;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/lang/Runnable;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;)V

    .line 40
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v14, v2}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;I)V

    const/16 v26, 0x0

    iget-object v2, v14, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mHandler:Landroid/os/Handler;

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v25, v1

    invoke-direct/range {v21 .. v26}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Ljava/util/function/Supplier;Lcom/android/server/biometrics/sensors/UserSwitchProvider;)V

    .line 41
    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 42
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v14, v1}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;I)V

    .line 43
    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 44
    new-instance v0, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    .line 45
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    .line 47
    iget-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 48
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    move/from16 v0, v16

    goto :goto_3

    .line 49
    :cond_2
    iget-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 50
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 51
    iget v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mUserId:I

    .line 52
    :goto_3
    iget-object v1, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v1, v15, v14}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createFaceServiceExImpl(Landroid/content/Context;ILcom/android/server/biometrics/sensors/face/aidl/Sensor;)V

    .line 53
    iget-object v1, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;

    const/4 v3, 0x1

    invoke-direct {v2, v12, v15, v3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V

    invoke-virtual {v1, v15, v14, v0, v2}, Lcom/android/server/biometrics/sensors/SensorList;->addSensor(ILjava/lang/Object;ILandroid/app/SynchronousUserSwitchObserver;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 55
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 56
    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v20, 0x1

    move-object v11, v13

    move/from16 v10, v19

    move-object/from16 v13, p4

    goto/16 :goto_2

    :cond_3
    move-object v13, v11

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Adding AIDL configs"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, p4

    move-object v8, v13

    .line 59
    array-length v9, v7

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_6

    aget-object v4, v7, v10

    .line 60
    iget-object v0, v4, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    iget v11, v0, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    .line 61
    new-instance v13, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    iget-object v2, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    iget-object v5, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/biometrics/face/SensorProps;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 62
    iget-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 63
    new-instance v14, Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v5, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v5, v13, v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;I)V

    new-instance v6, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;

    invoke-direct {v6, v13, v0, v12}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V

    iget-object v2, v13, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Ljava/util/function/Supplier;Lcom/android/server/biometrics/sensors/UserSwitchProvider;)V

    .line 64
    iput-object v14, v13, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 65
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v13, v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;I)V

    iput-object v0, v13, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 66
    new-instance v0, Lcom/android/server/biometrics/sensors/LockoutCache;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/LockoutCache;-><init>()V

    iput-object v0, v13, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 67
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

    iget-object v1, v13, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda1;

    invoke-direct {v2, v13}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    .line 68
    sget-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_INTEGRATED_LOCKOUT:Z

    if-eqz v3, :cond_4

    .line 69
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->get()Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    move-result-object v3

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    .line 70
    :goto_5
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/SemBiometricLockoutTracker;Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl$LockoutResetCallback;)V

    .line 71
    iput-object v0, v13, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLockoutHalImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceAidlLockoutHalImpl;

    .line 72
    iget-object v0, v13, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 73
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    move/from16 v0, v16

    goto :goto_6

    .line 74
    :cond_5
    iget-object v0, v13, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    .line 75
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 76
    iget v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mUserId:I

    .line 77
    :goto_6
    iget-object v1, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v1, v11, v13}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createFaceServiceExImpl(Landroid/content/Context;ILcom/android/server/biometrics/sensors/face/aidl/Sensor;)V

    .line 78
    iget-object v1, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;

    const/4 v3, 0x0

    invoke-direct {v2, v12, v11, v3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V

    invoke-virtual {v1, v11, v13, v0, v2}, Lcom/android/server/biometrics/sensors/SensorList;->addSensor(ILjava/lang/Object;ILandroid/app/SynchronousUserSwitchObserver;)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 80
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 81
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    :cond_6
    const/4 v0, 0x0

    .line 83
    :goto_7
    iget-object v1, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 84
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 85
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 86
    const-string v2, "FaceProvider"

    if-ge v0, v1, :cond_7

    .line 87
    iget-object v1, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 88
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 89
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const/4 v3, 0x0

    .line 90
    invoke-static {v1, v3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v1

    .line 91
    iget-object v4, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "init sensors: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 93
    :cond_7
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->mDBCorrupted:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 94
    sput-boolean v0, Lcom/android/server/biometrics/Utils;->mDBCorrupted:Z

    .line 95
    const-string/jumbo v0, "init sensors: db does not exist !!!"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v12}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;[Landroid/hardware/biometrics/face/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContextProvider;Z)V
    .locals 12

    .line 1
    sget-object v9, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v10, p8

    .line 2
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;[Landroid/hardware/biometrics/face/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/biometrics/face/IFace;Lcom/android/server/biometrics/BiometricHandlerProvider;ZZ)V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "HAL died"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 12
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return-void
.end method

.method public final containsSensor(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public createFaceServiceExImpl(Landroid/content/Context;ILcom/android/server/biometrics/sensors/face/aidl/Sensor;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemFaceServiceExImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 7
    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;-><init>()V

    .line 10
    sput-object v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemFaceServiceExImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 12
    :cond_0
    sget-object v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemFaceServiceExImpl:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 14
    iput-object p1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 16
    iput p2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensorId:I

    .line 18
    iput-object p3, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 20
    iget-object p2, p3, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 22
    iput-object p2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 24
    iput-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 26
    const-class p0, Landroid/os/PowerManager;

    .line 28
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Landroid/os/PowerManager;

    .line 34
    iput-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 36
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 38
    const-class p1, Landroid/app/AppOpsManager;

    .line 40
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Landroid/app/AppOpsManager;

    .line 46
    iput-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 48
    monitor-enter v0

    .line 49
    :try_start_0
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 51
    const-string p1, "SemFace"

    .line 53
    const p2, 0x1000000a

    .line 56
    invoke-virtual {p0, p2, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 59
    move-result-object p0

    .line 60
    iput-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    new-instance p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;

    .line 65
    iget-object p1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 67
    invoke-direct {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/content/Context;)V

    .line 70
    iput-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOrientationEventListener:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;

    .line 72
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 74
    const-string/jumbo p0, "ro.build.characteristics"

    .line 77
    const-string p1, ""

    .line 79
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    const-string/jumbo p1, "tablet"

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_1

    .line 92
    new-instance p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;

    .line 94
    iget-object p1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 96
    invoke-direct {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/content/Context;)V

    .line 99
    iput-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProximitySensorMgr:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    const/4 p0, 0x0

    .line 103
    iput-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProximitySensorMgr:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;

    .line 105
    :goto_0
    iget p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensorId:I

    .line 107
    const-string/jumbo p1, "settings_face.xml"

    .line 110
    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 113
    move-result-object p0

    .line 114
    iput-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFaceUtils:Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 116
    const-string p0, "android.intent.action.ACTION_SHUTDOWN"

    .line 118
    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 121
    move-result-object p0

    .line 122
    iget-object p1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 124
    new-instance p2, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$4;

    .line 126
    invoke-direct {p2, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$4;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;)V

    .line 129
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 134
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 136
    iget p0, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    .line 138
    const/4 p1, 0x3

    .line 139
    if-eqz p0, :cond_4

    .line 141
    const/4 p2, 0x2

    .line 142
    const/4 p3, 0x1

    .line 143
    if-eq p0, p3, :cond_3

    .line 145
    if-eq p0, p2, :cond_2

    .line 147
    const-string/jumbo p2, "propertyStrengthToOemStrength: Unknown security level "

    .line 150
    const-string p3, "BiometricUtils"

    .line 152
    invoke-static {p0, p2, p3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    goto :goto_1

    .line 156
    :cond_2
    move p1, p3

    .line 157
    goto :goto_1

    .line 158
    :cond_3
    move p1, p2

    .line 159
    :cond_4
    :goto_1
    iput p1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSecurityLevel:I

    .line 161
    const-string p0, "SemFace"

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    .line 165
    const-string p2, "SL :"

    .line 167
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    iget p2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSecurityLevel:I

    .line 172
    const-string p3, "(1:Strong)"

    .line 174
    invoke-static {p1, p2, p3, p0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void

    .line 178
    :catchall_0
    move-exception p0

    .line 179
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    throw p0
.end method

.method public final createLogger(IILcom/android/server/biometrics/AuthenticationStatsCollector;)Lcom/android/server/biometrics/log/BiometricLogger;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/biometrics/log/BiometricLogger;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 5
    const/4 v2, 0x4

    .line 6
    move-object v0, v6

    .line 7
    move v3, p1

    .line 8
    move v4, p2

    .line 9
    move-object v5, p3

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V

    .line 13
    return-object v6
.end method

.method public final createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    move-object v5, p0

    .line 10
    check-cast v5, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 12
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;

    .line 17
    iget-object v1, v5, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 19
    iget-object p1, v5, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 21
    iget v2, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 23
    iget-object v4, v5, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 25
    move-object v0, p0

    .line 26
    move-object v3, p2

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;-><init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V

    .line 30
    return-object p0
.end method

.method public final dumpInternal(ILjava/io/PrintWriter;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v2, p1

    .line 5
    move-object/from16 v3, p2

    .line 7
    const-string v4, "SemFace"

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    .line 12
    move-result-object v5

    .line 13
    new-instance v6, Lorg/json/JSONObject;

    .line 15
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 18
    const/4 v7, 0x0

    .line 19
    :try_start_0
    const-string/jumbo v0, "service"

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 25
    move-result-object v8

    .line 26
    invoke-virtual {v6, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    new-instance v0, Lorg/json/JSONArray;

    .line 31
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 34
    iget-object v8, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 43
    move-result-object v8

    .line 44
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v8

    .line 48
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v9

    .line 52
    if-eqz v9, :cond_8

    .line 54
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v9

    .line 58
    check-cast v9, Landroid/content/pm/UserInfo;

    .line 60
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    .line 67
    move-result v9

    .line 68
    const/4 v10, 0x0

    .line 69
    invoke-static {v2, v10}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 72
    move-result-object v10

    .line 73
    iget-object v11, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v10, v11, v9}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 78
    move-result-object v10

    .line 79
    check-cast v10, Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 84
    move-result v10

    .line 85
    new-instance v11, Lorg/json/JSONObject;

    .line 87
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 90
    const-string/jumbo v12, "id"

    .line 93
    invoke-virtual {v11, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v12, "count"

    .line 99
    invoke-virtual {v11, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string v10, "accept"

    .line 104
    iget-object v12, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 106
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->contains(I)Z

    .line 109
    move-result v12

    .line 110
    if-eqz v12, :cond_0

    .line 112
    iget-object v12, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 114
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object v12

    .line 118
    check-cast v12, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 120
    iget v12, v12, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAccept:I

    .line 122
    goto :goto_1

    .line 123
    :cond_0
    move v12, v7

    .line 124
    :goto_1
    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    const-string/jumbo v10, "reject"

    .line 130
    iget-object v12, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 132
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->contains(I)Z

    .line 135
    move-result v12

    .line 136
    if-eqz v12, :cond_1

    .line 138
    iget-object v12, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 140
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 143
    move-result-object v12

    .line 144
    check-cast v12, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 146
    iget v12, v12, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mReject:I

    .line 148
    goto :goto_2

    .line 149
    :cond_1
    move v12, v7

    .line 150
    :goto_2
    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    const-string v10, "acquire"

    .line 155
    iget-object v12, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 157
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->contains(I)Z

    .line 160
    move-result v12

    .line 161
    if-eqz v12, :cond_2

    .line 163
    iget-object v12, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 165
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 168
    move-result-object v12

    .line 169
    check-cast v12, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 171
    iget v12, v12, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquire:I

    .line 173
    goto :goto_3

    .line 174
    :cond_2
    move v12, v7

    .line 175
    :goto_3
    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 178
    const-string/jumbo v10, "lockout"

    .line 181
    iget-object v12, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 183
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->contains(I)Z

    .line 186
    move-result v12

    .line 187
    if-eqz v12, :cond_3

    .line 189
    iget-object v12, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 191
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 194
    move-result-object v12

    .line 195
    check-cast v12, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 197
    iget v12, v12, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mTimedLockout:I

    .line 199
    goto :goto_4

    .line 200
    :cond_3
    move v12, v7

    .line 201
    :goto_4
    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    const-string/jumbo v10, "permanentLockout"

    .line 207
    iget-object v12, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 209
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->contains(I)Z

    .line 212
    move-result v12

    .line 213
    if-eqz v12, :cond_4

    .line 215
    iget-object v12, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 217
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 220
    move-result-object v12

    .line 221
    check-cast v12, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 223
    iget v12, v12, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mPermanentLockout:I

    .line 225
    goto :goto_5

    .line 226
    :cond_4
    move v12, v7

    .line 227
    :goto_5
    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    const-string v10, "acceptCrypto"

    .line 232
    iget-object v12, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 234
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->contains(I)Z

    .line 237
    move-result v12

    .line 238
    if-eqz v12, :cond_5

    .line 240
    iget-object v12, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 242
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 245
    move-result-object v12

    .line 246
    check-cast v12, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 248
    iget v12, v12, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcceptCrypto:I

    .line 250
    goto :goto_6

    .line 251
    :cond_5
    move v12, v7

    .line 252
    :goto_6
    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 255
    const-string/jumbo v10, "rejectCrypto"

    .line 258
    iget-object v12, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 260
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->contains(I)Z

    .line 263
    move-result v12

    .line 264
    if-eqz v12, :cond_6

    .line 266
    iget-object v12, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 268
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 271
    move-result-object v12

    .line 272
    check-cast v12, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 274
    iget v12, v12, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mRejectCrypto:I

    .line 276
    goto :goto_7

    .line 277
    :cond_6
    move v12, v7

    .line 278
    :goto_7
    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 281
    const-string v10, "acquireCrypto"

    .line 283
    iget-object v12, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 285
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->contains(I)Z

    .line 288
    move-result v12

    .line 289
    if-eqz v12, :cond_7

    .line 291
    iget-object v12, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 293
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 296
    move-result-object v9

    .line 297
    check-cast v9, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 299
    iget v9, v9, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquireCrypto:I

    .line 301
    goto :goto_8

    .line 302
    :cond_7
    move v9, v7

    .line 303
    :goto_8
    invoke-virtual {v11, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 306
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 309
    goto/16 :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    goto :goto_9

    .line 313
    :cond_8
    const-string/jumbo v8, "prints"

    .line 316
    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_a

    .line 320
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 323
    move-result-object v8

    .line 324
    const-string/jumbo v9, "dump formatting failure"

    .line 327
    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    :goto_a
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    .line 335
    const-string v6, "HAL deaths since last reboot: "

    .line 337
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    iget v5, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mHALDeathCount:I

    .line 342
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    const-string v0, "---AuthSessionCoordinator logs begin---"

    .line 354
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 359
    check-cast v0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 361
    iget-object v0, v0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 363
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 366
    const-string v0, "---AuthSessionCoordinator logs end  ---"

    .line 368
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 373
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 375
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 378
    move-result-object v0

    .line 379
    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 381
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 383
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dump(Ljava/io/PrintWriter;)V

    .line 386
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    .line 390
    const-string v5, "Printing most recent events since last reboot("

    .line 392
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    .line 397
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    .line 400
    move-result v5

    .line 401
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    const-string v5, " events)"

    .line 406
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    move-result-object v2

    .line 413
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    .line 418
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 421
    move-result-object v2

    .line 422
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 425
    move-result v5

    .line 426
    const-string v6, "\t"

    .line 428
    const-string v8, ""

    .line 430
    const-string v9, "\tLatency: "

    .line 432
    if-eqz v5, :cond_a

    .line 434
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 437
    move-result-object v5

    .line 438
    check-cast v5, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    .line 440
    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mContext:Landroid/content/Context;

    .line 442
    new-instance v11, Ljava/lang/StringBuilder;

    .line 444
    const-string v12, "Start: "

    .line 446
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 449
    iget-wide v12, v5, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mStartTime:J

    .line 451
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget-wide v12, v5, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mLatency:J

    .line 459
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 462
    const-string v9, "\tAuthenticated: "

    .line 464
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-boolean v9, v5, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mAuthenticated:Z

    .line 469
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 472
    const-string v9, "\tError: "

    .line 474
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    iget v9, v5, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mError:I

    .line 479
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 482
    const-string v12, "\tVendorCode: "

    .line 484
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    iget v12, v5, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mVendorError:I

    .line 489
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    const-string v13, "\tUser: "

    .line 494
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget v5, v5, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mUser:I

    .line 499
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    if-nez v9, :cond_9

    .line 507
    goto :goto_c

    .line 508
    :cond_9
    invoke-static {v10, v9, v12}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 511
    move-result-object v8

    .line 512
    :goto_c
    invoke-static {v11, v8, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 515
    goto :goto_b

    .line 516
    :cond_a
    const-string v2, "Accept Count: "

    .line 518
    invoke-static {v3, v8, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    move-result-object v2

    .line 522
    iget v5, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptCount:I

    .line 524
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget-wide v10, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptLatency:J

    .line 532
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 535
    const-string v5, "\tAverage: "

    .line 537
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    iget v10, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptCount:I

    .line 542
    if-lez v10, :cond_b

    .line 544
    iget-wide v13, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptLatency:J

    .line 546
    int-to-long v11, v10

    .line 547
    div-long/2addr v13, v11

    .line 548
    goto :goto_d

    .line 549
    :cond_b
    const-wide/16 v13, 0x0

    .line 551
    :goto_d
    const-string v10, "Reject Count: "

    .line 553
    invoke-static {v2, v13, v14, v3, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    move-result-object v2

    .line 557
    iget v10, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectCount:I

    .line 559
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    iget-wide v10, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectLatency:J

    .line 567
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    iget v10, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectCount:I

    .line 575
    if-lez v10, :cond_c

    .line 577
    iget-wide v11, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectLatency:J

    .line 579
    int-to-long v13, v10

    .line 580
    div-long/2addr v11, v13

    .line 581
    goto :goto_e

    .line 582
    :cond_c
    const-wide/16 v11, 0x0

    .line 584
    :goto_e
    const-string v10, "Total Error Count: "

    .line 586
    invoke-static {v2, v11, v12, v3, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    move-result-object v2

    .line 590
    iget v10, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:I

    .line 592
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    iget-wide v10, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatency:J

    .line 600
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    iget v10, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:I

    .line 608
    if-lez v10, :cond_d

    .line 610
    iget-wide v11, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatency:J

    .line 612
    int-to-long v13, v10

    .line 613
    div-long/2addr v11, v13

    .line 614
    goto :goto_f

    .line 615
    :cond_d
    const-wide/16 v11, 0x0

    .line 617
    :goto_f
    const-string v10, "Total Attempts: "

    .line 619
    invoke-static {v2, v11, v12, v3, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    move-result-object v2

    .line 623
    iget v10, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthAttemptCount:I

    .line 625
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    move-result-object v2

    .line 632
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    move v2, v7

    .line 639
    :goto_10
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorFrequencyMap:Landroid/util/SparseIntArray;

    .line 641
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    .line 644
    move-result v8

    .line 645
    if-ge v2, v8, :cond_f

    .line 647
    iget-object v8, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorFrequencyMap:Landroid/util/SparseIntArray;

    .line 649
    invoke-virtual {v8, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 652
    move-result v8

    .line 653
    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorFrequencyMap:Landroid/util/SparseIntArray;

    .line 655
    invoke-virtual {v10, v8}, Landroid/util/SparseIntArray;->get(I)I

    .line 658
    move-result v10

    .line 659
    const-string v11, "Error"

    .line 661
    const-string v12, "\tCount: "

    .line 663
    invoke-static {v8, v10, v11, v12, v9}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    move-result-object v11

    .line 667
    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatencyMap:Landroid/util/SparseLongArray;

    .line 669
    move v15, v2

    .line 670
    const-wide/16 v13, 0x0

    .line 672
    invoke-virtual {v12, v8, v13, v14}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 675
    move-result-wide v1

    .line 676
    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    if-lez v10, :cond_e

    .line 684
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatencyMap:Landroid/util/SparseLongArray;

    .line 686
    invoke-virtual {v1, v8, v13, v14}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 689
    move-result-wide v1

    .line 690
    int-to-long v13, v10

    .line 691
    div-long/2addr v1, v13

    .line 692
    goto :goto_11

    .line 693
    :cond_e
    const-wide/16 v1, 0x0

    .line 695
    :goto_11
    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mContext:Landroid/content/Context;

    .line 703
    invoke-static {v1, v8, v7}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 706
    move-result-object v1

    .line 707
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 713
    move-result-object v1

    .line 714
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    add-int/lit8 v2, v15, 0x1

    .line 719
    move-object/from16 v1, p0

    .line 721
    goto :goto_10

    .line 722
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 725
    move-result-object v0

    .line 726
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 729
    const-string v1, " FALI : "

    .line 731
    const-string v2, " SL : "

    .line 733
    const-string v5, " current User : "

    .line 735
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 737
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 740
    iget v5, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mUserId:I

    .line 742
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    move-result-object v5

    .line 749
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    new-instance v5, Ljava/lang/StringBuilder;

    .line 754
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 757
    iget v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSecurityLevel:I

    .line 759
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 762
    const-string v2, " , "

    .line 764
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    .line 769
    const-string/jumbo v6, "getSL : "

    .line 772
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 775
    iget v6, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSecurityLevel:I

    .line 777
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 783
    move-result-object v2

    .line 784
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSecurityLevel:I

    .line 789
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 792
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_JDM_HAL:Z

    .line 794
    if-eqz v2, :cond_10

    .line 796
    const-string v2, " , J, "

    .line 798
    goto :goto_12

    .line 799
    :catch_1
    move-exception v0

    .line 800
    goto :goto_14

    .line 801
    :cond_10
    const-string v2, " , S, "

    .line 803
    :goto_12
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    iget-boolean v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsHIDL:Z

    .line 808
    if-eqz v2, :cond_11

    .line 810
    const-string v2, "HIDL"

    .line 812
    goto :goto_13

    .line 813
    :cond_11
    const-string v2, "AIDL"

    .line 815
    :goto_13
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 821
    move-result-object v2

    .line 822
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    .line 827
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 830
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFALI:I

    .line 832
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 835
    const-string v1, ", FABK : "

    .line 837
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFABK:I

    .line 842
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 845
    const-string v1, ", FAMO : "

    .line 847
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFAMO:I

    .line 852
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 855
    const-string v1, ", FALQ : "

    .line 857
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFALQ:I

    .line 862
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 865
    const-string v1, ", FANM : "

    .line 867
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    iget v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mFANM:I

    .line 872
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 878
    move-result-object v0

    .line 879
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 885
    move-result-object v0

    .line 886
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceDump(Ljava/io/PrintWriter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 889
    goto :goto_15

    .line 890
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 892
    const-string/jumbo v2, "dump: "

    .line 895
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 898
    invoke-static {v0, v1, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 901
    :goto_15
    return-void
.end method

.method public final dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 13
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    const-wide v0, 0x20b00000001L

    .line 29
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 32
    move-result-wide v0

    .line 33
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 35
    iget p1, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 37
    const-wide v2, 0x10500000001L

    .line 42
    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 45
    const-wide v4, 0x10e00000002L

    .line 50
    const/4 p1, 0x2

    .line 51
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 54
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 56
    iget p1, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 58
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    .line 61
    move-result p1

    .line 62
    const-wide v4, 0x10500000003L

    .line 67
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 70
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 72
    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dumpProtoState(Z)[B

    .line 75
    move-result-object p1

    .line 76
    const-wide v4, 0x10b00000004L

    .line 81
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 84
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    move-result-object p1

    .line 98
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    move-result p3

    .line 102
    if-eqz p3, :cond_0

    .line 104
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object p3

    .line 108
    check-cast p3, Landroid/content/pm/UserInfo;

    .line 110
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 113
    move-result-object p3

    .line 114
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 117
    move-result p3

    .line 118
    const-wide v4, 0x20b00000005L

    .line 123
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 126
    move-result-wide v4

    .line 127
    invoke-virtual {p2, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 130
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 132
    iget v6, v6, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 134
    const/4 v7, 0x0

    .line 135
    invoke-static {v6, v7}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 138
    move-result-object v6

    .line 139
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {v6, v7, p3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 144
    move-result-object p3

    .line 145
    check-cast p3, Ljava/util/ArrayList;

    .line 147
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 150
    move-result p3

    .line 151
    const-wide v6, 0x10500000002L

    .line 156
    invoke-virtual {p2, v6, v7, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 159
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 162
    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 165
    iget-boolean p1, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    .line 167
    const-wide v2, 0x10800000006L

    .line 172
    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 175
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 177
    iget-boolean p0, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    .line 179
    const-wide v2, 0x10800000007L

    .line 184
    invoke-virtual {p2, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 187
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 190
    :cond_1
    return-void
.end method

.method public final getAuthenticatorId(II)J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mAuthenticatorIds:Ljava/util/Map;

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p1

    .line 17
    const-wide/16 v0, 0x0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    move-result-object p2

    .line 23
    check-cast p0, Ljava/util/HashMap;

    .line 25
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/Long;

    .line 31
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 34
    move-result-wide p0

    .line 35
    return-wide p0
.end method

.method public declared-synchronized getHalInstance()Landroid/hardware/biometrics/face/IFace;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isTpaSehTestHalEnabled()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 17
    move-result-object v1

    .line 18
    iget v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSensorId:I

    .line 20
    sget-object v2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mSehTestHal:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 22
    const-class v2, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 24
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    sget-object v3, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mSehTestHal:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 27
    if-nez v3, :cond_0

    .line 29
    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 31
    invoke-direct {v3, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;-><init>(Landroid/content/Context;I)V

    .line 34
    sput-object v3, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mSehTestHal:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->mSehTestHal:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    monitor-exit p0

    .line 43
    return-object v0

    .line 44
    :goto_1
    :try_start_3
    monitor-exit v2

    .line 45
    throw v0

    .line 46
    :catchall_1
    move-exception v0

    .line 47
    goto/16 :goto_6

    .line 49
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mTestHalEnabled:Z

    .line 51
    if-eqz v0, :cond_2

    .line 53
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal;

    .line 55
    invoke-direct {v0}, Landroid/hardware/biometrics/face/IFace$Stub;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    monitor-exit p0

    .line 59
    return-object v0

    .line 60
    :cond_2
    :try_start_4
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mIsForHidl:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 62
    const/4 v1, 0x0

    .line 63
    if-eqz v0, :cond_3

    .line 65
    monitor-exit p0

    .line 66
    return-object v1

    .line 67
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    .line 69
    if-eqz v0, :cond_6

    .line 71
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isUsingSehAPI()Z

    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_5

    .line 81
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 84
    move-result-object v0

    .line 85
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 87
    if-eqz v1, :cond_4

    .line 89
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 91
    if-nez v0, :cond_5

    .line 93
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    const-string v1, "HAL connection closed, reconnecting"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 105
    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->semConnectSession(Landroid/hardware/biometrics/face/IFace;)V

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 113
    monitor-exit p0

    .line 114
    return-object v0

    .line 115
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    const-string v2, "Daemon was null, reconnecting"

    .line 121
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    sget-object v2, Landroid/hardware/biometrics/face/IFace;->DESCRIPTOR:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v2, "/"

    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHalInstanceName:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0}, Landroid/hardware/biometrics/face/IFace$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/IFace;

    .line 159
    move-result-object v0

    .line 160
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    .line 162
    if-nez v0, :cond_7

    .line 164
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    const-string v2, "Unable to get daemon"

    .line 170
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 173
    monitor-exit p0

    .line 174
    return-object v1

    .line 175
    :cond_7
    const/4 v2, 0x0

    .line 176
    :try_start_7
    invoke-interface {v0}, Landroid/hardware/biometrics/face/IFace;->asBinder()Landroid/os/IBinder;

    .line 179
    move-result-object v0

    .line 180
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 183
    goto :goto_2

    .line 184
    :catch_0
    move-exception v0

    .line 185
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 188
    move-result-object v3

    .line 189
    const-string v4, "Unable to linkToDeath"

    .line 191
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->isUsingSehAPI()Z

    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_8

    .line 204
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 207
    move-result-object v0

    .line 208
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;

    .line 210
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->semConnectSession(Landroid/hardware/biometrics/face/IFace;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 216
    move-result-object v0

    .line 217
    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsResetting:Z

    .line 219
    if-eqz v0, :cond_8

    .line 221
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 223
    monitor-exit p0

    .line 224
    return-object v0

    .line 225
    :cond_8
    move v0, v2

    .line 226
    :goto_3
    :try_start_9
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 228
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 230
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 233
    move-result v3

    .line 234
    if-ge v0, v3, :cond_a

    .line 236
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 238
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 240
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 243
    move-result v3

    .line 244
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 246
    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v4}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 253
    move-result-object v4

    .line 254
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 257
    move-result-object v4

    .line 258
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    move-result v5

    .line 262
    if-eqz v5, :cond_9

    .line 264
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    move-result-object v5

    .line 268
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 270
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 272
    invoke-virtual {p0, v3, v5}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleLoadAuthenticatorIdsForUser(II)V

    .line 275
    goto :goto_4

    .line 276
    :cond_9
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 279
    move-result v4

    .line 280
    invoke-virtual {p0, v3, v4, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    .line 285
    goto :goto_3

    .line 286
    :cond_a
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_b

    .line 292
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 294
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 296
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 299
    move-result v0

    .line 300
    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 303
    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 306
    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 313
    move-result-object v1

    .line 314
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 317
    move-result-object v1

    .line 318
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 321
    move-result v2

    .line 322
    if-eqz v2, :cond_b

    .line 324
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 327
    move-result-object v2

    .line 328
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 330
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 332
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 334
    invoke-virtual {v0, v3, v4}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 341
    move-result-object v4

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    .line 344
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    const-string v6, "Expecting enrollments for user "

    .line 349
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 354
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    const-string v2, ": "

    .line 359
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 365
    move-result-object v2

    .line 366
    new-instance v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda3;

    .line 368
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 371
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 374
    move-result-object v2

    .line 375
    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 378
    move-result-object v2

    .line 379
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    move-result-object v2

    .line 386
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    goto :goto_5

    .line 390
    :cond_b
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mDaemon:Landroid/hardware/biometrics/face/IFace;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 392
    monitor-exit p0

    .line 393
    return-object v0

    .line 394
    :goto_6
    monitor-exit p0

    .line 395
    throw v0
.end method

.method public final getLockoutModeForUser(II)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 11
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLockoutModeForUser(I)I

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getSensorProperties(I)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 15
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    return-object p0
.end method

.method public final getSensorProperties()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 6
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 9
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "FaceProvider/"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHalInstanceName:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final hasEnrollments(II)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 5
    move-result-object p1

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 15
    move-result p0

    .line 16
    xor-int/lit8 p0, p0, 0x1

    .line 18
    return p0
.end method

.method public final isHardwareDetected(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHalInstanceName:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->isHardwareDetected(Ljava/lang/String;)Z

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final scheduleForSensor(ILcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 2
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to schedule client: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for sensor: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final scheduleForSensor(ILcom/android/server/biometrics/sensors/HalClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 12
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 15
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 18
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 19
    invoke-virtual {p0, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unable to schedule client: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for sensor: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda1;

    .line 5
    check-cast p3, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;

    .line 7
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IILcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method public final scheduleLoadAuthenticatorIdsForUser(II)V
    .locals 3

    .line 1
    const-string/jumbo v0, "scheduleLoadAuthenticatorIdsForUser: "

    .line 4
    const-string v1, ", "

    .line 6
    const-string v2, "FaceProvider"

    .line 8
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 13
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;III)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method

.method public final scheduleWatchdog(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Starting watchdog for face"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 20
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 22
    if-nez p0, :cond_0

    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startWatchdog()V

    .line 28
    return-void
.end method

.method public final semGetRemainingLockoutTime(I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    .line 4
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 12
    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getRemainingLockoutTime(I)I

    .line 15
    move-result p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return p0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->getTag()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v2, "semGetRemainingLockoutTime: "

    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return v0
.end method
