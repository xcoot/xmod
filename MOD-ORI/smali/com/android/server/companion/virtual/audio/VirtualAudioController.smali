.class public final Lcom/android/server/companion/virtual/audio/VirtualAudioController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;


# instance fields
.field public final mAudioPlaybackDetector:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

.field public final mAudioRecordingDetector:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

.field public final mCallbackLock:Ljava/lang/Object;

.field public mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

.field public final mContext:Landroid/content/Context;

.field public mGenericWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mPlayingAppUids:Landroid/util/ArraySet;

.field public mRoutingCallback:Landroid/companion/virtual/audio/IAudioRoutingCallback;

.field public final mRunningAppUids:Landroid/util/ArraySet;

.field public final mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/AttributionSource;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/audio/VirtualAudioController;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v0, Landroid/util/ArraySet;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    .line 35
    .line 36
    new-instance v0, Landroid/util/ArraySet;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/Object;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    new-instance v0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

    .line 53
    .line 54
    invoke-direct {v0, p1}, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioPlaybackDetector:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

    .line 58
    .line 59
    new-instance v0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioRecordingDetector:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

    .line 65
    .line 66
    invoke-static {}, Landroid/companion/virtualdevice/flags/Flags;->metricsCollection()Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_0

    .line 71
    .line 72
    const-string/jumbo p0, "virtual_devices.value_virtual_audio_created_count"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-static {p0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    :cond_0
    return-void
.end method

.method public static findPlayingAppUids(Landroid/util/ArraySet;Ljava/util/List;)Landroid/util/ArraySet;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x2

    .line 41
    if-ne v2, v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addPlayingAppsForTesting(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

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
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public hasPendingRunnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final notifyAppsNeedingAudioRoutingChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    new-array v1, v1, [I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ge v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    aput v3, v1, v2

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_3

    .line 57
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter v2

    .line 61
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRoutingCallback:Landroid/companion/virtual/audio/IAudioRoutingCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    :try_start_2
    invoke-interface {p0, v1}, Landroid/companion/virtual/audio/IAudioRoutingCallback;->onAppsNeedingAudioRoutingChanged([I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    goto :goto_2

    .line 71
    :catch_0
    move-exception p0

    .line 72
    :try_start_3
    const-string v0, "VirtualAudioController"

    .line 73
    .line 74
    const-string v1, "RemoteException when calling updateReroutingApps"

    .line 75
    .line 76
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_1
    monitor-exit v2

    .line 80
    return-void

    .line 81
    :goto_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    throw p0

    .line 83
    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    throw p0
.end method

.method public final onRunningAppsChanged(Landroid/util/ArraySet;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const-class v2, Landroid/media/AudioManager;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/media/AudioManager;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    .line 43
    .line 44
    invoke-static {v2, v1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->findPlayingAppUids(Landroid/util/ArraySet;Ljava/util/List;)Landroid/util/ArraySet;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    const-string p0, "VirtualAudioController"

    .line 57
    .line 58
    const-string p1, "Audio is playing, do not change rerouted apps"

    .line 59
    .line 60
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_3

    .line 70
    .line 71
    const-string p1, "VirtualAudioController"

    .line 72
    .line 73
    const-string v1, "The last playing app removed, delay change rerouted apps"

    .line 74
    .line 75
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    const-wide/16 v1, 0x7d0

    .line 100
    .line 101
    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    .line 103
    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 106
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->notifyAppsNeedingAudioRoutingChanged()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    throw p0
.end method

.method public final startListening(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mGenericWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p1, p1, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter p1

    .line 15
    :try_start_1
    iput-object p2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRoutingCallback:Landroid/companion/virtual/audio/IAudioRoutingCallback;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    .line 18
    .line 19
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    iget-object p2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter p2

    .line 23
    :try_start_2
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 31
    .line 32
    .line 33
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    if-eqz p3, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioPlaybackDetector:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

    .line 37
    .line 38
    iput-object p0, p1, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioPlaybackCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 39
    .line 40
    iget-object p2, p1, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioManager:Landroid/media/AudioManager;

    .line 41
    .line 42
    const/4 p3, 0x0

    .line 43
    invoke-virtual {p2, p1, p3}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioRecordingDetector:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

    .line 47
    .line 48
    iput-object p0, p1, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioRecordingCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 49
    .line 50
    iget-object p0, p1, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioManager:Landroid/media/AudioManager;

    .line 51
    .line 52
    invoke-virtual {p0, p1, p3}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    throw p0

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 61
    throw p0

    .line 62
    :catchall_2
    move-exception p0

    .line 63
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 64
    throw p0
.end method

.method public final stopListening()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioPlaybackDetector:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioPlaybackCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iput-object v2, v0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioPlaybackCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioManager:Landroid/media/AudioManager;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioRecordingDetector:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioRecordingCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iput-object v2, v0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioRecordingCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioManager:Landroid/media/AudioManager;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mGenericWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->unregisterRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mGenericWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 53
    .line 54
    :cond_3
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter v0

    .line 57
    :try_start_0
    iput-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRoutingCallback:Landroid/companion/virtual/audio/IAudioRoutingCallback;

    .line 58
    .line 59
    iput-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    .line 60
    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method
