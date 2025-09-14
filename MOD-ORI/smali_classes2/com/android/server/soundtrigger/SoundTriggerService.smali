.class public final Lcom/android/server/soundtrigger/SoundTriggerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

.field public final mDetachedSessionEventLoggers:Ljava/util/Deque;

.field public final mDeviceEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mDeviceStateHandler:Lcom/android/server/soundtrigger/DeviceStateHandler;

.field public final mDeviceStateHandlerExecutor:Ljava/util/concurrent/Executor;

.field public final mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

.field public final mLock:Ljava/lang/Object;

.field public mMiddlewareService:Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

.field public final mNumOpsPerPackage:Landroid/util/ArrayMap;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public final mServiceEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mServiceStub:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

.field public final mSessionEventLoggers:Ljava/util/Set;

.field public final mSessionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 12
    .line 13
    const/16 v1, 0x100

    .line 14
    .line 15
    const-string v2, "Service"

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    .line 21
    .line 22
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 23
    .line 24
    const-string v2, "Device Event"

    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceEventLogger:Lcom/android/server/utils/EventLogger;

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet(I)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSessionEventLoggers:Ljava/util/Set;

    .line 37
    .line 38
    new-instance v2, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 39
    .line 40
    invoke-direct {v2, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    .line 44
    .line 45
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSessionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    .line 53
    new-instance v1, Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mNumOpsPerPackage:Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceStub:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

    .line 72
    .line 73
    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    .line 74
    .line 75
    invoke-direct {p1, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    .line 79
    .line 80
    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    .line 81
    .line 82
    invoke-direct {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mSoundModelStatTracker:Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;

    .line 86
    .line 87
    new-instance p1, Lcom/android/server/soundtrigger/DeviceStateHandler;

    .line 88
    .line 89
    invoke-direct {p1, v1, v0}, Lcom/android/server/soundtrigger/DeviceStateHandler;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/utils/EventLogger;)V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceStateHandler:Lcom/android/server/soundtrigger/DeviceStateHandler;

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public final listUnderlyingModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Landroid/media/permission/Identity;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mMiddlewareService:Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    .line 13
    .line 14
    invoke-interface {p0, v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;->listModulesAsMiddleman(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    return-object p0

    .line 42
    :catch_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 43
    .line 44
    sget p1, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    .line 45
    .line 46
    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public final newSoundTriggerHelper(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Lcom/android/server/utils/EventLogger;Z)Lcom/android/server/soundtrigger/SoundTriggerHelper;
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    new-instance v3, Landroid/media/permission/Identity;

    .line 5
    .line 6
    invoke-direct {v3}, Landroid/media/permission/Identity;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v3, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {}, Landroid/media/permission/IdentityContext;->getNonNull()Landroid/media/permission/Identity;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    invoke-virtual {p0, v7}, Lcom/android/server/soundtrigger/SoundTriggerService;->listUnderlyingModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, -0x1

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getId()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    move v12, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v12, v2

    .line 33
    :goto_0
    if-eq v12, v2, :cond_2

    .line 34
    .line 35
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string v1, "Invalid module properties"

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_2
    :goto_1
    new-instance v14, Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 51
    .line 52
    iget-object v9, v6, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    new-instance v11, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;

    .line 55
    .line 56
    move-object v0, v11

    .line 57
    move-object v1, p0

    .line 58
    move v2, v12

    .line 59
    move-object v4, v7

    .line 60
    move/from16 v5, p3

    .line 61
    .line 62
    invoke-direct/range {v0 .. v5}, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;ILandroid/media/permission/Identity;Landroid/media/permission/Identity;Z)V

    .line 63
    .line 64
    .line 65
    new-instance v13, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda2;

    .line 66
    .line 67
    invoke-direct {v13, p0, v7}, Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/media/permission/Identity;)V

    .line 68
    .line 69
    .line 70
    move-object v8, v14

    .line 71
    move-object/from16 v10, p2

    .line 72
    .line 73
    invoke-direct/range {v8 .. v13}, Lcom/android/server/soundtrigger/SoundTriggerHelper;-><init>(Landroid/content/Context;Lcom/android/server/utils/EventLogger;Lcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda1;ILcom/android/server/soundtrigger/SoundTriggerService$$ExternalSyntheticLambda2;)V

    .line 74
    .line 75
    .line 76
    return-object v14
.end method

.method public final onBootPhase(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "onBootPhase: "

    .line 2
    .line 3
    .line 4
    const-string v1, " : "

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/android/server/SystemService;->isSafeMode()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "SoundTriggerService"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/16 v0, 0x258

    .line 27
    .line 28
    if-ne v0, p1, :cond_0

    .line 29
    .line 30
    new-instance p1, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    const-string/jumbo v2, "st_sound_model.db"

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-direct {p1, v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDbHelper:Lcom/android/server/soundtrigger/SoundTriggerDbHelper;

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    const-class v0, Landroid/app/AppOpsManager;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/app/AppOpsManager;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    const-class v0, Landroid/os/PowerManager;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/os/PowerManager;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerService$1;

    .line 77
    .line 78
    invoke-direct {v1, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$1;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/os/PowerManager;)V

    .line 79
    .line 80
    .line 81
    new-instance v2, Landroid/content/IntentFilter;

    .line 82
    .line 83
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 84
    .line 85
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/os/PowerManager;->getSoundTriggerPowerSaveMode()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mDeviceStateHandler:Lcom/android/server/soundtrigger/DeviceStateHandler;

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Lcom/android/server/soundtrigger/DeviceStateHandler;->onPowerModeChanged(I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v1, "android.hardware.telephony.calling"

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_0

    .line 113
    .line 114
    new-instance p1, Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    const-class v2, Landroid/telephony/SubscriptionManager;

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 125
    .line 126
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    const-class v3, Landroid/telephony/TelephonyManager;

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 135
    .line 136
    invoke-direct {p1, v1, v2, v0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler;-><init>(Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;Lcom/android/server/soundtrigger/DeviceStateHandler;)V

    .line 137
    .line 138
    .line 139
    :cond_0
    const-string/jumbo p1, "soundtrigger_middleware"

    .line 140
    .line 141
    .line 142
    invoke-static {p1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mMiddlewareService:Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    .line 151
    .line 152
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "soundtrigger"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mServiceStub:Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerServiceStub;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    const-class v0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService;->mLocalSoundTriggerService:Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
