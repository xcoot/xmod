.class public final Lcom/android/server/searchui/SearchUiPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/searchui/RemoteSearchUiService$RemoteSearchUiServiceCallbacks;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

.field public final mSessionInfos:Landroid/util/ArrayMap;

.field public mZombie:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/searchui/SearchUiPerUserService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/searchui/SearchUiManagerService;Ljava/lang/Object;I)V
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
    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final destroyAndRebindRemoteService$2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

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
    const-string v0, "SearchUiPerUserService"

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
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

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
    iput-boolean v1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    .line 32
    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

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
    const-string v0, "SearchUiPerUserService"

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
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/server/searchui/RemoteSearchUiService;->reconnect()V

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

.method public final getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

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
    check-cast v1, Lcom/android/server/searchui/SearchUiManagerService;

    .line 14
    .line 15
    iget-boolean p0, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const-string p0, "SearchUiPerUserService"

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
    new-instance v7, Lcom/android/server/searchui/RemoteSearchUiService;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v1, Lcom/android/server/searchui/SearchUiManagerService;

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
    invoke-direct/range {v0 .. v6}, Lcom/android/server/searchui/RemoteSearchUiService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/searchui/RemoteSearchUiService$RemoteSearchUiServiceCallbacks;ZZ)V

    .line 53
    .line 54
    .line 55
    iput-object v7, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    .line 56
    .line 57
    :cond_2
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

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

.method public final onCreateSearchSessionLocked(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;-><init>(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

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
    new-instance v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    .line 21
    .line 22
    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;

    .line 23
    .line 24
    invoke-direct {v1, p0, p2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/app/search/SearchSessionId;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p2, p1, p3, v1}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/SearchContext;Landroid/os/IBinder;Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object p1, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mToken:Landroid/os/IBinder;

    .line 31
    .line 32
    iget-object p3, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

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
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string p3, "Caller is dead before session can be started, sessionId: "

    .line 47
    .line 48
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p3, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSessionId:Landroid/app/search/SearchSessionId;

    .line 52
    .line 53
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string p3, "SearchUiPerUserService"

    .line 61
    .line 62
    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p2}, Lcom/android/server/searchui/SearchUiPerUserService;->onDestroyLocked(Landroid/app/search/SearchSessionId;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    :goto_0
    return-void
.end method

.method public final onDestroyLocked(Landroid/app/search/SearchSessionId;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 4
    .line 5
    const-string v1, "SearchUiPerUserService"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v2, "onDestroyLocked(): sessionId="

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v2, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda5;

    .line 39
    .line 40
    invoke-direct {v2, p1}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda5;-><init>(Landroid/app/search/SearchSessionId;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 44
    .line 45
    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p1, "Removing all callbacks for session Id="

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSessionId:Landroid/app/search/SearchSessionId;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p1, " and "

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object p1, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, " callbacks."

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-object p0, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mToken:Landroid/os/IBinder;

    .line 85
    .line 86
    if-eqz p0, :cond_2

    .line 87
    .line 88
    iget-object p1, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-interface {p0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object p0, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final onServiceDied(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/searchui/RemoteSearchUiService;

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
    const-string v0, "SearchUiPerUserService"

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
    iput-boolean v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mZombie:Z

    .line 34
    .line 35
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

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
    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

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

.method public final registerEmptyQueryResultUpdateCallbackLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p1, "Storing callback for session Id="

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSessionId:Landroid/app/search/SearchSessionId;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " and callback="

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-interface {p2}, Landroid/app/search/ISearchCallback;->asBinder()Landroid/os/IBinder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "SearchUiPerUserService"

    .line 53
    .line 54
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object p0, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 58
    .line 59
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public final resolveService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/searchui/RemoteSearchUiService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

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

.method public final resurrectSessionsLocked$2()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

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
    const-string v2, "Resurrecting remote service ("

    .line 12
    .line 13
    const-string v3, "SearchUiPerUserService"

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    .line 23
    .line 24
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v4, ") on "

    .line 28
    .line 29
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, " sessions."

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

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
    check-cast v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    .line 68
    .line 69
    iget-object v4, v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mToken:Landroid/os/IBinder;

    .line 70
    .line 71
    iget-object v5, v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService;->getRemoteServiceLocked()Lcom/android/server/searchui/RemoteSearchUiService;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v7, ") for session Id="

    .line 90
    .line 91
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v7, v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSessionId:Landroid/app/search/SearchSessionId;

    .line 95
    .line 96
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v7, " and "

    .line 100
    .line 101
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v5, " callbacks."

    .line 108
    .line 109
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    iget-object v5, v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSearchContext:Landroid/app/search/SearchContext;

    .line 120
    .line 121
    iget-object v6, v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSessionId:Landroid/app/search/SearchSessionId;

    .line 122
    .line 123
    invoke-virtual {p0, v5, v6, v4}, Lcom/android/server/searchui/SearchUiPerUserService;->onCreateSearchSessionLocked(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V

    .line 124
    .line 125
    .line 126
    iget-object v4, v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 127
    .line 128
    new-instance v5, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$$ExternalSyntheticLambda0;

    .line 129
    .line 130
    invoke-direct {v5, v1, p0}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;Lcom/android/server/searchui/SearchUiPerUserService;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
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
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService;->mRemoteService:Lcom/android/server/searchui/RemoteSearchUiService;

    .line 22
    .line 23
    :cond_0
    return p1
.end method
