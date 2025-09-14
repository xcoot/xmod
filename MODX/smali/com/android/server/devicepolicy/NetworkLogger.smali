.class public final Lcom/android/server/devicepolicy/NetworkLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public mHandlerThread:Lcom/android/server/ServiceThread;

.field public mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

.field public final mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mNetdEventCallback:Lcom/android/server/devicepolicy/NetworkLogger$1;

.field public mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

.field public final mPm:Landroid/content/pm/PackageManagerInternal;

.field public final mTargetUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/pm/PackageManagerInternal;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance v0, Lcom/android/server/devicepolicy/NetworkLogger$1;

    .line 14
    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/NetworkLogger$1;-><init>(Lcom/android/server/devicepolicy/NetworkLogger;)V

    .line 17
    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetdEventCallback:Lcom/android/server/devicepolicy/NetworkLogger$1;

    .line 19
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 21
    iput-object p2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mPm:Landroid/content/pm/PackageManagerInternal;

    .line 23
    iput p3, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mTargetUserId:I

    .line 25
    return-void
.end method


# virtual methods
.method public final discardLogs()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    .line 8
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 18
    const-string v0, "NetworkLoggingHandler"

    .line 20
    const-string v1, "Discarded all network logs"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0

    .line 29
    throw v0

    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method public final retrieveLogs(J)Ljava/util/List;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-gez v0, :cond_0

    .line 12
    monitor-exit p0

    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/devicepolicy/NetworkLoggingHandler$$ExternalSyntheticLambda0;

    .line 17
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/devicepolicy/NetworkLoggingHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;J)V

    .line 20
    const-wide/32 v2, 0x493e0

    .line 23
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    iput-wide p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastRetrievedBatchToken:J

    .line 28
    iget-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    .line 30
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    monitor-exit p0

    .line 37
    move-object p0, p1

    .line 38
    :goto_0
    return-object p0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    monitor-exit p0

    .line 41
    throw p1
.end method

.method public final startNetworkLogging()Z
    .locals 11

    .line 1
    const-string v0, "NetworkLogger"

    .line 3
    const-string v1, "Starting network logging."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    :goto_0
    move v1, v3

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 18
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const-string/jumbo v1, "connmetrics"

    .line 26
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 36
    move v1, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iput-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 40
    goto :goto_0

    .line 41
    :goto_1
    if-nez v1, :cond_2

    .line 43
    const-string p0, "Failed to register callback with IIpConnectivityMetrics."

    .line 45
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return v2

    .line 49
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 51
    iget-object v4, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetdEventCallback:Lcom/android/server/devicepolicy/NetworkLogger$1;

    .line 53
    invoke-interface {v1, v3, v4}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 59
    new-instance v1, Lcom/android/server/ServiceThread;

    .line 61
    const/16 v4, 0xa

    .line 63
    invoke-direct {v1, v4, v0, v2}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 66
    iput-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 68
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v1, Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 73
    iget-object v4, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 75
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 78
    move-result-object v6

    .line 79
    iget-object v7, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 81
    iget v10, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mTargetUserId:I

    .line 83
    const-wide/16 v8, 0x0

    .line 85
    move-object v5, v1

    .line 86
    invoke-direct/range {v5 .. v10}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;-><init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;JI)V

    .line 89
    iput-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 91
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->scheduleBatchFinalization()V

    .line 94
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return v3

    .line 100
    :catch_0
    move-exception p0

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    return v2

    .line 103
    :goto_2
    const-string v1, "Failed to make remote calls to register the callback"

    .line 105
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    return v2
.end method

.method public final stopNetworkLogging()Z
    .locals 4

    .line 1
    const-string v0, "NetworkLogger"

    .line 3
    const-string v1, "Stopping network logging"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLogger;->discardLogs()V

    .line 17
    const/4 v1, 0x1

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 20
    if-eqz v2, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 25
    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    const-string/jumbo v2, "connmetrics"

    .line 33
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    .line 40
    move-result-object v2

    .line 41
    if-nez v2, :cond_2

    .line 43
    const-string v2, "Failed to unregister callback with IIpConnectivityMetrics."

    .line 45
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 50
    if-eqz p0, :cond_1

    .line 52
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 55
    :cond_1
    return v1

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto :goto_2

    .line 58
    :catch_0
    move-exception v2

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :try_start_1
    iput-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 62
    :goto_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 64
    invoke-interface {v2, v1}, Landroid/net/IIpConnectivityMetrics;->removeNetdEventCallback(I)Z

    .line 67
    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 70
    if-eqz p0, :cond_3

    .line 72
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 75
    :cond_3
    return v0

    .line 76
    :goto_1
    :try_start_2
    const-string v3, "Failed to make remote calls to unregister the callback"

    .line 78
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 83
    if-eqz p0, :cond_4

    .line 85
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 88
    :cond_4
    return v1

    .line 89
    :goto_2
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 91
    if-eqz p0, :cond_5

    .line 93
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 96
    :cond_5
    throw v0
.end method
