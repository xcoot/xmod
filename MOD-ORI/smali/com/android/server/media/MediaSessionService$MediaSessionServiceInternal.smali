.class public final Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final adjustMirroringVolume(IIIILjava/lang/String;)Z
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 16
    .line 17
    :goto_0
    move-object v3, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecord;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :goto_1
    if-eqz v3, :cond_1

    .line 29
    .line 30
    const-string/jumbo v2, "com.samsung.android.audiomirroring"

    .line 31
    .line 32
    .line 33
    iget-object v4, v3, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 42
    .line 43
    move-object/from16 v2, p5

    .line 44
    .line 45
    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$misMirroringPackage(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v11, 0x1

    .line 53
    move-object/from16 v4, p5

    .line 54
    .line 55
    move-object/from16 v5, p5

    .line 56
    .line 57
    move/from16 v6, p4

    .line 58
    .line 59
    move v7, p3

    .line 60
    move v9, p1

    .line 61
    move v10, p2

    .line 62
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V

    .line 63
    .line 64
    .line 65
    monitor-exit v1

    .line 66
    const/4 v0, 0x1

    .line 67
    return v0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    monitor-exit v1

    .line 71
    const/4 v0, 0x0

    .line 72
    return v0

    .line 73
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw v0
.end method

.method public final isAudioMirroring()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecord;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    if-eqz p0, :cond_1

    .line 26
    .line 27
    const-string/jumbo v1, "com.samsung.android.audiomirroring"

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    :goto_1
    monitor-exit v0

    .line 44
    return p0

    .line 45
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final setMediaKeyEventReceiver(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mHighPriorityMediaKeyReceiver:Landroid/content/ComponentName;

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

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

.method public final setVolumeLongPressReceiver(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService;->mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

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

.method public final updateMultiSoundInfo(IZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "updateMultiSoundInfo device:"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " on:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "MediaSessionService"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 v0, -0x1

    .line 34
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 35
    .line 36
    if-eq p1, v0, :cond_0

    .line 37
    .line 38
    iput p1, p0, Lcom/android/server/media/MediaSessionService;->mDevice:I

    .line 39
    .line 40
    :cond_0
    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionService;->mIsMultiSoundOn:Z

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 45
    .line 46
    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionStack;->mIsMultiSoundOn:Z

    .line 47
    .line 48
    return-void
.end method
