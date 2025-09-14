.class public final Lcom/android/server/wearable/WearableSensingManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDataRequestObserverContexts:Ljava/util/Set;

.field public volatile mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

.field public volatile mIsServiceEnabled:Z

.field public final mNextDataRequestObserverId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static -$$Nest$mcallPerUserServiceIfExist(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/util/function/Consumer;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "Service not available for userId "

    .line 5
    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    const-string p0, "WearableSensingManagerService"

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x3

    .line 39
    invoke-static {p0, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v2

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    monitor-exit v2

    .line 50
    :goto_0
    return-void

    .line 51
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public static -$$Nest$mgetDataRequestObserverContext(Lcom/android/server/wearable/WearableSensingManagerService;IILandroid/app/PendingIntent;)Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    .line 5
    .line 6
    check-cast p0, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;

    .line 23
    .line 24
    iget v2, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataType:I

    .line 25
    .line 26
    if-ne v2, p1, :cond_0

    .line 27
    .line 28
    iget v2, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mUserId:I

    .line 29
    .line 30
    if-ne v2, p2, :cond_0

    .line 31
    .line 32
    iget-object v2, v1, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestPendingIntent:Landroid/app/PendingIntent;

    .line 33
    .line 34
    invoke-virtual {v2, p3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    monitor-exit v0

    .line 45
    const/4 v1, 0x0

    .line 46
    :goto_0
    return-object v1

    .line 47
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 2
    .line 3
    const v1, 0x104033a

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/16 v2, 0x44

    .line 11
    .line 12
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameBaseResolver;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mNextDataRequestObserverId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    new-instance v0, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestObserverContexts:Ljava/util/Set;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    .line 33
    .line 34
    invoke-direct {v0, p1, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimit()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimitWindowSize()Ljava/time/Duration;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->addRateLimit(ILjava/time/Duration;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lcom/android/server/utils/quota/MultiRateLimiter;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mQuotaTrackers:Ljava/util/List;

    .line 51
    .line 52
    invoke-direct {p1, v0}, Lcom/android/server/utils/quota/MultiRateLimiter;-><init>(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final enforceCallingPermissionForManagement()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "android.permission.ACCESS_AMBIENT_CONTEXT_EVENT"

    .line 6
    .line 7
    const-string v1, "WearableSensingManagerService"

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final getMaximumTemporaryServiceDurationMs()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const p0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    return p0

    .line 11
    :cond_0
    const/16 p0, 0x7530

    .line 12
    .line 13
    return p0
.end method

.method public final newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    .line 1
    new-instance p2, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    return-object p2
.end method

.method public final onBootPhase(I)V
    .locals 2

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "wearable_sensing"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo p1, "service_enabled"

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput-boolean p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mIsServiceEnabled:Z

    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final onServicePackageRestartedLocked(I)V
    .locals 0

    .line 1
    const-string p0, "WearableSensingManagerService"

    .line 2
    .line 3
    const-string/jumbo p1, "onServicePackageRestartedLocked."

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onServicePackageUpdatedLocked(I)V
    .locals 0

    .line 1
    const-string p0, "WearableSensingManagerService"

    .line 2
    .line 3
    const-string/jumbo p1, "onServicePackageUpdatedLocked."

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 2
    .line 3
    const-string p0, "WearableSensingManagerService"

    .line 4
    .line 5
    const-string/jumbo p2, "onServiceRemoved"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string p0, "WearableSensingManagerPerUserService"

    .line 15
    .line 16
    const-string p2, "Trying to cancel the remote request. Reason: Service destroyed."

    .line 17
    .line 18
    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p0, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    iget-object p0, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object p2, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 31
    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    iput-object p2, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    .line 35
    .line 36
    monitor-exit p0

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1

    .line 41
    :cond_0
    :goto_0
    iget-object p0, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter p0

    .line 44
    :try_start_1
    iget-object p1, p1, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    :goto_1
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    throw p1
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/wearable/WearableSensingManagerService$WearableSensingManagerInternal;-><init>(Lcom/android/server/wearable/WearableSensingManagerService;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "wearable_sensing"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public provideData(ILandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvidedData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    .line 13
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
    const-string p0, "WearableSensingManagerService"

    .line 19
    .line 20
    const-string p1, "Service not available."

    .line 21
    .line 22
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :goto_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public provideDataStream(ILandroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->onProvideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const-string p0, "WearableSensingManagerService"

    .line 20
    .line 21
    const-string p1, "Service not available."

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :goto_0
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

.method public resetDataRequestRateLimitWindowSize()V
    .locals 3

    .line 1
    const-string v0, "WearableSensingManagerService"

    .line 2
    .line 3
    const-string v1, "Resetting the data request rate limit window size back to the default value. This also resets the current limit and should only be callable from a test."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimit()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimitWindowSize()Ljava/time/Duration;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->addRateLimit(ILjava/time/Duration;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/android/server/utils/quota/MultiRateLimiter;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mQuotaTrackers:Ljava/util/List;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Lcom/android/server/utils/quota/MultiRateLimiter;-><init>(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    .line 35
    .line 36
    return-void
.end method

.method public setDataRequestRateLimitWindowSize(Ljava/time/Duration;)V
    .locals 3

    .line 1
    const-string v0, "Setting the data request rate limit window size to %s. This also resets the current limit and should only be callable from a test."

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "WearableSensingManagerService"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/app/wearable/WearableSensingDataRequest;->getRateLimit()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1, p1}, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->addRateLimit(ILjava/time/Duration;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lcom/android/server/utils/quota/MultiRateLimiter;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mQuotaTrackers:Ljava/util/List;

    .line 34
    .line 35
    invoke-direct {p1, v0}, Lcom/android/server/utils/quota/MultiRateLimiter;-><init>(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerService;->mDataRequestRateLimiter:Lcom/android/server/utils/quota/MultiRateLimiter;

    .line 39
    .line 40
    return-void
.end method
