.class public final Lcom/android/server/media/LegacyDeviceRouteController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/media/DeviceRouteController;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mBuiltInSpeakerSuitabilityStatus:I

.field public final mContext:Landroid/content/Context;

.field public mDeviceRoute:Landroid/media/MediaRoute2Info;

.field public mDeviceVolume:I

.field public final mOnDeviceRouteChangedListener:Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/IAudioService;Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/media/LegacyDeviceRouteController$AudioRoutesObserver;-><init>(Lcom/android/server/media/LegacyDeviceRouteController;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mOnDeviceRouteChangedListener:Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 23
    .line 24
    invoke-static {}, Lcom/android/media/flags/Flags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/4 p4, 0x0

    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const p2, 0x10e00e2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    const/4 p2, 0x1

    .line 46
    if-eq p1, p2, :cond_1

    .line 47
    .line 48
    const/4 p2, 0x2

    .line 49
    if-eq p1, p2, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move p4, p1

    .line 53
    :goto_0
    iput p4, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mBuiltInSpeakerSuitabilityStatus:I

    .line 54
    .line 55
    :try_start_0
    invoke-interface {p3, v0}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    .line 56
    .line 57
    .line 58
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception p1

    .line 61
    const-string p2, "LDeviceRouteController"

    .line 62
    .line 63
    const-string p3, "Cannot connect to audio service to start listen to routes"

    .line 64
    .line 65
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/media/LegacyDeviceRouteController;->createRouteFromAudioInfo(Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final createRouteFromAudioInfo(Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    iget p1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 6
    .line 7
    and-int/lit8 v2, p1, 0x2

    .line 8
    .line 9
    const v3, 0x1040447

    .line 10
    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    and-int/lit8 v2, p1, 0x1

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    move p1, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    and-int/lit8 v2, p1, 0x4

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    const/16 p1, 0xd

    .line 27
    .line 28
    const v3, 0x1040445

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    and-int/lit8 v2, p1, 0x8

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    const/16 p1, 0x9

    .line 37
    .line 38
    const v3, 0x1040446

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    and-int/lit8 p1, p1, 0x10

    .line 43
    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    const/16 p1, 0xb

    .line 47
    .line 48
    const v3, 0x1040448

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    const v3, 0x1040444

    .line 53
    .line 54
    .line 55
    move p1, v1

    .line 56
    :goto_0
    monitor-enter p0

    .line 57
    :try_start_0
    new-instance v2, Landroid/media/MediaRoute2Info$Builder;

    .line 58
    .line 59
    const-string v4, "DEVICE_ROUTE"

    .line 60
    .line 61
    iget-object v5, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-direct {v2, v4, v3}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/media/AudioManager;->isVolumeFixed()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    xor-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget v3, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceVolume:I

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget-object v3, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 97
    .line 98
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual {v2, v0}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v2, "android.media.route.feature.LIVE_AUDIO"

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v2, "android.media.route.feature.LIVE_VIDEO"

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const-string v2, "android.media.route.feature.LOCAL_PLAYBACK"

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-ne p1, v1, :cond_5

    .line 133
    .line 134
    iget p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mBuiltInSpeakerSuitabilityStatus:I

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setSuitabilityStatus(I)Landroid/media/MediaRoute2Info$Builder;

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catchall_0
    move-exception p1

    .line 141
    goto :goto_2

    .line 142
    :cond_5
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    monitor-exit p0

    .line 147
    return-object p1

    .line 148
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    throw p1
.end method

.method public final declared-synchronized getAvailableRoutes()Ljava/util/List;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0

    .line 10
    throw v0
.end method

.method public final declared-synchronized getSelectedRoute()Landroid/media/MediaRoute2Info;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final start(Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final stop()V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized transferTo(Ljava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public final declared-synchronized updateVolume(I)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceVolume:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceVolume:I

    .line 10
    .line 11
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/server/media/LegacyDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit p0

    .line 33
    throw p1
.end method
