.class public final Lcom/samsung/android/server/audio/VolumeMonitorService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final authority:Landroid/net/Uri;

.field public static sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;


# instance fields
.field public mAvrcpAbsVolSupported:Z

.field public mBluetoothVolumeIndex:I

.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

.field public mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

.field public mState:I

.field public final mStateLock:Ljava/lang/Object;

.field public mVolumeHandler:Landroid/os/Handler;

.field public mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.sec.android.app.volumemonitorprovider.VolumeMonitorProvider"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->authority:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mStateLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mBluetoothVolumeIndex:I

    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    .line 24
    .line 25
    iput v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    .line 26
    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/server/audio/VolumeMonitorService;->sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/server/audio/VolumeMonitorService;->sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p0
.end method


# virtual methods
.method public final getUserContext()Landroid/content/Context;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Landroid/os/UserHandle;

    .line 8
    .line 9
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    return-object p0
.end method

.method public final initLocked(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    new-instance v1, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    .line 7
    .line 8
    const/4 v2, -0x3

    .line 9
    invoke-direct {v1, v0, v2}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;-><init>(II)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string v1, "AS.VolumeMonitor"

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "Failed to init"

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    .line 37
    .line 38
    return v0

    .line 39
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    new-instance p1, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    .line 46
    .line 47
    invoke-direct {p1, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;-><init>(Lcom/samsung/android/server/audio/VolumeMonitorService;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 53
    .line 54
    .line 55
    monitor-enter p0

    .line 56
    :goto_1
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_2

    .line 66
    :catch_1
    :try_start_3
    const-string p1, "AS.VolumeMonitor"

    .line 67
    .line 68
    const-string v0, "Interrupted while waiting on volume handler."

    .line 69
    .line 70
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    monitor-exit p0

    .line 75
    goto :goto_3

    .line 76
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    throw p1

    .line 78
    :cond_2
    :goto_3
    const/4 p0, 0x1

    .line 79
    return p0
.end method

.method public final isMusicPlaying()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/samsung/android/server/audio/utils/PlaybackUtils;->isMusicActive(Landroid/media/AudioPlaybackConfiguration;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    const/4 p0, 0x1

    .line 38
    goto :goto_2

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    monitor-exit v0

    .line 42
    goto :goto_1

    .line 43
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0

    .line 45
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 46
    :goto_2
    return p0
.end method

.method public final resetByDataClear()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->resetData()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/server/audio/VolumeMonitorService$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0
.end method

.method public final setVolumeMonitorOnOff(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_VOLUME_COUNTRY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    :cond_0
    monitor-enter p0

    .line 11
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    .line 12
    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/VolumeMonitorService;->initLocked(Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_2
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    .line 28
    .line 29
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->onOff(Z)V

    .line 33
    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    const-string v0, "l_volume_monitor_onoff=true"

    .line 38
    .line 39
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const-string v0, "l_volume_monitor_onoff=false"

    .line 44
    .line 45
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :goto_0
    if-eqz p1, :cond_4

    .line 49
    .line 50
    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    .line 51
    .line 52
    iget v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mBluetoothVolumeIndex:I

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setBluetoothVolume(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setAbsoluteVolumeState(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->isMusicPlaying()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->triggerMonitoring()V

    .line 71
    .line 72
    .line 73
    :cond_4
    return-void

    .line 74
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p1
.end method

.method public final triggerMonitoring()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v0
.end method
