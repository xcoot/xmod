.class public final Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
.super Landroid/media/tv/ITvInputHardware$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActiveConfig:Landroid/media/tv/TvStreamConfig;

.field public final mAudioListener:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;

.field public mAudioPatch:Landroid/media/AudioPatch;

.field public mAudioSink:Ljava/util/List;

.field public mAudioSource:Landroid/media/AudioDevicePort;

.field public mCommittedVolume:F

.field public mDesiredChannelMask:I

.field public mDesiredFormat:I

.field public mDesiredSamplingRate:I

.field public final mImplLock:Ljava/lang/Object;

.field public final mInfo:Landroid/media/tv/TvInputHardwareInfo;

.field public mOverrideAudioAddress:Ljava/lang/String;

.field public mOverrideAudioType:I

.field public mReleased:Z

.field public mSourceVolume:F

.field public final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public static -$$Nest$mstartCapture(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    goto :goto_1

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    if-eqz p1, :cond_4

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getType()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v3, 0x2

    .line 23
    if-eq v1, v3, :cond_2

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_3

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    :cond_3
    monitor-exit v0

    .line 45
    goto :goto_1

    .line 46
    :cond_4
    :goto_0
    monitor-exit v0

    .line 47
    :goto_1
    return v2

    .line 48
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/tv/ITvInputHardware$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-boolean v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    .line 22
    .line 23
    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    .line 24
    .line 25
    const-string v3, ""

    .line 26
    .line 27
    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 38
    .line 39
    const/high16 v4, -0x40800000    # -1.0f

    .line 40
    .line 41
    iput v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    iput v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    .line 45
    .line 46
    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 47
    .line 48
    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 52
    .line 53
    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    .line 54
    .line 55
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_0

    .line 67
    .line 68
    monitor-enter v0

    .line 69
    :try_start_0
    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    .line 86
    .line 87
    .line 88
    monitor-exit v0

    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0

    .line 93
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 13
    .line 14
    invoke-static {v1}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/media/AudioDevicePort;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-ne v2, p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_3
    return-object v0
.end method

.method public final findAudioSinkFromAudioPolicy(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/media/AudioDevicePort;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    and-int/2addr v2, p0

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-static {v2}, Landroid/media/AudioSystem;->isInputDevice(I)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    return-void
.end method

.method public final overrideAudioSink(ILjava/lang/String;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 20
    .line 21
    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final setStreamVolume(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string p1, "Device already released."

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0

    .line 25
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    .line 5
    .line 6
    if-nez v1, :cond_8

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 28
    .line 29
    invoke-virtual {p1, p2, v4}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_3

    .line 38
    :cond_0
    monitor-exit v0

    .line 39
    return v1

    .line 40
    :cond_1
    if-nez p2, :cond_2

    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return v3

    .line 44
    :cond_2
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 45
    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    invoke-virtual {p2, v4}, Landroid/media/tv/TvStreamConfig;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_3

    .line 53
    .line 54
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 55
    .line 56
    iget-object v4, v4, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    .line 57
    .line 58
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 59
    .line 60
    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 65
    .line 66
    invoke-virtual {v4, v5, v6}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    move v4, v3

    .line 76
    :cond_4
    :goto_0
    if-nez v4, :cond_5

    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    .line 81
    .line 82
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 83
    .line 84
    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-virtual {v2, v4, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_6

    .line 93
    .line 94
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    move p1, v4

    .line 98
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 99
    .line 100
    .line 101
    if-nez p1, :cond_7

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_7
    move v1, v3

    .line 105
    :goto_2
    monitor-exit v0

    .line 106
    return v1

    .line 107
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 108
    .line 109
    const-string p1, "Device already released."

    .line 110
    .line 111
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0
.end method

.method public final updateAudioConfigLocked()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    move v1, v3

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 16
    .line 17
    new-instance v4, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 23
    .line 24
    iget v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    .line 25
    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v5, v4}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 41
    .line 42
    check-cast v5, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    iget-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 48
    .line 49
    check-cast v4, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    check-cast v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eq v4, v5, :cond_3

    .line 62
    .line 63
    move v1, v2

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    iget-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 66
    .line 67
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    xor-int/2addr v1, v2

    .line 75
    :goto_1
    iget-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 76
    .line 77
    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_5

    .line 82
    .line 83
    :cond_4
    move v4, v3

    .line 84
    goto :goto_3

    .line 85
    :cond_5
    iget-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 86
    .line 87
    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 88
    .line 89
    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    iget-object v6, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 94
    .line 95
    invoke-virtual {v6}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v0, v5, v6}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    iput-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 104
    .line 105
    if-nez v5, :cond_6

    .line 106
    .line 107
    if-eqz v4, :cond_4

    .line 108
    .line 109
    :goto_2
    move v4, v2

    .line 110
    goto :goto_3

    .line 111
    :cond_6
    invoke-virtual {v5, v4}, Landroid/media/AudioDevicePort;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_4

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :goto_3
    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 119
    .line 120
    if-eqz v5, :cond_23

    .line 121
    .line 122
    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 123
    .line 124
    check-cast v5, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-nez v5, :cond_23

    .line 131
    .line 132
    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 133
    .line 134
    if-nez v5, :cond_7

    .line 135
    .line 136
    goto/16 :goto_11

    .line 137
    .line 138
    :cond_7
    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 139
    .line 140
    iget-object v7, v5, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 141
    .line 142
    const/4 v8, 0x3

    .line 143
    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    iput v7, v5, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    .line 148
    .line 149
    iget-object v7, v5, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 150
    .line 151
    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    iput v7, v5, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    .line 156
    .line 157
    iget v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    .line 158
    .line 159
    iget-object v7, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 160
    .line 161
    iget v8, v7, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    .line 162
    .line 163
    int-to-float v8, v8

    .line 164
    iget v7, v7, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    .line 165
    .line 166
    int-to-float v7, v7

    .line 167
    div-float/2addr v8, v7

    .line 168
    mul-float/2addr v8, v5

    .line 169
    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 170
    .line 171
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    array-length v5, v5

    .line 176
    if-lez v5, :cond_c

    .line 177
    .line 178
    iget v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    .line 179
    .line 180
    cmpl-float v5, v8, v5

    .line 181
    .line 182
    if-eqz v5, :cond_c

    .line 183
    .line 184
    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 185
    .line 186
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    array-length v7, v5

    .line 191
    move v9, v3

    .line 192
    :goto_4
    if-ge v9, v7, :cond_9

    .line 193
    .line 194
    aget-object v10, v5, v9

    .line 195
    .line 196
    invoke-virtual {v10}, Landroid/media/AudioGain;->mode()I

    .line 197
    .line 198
    .line 199
    move-result v11

    .line 200
    and-int/2addr v11, v2

    .line 201
    if-eqz v11, :cond_8

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_9
    const/4 v10, 0x0

    .line 208
    :goto_5
    if-eqz v10, :cond_b

    .line 209
    .line 210
    invoke-virtual {v10}, Landroid/media/AudioGain;->maxValue()I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    invoke-virtual {v10}, Landroid/media/AudioGain;->minValue()I

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    sub-int/2addr v5, v7

    .line 219
    invoke-virtual {v10}, Landroid/media/AudioGain;->stepValue()I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    div-int/2addr v5, v7

    .line 224
    invoke-virtual {v10}, Landroid/media/AudioGain;->minValue()I

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    const/high16 v9, 0x3f800000    # 1.0f

    .line 229
    .line 230
    cmpg-float v9, v8, v9

    .line 231
    .line 232
    if-gez v9, :cond_a

    .line 233
    .line 234
    invoke-virtual {v10}, Landroid/media/AudioGain;->stepValue()I

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    int-to-float v5, v5

    .line 239
    mul-float/2addr v5, v8

    .line 240
    float-to-double v11, v5

    .line 241
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    .line 242
    .line 243
    add-double/2addr v11, v13

    .line 244
    double-to-int v5, v11

    .line 245
    mul-int/2addr v9, v5

    .line 246
    add-int/2addr v9, v7

    .line 247
    goto :goto_6

    .line 248
    :cond_a
    invoke-virtual {v10}, Landroid/media/AudioGain;->maxValue()I

    .line 249
    .line 250
    .line 251
    move-result v9

    .line 252
    :goto_6
    filled-new-array {v9}, [I

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-virtual {v10}, Landroid/media/AudioGain;->channelMask()I

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    invoke-virtual {v10, v2, v7, v5, v3}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    goto :goto_7

    .line 265
    :cond_b
    const-string v5, "TvInputHardwareManager"

    .line 266
    .line 267
    const-string v7, "No audio source gain with MODE_JOINT support exists."

    .line 268
    .line 269
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    :cond_c
    const/4 v5, 0x0

    .line 273
    :goto_7
    iget-object v7, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 274
    .line 275
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    new-instance v9, Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .line 283
    .line 284
    new-array v10, v2, [Landroid/media/AudioPatch;

    .line 285
    .line 286
    iget-object v11, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 287
    .line 288
    aput-object v11, v10, v3

    .line 289
    .line 290
    if-nez v4, :cond_e

    .line 291
    .line 292
    if-nez v1, :cond_e

    .line 293
    .line 294
    if-nez v11, :cond_d

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_d
    move v11, v3

    .line 298
    goto :goto_9

    .line 299
    :cond_e
    :goto_8
    move v11, v2

    .line 300
    :goto_9
    iget-object v12, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 301
    .line 302
    check-cast v12, Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object v12

    .line 308
    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v13

    .line 312
    if-eqz v13, :cond_17

    .line 313
    .line 314
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v13

    .line 318
    check-cast v13, Landroid/media/AudioDevicePort;

    .line 319
    .line 320
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    .line 321
    .line 322
    .line 323
    move-result-object v14

    .line 324
    iget v15, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    .line 325
    .line 326
    iget v6, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 327
    .line 328
    iget v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    .line 329
    .line 330
    if-eqz v14, :cond_11

    .line 331
    .line 332
    if-nez v15, :cond_f

    .line 333
    .line 334
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->samplingRate()I

    .line 335
    .line 336
    .line 337
    move-result v15

    .line 338
    :cond_f
    if-ne v6, v2, :cond_10

    .line 339
    .line 340
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->channelMask()I

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    :cond_10
    if-ne v3, v2, :cond_11

    .line 345
    .line 346
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->format()I

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    :cond_11
    if-eqz v14, :cond_12

    .line 351
    .line 352
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->samplingRate()I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-ne v2, v15, :cond_12

    .line 357
    .line 358
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->channelMask()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    if-ne v2, v6, :cond_12

    .line 363
    .line 364
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->format()I

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    if-eq v2, v3, :cond_16

    .line 369
    .line 370
    :cond_12
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->samplingRates()[I

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    invoke-static {v15, v2}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains(I[I)Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-nez v2, :cond_13

    .line 379
    .line 380
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->samplingRates()[I

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    array-length v2, v2

    .line 385
    if-lez v2, :cond_13

    .line 386
    .line 387
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->samplingRates()[I

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    const/4 v11, 0x0

    .line 392
    aget v15, v2, v11

    .line 393
    .line 394
    :cond_13
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->channelMasks()[I

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    invoke-static {v6, v2}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains(I[I)Z

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    if-nez v2, :cond_14

    .line 403
    .line 404
    const/4 v6, 0x1

    .line 405
    :cond_14
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->formats()[I

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-static {v3, v2}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains(I[I)Z

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    if-nez v2, :cond_15

    .line 414
    .line 415
    const/4 v2, 0x0

    .line 416
    const/4 v3, 0x1

    .line 417
    goto :goto_b

    .line 418
    :cond_15
    const/4 v2, 0x0

    .line 419
    :goto_b
    invoke-virtual {v13, v15, v6, v3, v2}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    .line 420
    .line 421
    .line 422
    move-result-object v14

    .line 423
    const/4 v11, 0x1

    .line 424
    :cond_16
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    const/4 v2, 0x1

    .line 428
    const/4 v3, 0x0

    .line 429
    goto :goto_a

    .line 430
    :cond_17
    move v2, v3

    .line 431
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    check-cast v3, Landroid/media/AudioPortConfig;

    .line 436
    .line 437
    if-eqz v7, :cond_18

    .line 438
    .line 439
    if-eqz v5, :cond_1e

    .line 440
    .line 441
    :cond_18
    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 442
    .line 443
    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->samplingRates()[I

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-virtual {v3}, Landroid/media/AudioPortConfig;->samplingRate()I

    .line 448
    .line 449
    .line 450
    move-result v6

    .line 451
    invoke-static {v6, v2}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains(I[I)Z

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    if-eqz v2, :cond_19

    .line 456
    .line 457
    invoke-virtual {v3}, Landroid/media/AudioPortConfig;->samplingRate()I

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    move v11, v2

    .line 462
    goto :goto_c

    .line 463
    :cond_19
    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 464
    .line 465
    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->samplingRates()[I

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    array-length v2, v2

    .line 470
    if-lez v2, :cond_1a

    .line 471
    .line 472
    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 473
    .line 474
    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->samplingRates()[I

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    const/4 v6, 0x0

    .line 479
    aget v11, v2, v6

    .line 480
    .line 481
    goto :goto_c

    .line 482
    :cond_1a
    const/4 v11, 0x0

    .line 483
    :goto_c
    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 484
    .line 485
    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->channelMasks()[I

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    array-length v6, v2

    .line 490
    const/4 v7, 0x0

    .line 491
    :goto_d
    if-ge v7, v6, :cond_1c

    .line 492
    .line 493
    aget v12, v2, v7

    .line 494
    .line 495
    invoke-virtual {v3}, Landroid/media/AudioPortConfig;->channelMask()I

    .line 496
    .line 497
    .line 498
    move-result v13

    .line 499
    invoke-static {v13}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    .line 500
    .line 501
    .line 502
    move-result v13

    .line 503
    invoke-static {v12}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    .line 504
    .line 505
    .line 506
    move-result v14

    .line 507
    if-ne v13, v14, :cond_1b

    .line 508
    .line 509
    goto :goto_e

    .line 510
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    .line 511
    .line 512
    goto :goto_d

    .line 513
    :cond_1c
    const/4 v12, 0x1

    .line 514
    :goto_e
    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 515
    .line 516
    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->formats()[I

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    invoke-virtual {v3}, Landroid/media/AudioPortConfig;->format()I

    .line 521
    .line 522
    .line 523
    move-result v6

    .line 524
    invoke-static {v6, v2}, Lcom/android/server/tv/TvInputHardwareManager;->-$$Nest$smintArrayContains(I[I)Z

    .line 525
    .line 526
    .line 527
    move-result v2

    .line 528
    if-eqz v2, :cond_1d

    .line 529
    .line 530
    invoke-virtual {v3}, Landroid/media/AudioPortConfig;->format()I

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    goto :goto_f

    .line 535
    :cond_1d
    const/4 v2, 0x1

    .line 536
    :goto_f
    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 537
    .line 538
    invoke-virtual {v3, v11, v12, v2, v5}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    .line 539
    .line 540
    .line 541
    move-result-object v7

    .line 542
    const/4 v11, 0x1

    .line 543
    :cond_1e
    if-eqz v11, :cond_21

    .line 544
    .line 545
    iput v8, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    .line 546
    .line 547
    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 548
    .line 549
    if-eqz v2, :cond_1f

    .line 550
    .line 551
    if-nez v1, :cond_1f

    .line 552
    .line 553
    if-eqz v4, :cond_21

    .line 554
    .line 555
    :cond_1f
    if-eqz v2, :cond_20

    .line 556
    .line 557
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 558
    .line 559
    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 560
    .line 561
    invoke-static {v2}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 562
    .line 563
    .line 564
    const/4 v1, 0x0

    .line 565
    const/4 v2, 0x0

    .line 566
    aput-object v2, v10, v1

    .line 567
    .line 568
    goto :goto_10

    .line 569
    :cond_20
    const/4 v1, 0x0

    .line 570
    :goto_10
    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 571
    .line 572
    iget-object v2, v2, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 573
    .line 574
    const/4 v2, 0x1

    .line 575
    new-array v2, v2, [Landroid/media/AudioPortConfig;

    .line 576
    .line 577
    aput-object v7, v2, v1

    .line 578
    .line 579
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 580
    .line 581
    .line 582
    move-result v3

    .line 583
    new-array v3, v3, [Landroid/media/AudioPortConfig;

    .line 584
    .line 585
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    check-cast v3, [Landroid/media/AudioPortConfig;

    .line 590
    .line 591
    invoke-static {v10, v2, v3}, Landroid/media/AudioManager;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    .line 592
    .line 593
    .line 594
    aget-object v1, v10, v1

    .line 595
    .line 596
    iput-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 597
    .line 598
    :cond_21
    if-eqz v5, :cond_22

    .line 599
    .line 600
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 601
    .line 602
    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 603
    .line 604
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 605
    .line 606
    invoke-static {v0, v5}, Landroid/media/AudioManager;->setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I

    .line 607
    .line 608
    .line 609
    :cond_22
    return-void

    .line 610
    :cond_23
    :goto_11
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 611
    .line 612
    if-eqz v1, :cond_24

    .line 613
    .line 614
    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 615
    .line 616
    iget-object v2, v2, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 617
    .line 618
    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 619
    .line 620
    .line 621
    const/4 v1, 0x0

    .line 622
    iput-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 623
    .line 624
    :cond_24
    return-void
.end method
