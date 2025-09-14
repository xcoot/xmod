.class public final Lcom/android/server/audio/FadeOutManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

.field public final mLock:Ljava/lang/Object;

.field public final mUidToFadedAppsMap:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/audio/FadeConfigurations;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/android/server/audio/FadeConfigurations;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final checkFade(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 3

    .line 1
    const-string v0, "AS.FadeOutManager"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "checkFade() player piid:"

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " uid:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/android/server/audio/FadeConfigurations;->getFadeOutVolumeShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    .line 61
    .line 62
    if-nez p0, :cond_0

    .line 63
    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 v2, 0x1

    .line 69
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->addFade(Landroid/media/AudioPlaybackConfiguration;ZLandroid/media/VolumeShaper$Configuration;)V

    .line 70
    .line 71
    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p0
.end method

.method public final fadeOutUid(ILjava/util/List;)V
    .locals 4

    .line 1
    const-string v0, "AS.FadeOutManager"

    .line 2
    .line 3
    const-string/jumbo v1, "fadeOutUid() uid:"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v1, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    .line 21
    .line 22
    new-instance v2, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    .line 23
    .line 24
    invoke-direct {v2, p1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    .line 40
    .line 41
    check-cast p2, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Lcom/android/server/audio/FadeConfigurations;->getFadeOutVolumeShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->addFade(Landroid/media/AudioPlaybackConfiguration;ZLandroid/media/VolumeShaper$Configuration;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method

.method public final removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AS.FadeOutManager"

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v3, "removedReleased() player piid: "

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, " uid:"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    .line 47
    .line 48
    if-nez p0, :cond_0

    .line 49
    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mFadedPlayers:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 61
    .line 62
    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 65
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public final unfadeOutUid(ILjava/util/Map;)V
    .locals 7

    .line 1
    const-string v0, "AS.FadeOutManager"

    .line 2
    .line 3
    const-string/jumbo v1, "unfadeOutUid() uid:"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v1, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/FadeOutManager;->mUidToFadedAppsMap:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/media/audiopolicy/Flags;->enableFadeManagerConfiguration()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1, p2}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->removeUnfadeAll(Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-ge p2, v2, :cond_4

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Landroid/media/audiopolicy/Flags;->enableFadeManagerConfiguration()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_2

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    iget-object v5, v3, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3, v4}, Landroid/media/FadeManagerConfiguration;->getFadeInVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    if-eqz v6, :cond_3

    .line 94
    .line 95
    monitor-exit v5

    .line 96
    move-object v3, v6

    .line 97
    goto :goto_1

    .line 98
    :catchall_1
    move-exception p0

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getSystemUsage()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    invoke-virtual {v3, v4}, Landroid/media/FadeManagerConfiguration;->getFadeInVolumeShaperConfigForUsage(I)Landroid/media/VolumeShaper$Configuration;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    :goto_1
    :try_start_2
    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->fadeInPlayer(Landroid/media/AudioPlaybackConfiguration;Landroid/media/VolumeShaper$Configuration;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .line 111
    .line 112
    add-int/lit8 p2, p2, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :goto_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    :try_start_4
    throw p0

    .line 117
    :cond_4
    iget-object p0, v1, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mFadedPlayers:Landroid/util/SparseArray;

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-lez p0, :cond_5

    .line 124
    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string p1, "Non empty faded players list being cleared! Faded out players:"

    .line 128
    .line 129
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, v1, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mFadedPlayers:Landroid/util/SparseArray;

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    const-string p1, "AS.FadeOutManager"

    .line 142
    .line 143
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :cond_5
    iget-object p0, v1, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mFadedPlayers:Landroid/util/SparseArray;

    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 149
    .line 150
    .line 151
    monitor-exit v0

    .line 152
    return-void

    .line 153
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    throw p0
.end method
