.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mPrevSvcLedState:I

.field public static mSvcLedColor:I

.field public static mSvcLedMode:I

.field public static mSvcLedOffMS:I

.field public static mSvcLedOnMS:I

.field public static mSvcLedState:I


# instance fields
.field public isLightSensorEnabled:Z

.field public mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public mCoverBatteryLight:Lcom/android/server/lights/LogicalLight;

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mCoverNotiLight:Lcom/android/server/lights/LogicalLight;

.field public mCoverOpened:Z

.field public final mCoverStateListener:Lcom/android/server/lights/LightsService$3;

.field public mCoverType:I

.field public mDelayForcedSvcLEDTask:I

.field public final mH:Landroid/os/Handler;

.field public mInitCompleteForSvcLED:Z

.field public mInitializedWakeLockPath:Z

.field public mIsLEDChanged:Z

.field public mLastSvcLedId:I

.field public mLedLowPower:I

.field public final mLightListener:Lcom/android/server/lights/LightsService$4;

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLightsById:Landroid/util/SparseArray;

.field public final mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

.field final mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

.field public final mNewWakeLockPaths:[Ljava/lang/String;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public final mService:Lcom/android/server/lights/LightsService$2;

.field public mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

.field public final mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

.field public final mUpdateSvcLEDDelay:I

.field public mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

.field public mUseLEDAutoBrightness:Z

.field public mUsePatternLED:Z

.field public mUseSoftwareAutoBrightness:Z

.field public final mVintfLights:Ljava/util/function/Supplier;

.field public final mVintfSehLights:Ljava/util/function/Supplier;

.field public mWakeLockAcquired:Z

.field public mWakeLockPath:Ljava/lang/String;

.field public mWakeUnlockPath:Ljava/lang/String;


# direct methods
.method public static -$$Nest$macquireWakeLockForLED(Lcom/android/server/lights/LightsService;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    .line 3
    const-string v1, "LightsService"

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "acquireWakeLockForLED : WakeLock path is not initialized"

    .line 9
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    .line 15
    if-nez v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    .line 19
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public static -$$Nest$smcallerInfoToString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v1

    .line 9
    const-string v2, " (uid: "

    .line 11
    const-string v3, " pid: "

    .line 13
    const-string v4, ") "

    .line 15
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/lights/LightsService$VintfHalCache;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lcom/android/server/lights/LightsService$VintfHalCache;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/server/lights/LightsService$VintfHalCache;

    const/4 v4, 0x1

    .line 5
    invoke-direct {v3, v4}, Lcom/android/server/lights/LightsService$VintfHalCache;-><init>(I)V

    .line 6
    iput-object v1, v3, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    .line 7
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Looper;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Looper;Ljava/util/function/Supplier;)V
    .locals 9

    .line 8
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    const/16 v1, 0x2bc

    .line 10
    iput v1, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    .line 11
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    const v2, 0x927c0

    .line 13
    iput v2, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDDelay:I

    const/4 v2, 0x0

    .line 14
    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 15
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    const/4 v3, 0x2

    .line 16
    iput v3, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 17
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    .line 18
    const-string v3, "/sys/power/wake_lock"

    const-string v4, "/sys/power/wake_unlock"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    .line 19
    aget-object v4, v3, v0

    iput-object v4, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    .line 20
    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    .line 21
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    const/16 v3, 0xa

    .line 22
    new-array v4, v3, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v4, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 23
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    .line 24
    new-instance v5, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v5, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v5, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsService$2;

    .line 25
    new-instance v5, Lcom/android/server/lights/LightsService$3;

    invoke-direct {v5, p0}, Lcom/android/server/lights/LightsService$3;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v5, p0, Lcom/android/server/lights/LightsService;->mCoverStateListener:Lcom/android/server/lights/LightsService$3;

    .line 26
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    .line 27
    new-instance v5, Lcom/android/server/lights/LightsService$4;

    invoke-direct {v5, p0}, Lcom/android/server/lights/LightsService$4;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v5, p0, Lcom/android/server/lights/LightsService;->mLightListener:Lcom/android/server/lights/LightsService$4;

    const/4 v5, -0x1

    .line 28
    iput v5, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    const/4 v5, 0x3

    .line 29
    iput v5, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    .line 30
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    .line 31
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 32
    sget-boolean p3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_LIGHTS_HAL_EXTENSION:Z

    if-eqz p3, :cond_1

    .line 33
    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    .line 34
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p4, v2

    :goto_0
    iput-object p4, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    goto :goto_2

    .line 35
    :cond_1
    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    .line 36
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v2

    :goto_1
    iput-object p2, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    .line 37
    :goto_2
    iget-object p2, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    const-string p3, "LightsService"

    if-eqz p2, :cond_3

    .line 38
    const-string/jumbo p2, "populateAvailableLightsFromAidl"

    invoke-static {p3, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :try_start_0
    iget-object p2, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/light/ILights;

    check-cast p2, Landroid/hardware/light/ILights$Stub$Proxy;

    invoke-virtual {p2}, Landroid/hardware/light/ILights$Stub$Proxy;->getLights()[Landroid/hardware/light/HwLight;

    move-result-object p2

    array-length p4, p2

    move v2, v0

    :goto_3
    if-ge v2, p4, :cond_5

    aget-object v5, p2, v2

    .line 40
    iget-object v6, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    iget v7, v5, Landroid/hardware/light/HwLight;->id:I

    new-instance v8, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-direct {v8, p0, v5}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/hardware/light/HwLight;)V

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception p2

    .line 41
    const-string p4, "Unable to get lights from HAL"

    invoke-static {p3, p4, p2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 42
    :cond_3
    iget-object p2, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    if-eqz p2, :cond_4

    .line 43
    const-string/jumbo p2, "populateAvailableLightsFromAidlExtension"

    invoke-static {p3, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :try_start_1
    iget-object p2, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lvendor/samsung/hardware/light/ISehLights;

    check-cast p2, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;

    invoke-virtual {p2}, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->getLights()[Lvendor/samsung/hardware/light/SehHwLight;

    move-result-object p2

    array-length p4, p2

    move v2, v0

    :goto_4
    if-ge v2, p4, :cond_5

    aget-object v5, p2, v2

    .line 45
    new-instance v6, Landroid/hardware/light/HwLight;

    invoke-direct {v6}, Landroid/hardware/light/HwLight;-><init>()V

    .line 46
    iget v7, v5, Lvendor/samsung/hardware/light/SehHwLight;->id:I

    int-to-byte v7, v7

    iput v7, v6, Landroid/hardware/light/HwLight;->id:I

    .line 47
    iget v8, v5, Lvendor/samsung/hardware/light/SehHwLight;->ordinal:I

    int-to-byte v8, v8

    iput v8, v6, Landroid/hardware/light/HwLight;->ordinal:I

    .line 48
    iget v5, v5, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    int-to-byte v5, v5

    iput-byte v5, v6, Landroid/hardware/light/HwLight;->type:B

    .line 49
    iget-object v5, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-direct {v8, p0, v6}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/hardware/light/HwLight;)V

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_1
    move-exception p2

    .line 50
    const-string p4, "Unable to get lights from HAL extension"

    invoke-static {p3, p4, p2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 51
    :cond_4
    const-string/jumbo p2, "populateAvailableLightsFromHidl"

    invoke-static {p3, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v0

    :goto_5
    if-ge p2, v3, :cond_5

    .line 52
    new-instance p4, Landroid/hardware/light/HwLight;

    invoke-direct {p4}, Landroid/hardware/light/HwLight;-><init>()V

    int-to-byte v2, p2

    .line 53
    iput v2, p4, Landroid/hardware/light/HwLight;->id:I

    .line 54
    iput v1, p4, Landroid/hardware/light/HwLight;->ordinal:I

    .line 55
    iput-byte v2, p4, Landroid/hardware/light/HwLight;->type:B

    .line 56
    iget-object v5, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-direct {v6, p0, p4}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/hardware/light/HwLight;)V

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 57
    :cond_5
    :goto_6
    iget-object p2, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_7
    if-ltz p2, :cond_7

    .line 58
    iget-object p4, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/lights/LightsService$LightImpl;

    .line 59
    iget-object v1, p4, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte v1, v1, Landroid/hardware/light/HwLight;->type:B

    if-ltz v1, :cond_6

    if-ge v1, v3, :cond_6

    .line 60
    aput-object p4, v4, v1

    .line 61
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v1, "populateAvailableLights: "

    invoke-virtual {v1, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    .line 62
    :cond_7
    new-instance p2, Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    invoke-direct {p2, p0}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object p2, p0, Lcom/android/server/lights/LightsService;->mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    .line 63
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    .line 64
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    .line 65
    new-instance p1, Lcom/android/server/lights/LightsService$1;

    invoke-direct {p1, p0}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    .line 66
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 67
    monitor-enter p1

    .line 68
    :catch_2
    :goto_8
    :try_start_2
    iget-boolean p2, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_8

    .line 69
    :try_start_3
    iget-object p2, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception p0

    goto :goto_9

    .line 70
    :cond_8
    :try_start_4
    monitor-exit p1

    return-void

    :goto_9
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static native setLight_native(IIIIII)V
.end method

.method public static translateID(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 4
    :pswitch_0
    const-string/jumbo p0, "translateID error"

    .line 7
    return-object p0

    .line 8
    :pswitch_1
    const-string p0, "COUNT"

    .line 10
    return-object p0

    .line 11
    :pswitch_2
    const-string p0, "SUB_BACKLIGHT"

    .line 13
    return-object p0

    .line 14
    :pswitch_3
    const-string p0, "WIFI"

    .line 16
    return-object p0

    .line 17
    :pswitch_4
    const-string p0, "BLUETOOTH"

    .line 19
    return-object p0

    .line 20
    :pswitch_5
    const-string p0, "ATTENTION"

    .line 22
    return-object p0

    .line 23
    :pswitch_6
    const-string p0, "NOTIFICATIONS"

    .line 25
    return-object p0

    .line 26
    :pswitch_7
    const-string p0, "BATTERY"

    .line 28
    return-object p0

    .line 29
    :pswitch_8
    const-string p0, "BUTTON"

    .line 31
    return-object p0

    .line 32
    :pswitch_9
    const-string p0, "KEYBOARD"

    .line 34
    return-object p0

    .line 35
    :pswitch_a
    const-string p0, "BACKLIGHT"

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static translateLightType(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 4
    :pswitch_0
    const-string/jumbo p0, "translateLightType error"

    .line 7
    return-object p0

    .line 8
    :pswitch_1
    const-string p0, "SUB_BACKLIGHT"

    .line 10
    return-object p0

    .line 11
    :pswitch_2
    const-string p0, "WIFI"

    .line 13
    return-object p0

    .line 14
    :pswitch_3
    const-string p0, "BLUETOOTH"

    .line 16
    return-object p0

    .line 17
    :pswitch_4
    const-string p0, "ATTENTION"

    .line 19
    return-object p0

    .line 20
    :pswitch_5
    const-string p0, "NOTIFICATIONS"

    .line 22
    return-object p0

    .line 23
    :pswitch_6
    const-string p0, "BATTERY"

    .line 25
    return-object p0

    .line 26
    :pswitch_7
    const-string p0, "BUTTON"

    .line 28
    return-object p0

    .line 29
    :pswitch_8
    const-string p0, "KEYBOARD"

    .line 31
    return-object p0

    .line 32
    :pswitch_9
    const-string p0, "BACKLIGHT"

    .line 34
    return-object p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final enableSvcLEDLightSensorLocked(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    .line 3
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    sget p1, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 14
    if-eqz p1, :cond_1

    .line 16
    iget-boolean p1, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    .line 18
    if-nez p1, :cond_2

    .line 20
    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Lcom/android/server/lights/LightsService$4;

    .line 22
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    .line 24
    const/4 v2, 0x3

    .line 25
    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    .line 34
    if-eqz p1, :cond_2

    .line 36
    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Lcom/android/server/lights/LightsService$4;

    .line 38
    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 41
    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 5

    .line 1
    const/16 v0, 0x1f4

    .line 3
    if-ne p1, v0, :cond_7

    .line 5
    const-string p1, "[SvcLED] systemReady"

    .line 7
    const-string v0, "LightsService"

    .line 9
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    .line 14
    const-string v1, "alarm"

    .line 16
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/app/AlarmManager;

    .line 22
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    .line 24
    new-instance p1, Landroid/content/Intent;

    .line 26
    const/4 v1, 0x0

    .line 27
    const-string/jumbo v2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    .line 30
    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 33
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    .line 35
    const/high16 v3, 0x4000000

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static {v1, v4, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    .line 44
    new-instance p1, Landroid/hardware/SystemSensorManager;

    .line 46
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    .line 48
    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    .line 50
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 53
    move-result-object v3

    .line 54
    invoke-direct {p1, v1, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 57
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 59
    iget-boolean v1, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    .line 61
    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x5

    .line 64
    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    .line 70
    :cond_0
    new-instance p1, Lcom/samsung/android/cover/CoverManager;

    .line 72
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    .line 74
    invoke-direct {p1, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 77
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 79
    const-string/jumbo p1, "initCoverState()start"

    .line 82
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 87
    if-eqz p1, :cond_2

    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 98
    move-result v1

    .line 99
    iput v1, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 101
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 104
    move-result p1

    .line 105
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v1, "initCoverState() coverstate : "

    .line 112
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    iget v1, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 117
    invoke-static {p1, v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 120
    goto :goto_0

    .line 121
    :cond_1
    const-string/jumbo p1, "initCoverState() : state is null"

    .line 124
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    goto :goto_0

    .line 128
    :cond_2
    const-string/jumbo p1, "initCoverState() : mCoverManager is null!!!!"

    .line 131
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 136
    if-eqz p1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverStateListener:Lcom/android/server/lights/LightsService$3;

    .line 140
    invoke-virtual {p1, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 143
    goto :goto_1

    .line 144
    :cond_3
    const-string/jumbo p1, "initLightsService() : mCoverManager is null!!!!"

    .line 147
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_1
    iget-boolean p1, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    .line 152
    if-nez p1, :cond_6

    .line 154
    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    .line 156
    aget-object v1, p1, v4

    .line 158
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_5

    .line 164
    aget-object v1, p1, v4

    .line 166
    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    .line 168
    const/4 v1, 0x1

    .line 169
    aget-object v3, p1, v1

    .line 171
    invoke-static {v3}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_4

    .line 177
    aget-object p1, p1, v1

    .line 179
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    .line 181
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    .line 183
    goto :goto_2

    .line 184
    :cond_4
    const-string/jumbo p1, "wake_unlock path does not exists "

    .line 187
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    goto :goto_2

    .line 191
    :cond_5
    const-string/jumbo p1, "wake_lock path does not exists"

    .line 194
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_6
    :goto_2
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 200
    move-result-object p1

    .line 201
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    .line 203
    new-instance v1, Lcom/android/server/lights/LightsService$SvcLEDReceiver;

    .line 205
    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/lights/LightsService;)V

    .line 208
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    :cond_7
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsService$2;

    .line 3
    const-class v1, Lcom/android/server/lights/LightsManager;

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 8
    const-string/jumbo v0, "lights"

    .line 11
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 16
    return-void
.end method

.method public final setSvcLedLightLocked(I)V
    .locals 8

    .line 1
    const/16 v0, 0x14

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge p1, v0, :cond_0

    .line 7
    move p1, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, v1

    .line 10
    :goto_0
    if-ne p1, v2, :cond_1

    .line 12
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    .line 14
    if-eq v0, v2, :cond_1

    .line 16
    iget v0, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 18
    const/16 v3, 0x8

    .line 20
    if-ne v0, v3, :cond_1

    .line 22
    move p1, v1

    .line 23
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    .line 25
    if-eqz v0, :cond_2

    .line 27
    iget v0, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    .line 29
    if-eq p1, v0, :cond_2

    .line 31
    iput p1, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    .line 33
    const-string v0, "/sys/class/sec/led/led_lowpower"

    .line 35
    sget v3, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo v4, "fileWriteInt to /sys/class/sec/led/led_lowpower, "

    .line 42
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    const-string v4, "PowerManagerUtil"

    .line 54
    invoke-static {v4, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .line 59
    new-instance v4, Ljava/io/File;

    .line 61
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    goto :goto_3

    .line 82
    :catch_0
    move-exception p1

    .line 83
    goto :goto_2

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    goto :goto_1

    .line 89
    :catchall_1
    move-exception v0

    .line 90
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 93
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 94
    :goto_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    :goto_3
    iput-boolean v2, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    .line 99
    :cond_2
    move p1, v1

    .line 100
    :goto_4
    const/4 v0, 0x6

    .line 101
    if-ge p1, v0, :cond_4

    .line 103
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 105
    shr-int/2addr v0, p1

    .line 106
    and-int/2addr v0, v2

    .line 107
    if-eqz v0, :cond_3

    .line 109
    goto :goto_5

    .line 110
    :cond_3
    add-int/2addr p1, v2

    .line 111
    goto :goto_4

    .line 112
    :cond_4
    :goto_5
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 114
    if-nez v0, :cond_5

    .line 116
    iget p1, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    .line 118
    move v0, v1

    .line 119
    goto :goto_9

    .line 120
    :cond_5
    const/4 v0, 0x3

    .line 121
    if-eqz p1, :cond_b

    .line 123
    const/4 v3, 0x4

    .line 124
    if-eq p1, v2, :cond_a

    .line 126
    const/4 v4, 0x2

    .line 127
    if-eq p1, v4, :cond_9

    .line 129
    if-eq p1, v0, :cond_8

    .line 131
    if-eq p1, v3, :cond_7

    .line 133
    const/4 v3, 0x5

    .line 134
    if-eq p1, v3, :cond_6

    .line 136
    move v0, v1

    .line 137
    :goto_6
    move p1, v3

    .line 138
    goto :goto_9

    .line 139
    :cond_6
    const/16 p1, 0xe

    .line 141
    :goto_7
    move v7, v0

    .line 142
    move v0, p1

    .line 143
    move p1, v7

    .line 144
    goto :goto_9

    .line 145
    :cond_7
    const/16 p1, 0xd

    .line 147
    goto :goto_7

    .line 148
    :cond_8
    const/16 p1, 0xa

    .line 150
    goto :goto_7

    .line 151
    :cond_9
    sget p1, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    .line 153
    :goto_8
    move v0, p1

    .line 154
    goto :goto_6

    .line 155
    :cond_a
    const/16 p1, 0xc

    .line 157
    goto :goto_8

    .line 158
    :cond_b
    const/16 p1, 0xb

    .line 160
    goto :goto_7

    .line 161
    :goto_9
    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 163
    aget-object v3, v3, p1

    .line 165
    sget v4, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    .line 167
    sget v5, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    .line 169
    sget v6, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    .line 171
    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIII)V

    .line 174
    iget v0, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    .line 176
    const-string v3, "LightsService"

    .line 178
    if-eq v0, p1, :cond_c

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    const-string v4, "[SvcLED] setSvcLedLightLocked : priority changed! SvcLED("

    .line 184
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    iget v4, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    .line 189
    invoke-static {v4}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v4, ") OUT; ("

    .line 198
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {p1}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v4, ") IN"

    .line 210
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object v0

    .line 217
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    goto :goto_a

    .line 221
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    const-string v4, "[SvcLED] setSvcLedLightLocked : Current SvcLED("

    .line 225
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-static {p1}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v4, ") maintains its priority right"

    .line 237
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object v0

    .line 244
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_a
    iput p1, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    .line 249
    iget-boolean p1, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    .line 251
    if-nez p1, :cond_d

    .line 253
    const-string/jumbo p0, "releaseWakeLockForLED: WakeLock path is not initialized"

    .line 256
    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    goto :goto_b

    .line 260
    :cond_d
    iget-boolean p1, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    .line 262
    if-eqz p1, :cond_e

    .line 264
    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 266
    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 269
    move-result p1

    .line 270
    if-nez p1, :cond_e

    .line 272
    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    .line 274
    invoke-static {p1, v3}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    .line 279
    :cond_e
    :goto_b
    return-void
.end method

.method public final setSvcLedStateLocked(IIIIIZ)V
    .locals 5

    .line 1
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 3
    sput v0, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x1

    .line 7
    const-string v3, "LightsService"

    .line 9
    if-eq p1, v1, :cond_3

    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq p1, v1, :cond_0

    .line 14
    invoke-static {p1}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    const-string p3, "[SvcLED] setSvcLedStateLocked : Not Support, "

    .line 20
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    invoke-static {v3, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    if-eqz p6, :cond_2

    .line 30
    const/16 v4, 0xc

    .line 32
    if-ne p3, v4, :cond_1

    .line 34
    or-int/lit8 p2, v0, 0x2

    .line 36
    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    or-int/2addr v0, v1

    .line 40
    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 42
    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    .line 44
    sput p3, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    .line 46
    sput p4, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    .line 48
    sput p5, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    and-int/lit8 p2, v0, -0x7

    .line 53
    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    const/16 p2, -0x3a

    .line 58
    and-int/lit8 p4, v0, -0x3a

    .line 60
    sput p4, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 62
    if-eqz p6, :cond_4

    .line 64
    packed-switch p3, :pswitch_data_0

    .line 67
    :pswitch_0
    goto :goto_0

    .line 68
    :pswitch_1
    const/16 p2, 0x20

    .line 70
    goto :goto_0

    .line 71
    :pswitch_2
    const/16 p2, 0x10

    .line 73
    goto :goto_0

    .line 74
    :pswitch_3
    move p2, v2

    .line 75
    goto :goto_0

    .line 76
    :pswitch_4
    const/16 p2, 0x8

    .line 78
    :goto_0
    or-int/2addr p2, p4

    .line 79
    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 81
    :cond_4
    :goto_1
    sget p2, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    .line 83
    sget p3, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 85
    if-eq p2, p3, :cond_5

    .line 87
    iput-boolean v2, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    .line 89
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 91
    const-string p2, "[SvcLED] setSvcLedStateLocked : SvcLEDState: 0x"

    .line 93
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    sget p2, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    .line 98
    const-string p3, " -> 0x"

    .line 100
    invoke-static {p2, p0, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 103
    sget p2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 105
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string p2, " | SvcLED("

    .line 114
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {p1}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string p1, ") set "

    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    if-eqz p6, :cond_6

    .line 131
    const-string p1, "On"

    .line 133
    goto :goto_2

    .line 134
    :cond_6
    const-string p1, "Off"

    .line 136
    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p0

    .line 143
    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
