.class public final Lcom/android/server/media/MediaSessionRecord$ControllerStub;
.super Landroid/media/session/ISessionController$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    invoke-direct {p0}, Landroid/media/session/ISessionController$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final adjustVolume(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    move-result v3

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v4

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    move-result-wide v9

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    move-object v1, p1

    .line 18
    move-object v2, p2

    .line 19
    move v6, p3

    .line 20
    move v7, p4

    .line 21
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    throw p0
.end method

.method public final fastForward(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:fastForward"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    invoke-interface {p0, p1, v7, v8}, Landroid/media/session/ISessionCallback;->onFastForward(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p1, "MediaSessionRecord"

    .line 43
    const-string v0, "Remote failure in fastForward."

    .line 45
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_0
    return-void
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 8
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final getFlags()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    .line 5
    return-wide v0
.end method

.method public final getLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 5
    return-object p0
.end method

.method public final getMetadata()Landroid/media/MediaMetadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 8
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public final getPlaybackState()Landroid/media/session/PlaybackState;
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 11
    monitor-exit v0

    .line 12
    goto :goto_1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 17
    iget-wide v3, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 25
    move-result p0

    .line 26
    const/4 v0, 0x3

    .line 27
    if-eq p0, v0, :cond_1

    .line 29
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 32
    move-result p0

    .line 33
    const/4 v0, 0x4

    .line 34
    if-eq p0, v0, :cond_1

    .line 36
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 39
    move-result p0

    .line 40
    const/4 v0, 0x5

    .line 41
    if-ne p0, v0, :cond_4

    .line 43
    :cond_1
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    .line 46
    move-result-wide v5

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 50
    move-result-wide v12

    .line 51
    const-wide/16 v7, 0x0

    .line 53
    cmp-long p0, v5, v7

    .line 55
    if-lez p0, :cond_4

    .line 57
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    .line 60
    move-result p0

    .line 61
    sub-long v5, v12, v5

    .line 63
    long-to-float v0, v5

    .line 64
    mul-float/2addr p0, v0

    .line 65
    float-to-long v5, p0

    .line 66
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 69
    move-result-wide v9

    .line 70
    add-long/2addr v9, v5

    .line 71
    cmp-long p0, v3, v7

    .line 73
    if-ltz p0, :cond_2

    .line 75
    cmp-long p0, v9, v3

    .line 77
    if-lez p0, :cond_2

    .line 79
    move-wide v9, v3

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    cmp-long p0, v9, v7

    .line 83
    if-gez p0, :cond_3

    .line 85
    move-wide v9, v7

    .line 86
    :cond_3
    :goto_0
    new-instance p0, Landroid/media/session/PlaybackState$Builder;

    .line 88
    invoke-direct {p0, v1}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    .line 91
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 94
    move-result v8

    .line 95
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    .line 98
    move-result v11

    .line 99
    move-object v7, p0

    .line 100
    invoke-virtual/range {v7 .. v13}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 103
    invoke-virtual {p0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    .line 106
    move-result-object v2

    .line 107
    :cond_4
    if-nez v2, :cond_5

    .line 109
    move-object v2, v1

    .line 110
    :cond_5
    :goto_1
    return-object v2

    .line 111
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    throw p0
.end method

.method public final getQueue()Landroid/content/pm/ParceledListSlice;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 8
    iget-object v1, v1, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    .line 10
    if-nez v1, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    .line 16
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    .line 20
    invoke-direct {v1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 23
    move-object p0, v1

    .line 24
    :goto_0
    monitor-exit v0

    .line 25
    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final getQueueTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    .line 5
    return-object p0
.end method

.method public final getRatingType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    .line 5
    return p0
.end method

.method public final getSessionInfo()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionInfo:Landroid/os/Bundle;

    .line 5
    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public final getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final next(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:next"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    invoke-interface {p0, p1, v7, v8}, Landroid/media/session/ISessionCallback;->onNext(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p1, "MediaSessionRecord"

    .line 43
    const-string v0, "Remote failure in next."

    .line 45
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_0
    return-void
.end method

.method public final pause(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:pause"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    invoke-interface {p0, p1, v7, v8}, Landroid/media/session/ISessionCallback;->onPause(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p1, "MediaSessionRecord"

    .line 43
    const-string v0, "Remote failure in pause."

    .line 45
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_0
    return-void
.end method

.method public final play(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:play"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    invoke-interface {p0, p1, v7, v8}, Landroid/media/session/ISessionCallback;->onPlay(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p1, "MediaSessionRecord"

    .line 43
    const-string v0, "Remote failure in play."

    .line 45
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_0
    return-void
.end method

.method public final playFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:playFromMediaId"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    move-object v1, p1

    .line 37
    move v2, v7

    .line 38
    move v3, v8

    .line 39
    move-object v4, p2

    .line 40
    move-object v5, p3

    .line 41
    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onPlayFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string p1, "MediaSessionRecord"

    .line 48
    const-string p2, "Remote failure in playFromMediaId."

    .line 50
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :goto_0
    return-void
.end method

.method public final playFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:playFromSearch"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    move-object v1, p1

    .line 37
    move v2, v7

    .line 38
    move v3, v8

    .line 39
    move-object v4, p2

    .line 40
    move-object v5, p3

    .line 41
    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onPlayFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string p1, "MediaSessionRecord"

    .line 48
    const-string p2, "Remote failure in playFromSearch."

    .line 50
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :goto_0
    return-void
.end method

.method public final playFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:playFromUri"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    move-object v1, p1

    .line 37
    move v2, v7

    .line 38
    move v3, v8

    .line 39
    move-object v4, p2

    .line 40
    move-object v5, p3

    .line 41
    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onPlayFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string p1, "MediaSessionRecord"

    .line 48
    const-string p2, "Remote failure in playFromUri."

    .line 50
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :goto_0
    return-void
.end method

.method public final prepare(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:prepare"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    invoke-interface {p0, p1, v7, v8}, Landroid/media/session/ISessionCallback;->onPrepare(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p1, "MediaSessionRecord"

    .line 43
    const-string v0, "Remote failure in prepare."

    .line 45
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_0
    return-void
.end method

.method public final prepareFromMediaId(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:prepareFromMediaId"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    move-object v1, p1

    .line 37
    move v2, v7

    .line 38
    move v3, v8

    .line 39
    move-object v4, p2

    .line 40
    move-object v5, p3

    .line 41
    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onPrepareFromMediaId(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string p1, "MediaSessionRecord"

    .line 48
    const-string p2, "Remote failure in prepareFromMediaId."

    .line 50
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :goto_0
    return-void
.end method

.method public final prepareFromSearch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:prepareFromSearch"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    move-object v1, p1

    .line 37
    move v2, v7

    .line 38
    move v3, v8

    .line 39
    move-object v4, p2

    .line 40
    move-object v5, p3

    .line 41
    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onPrepareFromSearch(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string p1, "MediaSessionRecord"

    .line 48
    const-string p2, "Remote failure in prepareFromSearch."

    .line 50
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :goto_0
    return-void
.end method

.method public final prepareFromUri(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:prepareFromUri"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    move-object v1, p1

    .line 37
    move v2, v7

    .line 38
    move v3, v8

    .line 39
    move-object v4, p2

    .line 40
    move-object v5, p3

    .line 41
    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onPrepareFromUri(Ljava/lang/String;IILandroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string p1, "MediaSessionRecord"

    .line 48
    const-string p2, "Remote failure in prepareFromUri."

    .line 50
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :goto_0
    return-void
.end method

.method public final previous(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:previous"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    invoke-interface {p0, p1, v7, v8}, Landroid/media/session/ISessionCallback;->onPrevious(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p1, "MediaSessionRecord"

    .line 43
    const-string v0, "Remote failure in previous."

    .line 45
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_0
    return-void
.end method

.method public final rate(Ljava/lang/String;Landroid/media/Rating;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:rate"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    invoke-interface {p0, p1, v7, v8, p2}, Landroid/media/session/ISessionCallback;->onRate(Ljava/lang/String;IILandroid/media/Rating;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p1, "MediaSessionRecord"

    .line 43
    const-string p2, "Remote failure in rate."

    .line 45
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_0
    return-void
.end method

.method public final registerCallback(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "registering controller callback "

    .line 4
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 6
    iget-object v1, v1, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 11
    iget-boolean v3, v2, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz v3, :cond_0

    .line 15
    :try_start_1
    invoke-interface {p2}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_2

    .line 21
    :catch_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {v2, p2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetControllerHolderIndexForCb(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I

    .line 26
    move-result v2

    .line 27
    if-gez v2, :cond_1

    .line 29
    new-instance v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 34
    new-instance v3, Lcom/android/server/media/MediaSessionRecord$ControllerStub$$ExternalSyntheticLambda0;

    .line 36
    invoke-direct {v3, p0, p2}, Lcom/android/server/media/MediaSessionRecord$ControllerStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaSessionRecord$ControllerStub;Landroid/media/session/ISessionControllerCallback;)V

    .line 39
    invoke-direct {v2, p2, p1, v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;-><init>(Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerStub$$ExternalSyntheticLambda0;)V

    .line 42
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 44
    iget-object v4, v4, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v2, "MediaSessionRecord"

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    const-string v0, " from controller"

    .line 61
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :try_start_3
    invoke-interface {p2}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    .line 77
    move-result-object p1

    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-interface {p1, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    goto :goto_1

    .line 83
    :catch_1
    move-exception p1

    .line 84
    :try_start_4
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V

    .line 87
    const-string p0, "MediaSessionRecord"

    .line 89
    const-string/jumbo p2, "registerCallback failed to linkToDeath"

    .line 92
    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :cond_1
    :goto_1
    monitor-exit v1

    .line 96
    return-void

    .line 97
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    throw p0
.end method

.method public final rewind(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:rewind"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    invoke-interface {p0, p1, v7, v8}, Landroid/media/session/ISessionCallback;->onRewind(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p1, "MediaSessionRecord"

    .line 43
    const-string v0, "Remote failure in rewind."

    .line 45
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_0
    return-void
.end method

.method public final seekTo(Ljava/lang/String;J)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:seekTo"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    move-object v1, p1

    .line 37
    move v2, v7

    .line 38
    move v3, v8

    .line 39
    move-wide v4, p2

    .line 40
    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onSeekTo(Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    const-string p1, "MediaSessionRecord"

    .line 47
    const-string p2, "Remote failure in seekTo."

    .line 49
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :goto_0
    return-void
.end method

.method public final sendCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string v0, "MediaSessionRecord:"

    .line 18
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 32
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 34
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 36
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 38
    move-object v0, v1

    .line 39
    move v1, v2

    .line 40
    move v2, v7

    .line 41
    move-object v4, p1

    .line 42
    move v6, v8

    .line 43
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 48
    move-object v1, p1

    .line 49
    move v2, v7

    .line 50
    move v3, v8

    .line 51
    move-object v4, p2

    .line 52
    move-object v5, p3

    .line 53
    move-object v6, p4

    .line 54
    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onCommand(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    const-string p1, "MediaSessionRecord"

    .line 61
    const-string p2, "Remote failure in sendCommand."

    .line 63
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :goto_0
    return-void
.end method

.method public final sendCustomAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string v0, "MediaSessionRecord:custom-"

    .line 18
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 32
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 34
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 36
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 38
    move-object v0, v1

    .line 39
    move v1, v2

    .line 40
    move v2, v7

    .line 41
    move-object v4, p1

    .line 42
    move v6, v8

    .line 43
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 48
    move-object v1, p1

    .line 49
    move v2, v7

    .line 50
    move v3, v8

    .line 51
    move-object v4, p2

    .line 52
    move-object v5, p3

    .line 53
    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onCustomAction(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    const-string p1, "MediaSessionRecord"

    .line 60
    const-string p2, "Remote failure in sendCustomAction."

    .line 62
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :goto_0
    return-void
.end method

.method public final sendMediaButton(Ljava/lang/String;Landroid/view/KeyEvent;)Z
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string v0, "action="

    .line 18
    :try_start_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 21
    move-result v1

    .line 22
    invoke-static {v1}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    .line 25
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 28
    if-eqz v1, :cond_0

    .line 30
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v0, ";code="

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 54
    move-result v0

    .line 55
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v5

    .line 66
    iget-object v0, v2, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 68
    iget v1, v2, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 70
    iget-object v3, v2, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 72
    move v2, v7

    .line 73
    move-object v4, p1

    .line 74
    move v6, v8

    .line 75
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception p0

    .line 80
    goto :goto_1

    .line 81
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 83
    new-instance v0, Landroid/content/Intent;

    .line 85
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    .line 87
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.extra.KEY_EVENT"

    .line 92
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    invoke-interface {p0, p1, v7, v8, v0}, Landroid/media/session/ISessionCallback;->onMediaButtonFromController(Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    const/4 p0, 0x1

    .line 99
    goto :goto_2

    .line 100
    :goto_1
    const-string p1, "MediaSessionRecord"

    .line 102
    const-string p2, "Remote failure in sendMediaRequest."

    .line 104
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    const/4 p0, 0x0

    .line 108
    :goto_2
    return p0
.end method

.method public final setPlaybackSpeed(Ljava/lang/String;F)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:setPlaybackSpeed"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    invoke-interface {p0, p1, v7, v8, p2}, Landroid/media/session/ISessionCallback;->onSetPlaybackSpeed(Ljava/lang/String;IIF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p1, "MediaSessionRecord"

    .line 43
    const-string p2, "Remote failure in setPlaybackSpeed."

    .line 45
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_0
    return-void
.end method

.method public final setVolumeTo(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    move-result v3

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v4

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    move-result-wide v7

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 15
    move-object v1, p1

    .line 16
    move-object v2, p2

    .line 17
    move v5, p3

    .line 18
    move v6, p4

    .line 19
    invoke-static/range {v0 .. v6}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$msetVolumeTo(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    throw p0
.end method

.method public final skipToQueueItem(Ljava/lang/String;J)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:skipToTrack"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    move-object v1, p1

    .line 37
    move v2, v7

    .line 38
    move v3, v8

    .line 39
    move-wide v4, p2

    .line 40
    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onSkipToTrack(Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    const-string p1, "MediaSessionRecord"

    .line 47
    const-string p2, "Remote failure in skipToTrack"

    .line 49
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :goto_0
    return-void
.end method

.method public final stop(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 18
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 20
    iget v2, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 22
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 24
    const-string v5, "MediaSessionRecord:stop"

    .line 26
    move-object v0, v1

    .line 27
    move v1, v2

    .line 28
    move v2, v7

    .line 29
    move-object v4, p1

    .line 30
    move v6, v8

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 36
    invoke-interface {p0, p1, v7, v8}, Landroid/media/session/ISessionCallback;->onStop(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p1, "MediaSessionRecord"

    .line 43
    const-string v0, "Remote failure in stop."

    .line 45
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_0
    return-void
.end method

.method public final unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "unregistering callback "

    .line 4
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 6
    iget-object v1, v1, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 11
    invoke-static {v2, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mgetControllerHolderIndexForCb(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I

    .line 14
    move-result v2

    .line 15
    const-string v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const/4 v4, -0x1

    .line 18
    if-eq v2, v4, :cond_0

    .line 20
    :try_start_1
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    .line 23
    move-result-object v3

    .line 24
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 26
    iget-object v4, v4, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 34
    iget-object v4, v4, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mDeathMonitor:Landroid/os/IBinder$DeathRecipient;

    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception v3

    .line 44
    :try_start_2
    const-string v4, "MediaSessionRecord"

    .line 46
    const-string/jumbo v5, "error unlinking to binder death"

    .line 49
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :goto_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 54
    iget-object v3, v3, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 62
    iget-object v3, v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mPackageName:Ljava/lang/String;

    .line 64
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 66
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 68
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 71
    :cond_0
    sget-object p0, Lcom/android/server/media/MediaSessionRecord;->ART_URIS:[Ljava/lang/String;

    .line 73
    const-string p0, "MediaSessionRecord"

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string p1, " "

    .line 89
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    monitor-exit v1

    .line 103
    return-void

    .line 104
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    throw p0
.end method
