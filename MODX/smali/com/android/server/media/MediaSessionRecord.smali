.class public final Lcom/android/server/media/MediaSessionRecord;
.super Lcom/android/server/media/MediaSessionRecordImpl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final ALWAYS_PRIORITY_STATES:Ljava/util/List;

.field public static final ART_URIS:[Ljava/lang/String;

.field public static final DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static final TRANSITION_PRIORITY_STATES:Ljava/util/List;


# instance fields
.field public mAudioAttrs:Landroid/media/AudioAttributes;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mClearOptimisticVolumeRunnable:Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda0;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

.field public final mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mCurrentVolume:I

.field public mDestroyed:Z

.field public mDuration:J

.field public mExtras:Landroid/os/Bundle;

.field public mFlags:J

.field public final mForegroundServiceDelegationOptions:Landroid/app/ForegroundServiceDelegationOptions;

.field public final mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

.field public mIsActive:Z

.field public mLaunchIntent:Landroid/app/PendingIntent;

.field public final mLock:Ljava/lang/Object;

.field public mMaxVolume:I

.field public mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

.field public mMetadata:Landroid/media/MediaMetadata;

.field public mMetadataDescription:Ljava/lang/String;

.field public mOptimisticVolume:I

.field public final mOwnerPid:I

.field public final mOwnerUid:I

.field public final mPackageName:Ljava/lang/String;

.field public mPlaybackState:Landroid/media/session/PlaybackState;

.field public mPolicies:I

.field public mQueue:Ljava/util/List;

.field public mQueueTitle:Ljava/lang/CharSequence;

.field public mRatingType:I

.field public final mService:Lcom/android/server/media/MediaSessionService;

.field public final mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

.field public final mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

.field public final mSessionInfo:Landroid/os/Bundle;

.field public final mSessionToken:Landroid/media/session/MediaSession$Token;

.field public final mTag:Ljava/lang/String;

.field public final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public mUserEngagementState:I

.field public final mUserEngagementTimeoutExpirationRunnable:Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda0;

.field public final mUserId:I

.field public final mVolumeAdjustmentForRemoteGroupSessions:Z

.field public mVolumeControlId:Ljava/lang/String;

.field public mVolumeControlType:I

.field public mVolumeType:I


# direct methods
.method public static -$$Nest$mgetControllerHolderIndexForCb(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 16
    :goto_0
    if-ltz v0, :cond_1

    .line 18
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 26
    iget-object v1, v1, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;

    .line 28
    invoke-interface {v1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    .line 31
    move-result-object v1

    .line 32
    invoke-interface {p1, v1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, -0x1

    .line 43
    :goto_1
    return v0
.end method

.method public static -$$Nest$mpushMetadataUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const-string/jumbo v0, "pushMetadataUpdate"

    .line 18
    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda2;

    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {v2, v3, v1}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 24
    invoke-virtual {p0, v0, v2}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    .line 27
    :goto_0
    return-void

    .line 28
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p0
.end method

.method public static -$$Nest$mpushPlaybackStateUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const-string/jumbo v0, "pushPlaybackStateUpdate"

    .line 18
    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda2;

    .line 20
    const/4 v3, 0x4

    .line 21
    invoke-direct {v2, v3, v1}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 24
    invoke-virtual {p0, v0, v2}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    .line 27
    :goto_0
    return-void

    .line 28
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p0
.end method

.method public static -$$Nest$mpushQueueTitleUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const-string/jumbo v0, "pushQueueTitleUpdate"

    .line 18
    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda2;

    .line 20
    const/4 v3, 0x5

    .line 21
    invoke-direct {v2, v3, v1}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 24
    invoke-virtual {p0, v0, v2}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    .line 27
    :goto_0
    return-void

    .line 28
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p0
.end method

.method public static -$$Nest$mpushQueueUpdate(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    goto :goto_1

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    .line 14
    if-nez v1, :cond_1

    .line 16
    const/4 v1, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    .line 22
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    const-string/jumbo v0, "pushQueueUpdate"

    .line 29
    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda2;

    .line 31
    const/4 v3, 0x3

    .line 32
    invoke-direct {v2, v3, v1}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 35
    invoke-virtual {p0, v0, v2}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    .line 38
    :goto_1
    return-void

    .line 39
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method

.method public static -$$Nest$msetVolumeTo(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 13

    .line 1
    move-object v2, p0

    .line 2
    iget v0, v2, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 7
    iget-object v0, v2, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 9
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeStream(Landroid/media/AudioAttributes;)I

    .line 12
    move-result v7

    .line 13
    iget-object v0, v2, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 15
    new-instance v9, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;

    .line 17
    move-object v1, v9

    .line 18
    move-object v2, p0

    .line 19
    move-object v3, p2

    .line 20
    move/from16 v4, p3

    .line 22
    move/from16 v5, p4

    .line 24
    move/from16 v6, p6

    .line 26
    move/from16 v8, p5

    .line 28
    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;IIIII)V

    .line 31
    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    goto/16 :goto_2

    .line 36
    :cond_0
    iget v0, v2, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    .line 38
    const/4 v1, 0x2

    .line 39
    const-string v3, "MediaSessionRecord"

    .line 41
    if-eq v0, v1, :cond_1

    .line 43
    const-string v0, "Session does not support setting volume"

    .line 45
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    goto/16 :goto_1

    .line 50
    :cond_1
    iget v0, v2, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 52
    move/from16 v1, p5

    .line 54
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 57
    move-result v0

    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 62
    move-result v4

    .line 63
    iget-object v0, v2, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    :try_start_0
    iget-object v5, v0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 70
    iget-object v6, v5, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 72
    iget v7, v5, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 74
    iget-object v9, v5, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 76
    const-string v11, "MediaSessionRecord:setVolumeTo"

    .line 78
    move/from16 v8, p3

    .line 80
    move-object v10, p1

    .line 81
    move/from16 v12, p4

    .line 83
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 88
    move-object v5, p1

    .line 89
    move/from16 v6, p3

    .line 91
    move/from16 v7, p4

    .line 93
    invoke-interface {v0, p1, v6, v7, v4}, Landroid/media/session/ISessionCallback;->onSetVolumeTo(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string v5, "Remote failure in setVolumeTo."

    .line 100
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :goto_0
    iget v0, v2, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 105
    if-gez v0, :cond_2

    .line 107
    iget v0, v2, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 109
    :cond_2
    iget v5, v2, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 111
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 114
    move-result v4

    .line 115
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 118
    move-result v1

    .line 119
    iput v1, v2, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 121
    iget-object v1, v2, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 123
    iget-object v4, v2, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda0;

    .line 125
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    iget-object v1, v2, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 130
    iget-object v4, v2, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda0;

    .line 132
    const-wide/16 v5, 0x3e8

    .line 134
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    iget v1, v2, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 139
    if-eq v0, v1, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 144
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    const-string v1, "Set optimistic volume to "

    .line 148
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    iget v1, v2, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, " max is "

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget v1, v2, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 163
    invoke-static {v0, v1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 166
    :goto_1
    iget-object v0, v2, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 168
    move/from16 v1, p6

    .line 170
    invoke-virtual {v0, v1, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    .line 173
    :goto_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "android.media.metadata.DISPLAY_ICON_URI"

    .line 3
    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    .line 5
    const-string v2, "android.media.metadata.ART_URI"

    .line 7
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->ART_URIS:[Ljava/lang/String;

    .line 13
    const/4 v0, 0x4

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x5

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    const/16 v2, 0x9

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v2

    .line 29
    const/16 v3, 0xa

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v3

    .line 35
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->ALWAYS_PRIORITY_STATES:Ljava/util/List;

    .line 45
    const/4 v0, 0x6

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v0

    .line 50
    const/16 v1, 0x8

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x3

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v2

    .line 61
    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->TRANSITION_PRIORITY_STATES:Ljava/util/List;

    .line 71
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 73
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 76
    const/4 v1, 0x1

    .line 77
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 87
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecordImpl;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 21
    const/4 v0, 0x2

    .line 22
    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    .line 24
    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 27
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 29
    const/4 v2, -0x1

    .line 30
    iput v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 32
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 36
    const-wide/16 v2, -0x1

    .line 38
    iput-wide v2, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    .line 40
    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda0;

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-direct {v2, v3, p0}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda0;-><init>(ILcom/android/server/media/MediaSessionRecord;)V

    .line 46
    iput-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementTimeoutExpirationRunnable:Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda0;

    .line 48
    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementState:I

    .line 50
    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda0;

    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-direct {v2, v3, p0}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda0;-><init>(ILcom/android/server/media/MediaSessionRecord;)V

    .line 56
    iput-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda0;

    .line 58
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    .line 60
    iput p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 62
    iput p3, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 64
    iput-object p4, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    .line 68
    iput-object p7, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionInfo:Landroid/os/Bundle;

    .line 70
    new-instance p3, Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    .line 72
    invoke-direct {p3, p0}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    .line 75
    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    .line 77
    new-instance p6, Landroid/media/session/MediaSession$Token;

    .line 79
    invoke-direct {p6, p2, p3}, Landroid/media/session/MediaSession$Token;-><init>(ILandroid/media/session/ISessionController;)V

    .line 82
    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 84
    new-instance p3, Lcom/android/server/media/MediaSessionRecord$SessionStub;

    .line 86
    invoke-direct {p3, p0}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    .line 89
    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    .line 91
    new-instance p3, Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 93
    invoke-direct {p3, p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V

    .line 96
    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 98
    iput-object p8, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 100
    invoke-virtual {p8}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 103
    move-result-object p3

    .line 104
    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 106
    new-instance p6, Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 108
    invoke-direct {p6, p0, p9}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V

    .line 111
    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 113
    const-string p6, "audio"

    .line 115
    invoke-virtual {p3, p6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    move-result-object p6

    .line 119
    check-cast p6, Landroid/media/AudioManager;

    .line 121
    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    .line 123
    sget-object p6, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 125
    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 127
    iput p10, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    .line 129
    const-class p6, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 131
    invoke-static {p6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 134
    move-result-object p6

    .line 135
    check-cast p6, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 137
    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 139
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 142
    move-result-object p3

    .line 143
    const p6, 0x1110288

    .line 146
    invoke-virtual {p3, p6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 149
    move-result p3

    .line 150
    iput-boolean p3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeAdjustmentForRemoteGroupSessions:Z

    .line 152
    new-instance p3, Landroid/app/ForegroundServiceDelegationOptions$Builder;

    .line 154
    invoke-direct {p3}, Landroid/app/ForegroundServiceDelegationOptions$Builder;-><init>()V

    .line 157
    invoke-virtual {p3, p1}, Landroid/app/ForegroundServiceDelegationOptions$Builder;->setClientPid(I)Landroid/app/ForegroundServiceDelegationOptions$Builder;

    .line 160
    move-result-object p3

    .line 161
    invoke-virtual {p3, p2}, Landroid/app/ForegroundServiceDelegationOptions$Builder;->setClientUid(I)Landroid/app/ForegroundServiceDelegationOptions$Builder;

    .line 164
    move-result-object p3

    .line 165
    invoke-virtual {p3, p4}, Landroid/app/ForegroundServiceDelegationOptions$Builder;->setClientPackageName(Ljava/lang/String;)Landroid/app/ForegroundServiceDelegationOptions$Builder;

    .line 168
    move-result-object p3

    .line 169
    const/4 p6, 0x0

    .line 170
    invoke-virtual {p3, p6}, Landroid/app/ForegroundServiceDelegationOptions$Builder;->setClientAppThread(Landroid/app/IApplicationThread;)Landroid/app/ForegroundServiceDelegationOptions$Builder;

    .line 173
    move-result-object p3

    .line 174
    invoke-virtual {p3, v1}, Landroid/app/ForegroundServiceDelegationOptions$Builder;->setSticky(Z)Landroid/app/ForegroundServiceDelegationOptions$Builder;

    .line 177
    move-result-object p3

    .line 178
    const-string p6, "MediaSessionFgsDelegate_"

    .line 180
    const-string p7, "_"

    .line 182
    invoke-static {p2, p1, p6, p7, p7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p3, p1}, Landroid/app/ForegroundServiceDelegationOptions$Builder;->setClientInstanceName(Ljava/lang/String;)Landroid/app/ForegroundServiceDelegationOptions$Builder;

    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1, v1}, Landroid/app/ForegroundServiceDelegationOptions$Builder;->setForegroundServiceTypes(I)Landroid/app/ForegroundServiceDelegationOptions$Builder;

    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1, v0}, Landroid/app/ForegroundServiceDelegationOptions$Builder;->setDelegationService(I)Landroid/app/ForegroundServiceDelegationOptions$Builder;

    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1}, Landroid/app/ForegroundServiceDelegationOptions$Builder;->build()Landroid/app/ForegroundServiceDelegationOptions;

    .line 208
    move-result-object p1

    .line 209
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mForegroundServiceDelegationOptions:Landroid/app/ForegroundServiceDelegationOptions;

    .line 211
    invoke-interface {p5}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    .line 214
    move-result-object p1

    .line 215
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 218
    return-void
.end method

.method public static getVolumeStream(Landroid/media/AudioAttributes;)I
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 5
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    .line 13
    move-result p0

    .line 14
    const/high16 v0, -0x80000000

    .line 16
    if-ne p0, v0, :cond_1

    .line 18
    sget-object p0, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 20
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    .line 23
    move-result p0

    .line 24
    :cond_1
    return p0
.end method


# virtual methods
.method public final adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V
    .locals 16

    .line 1
    move-object/from16 v2, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move/from16 v1, p5

    .line 7
    move/from16 v10, p6

    .line 9
    and-int/lit8 v7, p7, 0x4

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    .line 15
    move-result v4

    .line 16
    if-nez v4, :cond_1

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaSessionRecord;->isSystemPriority()Z

    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move/from16 v11, p7

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    and-int/lit8 v4, p7, -0x5

    .line 30
    move v11, v4

    .line 31
    :goto_1
    iget v4, v2, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 33
    const/16 v12, 0x3e8

    .line 35
    const-string v5, ", dir="

    .line 37
    const-string v6, ", asSystemService="

    .line 39
    const-string v13, "MediaSessionRecord"

    .line 41
    if-eq v4, v3, :cond_3

    .line 43
    iget-object v3, v2, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 45
    iget-boolean v4, v3, Lcom/android/server/media/MediaSessionService;->mIsAppCastingOn:Z

    .line 47
    if-nez v4, :cond_2

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    iget v4, v2, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 52
    iget v3, v3, Lcom/android/server/media/MediaSessionService;->mAppCastingUid:I

    .line 54
    if-ne v4, v3, :cond_4

    .line 56
    :cond_3
    move/from16 v3, p3

    .line 58
    move/from16 v4, p4

    .line 60
    goto/16 :goto_7

    .line 62
    :cond_4
    :goto_2
    iget v3, v2, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    .line 64
    if-nez v3, :cond_5

    .line 66
    const-string v0, "Session does not support volume adjustment"

    .line 68
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    goto/16 :goto_6

    .line 73
    :cond_5
    const/16 v3, 0x65

    .line 75
    if-eq v10, v3, :cond_a

    .line 77
    const/16 v3, -0x64

    .line 79
    if-eq v10, v3, :cond_a

    .line 81
    const/16 v3, 0x64

    .line 83
    if-ne v10, v3, :cond_6

    .line 85
    goto/16 :goto_5

    .line 87
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    const-string v4, "adjusting volume, pkg="

    .line 91
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {v3, v10, v13}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 109
    iget-object v14, v2, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 111
    iget-object v15, v14, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 113
    :try_start_0
    iget-object v3, v15, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 115
    iget v4, v15, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 117
    iget-object v6, v15, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 119
    const-string v8, "MediaSessionRecord:adjustVolume"

    .line 121
    move/from16 v5, p3

    .line 123
    move-object/from16 v7, p1

    .line 125
    move/from16 v9, p4

    .line 127
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    if-eqz v1, :cond_7

    .line 132
    iget-object v0, v14, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 134
    iget-object v1, v15, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 143
    move-result v3

    .line 144
    invoke-interface {v0, v1, v3, v12, v10}, Landroid/media/session/ISessionCallback;->onAdjustVolume(Ljava/lang/String;III)V

    .line 147
    goto :goto_4

    .line 148
    :catch_0
    move-exception v0

    .line 149
    goto :goto_3

    .line 150
    :cond_7
    iget-object v1, v14, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 152
    move/from16 v3, p3

    .line 154
    move/from16 v4, p4

    .line 156
    invoke-interface {v1, v0, v3, v4, v10}, Landroid/media/session/ISessionCallback;->onAdjustVolume(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_4

    .line 160
    :goto_3
    const-string v1, "Remote failure in adjustVolume."

    .line 162
    invoke-static {v13, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    :goto_4
    iget v0, v2, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 167
    if-gez v0, :cond_8

    .line 169
    iget v0, v2, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 171
    :cond_8
    add-int v1, v0, v10

    .line 173
    iput v1, v2, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 175
    iget v3, v2, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 177
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 180
    move-result v1

    .line 181
    const/4 v3, 0x0

    .line 182
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 185
    move-result v1

    .line 186
    iput v1, v2, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 188
    iget-object v1, v2, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 190
    iget-object v3, v2, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda0;

    .line 192
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    iget-object v1, v2, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 197
    iget-object v3, v2, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda0;

    .line 199
    const-wide/16 v4, 0x3e8

    .line 201
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    iget v1, v2, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 206
    if-eq v0, v1, :cond_9

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 211
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    const-string v3, "Adjusted optimistic volume to "

    .line 215
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    iget v3, v2, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 220
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    const-string v3, " max is "

    .line 225
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget v3, v2, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 230
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object v1

    .line 237
    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    .line 242
    const-string v3, "adjustVolume volumeBefore="

    .line 244
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    const-string v3, ", current="

    .line 252
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget v3, v2, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 257
    invoke-static {v1, v3, v13}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 260
    if-nez v10, :cond_b

    .line 262
    iget v1, v2, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 264
    if-ne v0, v1, :cond_b

    .line 266
    and-int/lit8 v11, v11, -0x2

    .line 268
    goto :goto_6

    .line 269
    :cond_a
    :goto_5
    const-string v0, "Muting remote playback is not supported"

    .line 271
    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_b
    :goto_6
    iget-object v0, v2, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 276
    invoke-virtual {v0, v11, v2}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    .line 279
    goto :goto_9

    .line 280
    :goto_7
    iget-object v0, v2, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 282
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeStream(Landroid/media/AudioAttributes;)I

    .line 285
    move-result v0

    .line 286
    const-string v8, "adjusting local volume, stream="

    .line 288
    invoke-static {v0, v10, v8, v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    move-result-object v5

    .line 292
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 295
    const-string v6, ", useSuggested="

    .line 297
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    move/from16 v6, p8

    .line 302
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    move-result-object v5

    .line 309
    invoke-static {v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    if-eqz v1, :cond_c

    .line 314
    iget-object v1, v2, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 316
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 319
    move-result-object v1

    .line 320
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 323
    move-result v3

    .line 324
    move-object v8, v1

    .line 325
    move v9, v12

    .line 326
    move v12, v3

    .line 327
    goto :goto_8

    .line 328
    :cond_c
    move-object/from16 v8, p2

    .line 330
    move v12, v3

    .line 331
    move v9, v4

    .line 332
    :goto_8
    iget-object v13, v2, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 334
    new-instance v14, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;

    .line 336
    move-object v1, v14

    .line 337
    move-object/from16 v2, p0

    .line 339
    move v3, v0

    .line 340
    move/from16 v4, p6

    .line 342
    move v5, v11

    .line 343
    move/from16 v6, p8

    .line 345
    move v10, v12

    .line 346
    invoke-direct/range {v1 .. v10}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/media/MediaSessionRecord;IIIZILjava/lang/String;II)V

    .line 349
    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    :goto_9
    return-void
.end method

.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 3
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 9
    monitor-exit v1

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final canHandleVolumeKey()Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    const-string v3, "MediaSessionRecord"

    .line 12
    if-eqz v0, :cond_1

    .line 14
    const-string p0, "Local MediaSessionRecord can handle volume key"

    .line 16
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return v2

    .line 20
    :cond_1
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    .line 22
    if-nez v0, :cond_2

    .line 24
    const-string p0, "Local MediaSessionRecord with FIXED volume control can\'t handle volume key"

    .line 26
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return v1

    .line 30
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeAdjustmentForRemoteGroupSessions:Z

    .line 32
    if-eqz v0, :cond_3

    .line 34
    const-string p0, "Volume adjustment for remote group sessions allowed so MediaSessionRecord can handle volume key"

    .line 36
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v2

    .line 40
    :cond_3
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {v0}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    .line 45
    move-result-object v0

    .line 46
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v4}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    .line 51
    move-result-object v0

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    const-string v5, "Found "

    .line 56
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 62
    move-result v5

    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v5, " routing sessions for package name "

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 80
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object v0

    .line 87
    move v4, v1

    .line 88
    move v5, v2

    .line 89
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_6

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Landroid/media/RoutingSessionInfo;

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    .line 103
    const-string v8, "Found routingSessionInfo: "

    .line 105
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v7

    .line 115
    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    .line 121
    move-result v7

    .line 122
    if-nez v7, :cond_4

    .line 124
    invoke-virtual {v6}, Landroid/media/RoutingSessionInfo;->getVolumeHandling()I

    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_5

    .line 130
    move v5, v1

    .line 131
    :cond_5
    move v4, v2

    .line 132
    goto :goto_1

    .line 133
    :cond_6
    if-nez v4, :cond_7

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    const-string v6, "Package "

    .line 139
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 144
    const-string v6, " has a remote media session but no associated routing session"

    .line 146
    invoke-static {v0, p0, v6, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_7
    if-eqz v4, :cond_8

    .line 151
    if-eqz v5, :cond_8

    .line 153
    move v1, v2

    .line 154
    :cond_8
    return v1
.end method

.method public final checkPlaybackActiveState(Z)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->isActive()Z

    .line 10
    move-result p0

    .line 11
    if-ne p0, p1, :cond_1

    .line 13
    const/4 v0, 0x1

    .line 14
    :cond_1
    return v0
.end method

.method public final close()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v1

    .line 9
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 11
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 17
    const/4 v3, 0x4

    .line 18
    invoke-virtual {v2, v3, v0, v1}, Landroid/app/ActivityManagerInternal;->logFgsApiEnd(III)V

    .line 21
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 26
    if-eqz v1, :cond_0

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    .line 35
    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    .line 37
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 39
    iget-object v2, v2, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 41
    invoke-interface {v2}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 49
    const/4 v2, 0x1

    .line 50
    iput-boolean v2, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 52
    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 54
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaSessionRecord;->updateUserEngagedStateIfNeededLocked(Z)V

    .line 57
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 59
    const/16 v1, 0x9

    .line 61
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    const-string v1, " "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string v2, "  "

    .line 32
    invoke-static {v0, p2, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    const-string/jumbo v0, "ownerPid="

    .line 39
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object v0

    .line 43
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v2, ", ownerUid="

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v2, ", userId="

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 65
    const-string/jumbo v3, "package="

    .line 68
    invoke-static {v0, v2, p1, p2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    move-result-object v0

    .line 72
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string/jumbo v2, "launchIntent="

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v2, "mediaButtonReceiver="

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v2, "active="

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-boolean v2, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    .line 151
    const-string/jumbo v3, "flags="

    .line 154
    invoke-static {v0, v2, p1, p2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    move-result-object v0

    .line 158
    iget-wide v2, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    .line 160
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string/jumbo v2, "rating type="

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    .line 186
    const-string/jumbo v3, "controllers: "

    .line 189
    invoke-static {v0, v2, p1, p2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    move-result-object v0

    .line 193
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 195
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 198
    move-result v2

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 211
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 214
    move-result-object v0

    .line 215
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_0

    .line 221
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 227
    invoke-static {p2, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    move-result-object v3

    .line 231
    iget-object v4, v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mPackageName:Ljava/lang/String;

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v2, v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mDeathMonitor:Landroid/os/IBinder$DeathRecipient;

    .line 238
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object v2

    .line 245
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    goto :goto_0

    .line 249
    :cond_0
    const-string/jumbo v0, "state="

    .line 252
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 258
    if-nez v1, :cond_1

    .line 260
    const/4 v1, 0x0

    .line 261
    goto :goto_1

    .line 262
    :cond_1
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    .line 265
    move-result-object v1

    .line 266
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    .line 278
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v1, "audioAttrs="

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 304
    move-result-object v0

    .line 305
    const-string/jumbo v1, "volumeType="

    .line 308
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 311
    move-result-object v0

    .line 312
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 314
    const-string/jumbo v2, "unknown(%d)"

    .line 317
    const/4 v3, 0x2

    .line 318
    const/4 v4, 0x1

    .line 319
    if-eq v1, v4, :cond_3

    .line 321
    if-eq v1, v3, :cond_2

    .line 323
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    move-result-object v1

    .line 327
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 330
    move-result-object v1

    .line 331
    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 334
    move-result-object v1

    .line 335
    goto :goto_2

    .line 336
    :cond_2
    const-string v1, "REMOTE"

    .line 338
    goto :goto_2

    .line 339
    :cond_3
    const-string v1, "LOCAL"

    .line 341
    :goto_2
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 344
    move-result-object v0

    .line 345
    const-string v1, ", controlType="

    .line 347
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 350
    move-result-object v0

    .line 351
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    .line 353
    if-eqz v1, :cond_6

    .line 355
    if-eq v1, v4, :cond_5

    .line 357
    if-eq v1, v3, :cond_4

    .line 359
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    move-result-object v1

    .line 363
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 366
    move-result-object v1

    .line 367
    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 370
    move-result-object v1

    .line 371
    goto :goto_3

    .line 372
    :cond_4
    const-string v1, "ABSOLUTE"

    .line 374
    goto :goto_3

    .line 375
    :cond_5
    const-string v1, "RELATIVE"

    .line 377
    goto :goto_3

    .line 378
    :cond_6
    const-string v1, "FIXED"

    .line 380
    :goto_3
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 383
    move-result-object v0

    .line 384
    const-string v1, ", max="

    .line 386
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 389
    move-result-object v0

    .line 390
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 392
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 395
    move-result-object v1

    .line 396
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 399
    move-result-object v0

    .line 400
    const-string v1, ", current="

    .line 402
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 405
    move-result-object v0

    .line 406
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 408
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 411
    move-result-object v1

    .line 412
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 415
    move-result-object v0

    .line 416
    const-string v1, ", volumeControlId="

    .line 418
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 421
    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlId:Ljava/lang/String;

    .line 424
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    .line 433
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string/jumbo v1, "metadata: "

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadataDescription:Ljava/lang/String;

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    move-result-object v0

    .line 454
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    .line 459
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string/jumbo p2, "queueTitle="

    .line 468
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    iget-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    .line 473
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 476
    const-string p2, ", size="

    .line 478
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    .line 483
    if-nez p0, :cond_7

    .line 485
    const/4 p0, 0x0

    .line 486
    goto :goto_4

    .line 487
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 490
    move-result p0

    .line 491
    :goto_4
    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 494
    return-void
.end method

.method public final expireTempEngaged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementTimeoutExpirationRunnable:Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda0;

    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    return-void
.end method

.method public final getForegroundServiceDelegationOptions()Landroid/app/ForegroundServiceDelegationOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mForegroundServiceDelegationOptions:Landroid/app/ForegroundServiceDelegationOptions;

    .line 3
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public final getSessionPolicies()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 3
    return p0
.end method

.method public final getUserId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 3
    return p0
.end method

.method public final getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v2, v1, :cond_1

    .line 9
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v1, v2, :cond_0

    .line 14
    :goto_0
    move v6, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 18
    goto :goto_0

    .line 19
    :goto_1
    new-instance v1, Landroid/media/session/MediaController$PlaybackInfo;

    .line 21
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 23
    iget v4, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    .line 25
    iget v5, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 27
    iget-object v7, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 29
    iget-object v8, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlId:Ljava/lang/String;

    .line 31
    move-object v2, v1

    .line 32
    invoke-direct/range {v2 .. v8}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(IIIILandroid/media/AudioAttributes;Ljava/lang/String;)V

    .line 35
    monitor-exit v0

    .line 36
    return-object v1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    iget-object v6, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {v6}, Lcom/android/server/media/MediaSessionRecord;->getVolumeStream(Landroid/media/AudioAttributes;)I

    .line 45
    move-result v0

    .line 46
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    .line 48
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 51
    move-result v4

    .line 52
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 57
    move-result v5

    .line 58
    new-instance p0, Landroid/media/session/MediaController$PlaybackInfo;

    .line 60
    const/4 v3, 0x2

    .line 61
    const/4 v7, 0x0

    .line 62
    move-object v1, p0

    .line 63
    invoke-direct/range {v1 .. v7}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(IIIILandroid/media/AudioAttributes;Ljava/lang/String;)V

    .line 66
    return-object p0

    .line 67
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p0
.end method

.method public final isActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 7
    if-nez p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final isLinkedToNotification(Landroid/app/Notification;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Notification;->isMediaNotification()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 9
    const-string v0, "android.mediaSession"

    .line 11
    const-class v1, Landroid/media/session/MediaSession$Token;

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 19
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public final isSystemPriority()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    .line 3
    const-wide/32 v2, 0x10000

    .line 6
    and-long/2addr v0, v2

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    cmp-long p0, v0, v2

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .line 24
    :try_start_0
    invoke-interface {p2, v2}, Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;->performOn(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v3

    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    const-string v4, "Exception while executing: "

    .line 34
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v4, ", this="

    .line 48
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string v4, ", callback package="

    .line 56
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v2, v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mPackageName:Ljava/lang/String;

    .line 61
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, ", exception="

    .line 66
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    const-string v3, "MediaSessionRecord"

    .line 78
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 84
    monitor-enter p1

    .line 85
    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 90
    monitor-exit p1

    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    throw p0
.end method

.method public final pushVolumeUpdate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    .line 15
    move-result-object v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const-string/jumbo v0, "pushVolumeUpdate"

    .line 20
    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda2;

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v2, v3, v1}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 26
    invoke-virtual {p0, v0, v2}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    .line 29
    return-void

    .line 30
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0
.end method

.method public final sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
    .locals 12

    .line 1
    move-object/from16 v0, p5

    .line 3
    move-object v1, p0

    .line 4
    iget-object v1, v1, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    const-string v2, "action="

    .line 11
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 14
    move-result v3

    .line 15
    invoke-static {v3}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    .line 18
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    iget-object v4, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 21
    if-eqz v3, :cond_0

    .line 23
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    .line 31
    move-result v2

    .line 32
    invoke-static {v2}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v2, ";code="

    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 47
    move-result v2

    .line 48
    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v10

    .line 59
    iget-object v5, v4, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 61
    iget v6, v4, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 63
    iget-object v8, v4, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 65
    move v7, p2

    .line 66
    move-object v9, p1

    .line 67
    move v11, p3

    .line 68
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/media/MediaSessionService;->tempAllowlistTargetPkgIfPossible(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    :goto_0
    const-string v2, "android.intent.extra.KEY_EVENT"

    .line 76
    const-string v3, "android.intent.action.MEDIA_BUTTON"

    .line 78
    if-eqz p4, :cond_1

    .line 80
    :try_start_2
    iget-object v5, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 82
    iget-object v1, v4, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 87
    move-result-object v6

    .line 88
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 91
    move-result v7

    .line 92
    new-instance v9, Landroid/content/Intent;

    .line 94
    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v9, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    const/16 v8, 0x3e8

    .line 102
    move/from16 v10, p6

    .line 104
    move-object/from16 v11, p7

    .line 106
    invoke-interface/range {v5 .. v11}, Landroid/media/session/ISessionCallback;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    iget-object v1, v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    .line 112
    new-instance v5, Landroid/content/Intent;

    .line 114
    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 120
    move-object v2, p1

    .line 121
    move v3, p2

    .line 122
    move v4, p3

    .line 123
    move/from16 v6, p6

    .line 125
    move-object/from16 v7, p7

    .line 127
    invoke-interface/range {v1 .. v7}, Landroid/media/session/ISessionCallback;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 130
    :goto_1
    const/4 v0, 0x1

    .line 131
    goto :goto_3

    .line 132
    :goto_2
    const-string v1, "MediaSessionRecord"

    .line 134
    const-string v2, "Remote failure in sendMediaRequest."

    .line 136
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    const/4 v0, 0x0

    .line 140
    :goto_3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "/"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget v1, p0, Lcom/android/server/media/MediaSessionRecordImpl;->mUniqueId:I

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, " (userId="

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 36
    const-string v1, ")"

    .line 38
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public final updateUserEngagedStateIfNeededLocked(Z)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/media/flags/Flags;->enableNotifyingActivityManagerWithMediaSessionStatusChange()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementState:I

    .line 10
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x2

    .line 17
    if-eqz v1, :cond_4

    .line 19
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 21
    if-eqz v1, :cond_4

    .line 23
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 25
    if-eqz v1, :cond_1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 34
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 36
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->isActive()Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 42
    move p1, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 46
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 49
    move-result v1

    .line 50
    if-ne v1, v4, :cond_4

    .line 52
    if-eqz v0, :cond_3

    .line 54
    if-nez p1, :cond_4

    .line 56
    :cond_3
    move p1, v3

    .line 57
    goto :goto_1

    .line 58
    :cond_4
    :goto_0
    move p1, v4

    .line 59
    :goto_1
    if-ne v0, p1, :cond_5

    .line 61
    return-void

    .line 62
    :cond_5
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementState:I

    .line 64
    if-ne p1, v3, :cond_6

    .line 66
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 68
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementTimeoutExpirationRunnable:Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda0;

    .line 70
    const-wide/32 v6, 0x927c0

    .line 73
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    goto :goto_2

    .line 77
    :cond_6
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 79
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mUserEngagementTimeoutExpirationRunnable:Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda0;

    .line 81
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    :goto_2
    if-eq v0, v4, :cond_7

    .line 86
    move v0, v3

    .line 87
    goto :goto_3

    .line 88
    :cond_7
    move v0, v2

    .line 89
    :goto_3
    if-eq p1, v4, :cond_8

    .line 91
    move v2, v3

    .line 92
    :cond_8
    if-eq v0, v2, :cond_9

    .line 94
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 96
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;

    .line 98
    invoke-direct {v0, p0, v2}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/media/MediaSessionRecord;Z)V

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    :cond_9
    return-void
.end method
