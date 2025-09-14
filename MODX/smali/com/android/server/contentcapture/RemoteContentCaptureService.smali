.class public final Lcom/android/server/contentcapture/RemoteContentCaptureService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIdleUnbindTimeoutMs:I

.field public final mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

.field public final mServerCallback:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/service/contentcapture/IContentCaptureServiceCallback;ILcom/android/server/contentcapture/ContentCapturePerUserService;ZZI)V
    .locals 11

    .line 1
    move-object v10, p0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 5
    move-result-object v6

    .line 6
    if-eqz p6, :cond_0

    .line 8
    const/high16 v0, 0x400000

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    or-int/lit16 v7, v0, 0x1000

    .line 14
    const/4 v9, 0x2

    .line 15
    const-string v2, "android.service.contentcapture.ContentCaptureService"

    .line 17
    move-object v0, p0

    .line 18
    move-object v1, p1

    .line 19
    move-object v3, p2

    .line 20
    move v4, p4

    .line 21
    move-object/from16 v5, p5

    .line 23
    move/from16 v8, p7

    .line 25
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    .line 28
    move-object/from16 v0, p5

    .line 30
    iput-object v0, v10, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 32
    invoke-interface {p3}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->asBinder()Landroid/os/IBinder;

    .line 35
    move-result-object v0

    .line 36
    iput-object v0, v10, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mServerCallback:Landroid/os/IBinder;

    .line 38
    move/from16 v0, p8

    .line 40
    iput v0, v10, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mIdleUnbindTimeoutMs:I

    .line 42
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleBind()V

    .line 45
    return-void
.end method


# virtual methods
.method public final ensureBoundLocked()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleBind()V

    .line 4
    return-void
.end method

.method public final getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/service/contentcapture/IContentCaptureService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureService;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getTimeoutIdleBindMillis()J
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mIdleUnbindTimeoutMs:I

    .line 3
    int-to-long v0, p0

    .line 4
    return-wide v0
.end method

.method public final handleOnConnectedStateChanged(Z)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mIdleUnbindTimeoutMs:I

    .line 5
    int-to-long v0, v0

    .line 6
    const-wide/16 v2, 0x0

    .line 8
    cmp-long v0, v0, v2

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleUnbind()V

    .line 15
    :cond_0
    const v0, 0xcfd0

    .line 18
    if-eqz p1, :cond_1

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mService:Landroid/os/IInterface;

    .line 22
    check-cast v1, Landroid/service/contentcapture/IContentCaptureService;

    .line 24
    iget-object v2, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mServerCallback:Landroid/os/IBinder;

    .line 26
    sget-boolean v3, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    .line 28
    sget-boolean v4, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    .line 30
    invoke-interface {v1, v2, v3, v4}, Landroid/service/contentcapture/IContentCaptureService;->onConnected(Landroid/os/IBinder;ZZ)V

    .line 33
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mComponentName:Landroid/content/ComponentName;

    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-static {v2, v1}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V

    .line 39
    iget-object v1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 41
    iget v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v1

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 53
    iget-object v4, v3, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 55
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :try_start_1
    iget-object v5, v3, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 58
    check-cast v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 60
    iget-object v5, v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 62
    iget v3, v3, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 64
    invoke-virtual {v5, v3}, Lcom/android/internal/infra/GlobalWhitelistState;->getWhitelistedPackages(I)Landroid/util/ArraySet;

    .line 67
    move-result-object v3

    .line 68
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    :try_start_2
    invoke-static {v3}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    .line 72
    move-result v3

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v3

    .line 77
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 80
    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :try_start_3
    iget-object v0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 86
    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onConnected()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 89
    goto :goto_2

    .line 90
    :catch_0
    move-exception v0

    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto :goto_0

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 96
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 97
    :goto_0
    :try_start_6
    iget-object v1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 99
    invoke-virtual {v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onConnected()V

    .line 102
    throw v0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mService:Landroid/os/IInterface;

    .line 105
    check-cast v1, Landroid/service/contentcapture/IContentCaptureService;

    .line 107
    invoke-interface {v1}, Landroid/service/contentcapture/IContentCaptureService;->onDisconnected()V

    .line 110
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mComponentName:Landroid/content/ComponentName;

    .line 112
    const/4 v2, 0x2

    .line 113
    invoke-static {v2, v1}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V

    .line 116
    iget-object v1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService;->mPerUserService:Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 118
    iget v1, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v1

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v2

    .line 128
    const/4 v3, 0x0

    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v3

    .line 133
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 136
    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 140
    goto :goto_2

    .line 141
    :goto_1
    iget-object p0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    const-string v2, "Exception calling onConnectedStateChanged("

    .line 147
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 153
    const-string p1, "): "

    .line 155
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object p1

    .line 165
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_2
    return-void
.end method

.method public final onActivityLifecycleEvent(Landroid/service/contentcapture/ActivityEvent;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda0;

    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda0;-><init>(Landroid/service/contentcapture/ActivityEvent;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 9
    return-void
.end method

.method public final onActivitySnapshotRequest(ILandroid/service/contentcapture/SnapshotData;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda5;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda5;-><init>(ILandroid/service/contentcapture/SnapshotData;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 9
    return-void
.end method

.method public final onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda0;

    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda0;-><init>(Landroid/view/contentcapture/DataRemovalRequest;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 9
    const/4 p1, 0x5

    .line 10
    iget-object p0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mComponentName:Landroid/content/ComponentName;

    .line 12
    invoke-static {p1, p0}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V

    .line 15
    return-void
.end method

.method public final onDataShareRequest(Landroid/view/contentcapture/DataShareRequest;Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda4;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda4;-><init>(Landroid/view/contentcapture/DataShareRequest;Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 9
    const/4 p1, 0x6

    .line 10
    iget-object p0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mComponentName:Landroid/content/ComponentName;

    .line 12
    invoke-static {p1, p0}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILandroid/content/ComponentName;)V

    .line 15
    return-void
.end method

.method public final onSessionFinished(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda1;

    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->getComponentName()Landroid/content/ComponentName;

    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x2

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {p1, v0, v1, p0}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;)V

    .line 18
    return-void
.end method

.method public final onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;

    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;-><init>(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    .line 12
    invoke-virtual {p0, v6}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 15
    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->getComponentName()Landroid/content/ComponentName;

    .line 18
    move-result-object p0

    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-static {p2, p1, p5, p0}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeSessionEvent(IIILandroid/content/ComponentName;)V

    .line 23
    return-void
.end method
