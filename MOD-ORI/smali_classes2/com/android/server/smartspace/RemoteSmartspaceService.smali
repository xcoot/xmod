.class public final Lcom/android/server/smartspace/RemoteSmartspaceService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/smartspace/RemoteSmartspaceService$RemoteSmartspaceServiceCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/smartspace/RemoteSmartspaceService$RemoteSmartspaceServiceCallbacks;ZZ)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0x400000

    .line 8
    .line 9
    :goto_0
    move v7, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :goto_1
    const/4 v9, 0x1

    .line 14
    const-string v2, "android.service.smartspace.SmartspaceService"

    .line 15
    .line 16
    move-object v0, p0

    .line 17
    move-object v1, p1

    .line 18
    move-object v3, p2

    .line 19
    move v4, p3

    .line 20
    move-object v5, p4

    .line 21
    move/from16 v8, p6

    .line 22
    .line 23
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    .line 24
    .line 25
    .line 26
    move-object v1, p4

    .line 27
    iput-object v1, v0, Lcom/android/server/smartspace/RemoteSmartspaceService;->mCallback:Lcom/android/server/smartspace/RemoteSmartspaceService$RemoteSmartspaceServiceCallbacks;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->executeAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getRemoteRequestMillis()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x7d0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/service/smartspace/ISmartspaceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/smartspace/ISmartspaceService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getTimeoutIdleBindMillis()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final handleOnConnectedStateChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/smartspace/RemoteSmartspaceService;->mCallback:Lcom/android/server/smartspace/RemoteSmartspaceService$RemoteSmartspaceServiceCallbacks;

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/smartspace/SmartspacePerUserService;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "SmartspacePerUserService"

    .line 14
    .line 15
    const-string/jumbo v1, "onConnectedStateChanged(): connected="

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    if-eqz p1, :cond_3

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p1

    .line 26
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mZombie:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string p0, "SmartspacePerUserService"

    .line 35
    .line 36
    const-string v0, "Cannot resurrect sessions because remote service is null"

    .line 37
    .line 38
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    monitor-exit p1

    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mZombie:Z

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->resurrectSessionsLocked$3()V

    .line 49
    .line 50
    .line 51
    :cond_2
    monitor-exit p1

    .line 52
    goto :goto_1

    .line 53
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0

    .line 55
    :cond_3
    :goto_1
    return-void
.end method

.method public final reconnect()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleBind()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
