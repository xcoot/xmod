.class public final Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;
.super Landroid/service/rotationresolver/IRotationResolverCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRequestWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/service/rotationresolver/IRotationResolverCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;->mRequestWeakReference:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onCancellable(Landroid/os/ICancellationSignal;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;->mRequestWeakReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iput-object p1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCancellation:Landroid/os/ICancellationSignal;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCancellationSignalInternal:Landroid/os/CancellationSignal;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->isCanceled()Z

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    :try_start_1
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    :try_start_2
    sget p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->$r8$clinit:I

    .line 29
    .line 30
    const-string p0, "RemoteRotationResolverService"

    .line 31
    .line 32
    const-string p1, "Failed to cancel the remote request."

    .line 33
    .line 34
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    throw p0
.end method

.method public final onFailure(I)V
    .locals 14

    .line 1
    const-string/jumbo v0, "timeToCalculate:"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "onFailure:"

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;->mRequestWeakReference:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    sget p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->$r8$clinit:I

    .line 23
    .line 24
    const-string p0, "RemoteRotationResolverService"

    .line 25
    .line 26
    const-string p1, "Callback received after the rotation request is fulfilled."

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    monitor-exit v2

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    const/4 v3, 0x1

    .line 36
    iput-boolean v3, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCallbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    .line 39
    .line 40
    invoke-interface {v4, p1}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    iget-wide v6, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRequestStartTimeMillis:J

    .line 48
    .line 49
    sub-long/2addr v4, v6

    .line 50
    iget-object v6, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 51
    .line 52
    invoke-virtual {v6}, Landroid/service/rotationresolver/RotationResolutionRequest;->getProposedRotation()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/service/rotationresolver/RotationResolutionRequest;->getCurrentRotation()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    if-eq p1, v3, :cond_2

    .line 65
    .line 66
    const/4 v3, 0x2

    .line 67
    if-eq p1, v3, :cond_2

    .line 68
    .line 69
    const/4 v3, 0x4

    .line 70
    if-eq p1, v3, :cond_1

    .line 71
    .line 72
    const/16 v3, 0x8

    .line 73
    .line 74
    :goto_0
    move v11, v3

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const/4 v3, 0x7

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 v3, 0x0

    .line 79
    goto :goto_0

    .line 80
    :goto_1
    invoke-static {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    invoke-static {v6}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    const/16 v8, 0x148

    .line 89
    .line 90
    move-wide v12, v4

    .line 91
    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJ)V

    .line 92
    .line 93
    .line 94
    sget p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->$r8$clinit:I

    .line 95
    .line 96
    const-string p0, "RemoteRotationResolverService"

    .line 97
    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    const-string p0, "RemoteRotationResolverService"

    .line 114
    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    monitor-exit v2

    .line 131
    return-void

    .line 132
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    throw p0
.end method

.method public final onSuccess(I)V
    .locals 13

    .line 1
    const-string/jumbo v0, "timeToCalculate:"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "onSuccess:"

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;->mRequestWeakReference:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    sget p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->$r8$clinit:I

    .line 23
    .line 24
    const-string p0, "RemoteRotationResolverService"

    .line 25
    .line 26
    const-string p1, "Callback received after the rotation request is fulfilled."

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    monitor-exit v2

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v3, 0x1

    .line 36
    iput-boolean v3, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIsFulfilled:Z

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mCallbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    .line 39
    .line 40
    invoke-interface {v3, p1}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onSuccess(I)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    iget-wide v5, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRequestStartTimeMillis:J

    .line 48
    .line 49
    sub-long/2addr v3, v5

    .line 50
    iget-object v5, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 51
    .line 52
    invoke-virtual {v5}, Landroid/service/rotationresolver/RotationResolutionRequest;->getProposedRotation()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/service/rotationresolver/RotationResolutionRequest;->getCurrentRotation()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    invoke-static {p0}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    invoke-static {v5}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    const/16 v7, 0x148

    .line 75
    .line 76
    move-wide v11, v3

    .line 77
    invoke-static/range {v7 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJ)V

    .line 78
    .line 79
    .line 80
    sget p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->$r8$clinit:I

    .line 81
    .line 82
    const-string p0, "RemoteRotationResolverService"

    .line 83
    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    const-string p0, "RemoteRotationResolverService"

    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    monitor-exit v2

    .line 117
    return-void

    .line 118
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    throw p0
.end method
