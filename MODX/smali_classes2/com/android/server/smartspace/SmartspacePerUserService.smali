.class public final Lcom/android/server/smartspace/SmartspacePerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/smartspace/RemoteSmartspaceService$RemoteSmartspaceServiceCallbacks;


# instance fields
.field public mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

.field public final mSessionInfos:Landroid/util/ArrayMap;

.field public mZombie:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/smartspace/SmartspacePerUserService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/smartspace/SmartspaceManagerService;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final destroyAndRebindRemoteService$3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v0, "SmartspacePerUserService"

    .line 13
    .line 14
    const-string v1, "Destroying the old remote service."

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    const/4 v1, 0x1

    .line 31
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mZombie:Z

    .line 32
    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->getRemoteServiceLocked()Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 43
    .line 44
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const-string v0, "SmartspacePerUserService"

    .line 49
    .line 50
    const-string v1, "Rebinding to the new remote service."

    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/server/smartspace/RemoteSmartspaceService;->reconnect()V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0
.end method

.method public final getRemoteServiceLocked()Lcom/android/server/smartspace/RemoteSmartspaceService;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    check-cast v1, Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 14
    .line 15
    iget-boolean p0, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const-string p0, "SmartspacePerUserService"

    .line 20
    .line 21
    const-string v0, "getRemoteServiceLocked(): not set"

    .line 22
    .line 23
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v7, Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v1, Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    iget-boolean v6, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 45
    .line 46
    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 47
    .line 48
    move-object v0, v7

    .line 49
    move-object v1, v3

    .line 50
    move v3, v4

    .line 51
    move-object v4, p0

    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/android/server/smartspace/RemoteSmartspaceService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/smartspace/RemoteSmartspaceService$RemoteSmartspaceServiceCallbacks;ZZ)V

    .line 53
    .line 54
    .line 55
    iput-object v7, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 56
    .line 57
    :cond_2
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 58
    .line 59
    return-object p0
.end method

.method public final newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 6
    .line 7
    const-wide/16 v1, 0x80

    .line 8
    .line 9
    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 15
    .line 16
    const-string v0, "Could not get service for "

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final onCreateSmartspaceSessionLocked(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;-><init>(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService$1(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    .line 21
    .line 22
    new-instance v1, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;

    .line 23
    .line 24
    invoke-direct {v1, p0, p2}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p2, p1, p3, v1}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceConfig;Landroid/os/IBinder;Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object p1, v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    .line 31
    .line 32
    iget-object p3, v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-interface {p1, p3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    invoke-virtual {p0, p2}, Lcom/android/server/smartspace/SmartspacePerUserService;->onDestroyLocked(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    :goto_0
    return-void
.end method

.method public final onDestroyLocked(Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "onDestroyLocked(): sessionId="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "SmartspacePerUserService"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v1, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-direct {v1, p1, v2}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/smartspace/SmartspaceSessionId;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService$1(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 45
    .line 46
    .line 47
    iget-object p0, v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    .line 48
    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    iget-object p1, v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-interface {p0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object p0, v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final onServiceDied(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "SmartspacePerUserService"

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v2, "onServiceDied(): service="

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter p1

    .line 32
    const/4 v0, 0x1

    .line 33
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mZombie:Z

    .line 34
    .line 35
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 45
    .line 46
    :cond_1
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method

.method public final resolveService$1(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->getRemoteServiceLocked()Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/smartspace/RemoteSmartspaceService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz p0, :cond_1

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public final resurrectSessionsLocked$3()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 8
    .line 9
    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Resurrecting remote service ("

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ") on "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, " sessions."

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "SmartspacePerUserService"

    .line 43
    .line 44
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    .line 68
    .line 69
    iget-object v2, v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    .line 70
    .line 71
    iget-object v3, v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 74
    .line 75
    .line 76
    iget-object v3, v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSmartspaceConfig:Landroid/app/smartspace/SmartspaceConfig;

    .line 77
    .line 78
    iget-object v4, v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    .line 79
    .line 80
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/smartspace/SmartspacePerUserService;->onCreateSmartspaceSessionLocked(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 84
    .line 85
    new-instance v3, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    invoke-direct {v3, v1, p0}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;Lcom/android/server/smartspace/SmartspacePerUserService;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    return-void
.end method

.method public final updateLocked(Z)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->resurrectSessionsLocked$3()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mRemoteService:Lcom/android/server/smartspace/RemoteSmartspaceService;

    .line 26
    .line 27
    :cond_1
    :goto_0
    return p1
.end method
