.class public final Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;


# instance fields
.field public final mDisplayId:I

.field public mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mDisplayId:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final fetchMediaProjectionManager()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string/jumbo v0, "media_projection"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    .line 21
    .line 22
    return-void
.end method

.method public final notifyActiveProjectionCapturedContentResized(II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->fetchMediaProjectionManager()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/media/projection/IMediaProjectionManager;->notifyActiveProjectionCapturedContentResized(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    .line 15
    .line 16
    const/4 p2, 0x4

    .line 17
    aget-boolean p1, p1, p2

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 26
    .line 27
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const-wide v1, 0x5d46bfb2edd43e7eL    # 2.1672396335665765E141

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const-string v4, "Content Recording: Unable to tell MediaProjectionManagerService about resizing the active projection: %s"

    .line 38
    .line 39
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public final notifyActiveProjectionCapturedContentVisibilityChanged(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->fetchMediaProjectionManager()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/media/projection/IMediaProjectionManager;->notifyActiveProjectionCapturedContentVisibilityChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    aget-boolean p1, p1, v0

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 26
    .line 27
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const-wide v1, 0x16357972e5e23934L

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const-string v4, "Content Recording: Unable to tell MediaProjectionManagerService about visibility change on the active projection: %s"

    .line 38
    .line 39
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public final notifyWindowingModeChanged(III)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->fetchMediaProjectionManager()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/media/projection/IMediaProjectionManager;->notifyWindowingModeChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    .line 15
    .line 16
    const/4 p2, 0x4

    .line 17
    aget-boolean p1, p1, p2

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 26
    .line 27
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const-wide v1, -0x1424aecde7ddcd54L    # -3.592300748717029E211

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const-string v4, "Content Recording: Unable to tell log windowing mode change: %s"

    .line 38
    .line 39
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public final stopActiveProjection()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mDisplayId:I

    .line 2
    .line 3
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->fetchMediaProjectionManager()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v2, 0x4

    .line 14
    :try_start_0
    aget-boolean v3, v1, v2

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    int-to-long v3, v0

    .line 19
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 20
    .line 21
    const-string v9, "Content Recording: stopping active projection for display %d"

    .line 22
    .line 23
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v10

    .line 31
    const-wide v6, 0x2c6128f062ff341dL    # 6.426974591688406E-95

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const/4 v8, 0x1

    .line 37
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;->mIMediaProjectionManager:Landroid/media/projection/IMediaProjectionManager;

    .line 44
    .line 45
    invoke-interface {p0}, Landroid/media/projection/IMediaProjectionManager;->stopActiveProjection()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :goto_1
    aget-boolean v1, v1, v2

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    int-to-long v0, v0

    .line 54
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 59
    .line 60
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    const/4 v5, 0x1

    .line 69
    const-string v6, "Content Recording: Unable to tell MediaProjectionManagerService to stop the active projection for display %d: %s"

    .line 70
    .line 71
    const-wide v3, 0x3cf377066afc38ecL    # 4.322085285124858E-15

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_2
    return-void
.end method
