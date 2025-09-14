.class public final synthetic Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/LoudnessCodecHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/LoudnessCodecHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/audio/LoudnessCodecHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/audio/LoudnessCodecHelper;

    .line 2
    .line 3
    check-cast p1, Landroid/media/AudioPlaybackConfiguration;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/os/PersistableBundle;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    new-instance v2, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getSessionId()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;-><init>(II)V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/Set;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioDeviceInfo()Landroid/media/AudioDeviceInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Landroid/media/LoudnessCodecInfo;

    .line 60
    .line 61
    if-eqz v4, :cond_0

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/media/LoudnessCodecInfo;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getInternalType()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-virtual {p0, v6, v7, v4}, Lcom/android/server/audio/LoudnessCodecHelper;->getCodecBundle_l(ILjava/lang/String;Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_2

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getSessionId()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/LoudnessCodecHelper;->dispatchNewLoudnessParameters(ILandroid/os/PersistableBundle;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    return-void

    .line 104
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    throw p0
.end method
