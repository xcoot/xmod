.class public final Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public mAudioPlaybackCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    .line 4
    const-class v0, Landroid/media/AudioManager;

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/media/AudioManager;

    .line 12
    iput-object p1, p0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioManager:Landroid/media/AudioManager;

    .line 14
    return-void
.end method


# virtual methods
.method public final onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/media/AudioManager$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    .line 4
    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioPlaybackCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 6
    if-eqz p0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    .line 13
    invoke-static {v1, p1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->findPlayingAppUids(Landroid/util/ArraySet;Ljava/util/List;)Landroid/util/ArraySet;

    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    .line 19
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 25
    monitor-exit v0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_4

    .line 29
    :cond_0
    iput-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->notifyAppsNeedingAudioRoutingChanged()V

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    .line 37
    monitor-enter v1

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    .line 42
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p1

    .line 49
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    .line 61
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 64
    move-result v4

    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_1

    .line 75
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 80
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    .line 82
    monitor-enter p1

    .line 83
    :try_start_2
    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    if-eqz p0, :cond_3

    .line 87
    :try_start_3
    invoke-interface {p0, v2}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback;->onPlaybackConfigChanged(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    goto :goto_2

    .line 91
    :catchall_1
    move-exception p0

    .line 92
    goto :goto_3

    .line 93
    :catch_0
    move-exception p0

    .line 94
    :try_start_4
    const-string v0, "VirtualAudioController"

    .line 96
    const-string v1, "RemoteException when calling onPlaybackConfigChanged"

    .line 98
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :cond_3
    :goto_2
    monitor-exit p1

    .line 102
    goto :goto_5

    .line 103
    :goto_3
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    throw p0

    .line 105
    :catchall_2
    move-exception p0

    .line 106
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 107
    throw p0

    .line 108
    :goto_4
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 109
    throw p0

    .line 110
    :cond_4
    :goto_5
    return-void
.end method
