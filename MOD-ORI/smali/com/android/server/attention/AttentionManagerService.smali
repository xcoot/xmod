.class public final Lcom/android/server/attention/AttentionManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field protected static final ATTENTION_CACHE_BUFFER_SIZE:I = 0x5

.field static final DEFAULT_STALE_AFTER_MILLIS:J = 0x3e8L

.field static final KEY_SERVICE_ENABLED:Ljava/lang/String; = "service_enabled"

.field static final KEY_STALE_AFTER_MILLIS:Ljava/lang/String; = "stale_after_millis"

.field public static sTestAttentionServicePackage:Ljava/lang/String;


# instance fields
.field public mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

.field public final mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

.field public mBinding:Z

.field mComponentName:Landroid/content/ComponentName;

.field public final mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

.field public final mContext:Landroid/content/Context;

.field mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

.field mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

.field mIsProximityEnabled:Z

.field mIsServiceEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field protected mService:Landroid/service/attention/IAttentionService;

.field public mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

.field mStaleAfterMillis:J


# direct methods
.method public static -$$Nest$mcancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->cancel()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->cancelUpdates()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    .line 28
    .line 29
    new-instance v2, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-direct {v2, p0, v3}, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/attention/AttentionManagerService;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->cleanupService()V

    .line 41
    .line 42
    .line 43
    monitor-exit v0

    .line 44
    :goto_1
    return-void

    .line 45
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public static -$$Nest$mhandlePendingCallbackLocked(Lcom/android/server/attention/AttentionManagerService;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 2
    .line 3
    const-string v1, "Cannot call into the AttentionService"

    .line 4
    .line 5
    const-string v2, "AttentionManagerService"

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v3, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z

    .line 10
    .line 11
    if-nez v3, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    :try_start_0
    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;

    .line 18
    .line 19
    invoke-interface {v3, v0}, Landroid/service/attention/IAttentionService;->checkAttention(Landroid/service/attention/IAttentionCallback;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    iput-boolean v3, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    invoke-virtual {v0, v3}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-boolean v3, v0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    .line 43
    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    :try_start_1
    iget-object p0, v0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mIProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;

    .line 51
    .line 52
    invoke-interface {v3, p0}, Landroid/service/attention/IAttentionService;->onStartProximityUpdates(Landroid/service/attention/IProximityUpdateCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_1
    move-exception p0

    .line 57
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->cancelUpdates()V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 66
    .line 67
    :cond_3
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/attention/AttentionManagerService;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Ljava/lang/Object;Lcom/android/server/attention/AttentionManagerService$AttentionHandler;)V

    .line 2
    new-instance p1, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    invoke-direct {p1, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Ljava/lang/Object;Lcom/android/server/attention/AttentionManagerService$AttentionHandler;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    invoke-direct {v0, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 7
    iput-object p3, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 8
    iput-object p4, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    .line 9
    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 10
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    sget-object v1, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    .line 19
    .line 20
    const/16 v3, 0x80

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_4

    .line 28
    .line 29
    const/high16 v3, 0x100000

    .line 30
    .line 31
    move-object v1, v0

    .line 32
    :goto_0
    new-instance v4, Landroid/content/Intent;

    .line 33
    .line 34
    const-string v5, "android.service.attention.AttentionService"

    .line 35
    .line 36
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v1, "AttentionManagerService"

    .line 52
    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 56
    .line 57
    if-nez p0, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 61
    .line 62
    const-string v3, "android.permission.BIND_ATTENTION_SERVICE"

    .line 63
    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 80
    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v4, "Service "

    .line 84
    .line 85
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, " should require android.permission.BIND_ATTENTION_SERVICE permission. Found "

    .line 92
    .line 93
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p0, " permission"

    .line 100
    .line 101
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    return-object v2

    .line 112
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v3, "Service android.service.attention.AttentionService not found in package "

    .line 115
    .line 116
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    :cond_4
    return-object v2
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    const/4 v3, 0x1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iput-boolean v3, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    .line 15
    .line 16
    iget-object p0, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    :try_start_0
    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroid/service/attention/IAttentionService;->cancelAttentionCheck(Landroid/service/attention/IAttentionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    const-string v0, "AttentionManagerService"

    .line 29
    .line 30
    const-string v1, "Unable to cancel attention check"

    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 36
    .line 37
    iput-boolean v3, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 40
    .line 41
    invoke-virtual {p0, v2}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onFailure(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const-string p0, "AttentionManagerService"

    .line 15
    .line 16
    const-string p1, "Cannot cancel a non-current request"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

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
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->cancel()V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z
    .locals 12

    .line 1
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "AttentionManagerService"

    .line 10
    .line 11
    const-string p1, "Trying to call checkAttention() on an unsupported device."

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->isServiceAvailable()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string p0, "AttentionManagerService"

    .line 24
    .line 25
    const-string p1, "Service is not available at this moment."

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    invoke-virtual {v0, v2}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const-string p0, "AttentionManagerService"

    .line 41
    .line 42
    const-string p1, "Camera is locked by a toggle."

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_c

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_3
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 67
    .line 68
    monitor-enter v0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->freeIfInactiveLocked()V

    .line 70
    .line 71
    .line 72
    iget-boolean v3, p0, Lcom/android/server/attention/AttentionManagerService;->mBinding:Z

    .line 73
    .line 74
    const/4 v4, 0x1

    .line 75
    if-nez v3, :cond_5

    .line 76
    .line 77
    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    iput-boolean v4, p0, Lcom/android/server/attention/AttentionManagerService;->mBinding:Z

    .line 83
    .line 84
    new-instance v3, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;

    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    invoke-direct {v3, p0, v5}, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/attention/AttentionManagerService;I)V

    .line 88
    .line 89
    .line 90
    iget-object v5, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    .line 91
    .line 92
    invoke-virtual {v5, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v5

    .line 100
    const-wide/16 v7, 0x3e8

    .line 101
    .line 102
    invoke-static {v7, v8, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 103
    .line 104
    .line 105
    move-result-wide v7

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

    .line 107
    .line 108
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 109
    .line 110
    invoke-virtual {v0, v7, v8, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v3, "AttentionManagerService"

    .line 116
    .line 117
    const-string v7, "Interrupted while waiting to bind Attention Service."

    .line 118
    .line 119
    invoke-static {v3, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .line 121
    .line 122
    :goto_1
    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 123
    .line 124
    monitor-enter v3

    .line 125
    :try_start_2
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    .line 126
    .line 127
    const/4 v7, 0x0

    .line 128
    if-nez v0, :cond_6

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_6
    iget v8, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    .line 132
    .line 133
    iget v9, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    .line 134
    .line 135
    add-int/2addr v8, v9

    .line 136
    sub-int/2addr v8, v4

    .line 137
    rem-int/lit8 v8, v8, 0x5

    .line 138
    .line 139
    if-nez v9, :cond_7

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_7
    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    .line 143
    .line 144
    aget-object v7, v0, v8

    .line 145
    .line 146
    :goto_2
    if-eqz v7, :cond_8

    .line 147
    .line 148
    iget-wide v8, v7, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mLastComputed:J

    .line 149
    .line 150
    iget-wide v10, p0, Lcom/android/server/attention/AttentionManagerService;->mStaleAfterMillis:J

    .line 151
    .line 152
    add-long/2addr v8, v10

    .line 153
    cmp-long v0, v5, v8

    .line 154
    .line 155
    if-gez v0, :cond_8

    .line 156
    .line 157
    iget p0, v7, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mResult:I

    .line 158
    .line 159
    iget-wide p1, v7, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mTimestamp:J

    .line 160
    .line 161
    invoke-virtual {p3, p0, p1, p2}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onSuccess(IJ)V

    .line 162
    .line 163
    .line 164
    monitor-exit v3

    .line 165
    return v4

    .line 166
    :catchall_0
    move-exception p0

    .line 167
    goto :goto_4

    .line 168
    :cond_8
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 169
    .line 170
    if-eqz v0, :cond_a

    .line 171
    .line 172
    iget-boolean v5, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z

    .line 173
    .line 174
    if-eqz v5, :cond_9

    .line 175
    .line 176
    iget-boolean v0, v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z

    .line 177
    .line 178
    if-nez v0, :cond_a

    .line 179
    .line 180
    :cond_9
    monitor-exit v3

    .line 181
    return v1

    .line 182
    :cond_a
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 183
    .line 184
    invoke-direct {v0, p3, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;-><init>(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService;)V

    .line 185
    .line 186
    .line 187
    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 188
    .line 189
    iget-object p3, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    .line 191
    if-eqz p3, :cond_b

    .line 192
    .line 193
    :try_start_3
    iget-object p3, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    .line 194
    .line 195
    invoke-virtual {p3, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    .line 199
    .line 200
    iget-object p2, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 201
    .line 202
    iget-object p2, p2, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;

    .line 203
    .line 204
    invoke-interface {p1, p2}, Landroid/service/attention/IAttentionService;->checkAttention(Landroid/service/attention/IAttentionCallback;)V

    .line 205
    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 208
    .line 209
    iput-boolean v4, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :catch_1
    :try_start_4
    const-string p0, "AttentionManagerService"

    .line 213
    .line 214
    const-string p1, "Cannot call into the AttentionService"

    .line 215
    .line 216
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    monitor-exit v3

    .line 220
    return v1

    .line 221
    :cond_b
    :goto_3
    monitor-exit v3

    .line 222
    return v4

    .line 223
    :goto_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    throw p0

    .line 225
    :catchall_1
    move-exception p0

    .line 226
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 227
    throw p0

    .line 228
    :cond_c
    :goto_5
    return v1
.end method

.method public freeIfInactiveLocked()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    const-wide/32 v1, 0xea60

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getStaleAfterMillis()J
    .locals 7

    .line 1
    const-string p0, "attention_manager_service"

    .line 2
    .line 3
    const-string/jumbo v0, "stale_after_millis"

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x3e8

    .line 7
    .line 8
    invoke-static {p0, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    cmp-long p0, v3, v5

    .line 15
    .line 16
    if-ltz p0, :cond_1

    .line 17
    .line 18
    const-wide/16 v5, 0x2710

    .line 19
    .line 20
    cmp-long p0, v3, v5

    .line 21
    .line 22
    if-lez p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-wide v3

    .line 26
    :cond_1
    :goto_0
    const-string p0, "AttentionManagerService"

    .line 27
    .line 28
    const-string v0, "Bad flag value supplied for: stale_after_millis"

    .line 29
    .line 30
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-wide v1
.end method

.method public isServiceAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final onBootPhase(I)V
    .locals 3

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/content/IntentFilter;

    .line 13
    .line 14
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->readValuesFromDeviceConfig()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "attention_manager_service"

    .line 39
    .line 40
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const v0, 0x1110181

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput-boolean p1, p0, Lcom/android/server/attention/AttentionManagerService;->mIsProximityEnabled:Z

    .line 57
    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string/jumbo v0, "mIsProximityEnabled is: "

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-boolean p0, p0, Lcom/android/server/attention/AttentionManagerService;->mIsProximityEnabled:Z

    .line 67
    .line 68
    const-string v0, "AttentionManagerService"

    .line 69
    .line 70
    invoke-static {v0, p1, p0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$BinderService;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/attention/AttentionManagerService$BinderService;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "attention"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    .line 10
    .line 11
    const-class v0, Landroid/attention/AttentionManagerInternal;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/attention/AttentionManagerService$LocalService;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/android/server/attention/AttentionManagerService$LocalService;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onStartProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)Z
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService;->mIsProximityEnabled:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "AttentionManagerService"

    .line 10
    .line 11
    const-string p1, "Trying to call onProximityUpdate() on an unsupported device."

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->isServiceAvailable()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string p0, "AttentionManagerService"

    .line 24
    .line 25
    const-string p1, "Service is not available at this moment."

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const-string p0, "AttentionManagerService"

    .line 40
    .line 41
    const-string p1, "Proximity Service is unavailable during screen off at this moment."

    .line 42
    .line 43
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v0

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->freeIfInactiveLocked()V

    .line 51
    .line 52
    .line 53
    iget-boolean v2, p0, Lcom/android/server/attention/AttentionManagerService;->mBinding:Z

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    if-nez v2, :cond_4

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/attention/AttentionManagerService;->mBinding:Z

    .line 64
    .line 65
    new-instance v2, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-direct {v2, p0, v4}, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/attention/AttentionManagerService;I)V

    .line 69
    .line 70
    .line 71
    iget-object v4, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    .line 72
    .line 73
    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    :cond_4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mServiceBindingLatch:Ljava/util/concurrent/CountDownLatch;

    .line 78
    .line 79
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 80
    .line 81
    const-wide/16 v4, 0x3e8

    .line 82
    .line 83
    invoke-virtual {v0, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v2, "AttentionManagerService"

    .line 89
    .line 90
    const-string v4, "Interrupted while waiting to bind Attention Service."

    .line 91
    .line 92
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .line 94
    .line 95
    :goto_1
    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 96
    .line 97
    monitor-enter v2

    .line 98
    :try_start_2
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 99
    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    iget-boolean v4, v0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    .line 103
    .line 104
    if-eqz v4, :cond_6

    .line 105
    .line 106
    iget-object p0, v0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    .line 107
    .line 108
    if-ne p0, p1, :cond_5

    .line 109
    .line 110
    const-string p0, "AttentionManagerService"

    .line 111
    .line 112
    const-string p1, "Provided callback is already registered. Skipping."

    .line 113
    .line 114
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    monitor-exit v2

    .line 118
    return v3

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto :goto_2

    .line 121
    :cond_5
    const-string p0, "AttentionManagerService"

    .line 122
    .line 123
    const-string p1, "New proximity update cannot be processed because there is already an ongoing update"

    .line 124
    .line 125
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    monitor-exit v2

    .line 129
    return v1

    .line 130
    :cond_6
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 131
    .line 132
    invoke-direct {v0, p0, p1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;-><init>(Lcom/android/server/attention/AttentionManagerService;Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V

    .line 133
    .line 134
    .line 135
    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->startUpdates()Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    monitor-exit v2

    .line 142
    return p0

    .line 143
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    throw p0

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    throw p0
.end method

.method public onStopProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    .line 9
    .line 10
    invoke-interface {v1, p1}, Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 17
    .line 18
    iget-boolean v1, p1, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->cancelUpdates()V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mCurrentProximityUpdate:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const-string p0, "AttentionManagerService"

    .line 34
    .line 35
    const-string p1, "Cannot stop a non-current callback"

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final readValuesFromDeviceConfig()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "attention_manager_service"

    .line 3
    .line 4
    const-string/jumbo v2, "service_enabled"

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput-boolean v0, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->getStaleAfterMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/android/server/attention/AttentionManagerService;->mStaleAfterMillis:J

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v1, "readValuesFromDeviceConfig():\nmIsServiceEnabled="

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, "\nmStaleAfterMillis="

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-wide v1, p0, Lcom/android/server/attention/AttentionManagerService;->mStaleAfterMillis:J

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string v0, "AttentionManagerService"

    .line 47
    .line 48
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void
.end method
