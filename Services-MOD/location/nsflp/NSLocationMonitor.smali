.class public final Lcom/android/server/location/nsflp/NSLocationMonitor;
.super Landroid/location/INSLocationCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MONITOR_SERVICE_LOCK:Ljava/lang/Object;


# instance fields
.field public mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mConnectedHistory:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mCrashCount:I

.field public mCrashTime:J

.field public mDeviceActivityDuration:I

.field public mDeviceActivityMode:I

.field public mDeviceActivityRegistered:Z

.field public final mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

.field public final mDeviceIdleListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda2;

.field public final mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

.field public final mDisconnectedHistory:Ljava/util/ArrayList;

.field public mEnableFeatureDeviceActivity:Z

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mForegroundNotificationList:Ljava/util/Map;

.field public final mHandler:Landroid/os/Handler;

.field public mHqmManager:Landroid/os/ISemHqmManager;

.field public final mInjector:Lcom/android/server/location/injector/Injector;

.field public mIsStationary:Z

.field public mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field public final mLocationPowerSaveModeChangedListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;

.field public final mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

.field public final mLooper:Landroid/os/Looper;

.field public mMonitorService:Landroid/location/INSLocationManager;

.field public final mMonitorServiceConnection:Lcom/android/server/location/nsflp/NSLocationMonitor$2;

.field public final mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public final mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

.field public final mNetworkLock:Ljava/lang/Object;

.field public final mNotificationListener:Lcom/android/server/location/nsflp/NSLocationMonitor$4;

.field public mNsUtLogger:Lcom/android/server/location/nsflp/NSUtLogger;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field public mRegisteredNotificationListener:Z

.field public mRequestToUpdate:Z

.field public final mSemContextListener:Lcom/android/server/location/nsflp/NSLocationMonitor$5;

.field public mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field public mSimCount:I

.field public mSimSubId:[I

.field public final mStationaryListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;

.field public final mSubscriptionListener:Lcom/android/server/location/nsflp/NSLocationMonitor$3;

.field public mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

.field public mSupportHqm:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

.field public final mSystemRunningTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->MONITOR_SERVICE_LOCK:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService$SystemInjector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/location/INSLocationCallback$Stub;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mConnectedHistory:Ljava/util/ArrayList;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDisconnectedHistory:Ljava/util/ArrayList;

    .line 21
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mMonitorService:Landroid/location/INSLocationManager;

    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRegisteredNotificationListener:Z

    .line 26
    new-instance v1, Ljava/util/HashMap;

    .line 28
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mForegroundNotificationList:Ljava/util/Map;

    .line 33
    new-instance v1, Ljava/lang/Object;

    .line 35
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNetworkLock:Ljava/lang/Object;

    .line 40
    sget-object v1, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    .line 42
    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    .line 44
    sget-object v1, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->UNKNOWN:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    .line 46
    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportHqm:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    .line 48
    new-instance v1, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;

    .line 50
    invoke-direct {v1, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    .line 53
    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;

    .line 55
    new-instance v1, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;

    .line 57
    invoke-direct {v1, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    .line 60
    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mStationaryListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;

    .line 62
    new-instance v1, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda2;

    .line 64
    invoke-direct {v1, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    .line 67
    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceIdleListener:Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda2;

    .line 69
    iput v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mCrashCount:I

    .line 71
    const-wide/16 v0, 0x0

    .line 73
    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mCrashTime:J

    .line 75
    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$2;

    .line 77
    invoke-direct {v0, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$2;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    .line 80
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mMonitorServiceConnection:Lcom/android/server/location/nsflp/NSLocationMonitor$2;

    .line 82
    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$3;

    .line 84
    invoke-direct {v0, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$3;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    .line 87
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSubscriptionListener:Lcom/android/server/location/nsflp/NSLocationMonitor$3;

    .line 89
    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;

    .line 91
    invoke-direct {v0, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$4;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    .line 94
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNotificationListener:Lcom/android/server/location/nsflp/NSLocationMonitor$4;

    .line 96
    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;

    .line 98
    invoke-direct {v0, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor$5;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V

    .line 101
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/android/server/location/nsflp/NSLocationMonitor$5;

    .line 103
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 107
    sget-object p1, Lcom/android/server/location/nsflp/NSLocationThread;->sInstance:Lcom/android/server/location/nsflp/NSLocationThread;

    .line 109
    const-class p1, Lcom/android/server/location/nsflp/NSLocationThread;

    .line 111
    monitor-enter p1

    .line 112
    :try_start_0
    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationThread;->ensureThreadLocked()V

    .line 115
    sget-object v0, Lcom/android/server/location/nsflp/NSLocationThread;->sHandler:Landroid/os/Handler;

    .line 117
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mHandler:Landroid/os/Handler;

    .line 120
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLooper:Landroid/os/Looper;

    .line 126
    const-class v0, Lcom/android/server/location/nsflp/NSLocationThread;

    .line 128
    monitor-enter v0

    .line 129
    :try_start_1
    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationThread;->ensureThreadLocked()V

    .line 132
    sget-object p1, Lcom/android/server/location/nsflp/NSLocationThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 134
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 137
    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 139
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 141
    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 143
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 148
    move-result-wide v0

    .line 149
    iput-wide v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSystemRunningTime:J

    .line 151
    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    .line 153
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    .line 155
    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    .line 157
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    .line 159
    iget-object p1, p2, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    .line 161
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    .line 163
    return-void

    .line 164
    :catchall_0
    move-exception p0

    .line 165
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    throw p0

    .line 167
    :catchall_1
    move-exception p0

    .line 168
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    throw p0
.end method

.method public static isCallerNsflp()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1395

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method


# virtual methods
.method public final disableDeviceActivity(Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->setFeatureDeviceActivity(Z)Z

    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    const-string/jumbo v1, "code"

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 22
    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->DEVICE_ACTIVITY_ERROR:Landroid/location/LocationConstants$STATE_TYPE;

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method public final getActiveRequests(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 3
    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 10
    return-object v2

    .line 11
    :cond_0
    move-object/from16 v1, p0

    .line 13
    iget-object v1, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 15
    check-cast v1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 17
    iget-object v1, v1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object v1, v1, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationMap:Ljava/util/Map;

    .line 29
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/util/Set;

    .line 37
    if-eqz v1, :cond_1

    .line 39
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 45
    :cond_1
    move-object v6, v2

    .line 46
    goto/16 :goto_2

    .line 48
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v1

    .line 52
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v4

    .line 56
    const-string v5, "NSLocationProviderHelper"

    .line 58
    if-eqz v4, :cond_5

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 66
    iget-object v6, v4, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 68
    invoke-virtual {v4}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 71
    move-result-object v7

    .line 72
    invoke-virtual {v7}, Landroid/location/LocationRequest;->getQuality()I

    .line 75
    move-result v8

    .line 76
    invoke-virtual {v6}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 79
    move-result-object v9

    .line 80
    invoke-virtual {v6}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 83
    move-result v10

    .line 84
    invoke-virtual {v6}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 87
    move-result v6

    .line 88
    const/16 v11, 0x64

    .line 90
    if-ne v8, v11, :cond_3

    .line 92
    const/4 v11, 0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const/4 v11, 0x0

    .line 95
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    .line 98
    move-result v13

    .line 99
    iget-object v14, v4, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mListenerId:Ljava/lang/String;

    .line 101
    move-object/from16 p0, v3

    .line 103
    invoke-virtual {v7}, Landroid/location/LocationRequest;->getIntervalMillis()J

    .line 106
    move-result-wide v2

    .line 107
    move/from16 v16, v13

    .line 109
    invoke-virtual {v7}, Landroid/location/LocationRequest;->getMinUpdateIntervalMillis()J

    .line 112
    move-result-wide v12

    .line 113
    move-object/from16 v17, v5

    .line 115
    move/from16 v18, v6

    .line 117
    invoke-virtual {v7}, Landroid/location/LocationRequest;->getIntervalMillis()J

    .line 120
    move-result-wide v5

    .line 121
    iget-boolean v7, v4, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isListenerType:Z

    .line 123
    move/from16 v19, v10

    .line 125
    move/from16 v20, v11

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 130
    move-result-wide v10

    .line 131
    invoke-virtual {v4}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isPermitted()Z

    .line 134
    move-result v4

    .line 135
    if-eqz v0, :cond_4

    .line 137
    if-eqz v14, :cond_4

    .line 139
    if-eqz v9, :cond_4

    .line 141
    new-instance v15, Lcom/android/server/location/nsflp/LocationRequestInfo;

    .line 143
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 146
    move-object/from16 v21, v1

    .line 148
    const/4 v1, 0x0

    .line 149
    iput-boolean v1, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    .line 151
    move v1, v4

    .line 152
    move-wide/from16 v22, v5

    .line 154
    const-wide/16 v4, 0x0

    .line 156
    iput-wide v4, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    .line 158
    iput-object v9, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    .line 160
    const/4 v6, 0x0

    .line 161
    iput-object v6, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->versionName:Ljava/lang/String;

    .line 163
    iput-object v14, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->listenerId:Ljava/lang/String;

    .line 165
    iput-object v0, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->provider:Ljava/lang/String;

    .line 167
    iput v8, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->quality:I

    .line 169
    iput-wide v10, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->requestTime:J

    .line 171
    iput-wide v4, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundTime:J

    .line 173
    iput-wide v2, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    .line 175
    iput-wide v12, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->minUpdateInterval:J

    .line 177
    move-wide/from16 v2, v22

    .line 179
    iput-wide v2, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->maxWaitTime:J

    .line 181
    const/4 v2, 0x0

    .line 182
    iput v2, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->requester:I

    .line 184
    move/from16 v2, v16

    .line 186
    iput-boolean v2, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    .line 188
    const v2, 0x7fffffff

    .line 191
    iput v2, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->numUpdates:I

    .line 193
    move/from16 v2, v19

    .line 195
    iput v2, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->uid:I

    .line 197
    move/from16 v2, v18

    .line 199
    iput v2, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->pid:I

    .line 201
    iput-boolean v7, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->isListenerType:Z

    .line 203
    iput-boolean v1, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    .line 205
    move/from16 v11, v20

    .line 207
    iput-boolean v11, v15, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    .line 211
    const-string/jumbo v2, "onActiveRequestSync, added "

    .line 214
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v1

    .line 224
    move-object/from16 v2, v17

    .line 226
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    move-object/from16 v3, p0

    .line 231
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    move-object v2, v6

    .line 235
    move-object/from16 v1, v21

    .line 237
    goto/16 :goto_0

    .line 239
    :cond_4
    move v1, v4

    .line 240
    new-instance v2, Ljava/lang/NullPointerException;

    .line 242
    const-string v3, "New requestInfo mandatory fields are null,PackageName="

    .line 244
    const-string v4, "/ListenerId="

    .line 246
    const-string v5, "/Provider="

    .line 248
    invoke-static {v3, v9, v4, v14, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    move-result-object v3

    .line 252
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v0, "/isAllowed="

    .line 257
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    move-result-object v0

    .line 267
    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 270
    throw v2

    .line 271
    :cond_5
    move-object v6, v2

    .line 272
    move-object v2, v5

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    .line 275
    const-string/jumbo v4, "onActiveRequestSync, size="

    .line 278
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 284
    move-result v4

    .line 285
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    move-result-object v1

    .line 292
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_6

    .line 301
    :goto_2
    move-object v2, v6

    .line 302
    goto :goto_3

    .line 303
    :cond_6
    new-instance v2, Landroid/os/Bundle;

    .line 305
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 308
    const-string/jumbo v1, "provider"

    .line 311
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v0, "activeRequests"

    .line 316
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 319
    :goto_3
    return-object v2
.end method

.method public final getCrashCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mCrashCount:I

    .line 3
    return p0
.end method

.method public final getCrashTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mCrashTime:J

    .line 3
    return-wide v0
.end method

.method public final getUidState(II)Landroid/os/Bundle;
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 11
    check-cast v0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 13
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    .line 15
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSPermissionHelper;->mUidObserver:Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;

    .line 17
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;->mUidState:Ljava/util/HashMap;

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;

    .line 29
    if-nez v0, :cond_1

    .line 31
    return-object v1

    .line 32
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    .line 34
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    iget v2, v0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->state:I

    .line 39
    const-string/jumbo v3, "procState"

    .line 42
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    iget v0, v0, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->capability:I

    .line 47
    const/4 v2, 0x1

    .line 48
    and-int/2addr v0, v2

    .line 49
    if-ne v0, v2, :cond_2

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v2, 0x0

    .line 53
    :goto_0
    const-string/jumbo v0, "hasLocationCapability"

    .line 56
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p0, p1, p2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    .line 64
    move-result p0

    .line 65
    const-string/jumbo p1, "permissionLevel"

    .line 68
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    return-object v1
.end method

.method public final isLocationEnabled(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 11
    check-cast p0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 13
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isProviderEnabled(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 11
    if-nez v0, :cond_1

    .line 13
    const-class v0, Landroid/location/LocationManagerInternal;

    .line 15
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/location/LocationManagerInternal;

    .line 21
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 25
    if-eqz p0, :cond_2

    .line 27
    invoke-virtual {p0, p1, p2}, Landroid/location/LocationManagerInternal;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_2
    return v1
.end method

.method public final noteGpsOp(II)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 10
    const-string v1, "NSLocationMonitor"

    .line 12
    if-nez v0, :cond_1

    .line 14
    const-string v0, "batterystats"

    .line 16
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 26
    if-nez v0, :cond_1

    .line 28
    const-string p0, "Failed to get batterystats"

    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void

    .line 34
    :cond_1
    const-string/jumbo v0, "noteGpsOp, mode="

    .line 37
    const-string v2, " ("

    .line 39
    const-string v3, ")"

    .line 41
    invoke-static {p1, p2, v0, v2, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x1

    .line 49
    if-ne p1, v0, :cond_2

    .line 51
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 53
    invoke-interface {p0, p2}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v0, 0x2

    .line 58
    if-ne p1, v0, :cond_3

    .line 60
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 62
    invoke-interface {p0, p2}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/4 p2, 0x3

    .line 67
    if-ne p1, p2, :cond_4

    .line 69
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 71
    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->noteResetGps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    const-string p0, "Failed to call noteGpsOp"

    .line 77
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_4
    :goto_0
    return-void
.end method

.method public final notifyCrash(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mCrashCount:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mCrashCount:I

    .line 7
    iput-wide p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mCrashTime:J

    .line 9
    return-void
.end method

.method public final registerDeviceActivityDetector(IIZ)V
    .locals 8

    .line 1
    const-string v0, "Success registerDeviceActivityDetector, mode : "

    .line 3
    iget-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    .line 5
    const-string v2, "NSLocationMonitor"

    .line 7
    if-nez v1, :cond_0

    .line 9
    const-string p0, "Failed registerDeviceActivityDetector"

    .line 11
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityRegistered:Z

    .line 17
    const-string v3, ", requestToUpdate : "

    .line 19
    const-string v4, ", duration : "

    .line 21
    const/16 v5, 0x36

    .line 23
    if-eqz v1, :cond_2

    .line 25
    iget v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityDuration:I

    .line 27
    if-ne v1, p2, :cond_1

    .line 29
    iget v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityMode:I

    .line 31
    if-ne v1, p1, :cond_1

    .line 33
    iget-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRequestToUpdate:Z

    .line 35
    if-ne v1, p3, :cond_1

    .line 37
    const-string p0, "Already registered same attribute, mode : "

    .line 39
    invoke-static {p1, p2, p0, v4, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 56
    iget-object v6, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/android/server/location/nsflp/NSLocationMonitor$5;

    .line 58
    invoke-virtual {v1, v6, v5}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 61
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 63
    iget-object v6, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/android/server/location/nsflp/NSLocationMonitor$5;

    .line 65
    iget-object v7, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mLooper:Landroid/os/Looper;

    .line 67
    invoke-virtual {v1, v6, v5, v7}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILandroid/os/Looper;)Z

    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;

    .line 102
    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetectorAttribute;-><init>(IIZ)V

    .line 105
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 107
    iget-object v3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/android/server/location/nsflp/NSLocationMonitor$5;

    .line 109
    invoke-virtual {v1, v3, v5, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->changeParameters(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    .line 112
    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityRegistered:Z

    .line 115
    iput p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityMode:I

    .line 117
    iput p2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityDuration:I

    .line 119
    iput-boolean p3, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRequestToUpdate:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 122
    :catch_0
    move-exception p0

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    .line 125
    const-string p2, "Exception is occurred while registerDeviceActivityDetector, "

    .line 127
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p0

    .line 141
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_3
    :goto_0
    return-void
.end method

.method public final requestToUpdateDeviceActivityDetector()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    .line 3
    const-string v1, "NSLocationMonitor"

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "Failed updateDeviceActivityDetector"

    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 15
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/android/server/location/nsflp/NSLocationMonitor$5;

    .line 17
    const/16 v2, 0x36

    .line 19
    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->requestToUpdate(Lcom/samsung/android/hardware/context/SemContextListener;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    const-string v2, "Exception is occurred while updateDeviceActivityDetector, "

    .line 28
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_0
    return-void
.end method

.method public final sendLogToHqm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportHqm:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    .line 10
    sget-object v1, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->UNKNOWN:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    .line 12
    sget-object v2, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    .line 14
    if-ne v0, v1, :cond_2

    .line 16
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mHqmManager:Landroid/os/ISemHqmManager;

    .line 18
    if-nez v0, :cond_2

    .line 20
    const-string v0, "HqmManagerService"

    .line 22
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/os/ISemHqmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISemHqmManager;

    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mHqmManager:Landroid/os/ISemHqmManager;

    .line 32
    if-eqz v0, :cond_1

    .line 34
    sget-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;->SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v0, v2

    .line 38
    :goto_0
    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportHqm:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportHqm:Lcom/android/server/location/nsflp/NSLocationMonitor$HQM_SUPPORT_STATE;

    .line 42
    const-string v1, "NSLocationMonitor"

    .line 44
    if-ne v0, v2, :cond_3

    .line 46
    const-string p0, "HQM not supported device"

    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void

    .line 52
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mHqmManager:Landroid/os/ISemHqmManager;

    .line 54
    const-string v4, "GNSS"

    .line 56
    const-string/jumbo v6, "ph"

    .line 59
    const-string v7, "0.0"

    .line 61
    const-string/jumbo v8, "sec"

    .line 64
    const-string v11, ""

    .line 66
    const/4 v3, 0x0

    .line 67
    move-object v5, p1

    .line 68
    move-object v9, p2

    .line 69
    move-object v10, p3

    .line 70
    invoke-interface/range {v2 .. v11}, Landroid/os/ISemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception p0

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    const-string p2, "Failed logging big data for GNSS"

    .line 79
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_1
    return-void
.end method

.method public final sendStationaryInfo(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string/jumbo v1, "stationary"

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 14
    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->MOTION_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method public final setFeatureDeviceActivity(Z)Z
    .locals 3

    .line 1
    const-string v0, "NSLocationMonitor"

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 8
    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mContext:Landroid/content/Context;

    .line 12
    const-string/jumbo v2, "scontext"

    .line 15
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/samsung/android/hardware/context/SemContextManager;

    .line 21
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 23
    if-nez p1, :cond_0

    .line 25
    const-string/jumbo p1, "semContextManager is null"

    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    .line 33
    return v1

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 36
    const/16 v1, 0x36

    .line 38
    invoke-virtual {p1, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    .line 41
    move-result p1

    .line 42
    iput-boolean p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v1, "setFeatureDeviceActivity, isAvailable, "

    .line 49
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    .line 54
    invoke-static {v0, p1, v1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 57
    iget-boolean p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    .line 59
    return p0

    .line 60
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    .line 62
    if-eqz p1, :cond_2

    .line 64
    iput-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->sendStationaryInfo(Z)V

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->unregisterDeviceActivityDetector()V

    .line 72
    const-string/jumbo p1, "setFeatureDeviceActivity, false"

    .line 75
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-boolean v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    .line 80
    const/4 p0, 0x1

    .line 81
    return p0
.end method

.method public final setMotionPowerSaveMode(Z)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setMotionPowerSaveMode, "

    .line 4
    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    move-result-wide v1

    .line 15
    :try_start_0
    const-string v3, "NSLocationMonitor"

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 34
    check-cast p0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 36
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->notifyMotionPowerSaveModeChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    throw p0
.end method

.method public final unregisterDeviceActivityDetector()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mEnableFeatureDeviceActivity:Z

    .line 3
    const-string v1, "NSLocationMonitor"

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "Failed unregisterDeviceActivityDetector"

    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityRegistered:Z

    .line 15
    if-nez v0, :cond_1

    .line 17
    const-string p0, "Already unregistered DeviceActivityDetector"

    .line 19
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void

    .line 23
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 25
    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSemContextListener:Lcom/android/server/location/nsflp/NSLocationMonitor$5;

    .line 27
    const/16 v3, 0x36

    .line 29
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 32
    const-string v0, "Success unregisterDeviceActivityDetector"

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    const-string v3, "Exception is occurred while unregisterDeviceActivityDetector, "

    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityRegistered:Z

    .line 65
    iput v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityMode:I

    .line 67
    iput v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mDeviceActivityDuration:I

    .line 69
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRequestToUpdate:Z

    .line 71
    return-void
.end method

.method public final updateBackgroundThrottlingAllowlist(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 10
    check-cast p0, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 12
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 14
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Ljava/util/HashSet;

    .line 16
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 19
    const-string v0, "LocationManagerService"

    .line 21
    if-nez p1, :cond_1

    .line 23
    const-string p0, "Null package is updated, so just clear"

    .line 25
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageAllowlistByNsflp:Ljava/util/HashSet;

    .line 31
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 34
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    const-string/jumbo v1, "location setting is changed by nsflp"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p0

    .line 51
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 63
    const/4 v1, -0x1

    .line 64
    invoke-interface {v0, v1}, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;->onSettingChanged(I)V

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    :goto_1
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 70
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    const-string v0, "FreecessController"

    .line 77
    const-string/jumbo v1, "setGPSAllowList"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-object p1, p0, Lcom/android/server/am/FreecessController;->mGpsDefaultAllowList:Ljava/util/List;

    .line 85
    return-void
.end method

.method public final writeUtLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/location/nsflp/NSLocationMonitor;->isCallerNsflp()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNsUtLogger:Lcom/android/server/location/nsflp/NSUtLogger;

    .line 10
    if-nez v0, :cond_1

    .line 12
    const-string v0, "NS_UT_LOGGER_THREAD"

    .line 14
    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/server/location/nsflp/NSUtLogger;

    .line 20
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 23
    move-result-object v0

    .line 24
    invoke-direct {v1, v0}, Lcom/android/server/location/nsflp/NSUtLogger;-><init>(Landroid/os/Looper;)V

    .line 27
    iput-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNsUtLogger:Lcom/android/server/location/nsflp/NSUtLogger;

    .line 29
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x1

    .line 34
    iput v1, v0, Landroid/os/Message;->what:I

    .line 36
    new-instance v1, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;

    .line 38
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, v1, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;->type:I

    .line 43
    iput-object p2, v1, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;->path:Ljava/lang/String;

    .line 45
    iput-object p3, v1, Lcom/android/server/location/nsflp/NSUtLogger$LogInfo;->data:Ljava/lang/String;

    .line 47
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNsUtLogger:Lcom/android/server/location/nsflp/NSUtLogger;

    .line 51
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 54
    return-void
.end method
