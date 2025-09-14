.class public final Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

.field public mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 5
    .line 6
    const-string v1, "  "

    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 34
    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "is dispatched="

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-boolean v2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsDispatched:Z

    .line 44
    .line 45
    const-string v3, "is fulfilled:="

    .line 46
    .line 47
    invoke-static {v1, v2, v0, v3}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-boolean p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    .line 52
    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 64
    .line 65
    .line 66
    :cond_1
    monitor-exit p1

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object p0
.end method

.method public isServiceAvailableLocked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 5

    .line 1
    const-string v0, " requires android.permission.BIND_ROTATION_RESOLVER_SERVICE permission. Found "

    .line 2
    .line 3
    const-string v1, "Service "

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 10
    .line 11
    const-wide/16 v3, 0x80

    .line 12
    .line 13
    invoke-interface {v2, p1, v3, v4, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 20
    .line 21
    const-string v3, "android.permission.BIND_ROTATION_RESOLVER_SERVICE"

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p0, " permission"

    .line 53
    .line 54
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-direct {v2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_1
    :goto_0
    return-object p0

    .line 66
    :catch_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 67
    .line 68
    const-string v0, "Could not get service for "

    .line 69
    .line 70
    invoke-static {p1, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public resolveRotationLocked(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->isServiceAvailableLocked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "RotationResolverManagerPerUserService"

    .line 8
    .line 9
    const-string p3, "Service is not available at this moment."

    .line 10
    .line 11
    invoke-static {p0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-interface {p1, p0}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/service/rotationresolver/RotationResolutionRequest;->getProposedRotation()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-virtual {p2}, Landroid/service/rotationresolver/RotationResolutionRequest;->getCurrentRotation()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-static {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const/16 p2, 0x148

    .line 35
    .line 36
    const/4 p3, 0x7

    .line 37
    invoke-static {p2, p1, p0, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    new-instance v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    .line 54
    .line 55
    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 56
    .line 57
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-boolean v1, v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    .line 67
    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->cancelInternal()V

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 78
    .line 79
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 80
    .line 81
    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 83
    .line 84
    const/16 v2, 0x9

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 87
    .line 88
    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;

    .line 91
    .line 92
    invoke-direct {v0, p0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;)V

    .line 93
    .line 94
    .line 95
    new-instance p1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 98
    .line 99
    invoke-direct {p1, v0, p2, p3, v1}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 103
    .line 104
    new-instance p1, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    invoke-direct {p1, p0}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mRemoteService:Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    .line 113
    .line 114
    iget-object p2, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->resolveRotation(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V

    .line 117
    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->mCurrentRequest:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 120
    .line 121
    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsDispatched:Z

    .line 123
    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    throw p0
.end method
