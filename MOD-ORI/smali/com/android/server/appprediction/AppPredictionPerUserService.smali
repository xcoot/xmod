.class public final Lcom/android/server/appprediction/AppPredictionPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;


# instance fields
.field public mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

.field public final mSessionInfos:Landroid/util/ArrayMap;

.field public mZombie:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/appprediction/AppPredictionManagerService;Ljava/lang/Object;I)V
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
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final destroyAndRebindRemoteService$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

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
    const-string v0, "AppPredictionPerUserService"

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
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

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
    iput-boolean v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mZombie:Z

    .line 32
    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

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
    const-string v0, "AppPredictionPerUserService"

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
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/server/appprediction/RemoteAppPredictionService;->reconnect()V

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

.method public final getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

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
    check-cast v1, Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 14
    .line 15
    iget-boolean p0, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const-string p0, "AppPredictionPerUserService"

    .line 20
    .line 21
    const-string/jumbo v0, "getRemoteServiceLocked(): not set"

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v7, Lcom/android/server/appprediction/RemoteAppPredictionService;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v1, Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    iget-boolean v6, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 46
    .line 47
    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 48
    .line 49
    move-object v0, v7

    .line 50
    move-object v1, v3

    .line 51
    move v3, v4

    .line 52
    move-object v4, p0

    .line 53
    invoke-direct/range {v0 .. v6}, Lcom/android/server/appprediction/RemoteAppPredictionService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;ZZ)V

    .line 54
    .line 55
    .line 56
    iput-object v7, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    .line 57
    .line 58
    :cond_2
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    .line 59
    .line 60
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

.method public final onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "predict_using_people_service_"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getUiSurface()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string/jumbo v1, "systemui"

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {v1, v0, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getExtras()Landroid/os/Bundle;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getExtras()Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string/jumbo v4, "remote_app_predictor"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    const-string/jumbo v3, "dark_launch_remote_prediction_service_enabled"

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v3, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    move v6, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v6, v0

    .line 59
    :goto_0
    new-instance v0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda1;

    .line 60
    .line 61
    invoke-direct {v0, p1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda1;-><init>(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    .line 62
    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-virtual {p0, v1, v6, v0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 72
    .line 73
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    new-instance v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 80
    .line 81
    new-instance v8, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda2;

    .line 82
    .line 83
    invoke-direct {v8, p0, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/AppPredictionSessionId;)V

    .line 84
    .line 85
    .line 86
    move-object v3, v0

    .line 87
    move-object v4, p2

    .line 88
    move-object v5, p1

    .line 89
    move-object v7, p3

    .line 90
    invoke-direct/range {v3 .. v8}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppPredictionContext;ZLandroid/os/IBinder;Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda2;)V

    .line 91
    .line 92
    .line 93
    :try_start_0
    iget-object p1, v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mToken:Landroid/os/IBinder;

    .line 94
    .line 95
    iget-object p3, v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 96
    .line 97
    invoke-interface {p1, p3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_0
    invoke-virtual {p0, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onDestroyPredictionSessionLocked(Landroid/app/prediction/AppPredictionSessionId;)V

    .line 107
    .line 108
    .line 109
    :cond_1
    :goto_1
    return-void
.end method

.method public final onDestroyPredictionSessionLocked(Landroid/app/prediction/AppPredictionSessionId;)V
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
    const-string/jumbo v1, "onDestroyPredictionSessionLocked(): sessionId="

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
    const-string v1, "AppPredictionPerUserService"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v1, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda3;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-direct {v1, p1, v2}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda3;-><init>(Landroid/app/prediction/AppPredictionSessionId;I)V

    .line 42
    .line 43
    .line 44
    iget-boolean p1, v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    .line 45
    .line 46
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 47
    .line 48
    .line 49
    iget-object p0, v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mToken:Landroid/os/IBinder;

    .line 50
    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    iget-object p1, v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 54
    .line 55
    invoke-interface {p0, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object p0, v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final onServiceDied(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/appprediction/RemoteAppPredictionService;

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
    const-string v0, "AppPredictionPerUserService"

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
    iput-boolean v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mZombie:Z

    .line 34
    .line 35
    monitor-exit p1

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final registerPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda4;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda4;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;I)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iget-boolean v2, v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    .line 20
    .line 21
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resolveService(ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    iget-object p0, v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final resolveService(ZZLcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    const-class p0, Lcom/android/server/people/PeopleServiceInternal;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/service/appprediction/IPredictionService;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-interface {p3, p0}, Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;->run(Landroid/os/IInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string p3, "Failed to invoke service:"

    .line 23
    .line 24
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string p3, "AppPredictionPerUserService"

    .line 35
    .line 36
    invoke-static {p3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 40
    .line 41
    move v0, v1

    .line 42
    :cond_1
    return v0

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    if-eqz p0, :cond_4

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0, p3}, Lcom/android/server/appprediction/RemoteAppPredictionService;->executeOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/appprediction/RemoteAppPredictionService;->scheduleOnResolvedService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    .line 59
    .line 60
    move v0, v1

    .line 61
    :cond_5
    return v0
.end method

.method public final resurrectSessionsLocked()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

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
    iget-object v2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

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
    const-string v1, "AppPredictionPerUserService"

    .line 43
    .line 44
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

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
    check-cast v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 68
    .line 69
    iget-object v2, v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mToken:Landroid/os/IBinder;

    .line 70
    .line 71
    iget-object v3, v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 74
    .line 75
    .line 76
    iget-object v3, v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    .line 77
    .line 78
    iget-object v4, v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    .line 79
    .line 80
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 84
    .line 85
    new-instance v3, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    invoke-direct {v3, v1, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

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
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    .line 15
    .line 16
    :cond_0
    return p1
.end method
