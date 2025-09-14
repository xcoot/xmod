.class public final Lcom/android/server/rotationresolver/RotationResolverManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsServiceEnabled:Z

.field public final mPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 2
    .line 3
    const v1, 0x104032e

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
    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 22
    .line 23
    return-void
.end method

.method public static surfaceRotationToProto(I)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x3

    .line 6
    if-eq p0, v1, :cond_2

    .line 7
    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    if-eq p0, v2, :cond_0

    .line 11
    .line 12
    const/16 p0, 0x8

    .line 13
    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x5

    .line 16
    return p0

    .line 17
    :cond_1
    const/4 p0, 0x4

    .line 18
    return p0

    .line 19
    :cond_2
    return v2

    .line 20
    :cond_3
    return v0
.end method


# virtual methods
.method public final newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    .line 1
    new-instance p2, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iput-object p0, p2, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 17
    .line 18
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
    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverManagerService$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "rotation_resolver"

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
    iput-boolean p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z

    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object p2, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 7
    .line 8
    iget-boolean p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 9
    .line 10
    const-string v0, "RotationResolverManagerPerUserService"

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const-string p2, "destroyLocked()"

    .line 15
    .line 16
    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p2, p1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const-string p2, "Trying to cancel the remote request. Reason: Service destroyed."

    .line 25
    .line 26
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p2, p1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    if-nez p2, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->cancelInternal()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 39
    .line 40
    :goto_0
    iget-object p2, p1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    .line 41
    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    .line 48
    .line 49
    :cond_3
    :goto_1
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p1
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService$BinderService;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "resolver"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    const-class v0, Landroid/rotationresolver/RotationResolverInternal;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
