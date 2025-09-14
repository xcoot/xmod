.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final MAX_AGE_MS:J


# instance fields
.field public final broadcastExecutor:Ljava/util/concurrent/Executor;

.field public final callbackExecutor:Ljava/util/concurrent/Executor;

.field public mBroadcastPackageName:Ljava/lang/String;

.field public final mConfigExecutor:Ljava/util/concurrent/Executor;

.field public final mContext:Landroid/content/Context;

.field public final mInferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

.field public volatile mIsServiceEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mOnPropertiesChangedListener:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda0;

.field public mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

.field public mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

.field public mTemporaryBroadcastKeys:[Ljava/lang/String;

.field public mTemporaryConfigNamespace:Ljava/lang/String;

.field public mTemporaryHandler:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$10;

.field public mTemporaryServiceNames:[Ljava/lang/String;

.field public remoteInferenceServiceUid:I

.field public final resourceClosingExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static -$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    const-wide/16 v2, 0x1

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const-string/jumbo v3, "on_device_intelligence_idle_timeout_ms"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v3, v1, v2, p0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    return-wide v0
.end method

.method public static -$$Nest$mwrapCancellationFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda6;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 20
    .line 21
    .line 22
    move-object p0, v0

    .line 23
    :goto_0
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x3

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->MAX_AGE_MS:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->broadcastExecutor:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mConfigExecutor:Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/Object;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->remoteInferenceServiceUid:I

    .line 37
    .line 38
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {v0, p0, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;I)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mOnPropertiesChangedListener:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    new-instance v0, Landroid/os/Handler;

    .line 47
    .line 48
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mMainHandler:Landroid/os/Handler;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    new-array p1, p1, [Ljava/lang/String;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryServiceNames:[Ljava/lang/String;

    .line 63
    .line 64
    new-instance p1, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    .line 65
    .line 66
    sget-wide v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->MAX_AGE_MS:J

    .line 67
    .line 68
    invoke-direct {p1, v0, v1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;-><init>(J)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mInferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    .line 72
    .line 73
    return-void
.end method

.method public static checkServiceRequiresPermission(Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "Service "

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " requires "

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " permission. Found "

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, " permission"

    .line 42
    .line 43
    invoke-static {v2, p0, p1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public static enforceShellOnly(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x7d0

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 9
    .line 10
    const-string v0, ": Only shell user can call it"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public static validateServiceElevated(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    const-string v0, "Call required an isolated service, but the configured service: "

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_3

    .line 8
    .line 9
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const-wide/32 v4, 0xc0000

    .line 24
    .line 25
    .line 26
    invoke-interface {v2, v1, v4, v5, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    const-string p0, "android.permission.BIND_ON_DEVICE_INTELLIGENCE_SERVICE"

    .line 35
    .line 36
    invoke-static {v1, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->checkServiceRequiresPermission(Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p1, "android.permission.BIND_ON_DEVICE_SANDBOXED_INFERENCE_SERVICE"

    .line 43
    .line 44
    invoke-static {v1, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->checkServiceRequiresPermission(Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget p1, v1, Landroid/content/pm/ServiceInfo;->flags:I

    .line 48
    .line 49
    and-int/lit8 v1, p1, 0x2

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    and-int/lit8 p1, p1, 0x4

    .line 54
    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p0, ", is not isolated"

    .line 69
    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string p1, "Remote service is not configured to complete the request."

    .line 84
    .line 85
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string p1, "Remote service is not configured to complete the request"

    .line 92
    .line 93
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    const-string v0, "Could not fetch service info for remote services"

    .line 100
    .line 101
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw p1
.end method


# virtual methods
.method public final ensureRemoteInferenceServiceInitialized()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getServiceNames()[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    aget-object v1, v1, v2

    .line 14
    .line 15
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda4;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    new-instance v3, Landroid/content/Intent;

    .line 39
    .line 40
    const-string v4, "android.service.ondeviceintelligence.OnDeviceSandboxedInferenceService"

    .line 41
    .line 42
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    new-instance v9, Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    const v7, 0x4001000

    .line 55
    .line 56
    .line 57
    move-object v4, v2

    .line 58
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    .line 65
    .line 66
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    invoke-direct {v1, p0, v3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    :goto_0
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0
.end method

.method public final ensureRemoteIntelligenceServiceInitialized()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getServiceNames()[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aget-object v1, v1, v2

    .line 14
    .line 15
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda4;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    new-instance v3, Landroid/content/Intent;

    .line 39
    .line 40
    const-string v4, "android.service.ondeviceintelligence.OnDeviceIntelligenceService"

    .line 41
    .line 42
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    new-instance v9, Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    const v7, 0x4001000

    .line 55
    .line 56
    .line 57
    move-object v4, v2

    .line 58
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    .line 65
    .line 66
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-direct {v1, p0, v3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    :goto_0
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0
.end method

.method public final getBroadcastKeys()[Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryBroadcastKeys:[Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x2

    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v1, 0x1040387

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const v1, 0x1040388

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    filled-new-array {v0, p0}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method

.method public final getServiceNames()[Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryServiceNames:[Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x2

    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v1, 0x1040328

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const v1, 0x1040329

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    filled-new-array {v0, p0}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method

.method public final declared-synchronized getTemporaryHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryHandler:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$10;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$10;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$10;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryHandler:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$10;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryHandler:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$10;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :goto_1
    monitor-exit p0

    .line 25
    throw v0
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
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, p0, v2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;I)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v2, "ondeviceintelligence"

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    const-string/jumbo v1, "service_enabled"

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput-boolean v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mIsServiceEnabled:Z

    .line 30
    .line 31
    :cond_0
    const/16 v0, 0x258

    .line 32
    .line 33
    if-ne p1, v0, :cond_1

    .line 34
    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteInferenceServiceInitialized()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteIntelligenceServiceInitialized()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    const-string p1, "OnDeviceIntelligenceManagerService"

    .line 44
    .line 45
    const-string v0, "Couldn\'t pre-start remote ondeviceintelligence services."

    .line 46
    .line 47
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const-string/jumbo v2, "on_device_intelligence"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda2;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    .line 16
    .line 17
    .line 18
    const-class p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda2;

    .line 19
    .line 20
    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final resetTemporaryServices()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryHandler:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$10;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iput-object v3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryHandler:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$10;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    .line 19
    .line 20
    iput-object v3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    .line 21
    .line 22
    new-array v1, v2, [Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryServiceNames:[Ljava/lang/String;

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method
