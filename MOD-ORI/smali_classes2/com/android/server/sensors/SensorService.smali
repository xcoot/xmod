.class public Lcom/android/server/sensors/SensorService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final START_NATIVE_SENSOR_SERVICE:Ljava/lang/String; = "StartNativeSensorService"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mProximityListeners:Landroid/util/ArrayMap;

.field public mPtr:J

.field public final mRuntimeSensorHandles:Ljava/util/Set;

.field public mSensorServiceStart:Ljava/util/concurrent/Future;


# direct methods
.method public static synthetic $r8$lambda$tuvhrgJDhAzfGFTh_3IUBIw3Spg(Lcom/android/server/sensors/SensorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/sensors/SensorService;->lambda$new$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$smregisterProximityActiveListenerNative(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/sensors/SensorService;->registerProximityActiveListenerNative(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$smregisterRuntimeSensorNative(JIILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;)I
    .locals 0

    .line 1
    invoke-static/range {p0 .. p12}, Lcom/android/server/sensors/SensorService;->registerRuntimeSensorNative(JIILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic -$$Nest$smsendRuntimeSensorEventNative(JIIJ[F)Z
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/android/server/sensors/SensorService;->sendRuntimeSensorEventNative(JIIJ[F)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic -$$Nest$smunregisterRuntimeSensorNative(IJ)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p0}, Lcom/android/server/sensors/SensorService;->unregisterRuntimeSensorNative(JI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mRuntimeSensorHandles:Ljava/util/Set;

    .line 24
    .line 25
    monitor-enter p1

    .line 26
    :try_start_0
    new-instance v0, Lcom/android/server/sensors/SensorService$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/android/server/sensors/SensorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensors/SensorService;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "StartNativeSensorService"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 38
    .line 39
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "StartNativeSensorService"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;-><init>(Lcom/android/server/sensors/SensorService;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->startSensorServiceNative(Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iget-object v3, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v3

    .line 22
    :try_start_0
    iput-wide v1, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    .line 23
    .line 24
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0
.end method

.method private static native registerProximityActiveListenerNative(J)V
.end method

.method private static native registerRuntimeSensorNative(JIILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;)I
.end method

.method private static native sendRuntimeSensorEventNative(JIIJ[F)Z
.end method

.method private static native startSensorServiceNative(Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)J
.end method

.method private static native unregisterProximityActiveListenerNative(J)V
.end method

.method private static native unregisterRuntimeSensorNative(JI)V
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0xc8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 6
    .line 7
    const-string v0, "StartNativeSensorService"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter p1

    .line 15
    const/4 v0, 0x0

    .line 16
    :try_start_0
    iput-object v0, p0, Lcom/android/server/sensors/SensorService;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 17
    .line 18
    monitor-exit p1

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0

    .line 23
    :cond_0
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/sensors/SensorService$LocalService;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/sensors/SensorService$LocalService;-><init>(Lcom/android/server/sensors/SensorService;)V

    .line 4
    .line 5
    .line 6
    const-class p0, Lcom/android/server/sensors/SensorService$LocalService;

    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
