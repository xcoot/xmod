.class public final Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;
.super Landroid/media/AudioManager$AudioRecordingCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public mAudioRecordingCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/AudioManager$AudioRecordingCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Landroid/media/AudioManager;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/media/AudioManager;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioManager:Landroid/media/AudioManager;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onRecordingConfigChanged(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/media/AudioManager$AudioRecordingCallback;->onRecordingConfigChanged(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioRecordingCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 5
    .line 6
    if-eqz p0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroid/media/AudioRecordingConfiguration;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter p1

    .line 56
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    :try_start_2
    invoke-interface {p0, v2}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback;->onRecordingConfigChanged(Ljava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :catch_0
    move-exception p0

    .line 67
    :try_start_3
    const-string v0, "VirtualAudioController"

    .line 68
    .line 69
    const-string v1, "RemoteException when calling onRecordingConfigChanged"

    .line 70
    .line 71
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_1
    monitor-exit p1

    .line 75
    goto :goto_3

    .line 76
    :goto_2
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    throw p0

    .line 78
    :catchall_1
    move-exception p0

    .line 79
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 80
    throw p0

    .line 81
    :cond_3
    :goto_3
    return-void
.end method
